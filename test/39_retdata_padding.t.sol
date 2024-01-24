// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "forge-std/Test.sol";
import {console2} from "forge-std/console2.sol";

contract Test39 is Test {
    Target target = new Target();

    // function test_retdata_padding() external {
    //     console.logBytes(lowlevel());
    //     console.logBytes(vanilla());
    // }

    function test_lowlevel() public returns (bytes memory) {
        (bool ok, bytes memory retData) = address(target).call(hex"");
        console.logBytes(retData);
        assembly {
            // return(add(retData, 0x20), mload(retData))
        }
    }

    function test_vanilla() public returns (bytes memory) {
        (bool ok, bytes memory retData) = address(target).call(hex"");
        console.logBytes(retData);
        return retData;
    }
}

contract Target {
    fallback(bytes calldata) external returns (bytes memory) {
        //     [136] Target::fallback()
        // │   └─ ← 0x68656c6c6f
        return "hello";
    }
}
