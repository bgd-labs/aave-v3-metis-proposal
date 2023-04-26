require("dotenv").config();
const fs = require("fs");
const path = require("path");
const child_process = require("child_process");
const { trim } = require("viem");
const {
  AaveGovernanceV2,
  AaveV3Ethereum,
  AaveV3Optimism,
  AaveV3Metis,
  AaveV3Arbitrum,
} = require("@bgd-labs/aave-address-book");

// ETHERSCAN START
const API_KEYS = {
  mainnet: process.env.ETHERSCAN_API_KEY_MAINNET,
  optimism: process.env.ETHERSCAN_API_KEY_OPTIMISM,
};

function runCmd(cmd) {
  var resp = child_process.execSync(cmd);
  var result = resp.toString("UTF8");
  return result;
}

function download(chain, name, address) {
  if (!fs.existsSync(`downloads/${chain}/${name}`)) {
    runCmd(
      `cast etherscan-source --chain ${chain} -d downloads/${chain}/${name} ${address} --etherscan-api-key ${API_KEYS[chain]}`
    );
    runCmd(`npm run lint:fix:specific -- downloads/${chain}/${name}`);
  }
}

function getImpl(chain, address) {
  return trim(
    runCmd(
      `cast storage --rpc-url ${chain} ${address} 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc`
    ).replace("\n", "")
  );
}
// ETHERSCAN END

// BLOCKSCOUT START
async function getSource(addressHash) {
  const response = await fetch(
    `https://andromeda-explorer.metis.io/api?module=contract&action=getsourcecode&address=${addressHash}`
  );
  return response.json();
}

function writeFiles(response, prefix) {
  try {
    writeFile(
      response.result[0].FileName,
      response.result[0].SourceCode,
      prefix
    );
    if (response.result[0].AdditionalSources) {
      response.result[0].AdditionalSources.forEach((element) => {
        writeFile(element.Filename, element.SourceCode, prefix);
      });
    }
  } catch (e) {
    console.log(response);
    throw new Error("issue writing file");
  }
}

function writeFile(filename, src, prefix) {
  const hasFileName = filename != "";
  const sourcePath = hasFileName
    ? path.join(prefix, filename.match(/^(.*)\/.*$/)[1])
    : prefix;
  fs.mkdirSync(path.join(process.cwd(), sourcePath), {
    recursive: true,
  });
  fs.writeFileSync(
    path.join(process.cwd(), prefix, hasFileName ? filename : "flat.sol"),
    src
  );
}
// BLOCKSCOUT END

