// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

import {DSTest} from "../../lib/ds-test/src/test.sol";
import {Vm} from "../../lib/forge-std/src/Vm.sol";

contract Test14 is DSTest {
    Vm vm = Vm(HEVM_ADDRESS);

    function test_receiveAndFallback() external {

    }
}

// What happens when you have both receive and fallback?
// The receive function is executed on a call to the contract with empty calldata.
// Otherwise if there is data, fallback runs.
// See  misc/14_HasBothReceiveAndFallback.sol for the IR

contract HasBothReceiveAndFallback {
    event LogSomething();

    receive() external payable {
        emit LogSomething();
    }

    fallback() external payable {
        emit LogSomething();
    }
}
