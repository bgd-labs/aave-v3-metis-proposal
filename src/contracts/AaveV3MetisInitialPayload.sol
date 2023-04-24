// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3Metis} from 'aave-address-book/AaveV3Metis.sol';
import {AaveV3MetisWETHSteward} from './stewards/AaveV3MetisWETHSteward.sol';
import {AaveV3MetisUSDCSteward} from './stewards/AaveV3MetisUSDCSteward.sol';
import {AaveV3MetisDAISteward} from './stewards/AaveV3MetisDAISteward.sol';
import {AaveV3MetisUSDTSteward} from './stewards/AaveV3MetisUSDTSteward.sol';
import {AaveV3MetisMETISSteward} from './stewards/AaveV3MetisMETISSteward.sol';

/**
 * @notice AaveV3MetisInitialPayload
 * @dev Initial payload of Aave v3 Metis:
 * - Deploy and give POOL_ADMIN permissions to listing Stewards contracts for WETH, USDT, USDC, DAI, METIS
 * - Snapshot: https://snapshot.org/#/aave.eth/proposal/0x7e6175c21342dbd88dc5b0dabf2d0a86339e3ef3f199fc7d778a9a6f05ed0df9
 * - Discussion: https://governance.aave.com/t/launch-aave-v3-on-metis/7056
 * @author BGD Labs
 */
contract AaveV3MetisInitialPayload {

  address public immutable WETH_STEWARD;
  address public immutable USDT_STEWARD;
  address public immutable USDC_STEWARD;
  address public immutable DAI_STEWARD;
  address public immutable METIS_STEWARD;

  constructor() {
    WETH_STEWARD = address(new AaveV3MetisWETHSteward());
    USDT_STEWARD = address(new AaveV3MetisUSDTSteward());
    USDC_STEWARD = address(new AaveV3MetisUSDCSteward());
    DAI_STEWARD = address(new AaveV3MetisDAISteward());
    METIS_STEWARD = address(new AaveV3MetisMETISSteward());
  }

  function execute() external {
    // ------------------------------------------------
    // Give POOL_ADMIN to each asset-listing steward
    // (they will renounce after executing their logic)
    // ------------------------------------------------

    address[] memory stewards = getAllListingStewards();
    for (uint256 i = 0; i < stewards.length; i++) {
      AaveV3Metis.ACL_MANAGER.addPoolAdmin(stewards[i]);
    }
  }

  function getAllListingStewards() public view returns (address[] memory) {
    address[] memory stewards = new address[](5);

    stewards[0] = WETH_STEWARD;
    stewards[1] = USDT_STEWARD;
    stewards[2] = USDC_STEWARD;
    stewards[3] = DAI_STEWARD;
    stewards[4] = METIS_STEWARD;

    return stewards;
  }
}
