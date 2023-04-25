// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { AaveV3Metis } from "aave-address-book/AaveAddressBook.sol";
import { ProtocolV3_0_1TestBase, ReserveConfig } from "aave-helpers/src/ProtocolV3TestBase.sol";
import { AaveGovernanceV2 } from "aave-address-book/AaveGovernanceV2.sol";
import { AaveV3MetisInitialPayload } from "../src/contracts/AaveV3MetisInitialPayload.sol";
import { TestWithExecutor } from "aave-helpers/src/GovHelpers.sol";

interface ISimpleSteward {
  function execute() external;
}

contract AaveV3MetisActivation is ProtocolV3_0_1TestBase, TestWithExecutor {
  function setUp() public {
    vm.createSelectFork(
      vm.rpcUrl("https://andromeda.metis.io/?owner=1088"),
      5452781
    );
    // TODO: fix after transfering ownership to AaveGovernanceV2.METIS_BRIDGE_EXECUTOR
    _selectPayloadExecutor(0x982486bD81ECc9AD0CE830f72B19dfD22Fab07d5);
  }

  function testPoolActivation() public {
    AaveV3MetisInitialPayload activationPayload = new AaveV3MetisInitialPayload();

    createConfigurationSnapshot("pre-proposal-aave-v3-metis", AaveV3Metis.POOL);

    _executePayload(address(activationPayload));

    createConfigurationSnapshot(
      "post-proposal-aave-v3-metis",
      AaveV3Metis.POOL
    );

    address[] memory stewards = activationPayload.getAllListingStewards();

    for (uint256 i = 0; i < stewards.length; i++) {
      ISimpleSteward(stewards[i]).execute();
      assertFalse(AaveV3Metis.ACL_MANAGER.isPoolAdmin(stewards[i]));
    }

    for (uint256 i = 0; i < stewards.length; i++) {
      vm.expectRevert();
      ISimpleSteward(stewards[i]).execute();
    }

    createConfigurationSnapshot(
      "post-stewards-aave-v3-metis",
      AaveV3Metis.POOL
    );
    diffReports("pre-proposal-aave-v3-metis", "post-stewards-aave-v3-metis");
  }
}
