// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";

contract Test29 is Test {

    // test case to clarify what's going on in the _copy function here:
    // https://github.com/ethereum-optimism/optimism/blob/06245265f0c741c2f316d40052115ebcefeeb6e3/packages/contracts/contracts/libraries/rlp/Lib_RLPReader.sol#L342
    function test_copy() external view returns (bytes memory) {
        uint256 _src = 0x0c80; //3200 bytes, it'll be empty
        uint256 _offset = 4;
        uint256 _length = 8;
        assembly {
            // write 32 bytes with a clear pattern to indicate the location of source
            mstore(_src, 0x0102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F)
            //                   ^ _offset (4) + _length (8) -> 0405060708090A0B
        }
        // expand memory to make space to
        bytes memory out = new bytes(_length);
        if (out.length == 0) {
            return out;
        }

        uint256 src = _src + _offset;
        uint256 dest;
        assembly {
            dest := add(out, 32)
        }

        // Copy over as many complete words as we can.
        for (uint256 i = 0; i < _length / 32; i++) {
            assembly {
                mstore(dest, mload(src))
            }

            src += 32;
            dest += 32;
        }


        // Pick out the remaining bytes.
        uint256 mask;
        unchecked {
            mask = 256 ** (32 - (_length % 32)) - 1;
        }

        // With length = 8, the mask with have 8 LEADING zero bytes, followed by 0xff bytes
        console.logBytes32(bytes32(mask));

        assembly {
            mstore(
                dest,
                or(
                    // get the LEADING bytes from src
                    and(
                        mload(src),
                        not(mask)
                    ),
                    // get the trailing bytes from dest (in order to preserve them when we copy over)
                    and(
                        mload(dest),
                        mask
                    )
                )
            )
        }
        console.logBytes(out); // 0x0405060708090a0b
        return out;
    }
}
