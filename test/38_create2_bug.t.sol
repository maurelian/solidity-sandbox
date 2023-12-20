// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "forge-std/Test.sol";
import {console2} from "forge-std/console2.sol";

import {Script, console} from "forge-std/Script.sol";
import {VmSafe, Vm} from "forge-std/Vm.sol";

contract Counter {
    uint256 public number;

    constructor(uint256 _number) {
        number = _number;
    }

    function increment() public {
        number += 1;
    }
}

contract CounterScript is Script {
    function run() public {
        vm.startStateDiffRecording();
        Counter counter = new Counter{salt: 0}(0);

        Vm.AccountAccess[] memory accountAccesses = vm.stopAndReturnStateDiff();
        for (uint256 i = 0; i < accountAccesses.length; i++) {
            console.log(uint256(accountAccesses[i].kind));
            console.log("account", accountAccesses[i].account);
            console.log("accessor", accountAccesses[i].accessor);
        }
    }
}
