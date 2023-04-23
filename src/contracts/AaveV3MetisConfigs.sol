// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library AaveV3MetisAssets {
  address internal constant WETH = 0x420000000000000000000000000000000000000A;
  address internal constant USDT = 0xbB06DCA3AE6887fAbF931640f67cab3e3a16F4dC;
  address internal constant USDC = 0xEA32A96608495e54156Ae48931A7c20f0dcc1a21;
  address internal constant DAI = 0x4651B38e7ec14BB3db731369BFE5B08F2466Bd0A;
}

library AaveV3MetisPriceFeeds {
  address internal constant WETH_USD = 0x3BBe70e2F96c87aEce7F67A2b0178052f62E37fE;
  address internal constant USDT_USD = 0x51864b8948Aa5e35aace2BaDaF901D63418A3b9D;
  address internal constant USDC_USD = 0x663855969c85F3BE415807250414Ca9129533a5f;
  address internal constant DAI_USD = 0xe0351cAAE70B5AdBD0107cD5331AD1D79c4c1CA1;
}
