// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {GovHelpers} from 'aave-helpers/src/GovHelpers.sol';
import {MetisScript} from 'aave-helpers/src/ScriptUtils.sol';

contract MetisPoolActivationProposal is MetisScript {
  function run() external broadcast {
    GovHelpers.Payload[] memory payloads = new GovHelpers.Payload[](1);
    payloads[0] = GovHelpers.buildMetis(
      0x0000000000000000000000000000000000000000 // TODO: add payload
    );
    GovHelpers.createProposal(
      payloads,
      0x0000000000000000000000000000000000000000000000000000000000000000 // TODO: add hash
    );
  }
}