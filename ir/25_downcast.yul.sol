
/// @use-src 0:"lib/forge-std/src/Script.sol", 1:"lib/forge-std/src/Test.sol", 5:"lib/solmate/lib/ds-test/src/test.sol", 23:"test/25_downcast.t.sol"
object "Test25_22725" {
    code {
        /// @src 23:87:416  "contract Test25 is Test {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_Test25_22725()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("Test25_22725_deployed"), datasize("Test25_22725_deployed"))

        return(_1, datasize("Test25_22725_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @src 23:87:416  "contract Test25 is Test {..."
        function constructor_Test25_22725() {

            /// @src 23:87:416  "contract Test25 is Test {..."
            constructor_Test_1617()

        }
        /// @src 23:87:416  "contract Test25 is Test {..."

        /// @src 1:164:14278  "abstract contract Test is DSTest, Script {..."
        function constructor_Test_1617() {

            /// @src 1:164:14278  "abstract contract Test is DSTest, Script {..."
            constructor_Script_235()

        }
        /// @src 23:87:416  "contract Test25 is Test {..."

        function shift_left_16(value) -> newValue {
            newValue :=

            shl(16, value)

        }

        function update_byte_slice_1_shift_2(value, toInsert) -> result {
            let mask := 16711680
            toInsert := shift_left_16(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function cleanup_t_bool(value) -> cleaned {
            cleaned := iszero(iszero(value))
        }

        function convert_t_bool_to_t_bool(value) -> converted {
            converted := cleanup_t_bool(value)
        }

        function prepare_store_t_bool(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_2t_bool_to_t_bool(slot, value_0) {
            let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
            sstore(slot, update_byte_slice_1_shift_2(sload(slot), prepare_store_t_bool(convertedValue_0)))
        }

        /// @src 0:134:2624  "abstract contract Script {..."
        function constructor_Script_235() {

            /// @src 0:134:2624  "abstract contract Script {..."
            constructor_DSTest_21455()
            /// @src 0:189:193  "true"
            let expr_6 := 0x01
            update_storage_value_offset_2t_bool_to_t_bool(0x00, expr_6)

        }
        /// @src 23:87:416  "contract Test25 is Test {..."

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_1_shift_0(value, toInsert) -> result {
            let mask := 255
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_bool_to_t_bool(slot, value_0) {
            let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(convertedValue_0)))
        }

        /// @src 5:715:16150  "contract DSTest {..."
        function constructor_DSTest_21455() {

            /// @src 5:715:16150  "contract DSTest {..."

            /// @src 5:1594:1598  "true"
            let expr_19756 := 0x01
            update_storage_value_offset_0t_bool_to_t_bool(0x00, expr_19756)

        }
        /// @src 23:87:416  "contract Test25 is Test {..."

    }
    /// @use-src 0:"lib/forge-std/src/Script.sol", 1:"lib/forge-std/src/Test.sol", 5:"lib/solmate/lib/ds-test/src/test.sol", 23:"test/25_downcast.t.sol"
    object "Test25_22725_deployed" {
        code {
            /// @src 23:87:416  "contract Test25 is Test {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x3a768463
                {
                    // vm()

                    external_fun_vm_30()
                }

                case 0x3b90de00
                {
                    // test_downcast()

                    external_fun_test_downcast_22724()
                }

                case 0xba414fa6
                {
                    // failed()

                    external_fun_failed_19841()
                }

                case 0xf8ccbf47
                {
                    // IS_SCRIPT()

                    external_fun_IS_SCRIPT_7()
                }

                case 0xfa7626d4
                {
                    // IS_TEST()

                    external_fun_IS_TEST_19757()
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function convert_t_bytes32_to_t_uint256(value) -> converted {
                converted := convert_t_uint256_to_t_uint256(shift_right_0_unsigned(value))
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function convert_t_uint256_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint256(value)))
            }

            function cleanup_t_bytes20(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000)
            }

            function shift_left_96(value) -> newValue {
                newValue :=

                shl(96, value)

            }

            function convert_t_uint160_to_t_bytes20(value) -> converted {
                converted := cleanup_t_bytes20(shift_left_96(cleanup_t_uint160(value)))
            }

            function shift_right_96_unsigned(value) -> newValue {
                newValue :=

                shr(96, value)

            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_bytes20_to_t_uint160(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(shift_right_96_unsigned(value))
            }

            function convert_t_bytes20_to_t_address(value) -> converted {
                converted := convert_t_bytes20_to_t_uint160(value)
            }

            /// @src 0:199:309  "address constant private VM_ADDRESS =..."
            function constant_VM_ADDRESS_24() -> ret {
                /// @src 0:277:305  "keccak256('hevm cheat code')"
                let expr_19 := 0x885cb69240a935d632d79c317109709ecfa91a80626ff3989d68f67f5b1dd12d
                /// @src 0:269:306  "uint256(keccak256('hevm cheat code'))"
                let expr_20 := convert_t_bytes32_to_t_uint256(expr_19)
                /// @src 0:261:307  "uint160(uint256(keccak256('hevm cheat code')))"
                let expr_21 := convert_t_uint256_to_t_uint160(expr_20)
                /// @src 0:253:308  "bytes20(uint160(uint256(keccak256('hevm cheat code'))))"
                let expr_22 := convert_t_uint160_to_t_bytes20(expr_21)
                /// @src 0:245:309  "address(bytes20(uint160(uint256(keccak256('hevm cheat code')))))"
                let expr_23 := convert_t_bytes20_to_t_address(expr_22)
                let _1 := expr_23

                ret := _1
            }

            function convert_t_uint160_to_t_contract$_Vm_$3540(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_Vm_$3540(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_Vm_$3540(value)
            }

            /// @src 0:316:354  "Vm public constant vm = Vm(VM_ADDRESS)"
            function constant_vm_30() -> ret_address {
                /// @src 0:343:353  "VM_ADDRESS"
                let expr_28 := constant_VM_ADDRESS_24()
                /// @src 0:340:354  "Vm(VM_ADDRESS)"
                let expr_29_address := convert_t_address_to_t_contract$_Vm_$3540(expr_28)
                let _2_address := expr_29_address

                ret_address := _2_address
            }

            /// @ast-id 30
            /// @src 0:316:354  "Vm public constant vm = Vm(VM_ADDRESS)"
            function getter_fun_vm_30() -> ret_0 {
                ret_0 := constant_vm_30()
            }
            /// @src 23:87:416  "contract Test25 is Test {..."

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_Vm_$3540_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_t_contract$_Vm_$3540_to_t_address_fromStack(value, pos) {
                mstore(pos, convert_t_contract$_Vm_$3540_to_t_address(value))
            }

            function abi_encode_tuple_t_contract$_Vm_$3540__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_contract$_Vm_$3540_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_vm_30() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_vm_30()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_contract$_Vm_$3540__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_test_downcast_22724() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_test_downcast_22724()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_failed_19841() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_failed_19841()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_dynamict_bool(slot_value, offset) -> value {
                value := cleanup_from_storage_t_bool(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_bool(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_bool(sload(slot), offset)

            }

            /// @ast-id 7
            /// @src 0:165:193  "bool public IS_SCRIPT = true"
            function getter_fun_IS_SCRIPT_7() -> ret {

                let slot := 0
                let offset := 2

                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

            }
            /// @src 23:87:416  "contract Test25 is Test {..."

            function external_fun_IS_SCRIPT_7() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_IS_SCRIPT_7()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 19757
            /// @src 5:1572:1598  "bool public IS_TEST = true"
            function getter_fun_IS_TEST_19757() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

            }
            /// @src 23:87:416  "contract Test25 is Test {..."

            function external_fun_IS_TEST_19757() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_IS_TEST_19757()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            function shift_right_8_unsigned(value) -> newValue {
                newValue :=

                shr(8, value)

            }

            function extract_from_storage_value_offset_1t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_8_unsigned(slot_value))
            }

            function read_from_storage_split_offset_1_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_1t_bool(sload(slot))

            }

            /// @src 5:1631:1735  "address constant HEVM_ADDRESS =..."
            function constant_HEVM_ADDRESS_19776() -> ret {
                /// @src 5:1703:1731  "keccak256('hevm cheat code')"
                let expr_19771 := 0x885cb69240a935d632d79c317109709ecfa91a80626ff3989d68f67f5b1dd12d
                /// @src 5:1695:1732  "uint256(keccak256('hevm cheat code'))"
                let expr_19772 := convert_t_bytes32_to_t_uint256(expr_19771)
                /// @src 5:1687:1733  "uint160(uint256(keccak256('hevm cheat code')))"
                let expr_19773 := convert_t_uint256_to_t_uint160(expr_19772)
                /// @src 5:1679:1734  "bytes20(uint160(uint256(keccak256('hevm cheat code'))))"
                let expr_19774 := convert_t_uint160_to_t_bytes20(expr_19773)
                /// @src 5:1671:1735  "address(bytes20(uint160(uint256(keccak256('hevm cheat code')))))"
                let expr_19775 := convert_t_bytes20_to_t_address(expr_19774)
                let _5 := expr_19775

                ret := _5
            }

            function cleanup_t_bytes4(value) -> cleaned {
                cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            }

            function convert_t_bytes32_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(value)
            }

            function convert_t_stringliteral_8f44d68b1a26169d304522fa2f95aa938d98120d628d1db5726120ca84e53b43_to_t_bytes32() -> converted {
                converted := 0x6661696c65640000000000000000000000000000000000000000000000000000
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_address_t_bytes32__to_t_address_t_bytes32__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value1,  add(headStart, 32))

            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function leftAlign_t_bytes4(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes4_to_t_bytes4_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes4(cleanup_t_bytes4(value)))
            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function copy_memory_to_memory(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                if gt(i, length)
                {
                    // clear end
                    mstore(add(dst, length), 0)
                }
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, length)
            }

            function abi_encode_tuple_packed_t_bytes4_t_bytes_memory_ptr__to_t_bytes4_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                abi_encode_t_bytes4_to_t_bytes4_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 4)

                pos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value1,  pos)

                end := pos
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

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

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_bool_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bool_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            /// @ast-id 19841
            /// @src 5:1819:2403  "function failed() public returns (bool) {..."
            function fun_failed_19841() -> var__19789 {
                /// @src 5:1853:1857  "bool"
                let zero_t_bool_3 := zero_value_for_split_t_bool()
                var__19789 := zero_t_bool_3

                /// @src 5:1873:1880  "_failed"
                let _4 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_19791 := _4
                /// @src 5:1869:2397  "if (_failed) {..."
                switch expr_19791
                case 0 {
                    /// @src 5:1961:1966  "false"
                    let expr_19797 := 0x00
                    /// @src 5:1941:1966  "bool globalFailed = false"
                    let var_globalFailed_19796 := expr_19797
                    /// @src 5:1984:2000  "hasHEVMContext()"
                    let expr_19800 := fun_hasHEVMContext_19900()
                    /// @src 5:1980:2354  "if (hasHEVMContext()) {..."
                    if expr_19800 {
                        /// @src 5:2047:2059  "HEVM_ADDRESS"
                        let expr_19803 := constant_HEVM_ADDRESS_19776()
                        /// @src 5:2047:2064  "HEVM_ADDRESS.call"
                        let expr_19804_address := expr_19803
                        /// @src 5:2135:2169  "keccak256(\"load(address,bytes32)\")"
                        let expr_19811 := 0x667f9d70ca411d70ead50d8d5c22070dafc36ad75f3dcf5e7237b22ade9aecc4
                        /// @src 5:2128:2170  "bytes4(keccak256(\"load(address,bytes32)\"))"
                        let expr_19812 := convert_t_bytes32_to_t_bytes4(expr_19811)
                        /// @src 5:2207:2219  "HEVM_ADDRESS"
                        let expr_19815 := constant_HEVM_ADDRESS_19776()
                        /// @src 5:2221:2238  "bytes32(\"failed\")"
                        let expr_19819 := convert_t_stringliteral_8f44d68b1a26169d304522fa2f95aa938d98120d628d1db5726120ca84e53b43_to_t_bytes32()
                        /// @src 5:2196:2239  "abi.encode(HEVM_ADDRESS, bytes32(\"failed\"))"

                        let expr_19820_mpos := allocate_unbounded()
                        let _6 := add(expr_19820_mpos, 0x20)

                        let _7 := abi_encode_tuple_t_address_t_bytes32__to_t_address_t_bytes32__fromStack(_6, expr_19815, expr_19819)
                        mstore(expr_19820_mpos, sub(_7, add(expr_19820_mpos, 0x20)))
                        finalize_allocation(expr_19820_mpos, sub(_7, expr_19820_mpos))
                        /// @src 5:2086:2261  "abi.encodePacked(..."

                        let expr_19821_mpos := allocate_unbounded()
                        let _8 := add(expr_19821_mpos, 0x20)

                        let _9 := abi_encode_tuple_packed_t_bytes4_t_bytes_memory_ptr__to_t_bytes4_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_8, expr_19812, expr_19820_mpos)
                        mstore(expr_19821_mpos, sub(_9, add(expr_19821_mpos, 0x20)))
                        finalize_allocation(expr_19821_mpos, sub(_9, expr_19821_mpos))
                        /// @src 5:2047:2279  "HEVM_ADDRESS.call(..."

                        let _10 := add(expr_19821_mpos, 0x20)
                        let _11 := mload(expr_19821_mpos)

                        let expr_19822_component_1 := call(gas(), expr_19804_address,  0,  _10, _11, 0, 0)
                        let expr_19822_component_2_mpos := extract_returndata()
                        /// @src 5:2020:2279  "(, bytes memory retdata) = HEVM_ADDRESS.call(..."
                        let var_retdata_19802_mpos := expr_19822_component_2_mpos
                        /// @src 5:2323:2330  "retdata"
                        let _12_mpos := var_retdata_19802_mpos
                        let expr_19827_mpos := _12_mpos
                        /// @src 5:2312:2339  "abi.decode(retdata, (bool))"

                        let expr_19831 :=  abi_decode_tuple_t_bool_fromMemory(add(expr_19827_mpos, 32), add(add(expr_19827_mpos, 32), array_length_t_bytes_memory_ptr(expr_19827_mpos)))
                        /// @src 5:2297:2339  "globalFailed = abi.decode(retdata, (bool))"
                        var_globalFailed_19796 := expr_19831
                        let expr_19832 := expr_19831
                        /// @src 5:1980:2354  "if (hasHEVMContext()) {..."
                    }
                    /// @src 5:2374:2386  "globalFailed"
                    let _13 := var_globalFailed_19796
                    let expr_19836 := _13
                    /// @src 5:2367:2386  "return globalFailed"
                    var__19789 := expr_19836
                    leave
                    /// @src 5:1869:2397  "if (_failed) {..."
                }
                default {
                    /// @src 5:1903:1910  "_failed"
                    let _14 := read_from_storage_split_offset_1_t_bool(0x00)
                    let expr_19792 := _14
                    /// @src 5:1896:1910  "return _failed"
                    var__19789 := expr_19792
                    leave
                    /// @src 5:1869:2397  "if (_failed) {..."
                }

            }
            /// @src 23:87:416  "contract Test25 is Test {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @ast-id 19900
            /// @src 5:2840:3082  "function hasHEVMContext() internal view returns (bool) {..."
            function fun_hasHEVMContext_19900() -> var__19888 {
                /// @src 5:2889:2893  "bool"
                let zero_t_bool_15 := zero_value_for_split_t_bool()
                var__19888 := zero_t_bool_15

                /// @src 5:2928:2929  "0"
                let expr_19892 := 0x00
                /// @src 5:2905:2929  "uint256 hevmCodeSize = 0"
                let var_hevmCodeSize_19891 := convert_t_rational_0_by_1_to_t_uint256(expr_19892)
                /// @src 5:2939:3043  "assembly {..."
                {
                    var_hevmCodeSize_19891 := extcodesize(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D)
                }
                /// @src 5:3059:3071  "hevmCodeSize"
                let _16 := var_hevmCodeSize_19891
                let expr_19895 := _16
                /// @src 5:3074:3075  "0"
                let expr_19896 := 0x00
                /// @src 5:3059:3075  "hevmCodeSize > 0"
                let expr_19897 := gt(cleanup_t_uint256(expr_19895), convert_t_rational_0_by_1_to_t_uint256(expr_19896))
                /// @src 5:3052:3075  "return hevmCodeSize > 0"
                var__19888 := expr_19897
                leave

            }
            /// @src 23:87:416  "contract Test25 is Test {..."

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function cleanup_t_uint64(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffff)
            }

            function convert_t_uint32_to_t_uint64(value) -> converted {
                converted := cleanup_t_uint64(identity(cleanup_t_uint32(value)))
            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint64(value) -> converted {
                converted := cleanup_t_uint64(identity(cleanup_t_rational_1_by_1(value)))
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_add_t_uint64(x, y) -> sum {
                x := cleanup_t_uint64(x)
                y := cleanup_t_uint64(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffff, y)) { panic_error_0x11() }

                sum := add(x, y)
            }

            function convert_t_uint64_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_uint64(value)))
            }

            function cleanup_t_rational_17_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function convert_t_rational_17_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_17_by_1(value)))
            }

            function abi_encode_t_rational_17_by_1_to_t_uint8_fromStack(value, pos) {
                mstore(pos, convert_t_rational_17_by_1_to_t_uint8(value))
            }

            function abi_encode_tuple_t_rational_17_by_1__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_rational_17_by_1_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            /// @src 1:14593:14680  "bytes public constant arithmeticError = abi.encodeWithSignature(\"Panic(uint256)\", 0x11)"
            function constant_arithmeticError_1631() -> ret_mpos {
                /// @src 1:14675:14679  "0x11"
                let expr_1629 := 0x11
                /// @src 1:14633:14680  "abi.encodeWithSignature(\"Panic(uint256)\", 0x11)"

                let expr_1630_mpos := allocate_unbounded()
                let _17 := add(expr_1630_mpos, 0x20)

                mstore(_17, 0x4e487b7100000000000000000000000000000000000000000000000000000000)
                _17 := add(_17, 4)

                let _18 := abi_encode_tuple_t_rational_17_by_1__to_t_uint8__fromStack(_17, expr_1629)
                mstore(expr_1630_mpos, sub(_18, add(expr_1630_mpos, 0x20)))
                finalize_allocation(expr_1630_mpos, sub(_18, expr_1630_mpos))
                let _19_mpos := expr_1630_mpos

                ret_mpos := _19_mpos
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value0,  tail)

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            function convert_t_rational_1_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_1_by_1(value)))
            }

            function checked_add_t_uint32(x, y) -> sum {
                x := cleanup_t_uint32(x)
                y := cleanup_t_uint32(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffff, y)) { panic_error_0x11() }

                sum := add(x, y)
            }

            /// @ast-id 22724
            /// @src 23:179:414  "function test_downcast() external {..."
            function fun_test_downcast_22724() {

                /// @src 23:261:277  "type(uint32).max"
                let expr_22695 := 0xffffffff
                /// @src 23:254:278  "uint64(type(uint32).max)"
                let expr_22696 := convert_t_uint32_to_t_uint64(expr_22695)
                /// @src 23:281:282  "1"
                let expr_22697 := 0x01
                /// @src 23:254:282  "uint64(type(uint32).max) + 1"
                let expr_22698 := checked_add_t_uint64(expr_22696, convert_t_rational_1_by_1_to_t_uint64(expr_22697))

                /// @src 23:247:283  "uint32(uint64(type(uint32).max) + 1)"
                let expr_22699 := convert_t_uint64_to_t_uint32(expr_22698)
                /// @src 23:310:312  "vm"
                let expr_22701_address := constant_vm_30()
                /// @src 23:310:325  "vm.expectRevert"
                let expr_22703_address := convert_t_contract$_Vm_$3540_to_t_address(expr_22701_address)
                let expr_22703_functionSelector := 0xf28dceb3
                /// @src 23:326:334  "stdError"
                let expr_22704_address := linkersymbol("lib/forge-std/src/Test.sol:stdError")
                /// @src 23:326:350  "stdError.arithmeticError"
                let expr_22705_mpos := constant_arithmeticError_1631()
                /// @src 23:310:351  "vm.expectRevert(stdError.arithmeticError)"

                if iszero(extcodesize(expr_22703_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _20 := allocate_unbounded()
                mstore(_20, shift_left_224(expr_22703_functionSelector))
                let _21 := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(add(_20, 4) , expr_22705_mpos)

                let _22 := call(gas(), expr_22703_address,  0,  _20, sub(_21, _20), _20, 0)

                if iszero(_22) { revert_forward_1() }

                if _22 {

                    let _23 := 0

                    if gt(_23, returndatasize()) {
                        _23 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_20, _23)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_20, add(_20, _23))
                }
                /// @src 23:370:386  "type(uint32).max"
                let expr_22714 := 0xffffffff
                /// @src 23:389:390  "1"
                let expr_22715 := 0x01
                /// @src 23:370:390  "type(uint32).max + 1"
                let expr_22716 := checked_add_t_uint32(expr_22714, convert_t_rational_1_by_1_to_t_uint32(expr_22715))

                /// @src 23:359:390  "uint64 a = type(uint32).max + 1"
                let var_a_22709 := convert_t_uint32_to_t_uint64(expr_22716)
                /// @src 23:405:406  "a"
                let _24 := var_a_22709
                let expr_22720 := _24
                /// @src 23:398:407  "uint32(a)"
                let expr_22721 := convert_t_uint64_to_t_uint32(expr_22720)

            }
            /// @src 23:87:416  "contract Test25 is Test {..."

        }

        data ".metadata" hex"a26469706673582212202211b98a5eadc2f8f5d82c39d4de017a82984f6bb8c219da54a408b84323c35f64736f6c634300080f0033"
    }

}


