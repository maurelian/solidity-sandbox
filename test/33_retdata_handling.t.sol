// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;
import "forge-std/Test.sol";



contract Test33 is Test {
  function test_retdata_handling() external {
    // if we don't declare the bytes memory returndata var, does it still get read into memory?
    // Yes it does. See the IR in Test33RetData.yul.sol. This is the relevant part though:
    /*
                  function extract_returndata() -> data {

                switch returndatasize()
                case 0 {
                    data := zero_value_for_split_t_bytes_memory_ptr()
                }
                default {
                    data := allocate_memory_array_t_bytes_memory_ptr(returndatasize())
                    returndatacopy(add(data, 0x20), 0, returndatasize())
                }

            }

      ...

      let expr_23073_component_1 := call(gas(), expr_23068_address,  0,  _19, _20, 0, 0)
      let expr_23073_component_2_mpos := extract_returndata()
      /// @src 32:259:331  "(bool success, ) = address(this).call(abi.encodeWithSignature(\"test()\"))"
      let var_success_23063 := expr_23073_component_1
    */
    (bool success, ) = address(this).call(abi.encodeWithSignature("test()"));
  }
}
