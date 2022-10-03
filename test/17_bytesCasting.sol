// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "forge-std/Test.sol";


contract Test17 is Test {


    function test_BytesCasting() external {
        bytes memory data = abi.encode(hex"abcdef");
        emit log_uint(data.length);
        uint32 len = uint32(data.length);
        emit log_uint(len);

        // what about casting something too big? Is is just chopped off?
        emit log_bytes32(bytes32(hex"ffffffffffffffff")); //  0xffffffffffffffff000000000000000000000000000000000000000000000000
        uint256 fromLeftAlignedBytes32 = uint256(
            bytes32(hex"ffffffffffffffffff")
        );
        emit log_uint(fromLeftAlignedBytes32); // 115792089237316195423546465080034053631536251113206159092519684181958192005120 (probably same as above)
        uint32 fromUint256_fromLeftAlignedBytes32 = uint32(
            fromLeftAlignedBytes32
        );
        emit log_uint(fromUint256_fromLeftAlignedBytes32); // 0 (it just chops off the right most bytes)
        uint32 fromUint256_fromLeftAlignedBytes32_plusOne = uint32(
            fromLeftAlignedBytes32 +1
        );
        emit log_uint(fromUint256_fromLeftAlignedBytes32_plusOne); // 1 (it just chops off the right most bytes)
    }
}
