#
# Version v2.0
#
# Author: YunataSavior
# Brief: Converts byte-array anm data into their proper forms.
#
# Used for decompiling d_a_npc_ETC TUs.
#

import fire
import os
import re
import sys
import struct


FACE_MOTION_TYPE = "daNpcT_faceMotionAnmData_c l_faceMotionAnmData"
FACE_MOTION_PATTERN = r'SECTION_DATA static u8 l_faceMotionAnmData\[\d+\] = {'

MOTION_TYPE = "daNpcT_motionAnmData_c l_motionAnmData"
MOTION_PATTERN = r'SECTION_DATA static u8 l_motionAnmData\[\d+\] = {'

SEQ_FACE_MOTION_TYPE = "daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData"
SEQ_FACE_MOTION_PATTERN = r'SECTION_DATA static u8 l_faceMotionSequenceData\[\d+\] = {'

SEQ_MOTION_TYPE = "daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData"
SEQ_MOTION_PATTERN = r'SECTION_DATA static u8 l_motionSequenceData\[\d+\] = {'

HEAP_SIZE_TYPE = "int const heapSize"
HEAP_SIZE_PATTERN = r'SECTION_RODATA static u8 const heapSize\[\d+\] = {'

BMD_DATA_TYPE = "int l_bmdData"
BMD_DATA_PATTERN = r'SECTION_DATA static u8 l_bmdData\[\d+\] = {'

PARAM_TYPE = "::m"
PARAM_PATTERN = r'SECTION_RODATA u8 const (\w+_Param_c)::m\[\d+\] = {'

EVT_LIST_PATTERN = r'SECTION_DATA static void\* l_evtList\[\d+\] = {'
RES_NAME_PATTERN = r'SECTION_DATA static void\* l_resNameList\[\d+\] = {'
RESNAMES_PATTERN = r'SECTION_DATA static void\* l_resNames\[\d+\] = {'
EVT_NAMES_PATTERN = r'SECTION_DATA static void\* l_evtNames\[\d+\] = {'
ARCNAMES_BR_PATTERN = r'SECTION_DATA static void\* l_arcNames\[\d+\] = {'
MYNAME_BR_PATTERN = r'SECTION_DATA static void\* l_myName\[\d+\] = {'
CUT_NAME_PATTERN = r'SECTION_DATA void\* ([a-zA-Z_][a-zA-Z0-9_]*)::mCutNameList\[(\d+)\] = \{'
EVTCUT_NAME_PATTERN = r'SECTION_DATA void\* ([a-zA-Z_][a-zA-Z0-9_]*)::mEvtCutNameList\[(\d+)\] = \{'
VOID_PTR_INT_PATTERN = r'\(void\*\)(NULL|0x[0-9A-Fa-f]+)'

STRING_BASE_PATTERN = r'^SECTION_DEAD static char const\* const stringBase_([0-9A-Fa-f]+)\s*=\s*(".*?");'
STR_NO_OFFSET_PATTERN = r'\(void\*\)&([a-zA-Z0-9_]+)__stringBase0'
STR_WITH_OFFSET_PATTERN = r'\(void\*\)\(\(\(char\*\)&([a-zA-Z0-9_]+)__stringBase0\) \+ 0x([0-9A-Fa-f]+)\)'

ARCNAMES_NO_OFF_PATTERN = r'SECTION_DATA static void\* l_arcNames = \(void\*\)&([a-zA-Z0-9_]+)__stringBase0;'
MY_NAME_NO_OFF_PATTERN = r'SECTION_DATA static void\* l_myName = \(void\*\)&([a-zA-Z0-9_]+)__stringBase0;'
MY_NAME_W_OFF_PATTERN = r'SECTION_DATA static void\* l_myName = \(void\*\)\(\(\(char\*\)&([a-zA-Z0-9_]+)__stringBase0\) \+ 0x([0-9A-Fa-f]+)\);'


def unsigned_val(hexstr):
    value = int(hexstr, 16)
    return value


def twos_complement(hexstr, bits):
    # https://stackoverflow.com/questions/6727875/hex-string-to-signed-int-in-python
    value = int(hexstr, 16)
    if value & (1 << (bits - 1)):
        value -= 1 << bits

    return value


def prm_is_float(hex_str):
    value = int(hex_str, 16)
    exponent_raw = (value >> 23) & 0xFF  # Get bits 30-23
    exponent_actual = exponent_raw - 127  # Remove bias
    # print(exponent_actual)
    EXP_TOLERANCE = 10
    if exponent_actual < EXP_TOLERANCE * -1:
        return False

    if exponent_actual > EXP_TOLERANCE:
        return False

    return True