const METIS = {
  POOL_ADDRESSES_PROVIDER: AaveV3Metis.POOL_ADDRESSES_PROVIDER,
  POOL: AaveV3Metis.POOL,
  POOL_CONFIGURATOR: AaveV3Metis.POOL_CONFIGURATOR,
  ORACLE: AaveV3Metis.ORACLE,
  AAVE_PROTOCOL_DATA_PROVIDER: AaveV3Metis.AAVE_PROTOCOL_DATA_PROVIDER,
  ACL_MANAGER: AaveV3Metis.ACL_MANAGER,
  COLLECTOR: AaveV3Metis.COLLECTOR,
  DEFAULT_INCENTIVES_CONTROLLER: AaveV3Metis.DEFAULT_INCENTIVES_CONTROLLER,
  DEFAULT_A_TOKEN_IMPL_REV_1: AaveV3Metis.DEFAULT_A_TOKEN_IMPL_REV_1,
  DEFAULT_VARIABLE_DEBT_TOKEN_IMPL_REV_1:
    AaveV3Metis.DEFAULT_VARIABLE_DEBT_TOKEN_IMPL_REV_1,
  DEFAULT_STABLE_DEBT_TOKEN_IMPL_REV_1:
    AaveV3Metis.DEFAULT_STABLE_DEBT_TOKEN_IMPL_REV_1,
  EMISSION_MANAGER: AaveV3Metis.EMISSION_MANAGER,
  POOL_ADDRESSES_PROVIDER_REGISTRY:
    AaveV3Metis.POOL_ADDRESSES_PROVIDER_REGISTRY,
  RATES_FACTORY: AaveV3Metis.RATES_FACTORY,
  LISTING_ENGINE: AaveV3Metis.LISTING_ENGINE,
  WALLET_BALANCE_PROVIDER: AaveV3Metis.WALLET_BALANCE_PROVIDER,
  UI_POOL_DATA_PROVIDER: AaveV3Metis.UI_POOL_DATA_PROVIDER,
  UI_INCENTIVE_DATA_PROVIDER: AaveV3Metis.UI_INCENTIVE_DATA_PROVIDER,
  L2_ENCODER: AaveV3Metis.L2_ENCODER,
  BORROW_LOGIC: "0x33b92bF472BD72013DB6A11b259c1Cbfc4Ff2D80",
  BRIDGE_LOGIC: "0x60A799a87c91D2333aFac7b6F9A24725402E1449",
  CONFIGURATOR_LOGIC: "0xE7a4354eE5c3fcAc7c799CcE860317a94D28e218",
  E_MODE_LOGIC: "0x522d177ed9dAf4677695E6a1d73718695d8b90DA",
  FLASHLOAN_LOGIC: "0xe470A7F715185bFdb21428e07582D95e27FcA46A",
  LIQUIDATION_LOGIC: "0xCD9978B623d1a3a577B7378B710Aa3bf185901A2",
  POOL_LOGIC: "0xd854065Aa385d569D7c033C848FF6eC147283cB9",
  SUPPLY_LOGIC: "0x8d1073474f43111BaD3b5e18356F425f8AC79873",
  PROXY_FACTORY: "0x1dad86dC5990BCE5bFe3A150A4E0ece990d6EBcB",
  PROXY_ADMIN: "0x1CabD986cBAbDf12E00128DFf03C80ee62C4fd97",
};
METIS.COLLECTOR_IMPL = getImpl("metis", METIS.COLLECTOR);
METIS.POOL_CONFIGURATOR_IMPL = getImpl("metis", METIS.POOL_CONFIGURATOR);
METIS.DEFAULT_INCENTIVES_CONTROLLER_IMPL = getImpl(
  "metis",
  METIS.DEFAULT_INCENTIVES_CONTROLLER
);

// spread so we can overwrite & extend
const MAINNET = {
  ...AaveV3Ethereum,
  COLLECTOR_IMPL: getImpl("mainnet", AaveV3Ethereum.COLLECTOR),
  POOL_CONFIGURATOR_IMPL: getImpl("mainnet", AaveV3Ethereum.POOL_CONFIGURATOR),
  DEFAULT_INCENTIVES_CONTROLLER_IMPL: getImpl(
    "mainnet",
    AaveV3Ethereum.DEFAULT_INCENTIVES_CONTROLLER
  ),
  BORROW_LOGIC: "0x5d834EAD0a80CF3b88c06FeeD6e8E0Fcae2daEE5",
  BRIDGE_LOGIC: "0x57572C9e795F4B6A748EFBeAB7E0a1B9996A0A24",
  CONFIGURATOR_LOGIC: "0x7406aba1Aa5fE5cd71d958CE10fc28c416a33aA0",
  E_MODE_LOGIC: "0xeAbd65827E91Ac3aE5471C11A329fbc675cA46d6",
  FLASHLOAN_LOGIC: "0x0A62276bFBF1Ad8443f37Da8630d407408085c8b",
  LIQUIDATION_LOGIC: "0xe175De51F29d822b86e46A9A61246Ec90631210D",
  POOL_LOGIC: "0xD5256981e08492AFc543aF2a779Af989E9f9F7e7",
  SUPPLY_LOGIC: "0x39dF4b1329D41A9AE20e17BeFf39aAbd2f049128",
  PROXY_FACTORY: "0xB4e496f70602fE2AC6Ae511D028BA4D194773B29",
  PROXY_ADMIN: "0xD3cF979e676265e4f6379749DECe4708B9A22476",
};

