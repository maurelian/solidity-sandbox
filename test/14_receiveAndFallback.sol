// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "forge-std/Test.sol";


contract Test14 is Test {


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