# Expects NO leading "0x":
def hex_to_float(hex_str):
    return struct.unpack('!f', bytes.fromhex(hex_str))[0]


def float_to_hex(f):
    [d] = struct.unpack(">I", struct.pack(">f", f))
    return f"{d:08X}"


def handle_npc_param(byte_collection, param_name, type, no_auto_float):
    my_len = len(byte_collection)
    if my_len % 4 != 0:
        print(f"Error: len() = '{my_len}' isn't divisble by 4")
        sys.exit(1)

    # Special handling.
    instr_arr = []
    common_name = ""
    is_raw = False
    if type is None:
        print("ERROR: --type <type> must be specified")
        sys.exit(1)
    elif type == "raw":
        print("// Make sure the type isn't actually daNpcT nor daNpcF.")
        is_raw = True
    elif type == "daNpcT":
        common_name = "daNpcT_HIOParam"
        instr_arr = [
            "f4",  # attention_offset;
            "f4",  # gravity;
            "f4",  # scale;
            "f4",  # real_shadow_size;
            "f4",  # weight;
            "f4",  # height;
            "f4",  # knee_length;
            "f4",  # width;
            "f4",  # body_angleX_max;
            "f4",  # body_angleX_min;
            "f4",  # body_angleY_max;
            "f4",  # body_angleY_min;
            "f4",  # head_angleX_max;
            "f4",  # head_angleX_min;
            "f4",  # head_angleY_max;
            "f4",  # head_angleY_min;
            "f4",  # neck_rotation_ratio;
            "f4",  # morf_frame;
            "s2",  # talk_distance;
            "s2",  # talk_angle;
            "s2",  # attention_distance;
            "s2",  # attention_angle;
            "f4",  # fov;
            "f4",  # search_distance;
            "f4",  # search_height;
            "f4",  # search_depth;
            "s2",  # attention_time;
            "s2",  # damage_time;
            "s2",  # face_expression;
            "s2",  # motion;
            "s2",  # look_mode;
            "u1",  # debug_mode_ON;
            "u1",  # debug_info_ON;
            "f4",  # expression_morf_frame;
            "f4",  # box_min_x;
            "f4",  # box_min_y;
            "f4",  # box_min_z;
            "f4",  # box_max_x;
            "f4",  # box_max_y;
            "f4",  # box_max_z;
            "f4",  # box_offset;
        ]
    elif type == "daNpcF":
        # TODO
        print("ERROR: --type daNpcF is currently unsupported.")
        print("    You can try to implement it yourself.")
        print("    If you need help with this, please seek the help of yunatasavior on Discord.")
        sys.exit(1)
    else:
        print(f"ERROR: --type {type} is unsupported. Please review the script to see which are supported.")
        sys.exit(1)

    ptr = 0
    cur_instr = 0
    hexstr = ""
    res_array = []
    common_size = 0
    prms_is_float: list[bool] = []
    while ptr < my_len:
        curbyte = byte_collection[ptr]
        ptr += 1
        if curbyte[:2] != "0x" or len(curbyte) != 4:
            print(f"Error: '{curbyte}' isn't formatted as a byte")
            sys.exit(1)

        hexstr += curbyte[-2:]
        my_type = "h"
        exp_bytes = 4
        if cur_instr < len(instr_arr):
            my_type = instr_arr[cur_instr][0]
            exp_bytes = int(instr_arr[cur_instr][1])

        if len(hexstr) / 2 == exp_bytes:
            if my_type == 'u':
                val = unsigned_val(hexstr)
                res_array.append(val)
            elif my_type == 's':
                val = twos_complement(hexstr, exp_bytes*8)
                res_array.append(val)
            elif my_type == 'h':
                if is_raw or common_size != 0:
                    if no_auto_float:
                        prms_is_float.append(False)
                    else:
                        prms_is_float.append(prm_is_float(hexstr))
                res_array.append("0x" + hexstr)
            elif my_type == 'f':
                fvalue = hex_to_float(hexstr)
                fvalue = round(fvalue, 6)
                chk_val = float_to_hex(fvalue)
                assert chk_val == hexstr, f"fvalue({fvalue}): chk_val {chk_val} != hexstr {hexstr}"
                res_array.append(fvalue)
            else:
                print(f"Error: unknown type '{my_type}'")
                sys.exit(1)

            hexstr = ""
            if not is_raw and common_size == 0:
                cur_instr += 1

            if not is_raw and cur_instr == len(instr_arr):
                if common_size == 0:
                    common_size = ptr

    assert is_raw or common_size != 0, "Param array is too short for specified type"
    hio_name = re.sub(r'_Param_c$', '_HIOParam', param_name)
    res_str = "// Must be put OUTSIDE {}:\n".format(param_name)
    res_str += "struct {} {{\n".format(hio_name)
    idx = common_size
    if not is_raw:
        res_str += "    /* 0x00 */ {} common;\n".format(common_name)
    while idx < my_len:
        upper = f'{idx:02X}'
        lower = f'{idx:02x}'
        mych = 'f' if (prms_is_float[int((idx-common_size) / 4)] is True) else 'u'
        res_str += "    /* 0x{} */ {}32 field_0x{};\n".format(upper, mych, lower)
        idx += 4

    res_str += "};\n\n"
    res_str += "// Must be put INSIDE {}:\n".format(param_name)
    res_str += "static const {} m;\n\n".format(hio_name)
    res_str += "const {} {}::m".format(hio_name, param_name)

    res_str += " = {\n"
    cur_pos = 0
    for value in res_array:
        res_str += "    "

        if isinstance(value, int):
            res_str += str(value)
        elif isinstance(value, float):
            res_str += str(value) + "f"
        else:
            adj_pos = cur_pos - len(instr_arr)
            if adj_pos >= 0 and prms_is_float[adj_pos] is True:
                fvalue = hex_to_float(value[2:])
                fvalue = round(fvalue, 6)
                res_str += f"{fvalue}f"
                chk_val = "0x" + float_to_hex(fvalue)
                # Sanity check in case rounding is too aggressive:
                assert chk_val == value, f"chk_val {chk_val} != value {value}"
                # if prmfloat_dbg is True:
                #     res_str += f" // {value}"
            else:
                res_str += value
        res_str += ",\n"
        cur_pos += 1

    res_str += "};\n"
    print(res_str)