async function main() {
  for (const key of Object.keys(METIS).filter(
    (key) => !["COLLECTOR", "L2_ENCODER"].includes(key)
  )) {
    console.log(key);
    if (!fs.existsSync(`downloads/metis/${key}`)) {
      const source = await getSource(METIS[key]);
      writeFiles(source, `downloads/metis/${key}`);
      runCmd(`npm run lint:fix:specific -- downloads/metis/${key}`);
    }
    download("mainnet", key, MAINNET[key]);
    runCmd(
      `make git-diff before=downloads/mainnet/${key} after=downloads/metis/${key} out=${key}_diff`
    );
  }
  // special cases
  /**
   * POOL is L2_POOL, so not strictly the same as on mainnet.
   * Therefore comparing to the upgraded version on optimism from 3_0_2 upgrade
   */
  {
    const key = "POOL_IMPL";
    const poolImplMetis = getImpl("metis", METIS.POOL);
    if (!fs.existsSync(`downloads/metis/${key}`)) {
      const source = await getSource(poolImplMetis);
      writeFiles(source, `downloads/metis/${key}`);
      runCmd(`npm run lint:fix:specific -- downloads/metis/${key}`);
    }
    download("optimism", key, "0x764594F8e9757edE877B75716f8077162B251460");
    runCmd(
      `make git-diff before=downloads/optimism/${key} after=downloads/metis/${key} out=${key}_diff`
    );
  }
  {
    const key = "L2_ENCODER";
    if (!fs.existsSync(`downloads/metis/${key}`)) {
      const source = await getSource(METIS[key]);
      writeFiles(source, `downloads/metis/${key}`);
      runCmd(`npm run lint:fix:specific -- downloads/metis/${key}`);
    }
    download("optimism", key, AaveV3Optimism.L2_ENCODER);
    runCmd(
      `make git-diff before=downloads/optimism/${key} after=downloads/metis/${key} out=${key}_diff`
    );
  }
  {
    const key = "BRIDGE_EXECUTOR";
    if (!fs.existsSync(`downloads/metis/${key}`)) {
      const source = await getSource(AaveGovernanceV2.METIS_BRIDGE_EXECUTOR);
      writeFiles(source, `downloads/metis/${key}`);
      runCmd(`npm run lint:fix:specific -- downloads/metis/${key}`);
    }
    download("optimism", key, AaveGovernanceV2.OPTIMISM_BRIDGE_EXECUTOR);
    runCmd(
      `make git-diff before=downloads/optimism/${key} after=downloads/metis/${key} out=${key}_diff`
    );
  }
  {
    const key = "CALLDATA_LOGIC";
    if (!fs.existsSync(`downloads/metis/${key}`)) {
      const source = await getSource(
        "0xA0B4A3e3E9bcA781D3Ca6E79AD6011818Ba00644"
      );
      writeFiles(source, `downloads/metis/${key}`);
      runCmd(`npm run lint:fix:specific -- downloads/metis/${key}`);
    }
    download("optimism", key, "0xf86C9e87D16A6556F81275D5157Eb46aAd4B6a25");
    runCmd(
      `make git-diff before=downloads/optimism/${key} after=downloads/metis/${key} out=${key}_diff`
    );
  }
  {
    const key = "PRICE_ORACLE_SENTINEL";
    if (!fs.existsSync(`downloads/metis/${key}`)) {
      const source = await getSource(AaveV3Metis.PRICE_ORACLE_SENTINEL);
      writeFiles(source, `downloads/metis/${key}`);
      runCmd(`npm run lint:fix:specific -- downloads/metis/${key}`);
    }
    download("arbitrum", key, AaveV3Arbitrum.PRICE_ORACLE_SENTINEL);
    runCmd(
      `make git-diff before=downloads/arbitrum/${key} after=downloads/metis/${key} out=${key}_diff`
    );
  }
  {
    const key = "COLLECTOR";
    if (!fs.existsSync(`downloads/metis/${key}`)) {
      const source = await getSource(METIS.COLLECTOR);
      writeFiles(source, `downloads/metis/${key}`);
      runCmd(`npm run lint:fix:specific -- downloads/metis/${key}`);
    }
    download("optimism", key, AaveV3Optimism.COLLECTOR);
    runCmd(
      `make git-diff before=downloads/optimism/${key} after=downloads/metis/${key} out=${key}_diff`
    );
  }
}

main();
