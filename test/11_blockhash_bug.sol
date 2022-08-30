// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "forge-std/Test.sol";
import "forge-std/console.sol";

contract Test11 is Test {

    Target t = new Target();

    function setUp()  public {
        vm.roll(200);
        vm.warp(200);
    }

    function test_blockHash2() external {
        uint256 prevL1BlockNumber = block.number - 5;
        bytes32 prevL1BlockHash = blockhash(prevL1BlockNumber);
        console.log("prevL1BlockNumber", prevL1BlockNumber);
        console.log("prevL1BlockHash");
        console.logBytes32(prevL1BlockHash);
        vm.roll(205);
        vm.warp(205);
        emit log_bytes32(blockhash(prevL1BlockNumber));


        t.foo(prevL1BlockHash, prevL1BlockNumber);
    }
}

contract Target {
    function foo(bytes32 blockHash, uint256 blockNumber) public view {
        console.log("blockNumber", blockNumber);
        console.log("blockhash(blockNumber)");
        console.logBytes32(blockhash(blockNumber));
        console.log("again?");
        console.logBytes32(blockhash(blockNumber));
        console.log("blockHash");
        console.logBytes32(blockHash);
        require(
            blockhash(blockNumber) == blockHash,
            "OutputOracle: Blockhash does not match the hash at the expected height."
        );
    }
}