def build_anm_struct(byte_collection, anm_type):
    my_len = len(byte_collection)
    piece_size = 1
    instr_arr = []
    is_array = False
    if anm_type is PARAM_TYPE:
        # Special handling.
        if my_len % 4 != 0:
            print(f"Error: len() = '{my_len}' isn't divisble by 4")
            sys.exit(1)

        piece_size = 4
        instr_arr = ["h4"]
    else:
        if anm_type is FACE_MOTION_TYPE:
            piece_size = 28
            instr_arr = ["s4", "s4", "s4", "s4", "s4", "s4", "s4"]
            is_array = True
        elif anm_type is MOTION_TYPE:
            piece_size = 28
            instr_arr = ["s4", "s4", "s4", "s4", "s4", "s4", "s2", "s2"]
            is_array = True
        elif anm_type is SEQ_FACE_MOTION_TYPE or anm_type is SEQ_MOTION_TYPE:
            piece_size = 4
            instr_arr = ["s2", "s1", "s1"]
            is_array = True
        elif anm_type is HEAP_SIZE_TYPE:
            piece_size = 4
            instr_arr = ["h4"]
        elif anm_type is BMD_DATA_TYPE:
            piece_size = 8
            instr_arr = ["s4", "s4"]
            is_array = True

        if my_len % piece_size != 0:
            print(f"Error: len() = '{my_len}' isn't divisble by '{piece_size}'")
            sys.exit(1)

    ptr = 0
    cur_instr = 0
    hexstr = ""
    full_res_arr = []
    pos_arr = []
    while ptr < my_len:
        curbyte = byte_collection[ptr]
        ptr += 1
        if curbyte[:2] != "0x" or len(curbyte) != 4:
            print(f"Error: '{curbyte}' isn't formatted as a byte")
            sys.exit(1)

        hexstr += curbyte[-2:]
        exp_bytes = int(instr_arr[cur_instr][1])
        if len(hexstr) / 2 == exp_bytes:
            my_type = instr_arr[cur_instr][0]
            if my_type == 's':
                val = twos_complement(hexstr, exp_bytes*8)
                pos_arr.append(val)
            elif my_type == 'h':
                if anm_type is HEAP_SIZE_TYPE:
                    trimmed = hexstr.lstrip('0')
                    hexstr = trimmed if trimmed else '0'
                pos_arr.append("0x" + hexstr)
            else:
                print(f"Error: unknown type '{my_type}'")
                sys.exit(1)

            hexstr = ""
            cur_instr += 1
            if cur_instr == len(instr_arr):
                cur_instr = 0
                full_res_arr.append(pos_arr.copy())
                pos_arr.clear()

    res_str = ""
    res_str += "static {}".format(anm_type)

    res_len = my_len / piece_size
    cutoff_num = 1
    if anm_type is SEQ_FACE_MOTION_TYPE or anm_type is SEQ_MOTION_TYPE:
        cutoff_num = 8
    elif anm_type is HEAP_SIZE_TYPE:
        cutoff_num = 4

    res_str += "[{}]".format(int(res_len))
    if anm_type == BMD_DATA_TYPE:
        res_str += "[2]"

    res_str += " = {\n"
    cur_in_line = 0
    cur_idx = 0
    for my_arr in full_res_arr:
        if cur_in_line == 0:
            res_str += "    "

        if is_array is True:
            res_str += "{"

        in_mid = False
        for value in my_arr:
            if in_mid is False:
                in_mid = True
            else:
                res_str += ", "

            if isinstance(value, int):
                res_str += str(value)
            elif isinstance(value, float):
                res_str += str(value) + "f"
            else:
                res_str += value

        if is_array is True:
            res_str += "}"

        res_str += ","
        cur_in_line += 1
        if cur_in_line == cutoff_num:
            cur_in_line = 0
            res_str += "\n"
        else:
            res_str += " "

        cur_idx += 1

    if cur_in_line != 0:
        res_str += "\n"

    res_str += "};\n"
    print(res_str)


