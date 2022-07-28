// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "forge-std/Test.sol";


contract Test12_yulCoverage is Test {
  // forge coverage chokes when the body of this function uncommented
  function test12_assemblyIf() external {
    // uint val;
    // assembly {
    //   if 1 {
    //     val := 1
    //   }
    // }
    //   assertEq(1, val);
  }

  // coverage is fine with this
  function test12_assemblyNoIf() external {
    uint val;
    uint a;
    assembly {
        val := 1
    }
      assertEq(1, val);
  }

  // coverage seems to be ok with this.
  function test12_assemblySwitch() external {
    uint val;
    uint a;
    assembly {
      a := 1
      switch a
      case 1 {
        val := 1
      }
    }
    assertEq(1, val);
  }
}
