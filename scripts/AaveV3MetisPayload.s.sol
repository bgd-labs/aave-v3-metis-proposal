// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from 'forge-std/Script.sol';
import {AaveV3MetisInitialPayload} from '../src/contracts/AaveV3MetisInitialPayload.sol';

contract DeployPayload is Script {
  function run() external {
    vm.startBroadcast();

    new AaveV3MetisInitialPayload();

    vm.stopBroadcast();
  }
}
