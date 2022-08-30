// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";

// Solidity validates that Enums are within bound right?
contract Test22 is Test {
  enum Numbers {
    one,
    two,
    three
  }

  function takesEnum(Numbers _n) external {
    if (_n == Numbers.one) {
      emit log_uint(1);
    } else {
      emit log_uint(uint256(_n));
    }
  }

  function test_bounds_checks() external {
    bytes memory data = abi.encodeWithSelector(this.takesEnum.selector, 4);
    (bool success, bytes memory retData) = address(this).call(data);
    assert(!success);
  }
}