def handle_charptr_array(int_collection, charptr_collection, charptr_type, class_name):
    res_str = ""
    basic_str_list = {
        "l_evtNames", "l_arcNames", "l_resNameList", "l_resNames", "l_myName"
    }
    evt_str_list = {
        "mCutNameList", "mEvtCutNameList"
    }
    if charptr_type == "l_evtList":
        assert len(charptr_collection) == len(int_collection)
        res_str += f"static daNpcT_evtData_c l_evtList[{len(charptr_collection)}] = {{\n"
    elif charptr_type in basic_str_list:
        res_str += f"static char* {charptr_type}[{len(charptr_collection)}] = {{\n"
    elif charptr_type in evt_str_list:
        res_str += f"char* {class_name}::{charptr_type}[{len(charptr_collection)}] = {{\n"
    else:
        raise Exception(f"Unknown charptr_type \"{charptr_type}\"")

    for idx in range(len(charptr_collection)):
        col_val = charptr_collection[idx]
        if isinstance(col_val, int) and col_val == -1:
            res_str += "    NULL,\n"
        elif charptr_type == "l_evtList":
            res_str += f"    {{{col_val}, {int_collection[idx]}}},\n"
        else:
            res_str += f"    {col_val},\n"

    res_str += "};\n"
    print(res_str)


