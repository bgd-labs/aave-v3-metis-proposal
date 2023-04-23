// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3Metis} from 'aave-address-book/AaveV3Metis.sol';
import {AaveV3PayloadMetis, IEngine, EngineFlags, Rates} from 'aave-helpers/src/v3-config-engine/AaveV3PayloadMetis.sol';

/**
 * @notice BaseV3MetisWithPoolAdmin
 * @dev Base Steward, just renouncing to POOL_ADMIN permissions from the Aave ACLManager
 * @author BGD Labs
 */
abstract contract BaseV3MetisWithPoolAdmin is AaveV3PayloadMetis {
  bytes32 public constant POOL_ADMIN_ROLE_ID =
    0x12ad05bde78c5ab75238ce885307f96ecd482bb402ef831f99e7018a0f169b7b;

  function _postExecute() internal override {
    AaveV3Metis.ACL_MANAGER.renounceRole(POOL_ADMIN_ROLE_ID, address(this));
  }
}
