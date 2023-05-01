// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {GovHelpers} from 'aave-helpers/src/GovHelpers.sol';
import {MetisScript} from 'aave-helpers/src/ScriptUtils.sol';

contract MetisPoolActivationProposal is MetisScript {
  function run() external broadcast {
    GovHelpers.Payload[] memory payloads = new GovHelpers.Payload[](1);
    payloads[0] = GovHelpers.buildMetis(
      0xF7780A54Ee6f99EE9C028ae552149CFbDDbaDfc4
    );
    GovHelpers.createProposal(
      payloads,
      0x88fe4221f62941318ccf081f96903433613e3a7e0eabf5165b6e0f4845541f3e
    );
  }
}