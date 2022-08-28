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

            /// @ast-id 19850
            /// @src 0:165:193  "bool public IS_SCRIPT = true"
            function getter_fun_IS_SCRIPT_19850() -> ret {

                let slot := 0
                let offset := 2

                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

            }
            /// @src 17:118:534  "contract Test20 is Test {..."

            function external_fun_IS_SCRIPT_19850() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_IS_SCRIPT_19850()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 20167
            /// @src 5:1572:1598  "bool public IS_TEST = true"
            function getter_fun_IS_TEST_20167() -> ret {

                let slot := 0
                let offset := 0

                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

            }
            /// @src 17:118:534  "contract Test20 is Test {..."

            function external_fun_IS_TEST_20167() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_IS_TEST_20167()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function convert_t_rational_2_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_2_by_1(value)))
            }

            function wrapping_add_t_uint32(x, y) -> sum {
                sum := cleanup_t_uint32(add(x, y))
            }

            function convert_t_uint32_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint32(value)))
            }

            /// @ast-id 896
            /// @src 17:316:532  "function test_uint32_overflows() external {..."
            function fun_test_uint32_overflows_896() {

                /// @src 17:379:395  "type(uint32).max"
                let expr_869 := 0xffffffff
                /// @src 17:368:395  "uint32 a = type(uint32).max"
                let var_a_864 := expr_869
                /// @src 17:434:435  "2"
                let expr_872 := 0x02
                /// @src 17:429:435  "a += 2"
                let _3 := convert_t_rational_2_by_1_to_t_uint32(expr_872)
                let _4 := var_a_864
                let expr_873 := wrapping_add_t_uint32(_4, _3)

                var_a_864 := expr_873
                /// @src 17:475:476  "a"
                let _5 := var_a_864
                let expr_880 := _5
                /// @src 17:467:477  "uint256(a)"
                let expr_881 := convert_t_uint32_to_t_uint256(expr_880)
                /// @src 17:455:477  "uint256 b = uint256(a)"
                let var_b_877 := expr_881
                /// @src 17:487:494  "console"
                let expr_883_address := linkersymbol("lib/forge-std/src/console.sol:console")
                /// @src 17:499:500  "a"
                let _6 := var_a_864
                let expr_886 := _6
                /// @src 17:487:501  "console.log(a)"
                let _7 := convert_t_uint32_to_t_uint256(expr_886)
                fun_log_4295(_7)
                /// @src 17:511:518  "console"
                let expr_889_address := linkersymbol("lib/forge-std/src/console.sol:console")
                /// @src 17:523:524  "b"
                let _8 := var_b_877
                let expr_892 := _8
                fun_log_4295(expr_892)

            }
            /// @src 17:118:534  "contract Test20 is Test {..."

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

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

            /// @ast-id 4295
            /// @src 3:5514:5624  "function log(uint p0) internal view {..."
            function fun_log_4295(var_p0_4283) {

                /// @src 3:5613:5615  "p0"
                let _9 := var_p0_4283
                let expr_4290 := _9
                /// @src 3:5576:5616  "abi.encodeWithSignature(\"log(uint)\", p0)"

                let expr_4291_mpos := allocate_unbounded()
                let _10 := add(expr_4291_mpos, 0x20)

                mstore(_10, 0xf5b1bba900000000000000000000000000000000000000000000000000000000)
                _10 := add(_10, 4)

                let _11 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_10, expr_4290)
                mstore(expr_4291_mpos, sub(_11, add(expr_4291_mpos, 0x20)))
                finalize_allocation(expr_4291_mpos, sub(_11, expr_4291_mpos))
                fun__sendLogPayload_3738(expr_4291_mpos)

            }
            /// @src 17:118:534  "contract Test20 is Test {..."

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            /// @src 3:88:174  "address constant CONSOLE_ADDRESS = address(0x000000000000000000636F6e736F6c652e6c6f67)"
            function constant_CONSOLE_ADDRESS_3722() -> ret {
                /// @src 3:131:173  "0x000000000000000000636F6e736F6c652e6c6f67"
                let expr_3720 := 0x636f6e736f6c652e6c6f67
                /// @src 3:123:174  "address(0x000000000000000000636F6e736F6c652e6c6f67)"
                let expr_3721 := expr_3720
                let _13 := expr_3721

                ret := _13
            }

            /// @ast-id 3738
            /// @src 3:181:557  "function _sendLogPayload(bytes memory payload) private view {..."
            function fun__sendLogPayload_3738(var_payload_3724_mpos) {

                /// @src 3:275:282  "payload"
                let _12_mpos := var_payload_3724_mpos
                let expr_3729_mpos := _12_mpos
                /// @src 3:275:289  "payload.length"
                let expr_3730 := array_length_t_bytes_memory_ptr(expr_3729_mpos)
                /// @src 3:251:289  "uint256 payloadLength = payload.length"
                let var_payloadLength_3728 := expr_3730
                /// @src 3:324:339  "CONSOLE_ADDRESS"
                let expr_3734 := constant_CONSOLE_ADDRESS_3722()
                /// @src 3:299:339  "address consoleAddress = CONSOLE_ADDRESS"
                let var_consoleAddress_3733 := expr_3734
                /// @src 3:392:551  "assembly {..."
                {
                    let usr$payloadStart := add(var_payload_3724_mpos, 32)
                    let usr$r := staticcall(gas(), var_consoleAddress_3733, usr$payloadStart, var_payloadLength_3728, 0, 0)
                }

            }
            /// @src 17:118:534  "contract Test20 is Test {..."

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
            function constant_HEVM_ADDRESS_20186() -> ret {
                /// @src 5:1703:1731  "keccak256('hevm cheat code')"
                let expr_20181 := 0x885cb69240a935d632d79c317109709ecfa91a80626ff3989d68f67f5b1dd12d
                /// @src 5:1695:1732  "uint256(keccak256('hevm cheat code'))"
                let expr_20182 := convert_t_bytes32_to_t_uint256(expr_20181)
                /// @src 5:1687:1733  "uint160(uint256(keccak256('hevm cheat code')))"
                let expr_20183 := convert_t_uint256_to_t_uint160(expr_20182)
                /// @src 5:1679:1734  "bytes20(uint160(uint256(keccak256('hevm cheat code'))))"
                let expr_20184 := convert_t_uint160_to_t_bytes20(expr_20183)
                /// @src 5:1671:1735  "address(bytes20(uint160(uint256(keccak256('hevm cheat code')))))"
                let expr_20185 := convert_t_bytes20_to_t_address(expr_20184)
                let _16 := expr_20185

                ret := _16
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

            function leftAlign_t_bytes4(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes4_to_t_bytes4_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes4(cleanup_t_bytes4(value)))
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

            /// @ast-id 20251
            /// @src 5:1819:2403  "function failed() public returns (bool) {..."
            function fun_failed_20251() -> var__20199 {
                /// @src 5:1853:1857  "bool"
                let zero_t_bool_14 := zero_value_for_split_t_bool()
                var__20199 := zero_t_bool_14

                /// @src 5:1873:1880  "_failed"
                let _15 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_20201 := _15
                /// @src 5:1869:2397  "if (_failed) {..."
                switch expr_20201
                case 0 {
                    /// @src 5:1961:1966  "false"
                    let expr_20207 := 0x00
                    /// @src 5:1941:1966  "bool globalFailed = false"
                    let var_globalFailed_20206 := expr_20207
                    /// @src 5:1984:2000  "hasHEVMContext()"
                    let expr_20210 := fun_hasHEVMContext_20310()
                    /// @src 5:1980:2354  "if (hasHEVMContext()) {..."
                    if expr_20210 {
                        /// @src 5:2047:2059  "HEVM_ADDRESS"
                        let expr_20213 := constant_HEVM_ADDRESS_20186()
                        /// @src 5:2047:2064  "HEVM_ADDRESS.call"
                        let expr_20214_address := expr_20213
                        /// @src 5:2135:2169  "keccak256(\"load(address,bytes32)\")"
                        let expr_20221 := 0x667f9d70ca411d70ead50d8d5c22070dafc36ad75f3dcf5e7237b22ade9aecc4
                        /// @src 5:2128:2170  "bytes4(keccak256(\"load(address,bytes32)\"))"
                        let expr_20222 := convert_t_bytes32_to_t_bytes4(expr_20221)
                        /// @src 5:2207:2219  "HEVM_ADDRESS"
                        let expr_20225 := constant_HEVM_ADDRESS_20186()
                        /// @src 5:2221:2238  "bytes32(\"failed\")"
                        let expr_20229 := convert_t_stringliteral_8f44d68b1a26169d304522fa2f95aa938d98120d628d1db5726120ca84e53b43_to_t_bytes32()
                        /// @src 5:2196:2239  "abi.encode(HEVM_ADDRESS, bytes32(\"failed\"))"

                        let expr_20230_mpos := allocate_unbounded()
                        let _17 := add(expr_20230_mpos, 0x20)

                        let _18 := abi_encode_tuple_t_address_t_bytes32__to_t_address_t_bytes32__fromStack(_17, expr_20225, expr_20229)
                        mstore(expr_20230_mpos, sub(_18, add(expr_20230_mpos, 0x20)))
                        finalize_allocation(expr_20230_mpos, sub(_18, expr_20230_mpos))
                        /// @src 5:2086:2261  "abi.encodePacked(..."

                        let expr_20231_mpos := allocate_unbounded()
                        let _19 := add(expr_20231_mpos, 0x20)

                        let _20 := abi_encode_tuple_packed_t_bytes4_t_bytes_memory_ptr__to_t_bytes4_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_19, expr_20222, expr_20230_mpos)
                        mstore(expr_20231_mpos, sub(_20, add(expr_20231_mpos, 0x20)))
                        finalize_allocation(expr_20231_mpos, sub(_20, expr_20231_mpos))
                        /// @src 5:2047:2279  "HEVM_ADDRESS.call(..."

                        let _21 := add(expr_20231_mpos, 0x20)
                        let _22 := mload(expr_20231_mpos)

                        let expr_20232_component_1 := call(gas(), expr_20214_address,  0,  _21, _22, 0, 0)
                        let expr_20232_component_2_mpos := extract_returndata()
                        /// @src 5:2020:2279  "(, bytes memory retdata) = HEVM_ADDRESS.call(..."
                        let var_retdata_20212_mpos := expr_20232_component_2_mpos
                        /// @src 5:2323:2330  "retdata"
                        let _23_mpos := var_retdata_20212_mpos
                        let expr_20237_mpos := _23_mpos
                        /// @src 5:2312:2339  "abi.decode(retdata, (bool))"

                        let expr_20241 :=  abi_decode_tuple_t_bool_fromMemory(add(expr_20237_mpos, 32), add(add(expr_20237_mpos, 32), array_length_t_bytes_memory_ptr(expr_20237_mpos)))
                        /// @src 5:2297:2339  "globalFailed = abi.decode(retdata, (bool))"
                        var_globalFailed_20206 := expr_20241
                        let expr_20242 := expr_20241
                        /// @src 5:1980:2354  "if (hasHEVMContext()) {..."
                    }
                    /// @src 5:2374:2386  "globalFailed"
                    let _24 := var_globalFailed_20206
                    let expr_20246 := _24
                    /// @src 5:2367:2386  "return globalFailed"
                    var__20199 := expr_20246
                    leave
                    /// @src 5:1869:2397  "if (_failed) {..."
                }
                default {
                    /// @src 5:1903:1910  "_failed"
                    let _25 := read_from_storage_split_offset_1_t_bool(0x00)
                    let expr_20202 := _25
                    /// @src 5:1896:1910  "return _failed"
                    var__20199 := expr_20202
                    leave
                    /// @src 5:1869:2397  "if (_failed) {..."
                }

            }
            /// @src 17:118:534  "contract Test20 is Test {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @ast-id 20310
            /// @src 5:2840:3082  "function hasHEVMContext() internal view returns (bool) {..."
            function fun_hasHEVMContext_20310() -> var__20298 {
                /// @src 5:2889:2893  "bool"
                let zero_t_bool_26 := zero_value_for_split_t_bool()
                var__20298 := zero_t_bool_26

                /// @src 5:2928:2929  "0"
                let expr_20302 := 0x00
                /// @src 5:2905:2929  "uint256 hevmCodeSize = 0"
                let var_hevmCodeSize_20301 := convert_t_rational_0_by_1_to_t_uint256(expr_20302)
                /// @src 5:2939:3043  "assembly {..."
                {
                    var_hevmCodeSize_20301 := extcodesize(0x7109709ECfa91a80626fF3989D68f67F5b1DD12D)
                }
                /// @src 5:3059:3071  "hevmCodeSize"
                let _27 := var_hevmCodeSize_20301
                let expr_20305 := _27
                /// @src 5:3074:3075  "0"
                let expr_20306 := 0x00
                /// @src 5:3059:3075  "hevmCodeSize > 0"
                let expr_20307 := gt(cleanup_t_uint256(expr_20305), convert_t_rational_0_by_1_to_t_uint256(expr_20306))
                /// @src 5:3052:3075  "return hevmCodeSize > 0"
                var__20298 := expr_20307
                leave

            }
            /// @src 17:118:534  "contract Test20 is Test {..."

        }

        data ".metadata" hex"a264697066735822122009e29046e7b7000573131565850f823b486576aa7c49628fb38876ef6192f6fd64736f6c634300080f0033"
    }

}
