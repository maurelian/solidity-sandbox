// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";


/// A quick test to check that `send()` still forwards no gas.
contract Test31 is Test {
  function test_send_gas_amount() external {
    payable(address(0)).send(address(this).balance);
  }
}