def run_beautify_anm_data(in_file, type=None, no_auto_float=False, stronly=False):
    # Check if the file exists
    if not os.path.isfile(in_file):
        print(f"Error: File '{in_file}' not found.")
        sys.exit(1)

    fDesc = open(in_file, 'r')
    fConts = fDesc.read()
    lines = fConts.splitlines()

    in_byte_array = False
    in_charptr_array = False
    byte_collection = []
    charptr_collection = []
    int_collection = []
    anm_type = ""
    charptr_type = ""
    param_name = ""
    class_name = ""

    str_lit_start = 0
    strlit_map = {}

    for line in lines:
        words = line.split()
        if len(words) == 0:
            continue

        sb_match = re.search(STRING_BASE_PATTERN, line)
        if sb_match:
            addr = sb_match.group(1)
            string_lit = sb_match.group(2)
            addr_int = unsigned_val(addr)
            offset = 0
            if str_lit_start == 0:
                str_lit_start = addr_int
            else:
                offset = addr_int - str_lit_start
            # print(f"Address: 0x{addr}, Offset: {offset} String: {string_lit}")
            strlit_map[offset] = string_lit
            continue

        if in_byte_array is False and in_charptr_array is False:
            if re.search(FACE_MOTION_PATTERN, line):
                in_byte_array = True
                anm_type = FACE_MOTION_TYPE
            elif re.search(MOTION_PATTERN, line):
                in_byte_array = True
                anm_type = MOTION_TYPE
            elif re.search(SEQ_FACE_MOTION_PATTERN, line):
                in_byte_array = True
                anm_type = SEQ_FACE_MOTION_TYPE
            elif re.search(SEQ_MOTION_PATTERN, line):
                in_byte_array = True
                anm_type = SEQ_MOTION_TYPE
            elif re.search(HEAP_SIZE_PATTERN, line):
                in_byte_array = True
                anm_type = HEAP_SIZE_TYPE
            elif re.search(BMD_DATA_PATTERN, line):
                in_byte_array = True
                anm_type = BMD_DATA_TYPE
            elif re.search(EVT_LIST_PATTERN, line):
                in_charptr_array = True
                charptr_type = "l_evtList"
            elif re.search(RES_NAME_PATTERN, line):
                in_charptr_array = True
                charptr_type = "l_resNameList"
            elif re.search(RESNAMES_PATTERN, line):
                in_charptr_array = True
                charptr_type = "l_resNames"
            elif re.search(EVT_NAMES_PATTERN, line):
                in_charptr_array = True
                charptr_type = "l_evtNames"
            elif re.search(ARCNAMES_BR_PATTERN, line):
                in_charptr_array = True
                charptr_type = "l_arcNames"
            elif re.search(MYNAME_BR_PATTERN, line):
                in_charptr_array = True
                charptr_type = "l_myName"
            elif re.search(ARCNAMES_NO_OFF_PATTERN, line):
                the_name = strlit_map[0]
                print(f"static char* l_arcNames[1] = {{{the_name}}};")
            elif re.search(MY_NAME_NO_OFF_PATTERN, line):
                the_name = strlit_map[0]
                print(f"static char* l_myName = {the_name};")
            elif match := re.search(MY_NAME_W_OFF_PATTERN, line):
                offset = int(match.group(2), 16)
                the_name = strlit_map[offset]
                print(f"static char* l_myName = {the_name};")
            elif match := re.search(CUT_NAME_PATTERN, line):
                in_charptr_array = True
                class_name = match.group(1)
                # print(f"Class: {class_name}, Array Size: {match.group(2)}")
                charptr_type = "mCutNameList"
            elif match := re.search(EVTCUT_NAME_PATTERN, line):
                in_charptr_array = True
                class_name = match.group(1)
                charptr_type = "mEvtCutNameList"
            else:
                match = re.search(PARAM_PATTERN, line)
                if match:
                    in_byte_array = True
                    anm_type = PARAM_TYPE
                    param_name = match.group(1)
        else:
            if words[0] == '};':
                if in_byte_array:
                    if stronly:
                        in_byte_array = False
                        byte_collection.clear()
                        continue
                    if anm_type == PARAM_TYPE:
                        handle_npc_param(byte_collection, param_name, type, no_auto_float)
                    else:
                        build_anm_struct(byte_collection, anm_type)
                    in_byte_array = False
                    byte_collection.clear()
                else:
                    handle_charptr_array(int_collection, charptr_collection, charptr_type, class_name)
                    int_collection.clear()
                    charptr_collection.clear()
                    in_charptr_array = False
            else:
                if in_byte_array:
                    bytes = re.split(r'[,\s]+', line)
                    for byte in bytes:
                        if (len(byte) == 0):
                            continue
                        byte_collection.append(byte)
                else:
                    if re.search(STR_NO_OFFSET_PATTERN, line):
                        # symbol = match_no_offset.group(1)
                        offset = 0
                        # print(f"Symbol: {symbol}, Offset: {offset}")
                        charptr_collection.append(strlit_map[offset])
                    elif match_offset := re.search(STR_WITH_OFFSET_PATTERN, line):
                        # symbol = match_offset.group(1)
                        offset = int(match_offset.group(2), 16)
                        # print(f"Symbol: {symbol}, Offset: {offset}")
                        charptr_collection.append(strlit_map[offset])
                    elif vip_match := re.search(VOID_PTR_INT_PATTERN, line):
                        if charptr_type == "l_evtNames":
                            charptr_collection.append(-1)
                        else:
                            assert charptr_type == "l_evtList"
                            value_str = vip_match.group(1)
                            if value_str == 'NULL':
                                value = 0
                            else:
                                value = int(value_str, 16)
                            # print(f"Parsed Value: {value}")
                            int_collection.append(value)
                    else:
                        raise Exception(f"ptr parsing: unknown line type: \"{line}\"")

    # End of for loop.
    fDesc.close()


if __name__ == "__main__":
    fire.Fire(run_beautify_anm_data)
