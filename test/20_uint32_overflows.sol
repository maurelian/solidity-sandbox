// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract Test20 is Test {

    // What happens when a less than 256 bit uint overflows?
    // I get that the EVM allows the overflow, but what's going on with the actual resulting
    // math?
    function test_uint32_overflows() public {
        uint32 a = type(uint32).max;
        unchecked {
            a += 2;
        }
        uint256 b = uint256(a);
        console.log(a);
        console.log(b);
    }
}
