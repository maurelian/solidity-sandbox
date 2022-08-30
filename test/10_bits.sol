// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "forge-std/Test.sol";


contract Test10 is Test {


  function test_bitwiseStuff() external {
    bytes32 a = bytes32(uint256(0xffffff));
    bytes32 b = bytes32(uint256(0xff00ff));
    emit log_bytes32(a & b);
    emit log_bytes32(b << 8);
    emit log_bytes32(b << 16);
    emit log_bytes32(
      (bytes32(
        type(uint256).max
      )  << 64) >> 64
    );
  }
}
