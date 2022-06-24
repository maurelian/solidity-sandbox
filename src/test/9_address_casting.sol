// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

import {DSTest} from "../../lib/ds-test/src/test.sol";
import {Vm} from "../../lib/forge-std/src/Vm.sol";

// Playing with this:
// https://web.archive.org/web/20210226160819/https://www.pwc.ch/en/insights/digital/change-in-080-solidity-compiler.html
contract Test9 is DSTest {
  Vm vm = Vm(HEVM_ADDRESS);

  function test_address_casting() external {

  }
}
