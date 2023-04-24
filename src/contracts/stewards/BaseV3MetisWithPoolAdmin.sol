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

  function _postExecute() internal override {
    AaveV3Metis.ACL_MANAGER.renounceRole(
      AaveV3Metis.ACL_MANAGER.POOL_ADMIN_ROLE(),
      address(this)
    );
  }
}
