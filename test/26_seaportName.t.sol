// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";

contract Test26 is Test {
  function test_seaportName() public returns(string memory){
    assembly {
        mstore(0x20,0x20)
        mstore(0x47, 0x07536561706f7274)
        return(0x20, 0x60)
    }
  }

  // Returns:
  // 0x0000000000000000000000000000000000000000000000000000000000000020 // offset
  //   0000000000000000000000000000000000000000000000000000000000000007 // length
  //   536561706f7274 // "Seaport"
  //   00000000000000000000000000000000000000000000000000 // padding

}
