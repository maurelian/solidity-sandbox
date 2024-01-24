// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "forge-std/Test.sol";
import {console2} from "forge-std/console2.sol";

contract Test40 is Test {
    event Success();
    event Failure();

    Target target = new Target();
    bool reentered;

    fallback() external {
        if (!reentered) {
            reentered = true;
            vm.expectEmit(address(target));
            emit Success();
        }
    }

    function test_expecting_events() external {}
}

contract Target {
    event Success();
    event Failure();

    function callCaller() external {
        // try msg.sender.call("") {
        //     emit Success();
        // } catch {
        //     emit Failure();
        // }
    }
}
