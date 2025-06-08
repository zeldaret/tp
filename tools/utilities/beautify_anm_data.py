#
# Author: YunataSavior
# Brief: Converts byte-array anm data into their proper forms.
#
# Used for decompiling d_a_npc_ETC TUs.
#

import os
import re
import sys


FACE_MOTION_TYPE = "daNpcT_faceMotionAnmData_c l_faceMotionAnmData"
FACE_MOTION_PATTERN = r'SECTION_DATA static u8 l_faceMotionAnmData\[\d+\] = {'

MOTION_TYPE = "daNpcT_motionAnmData_c l_motionAnmData"
MOTION_PATTERN = r'SECTION_DATA static u8 l_motionAnmData\[\d+\] = {'

SEQ_FACE_MOTION_TYPE = "daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData"
SEQ_FACE_MOTION_PATTERN = "SECTION_DATA static u8 l_faceMotionSequenceData\[\d+\] = {"

SEQ_MOTION_TYPE = "daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData"
SEQ_MOTION_PATTERN = "SECTION_DATA static u8 l_motionSequenceData\[\d+\] = {"

HEAP_SIZE_TYPE = "int const heapSize"
HEAP_SIZE_PATTERN = "SECTION_RODATA static u8 const heapSize\[\d+\] = {"

PARAM_TYPE = "::m"
PARAM_PATTERN = r'SECTION_RODATA u8 const (\w+_Param_c)::m\[\d+\] = {'


def twos_complement(hexstr, bits):
    # https://stackoverflow.com/questions/6727875/hex-string-to-signed-int-in-python
    value = int(hexstr, 16)
    if value & (1 << (bits - 1)):
        value -= 1 << bits

    return value


def build_anm_struct(byte_collection, anm_type, param_name):
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
            instr_arr = ["s4"]

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
    if anm_type is PARAM_TYPE:
        res_str += "struct Data {\n"
        idx = 0
        while idx < my_len:
            upper = f'{idx:02X}'
            lower = f'{idx:02x}'
            res_str += "    /* 0x{} */ u32 field_0x{};\n".format(upper, lower)
            idx += 4
        res_str += "};\n"
        res_str += "static const Data m;\n\n"
        res_str += "{}::Data const {}::m".format(param_name, param_name)
    else:
        res_str += "static {}".format(anm_type)

    res_len = my_len / piece_size
    cutoff_num = 1
    if anm_type is SEQ_FACE_MOTION_TYPE or anm_type is SEQ_MOTION_TYPE:
        cutoff_num = 8
    elif anm_type is HEAP_SIZE_TYPE:
        cutoff_num = 12

    if anm_type is not PARAM_TYPE:
        res_str += "[{}]".format(int(res_len))

    res_str += " = {\n"
    cur_in_line = 0
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

    if cur_in_line != 0:
        res_str += "\n"

    res_str += "};\n"
    print(res_str)


def run_beautify_anm_data(in_file):
    fDesc = open(in_file, 'r')
    fConts = fDesc.read()
    lines = fConts.splitlines()

    in_byte_array = False
    byte_collection = []
    anm_type = ""
    param_name = ""

    for line in lines:
        words = line.split()
        if len(words) == 0:
            continue

        if in_byte_array is False:
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
            else:
                match = re.search(PARAM_PATTERN, line)
                if match:
                    in_byte_array = True
                    anm_type = PARAM_TYPE
                    param_name = match.group(1)
        else:
            if words[0] == '};':
                build_anm_struct(byte_collection, anm_type, param_name)
                in_byte_array = False
                byte_collection.clear()
            else:
                bytes = re.split(r'[,\s]+', line)
                for byte in bytes:
                    if (len(byte) == 0):
                        continue
                    byte_collection.append(byte)

    # End of for loop.
    fDesc.close()


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 beautify_anm_data.py <filename>")
        sys.exit(1)

    in_file = sys.argv[1]

    # Check if the file exists
    if not os.path.isfile(in_file):
        print(f"Error: File '{in_file}' not found.")
        sys.exit(1)

    run_beautify_anm_data(in_file)
