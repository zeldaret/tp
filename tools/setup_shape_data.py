import struct
import click
import sys
import os
import re
import subprocess

# Enum mappings
cCcD_ObjAtType = {
    0x00000002: "AT_TYPE_NORMAL_SWORD",
    0x00000004: "AT_TYPE_HORSE",
    0x00000008: "AT_TYPE_THROW_OBJ",
    0x00000010: "AT_TYPE_SHIELD_ATTACK",
    0x00000020: "AT_TYPE_BOMB",
    0x00000040: "AT_TYPE_40",
    0x00000080: "AT_TYPE_SLINGSHOT",
    0x00000200: "AT_TYPE_LANTERN_SWING",
    0x00000400: "AT_TYPE_CSTATUE_SWING",
    0x00000800: "AT_TYPE_800",
    0x00001000: "AT_TYPE_1000",
    0x00002000: "AT_TYPE_ARROW",
    0x00004000: "AT_TYPE_HOOKSHOT",
    0x00010000: "AT_TYPE_BOOMERANG",
    0x00040000: "AT_TYPE_40000",
    0x00080000: "AT_TYPE_SPINNER",
    0x00100000: "AT_TYPE_CSTATUE_BOSS_SWING",
    0x00200000: "AT_TYPE_HEAVY_BOOTS",
    0x00400000: "AT_TYPE_IRON_BALL",
    0x00800000: "AT_TYPE_COPY_ROD",
    0x01000000: "AT_TYPE_1000000",
    0x04000000: "AT_TYPE_MASTER_SWORD",
    0x08000000: "AT_TYPE_MIDNA_LOCK",
    0x10000000: "AT_TYPE_10000000",
    0x40000000: "AT_TYPE_WOLF_CUT_TURN",
    0x80000000: "AT_TYPE_WOLF_ATTACK",
    0xD8000000: "AT_TYPE_UNK"
}

dCcD_hitSe = {
    0x0: "dCcD_SE_NONE",
    0x1: "dCcD_SE_SWORD",
    0x2: "dCcD_SE_SHIELD_ATTACK",
    0x3: "dCcD_SE_WOLF_KICK",
    0x4: "dCcD_SE_WOLF_BITE",
    0x5: "dCcD_SE_WOOD",
    0x6: "dCcD_SE_HAMMER",
    0x7: "dCcD_SE_ARROW_STICK",
    0x8: "dCcD_SE_HOOKSHOT_STICK",
    0x9: "dCcD_SE_METAL",
    0xA: "dCcD_SE_STONE",
    0xB: "dCcD_SE_HARD_BODY",
    0xC: "dCcD_SE_SOFT_BODY",
    0xD: "dCcD_SE_13",
    0xE: "dCcD_SE_SWORD_STAB",
    0xF: "dCcD_SE_15",
    0x10: "dCcD_SE_SWORD_RUN",
    0x11: "dCcD_SE_17",
    0x12: "dCcD_SE_THROW_OBJ",
    0x13: "dCcD_SE_SPINNER",
    0x14: "dCcD_SE_COPYROD",
    0x15: "dCcD_SE_STATUE_HAMMER",
    0x16: "dCcD_SE_PACHINKO",
    0x17: "dCcD_SE_23"
}

def unpack_cylinder_data(data):
    # Verify data length is correct
    if len(data) != 68:
        print("Invalid data length for cylinder: %d" % len(data))
        print("Cylinder data (dCcD_SrcCyl) should be 68 bytes long.")
        return None
    
    # dCcD_SrcGObjInf
    mFlags, = struct.unpack('>I', bytes(data[:4]))
    mObjAt_mType, mObjAt_mAtp, mObjAt_mBase = struct.unpack('>lBxxxl', bytes(data[4:16]))
    mObjTg_mType, mObjTg_mBase = struct.unpack('>Il', bytes(data[16:24]))
    mObjCo_mBase, = struct.unpack('>l', bytes(data[24:28]))
    mGObjAt_mSe, mGObjAt_mHitMark, mGObjAt_mSpl, mGObjAt_mMtrl, mGObjAt_mGFlag = struct.unpack('>4BI', bytes(data[28:36]))
    mGObjTg_mSe, mGObjTg_mHitMark, mGObjTg_mSpl, mGObjTg_mMtrl, mGObjTg_mGFlag = struct.unpack('>4BI', bytes(data[36:44]))
    mGObjCo_mGFlag, = struct.unpack('>I', bytes(data[44:48]))

    # Swap in enums for known values
    mObjAt_mType = cCcD_ObjAtType.get(mObjAt_mType, hex(mObjAt_mType))
    mGObjAt_mSe = dCcD_hitSe.get(mGObjAt_mSe, hex(mGObjAt_mSe))
    mGObjTg_mSe = dCcD_hitSe.get(mGObjTg_mSe, hex(mGObjTg_mSe))

    # cM3dGCylS
    mCenter_x, mCenter_y, mCenter_z, mRadius, mHeight = struct.unpack('>3f2f', bytes(data[48:68]))

    return {
        "mFlags": mFlags,
        "mObjAt": (mObjAt_mType, mObjAt_mAtp, mObjAt_mBase),
        "mObjTg": (mObjTg_mType, mObjTg_mBase),
        "mObjCo": mObjCo_mBase,
        "mGObjAt": (mGObjAt_mSe, mGObjAt_mHitMark, mGObjAt_mSpl, mGObjAt_mMtrl, mGObjAt_mGFlag),
        "mGObjTg": (mGObjTg_mSe, mGObjTg_mHitMark, mGObjTg_mSpl, mGObjTg_mMtrl, mGObjTg_mGFlag),
        "mGObjCo": mGObjCo_mGFlag,
        "mCenter": (mCenter_x, mCenter_y, mCenter_z),
        "mRadius": mRadius,
        "mHeight": mHeight
    }

def unpack_sphere_data(data):
    # Verify data length is correct
    if len(data) != 64:
        print("Invalid data length for sphere: %d" % len(data))
        print("Sphere data (dCcD_SrcSph) should be 64 bytes long.")
        return None
    
    # dCcD_SrcGObjInf
    mFlags, = struct.unpack('>I', bytes(data[:4]))
    mObjAt_mType, mObjAt_mAtp, mObjAt_mBase = struct.unpack('>lBxxxl', bytes(data[4:16]))
    mObjTg_mType, mObjTg_mBase = struct.unpack('>Il', bytes(data[16:24]))
    mObjCo_mBase, = struct.unpack('>l', bytes(data[24:28]))
    mGObjAt_mSe, mGObjAt_mHitMark, mGObjAt_mSpl, mGObjAt_mMtrl, mGObjAt_mGFlag = struct.unpack('>4BI', bytes(data[28:36]))
    mGObjTg_mSe, mGObjTg_mHitMark, mGObjTg_mSpl, mGObjTg_mMtrl, mGObjTg_mGFlag = struct.unpack('>4BI', bytes(data[36:44]))
    mGObjCo_mGFlag, = struct.unpack('>I', bytes(data[44:48]))

    # Swap in enums for known values
    mObjAt_mType = cCcD_ObjAtType.get(mObjAt_mType, hex(mObjAt_mType))
    mGObjAt_mSe = dCcD_hitSe.get(mGObjAt_mSe, hex(mGObjAt_mSe))
    mGObjTg_mSe = dCcD_hitSe.get(mGObjTg_mSe, hex(mGObjTg_mSe))

    # cM3dGSphS
    mCenter_x, mCenter_y, mCenter_z, mRadius = struct.unpack('>3f1f', bytes(data[48:64]))

    return {
        "mFlags": mFlags,
        "mObjAt": (mObjAt_mType, mObjAt_mAtp, mObjAt_mBase),
        "mObjTg": (mObjTg_mType, mObjTg_mBase),
        "mObjCo": mObjCo_mBase,
        "mGObjAt": (mGObjAt_mSe, mGObjAt_mHitMark, mGObjAt_mSpl, mGObjAt_mMtrl, mGObjAt_mGFlag),
        "mGObjTg": (mGObjTg_mSe, mGObjTg_mHitMark, mGObjTg_mSpl, mGObjTg_mMtrl, mGObjTg_mGFlag),
        "mGObjCo": mGObjCo_mGFlag,
        "mCenter": (mCenter_x, mCenter_y, mCenter_z),
        "mRadius": mRadius
    }

def unpack_triangle_data(data):
    # Verify data length is correct
    if len(data) != 84:
        print("Invalid data length for triangle: %d" % len(data))
        print("Triangle data (dCcD_SrcTri) should be 84 bytes long.")
        return None
    
    # dCcD_SrcGObjInf
    mFlags, = struct.unpack('>I', bytes(data[:4]))
    mObjAt_mType, mObjAt_mAtp, mObjAt_mBase = struct.unpack('>lBxxxl', bytes(data[4:16]))
    mObjTg_mType, mObjTg_mBase = struct.unpack('>Il', bytes(data[16:24]))
    mObjCo_mBase, = struct.unpack('>l', bytes(data[24:28]))
    mGObjAt_mSe, mGObjAt_mHitMark, mGObjAt_mSpl, mGObjAt_mMtrl, mGObjAt_mGFlag = struct.unpack('>4BI', bytes(data[28:36]))
    mGObjTg_mSe, mGObjTg_mHitMark, mGObjTg_mSpl, mGObjTg_mMtrl, mGObjTg_mGFlag = struct.unpack('>4BI', bytes(data[36:44]))
    mGObjCo_mGFlag, = struct.unpack('>I', bytes(data[44:48]))

    # Swap in enums for known values
    mObjAt_mType = cCcD_ObjAtType.get(mObjAt_mType, hex(mObjAt_mType))
    mGObjAt_mSe = dCcD_hitSe.get(mGObjAt_mSe, hex(mGObjAt_mSe))
    mGObjTg_mSe = dCcD_hitSe.get(mGObjTg_mSe, hex(mGObjTg_mSe))

    # cM3dGTriS
    a_x, a_y, a_z, b_x, b_y, b_z, c_x, c_y, c_z  = struct.unpack('>3f3f3f', bytes(data[48:84]))

    return {
        "mFlags": mFlags,
        "mObjAt": (mObjAt_mType, mObjAt_mAtp, mObjAt_mBase),
        "mObjTg": (mObjTg_mType, mObjTg_mBase),
        "mObjCo": mObjCo_mBase,
        "mGObjAt": (mGObjAt_mSe, mGObjAt_mHitMark, mGObjAt_mSpl, mGObjAt_mMtrl, mGObjAt_mGFlag),
        "mGObjTg": (mGObjTg_mSe, mGObjTg_mHitMark, mGObjTg_mSpl, mGObjTg_mMtrl, mGObjTg_mGFlag),
        "mGObjCo": mGObjCo_mGFlag,
        "a": (a_x, a_y, a_z),
        "b": (b_x, b_y, b_z),
        "c": (c_x, c_y, c_z),
    }

def unpack_capsule_data(data):
    # Verify data length is correct
    if len(data) != 76:
        print("Invalid data length for capsule: %d" % len(data))
        print("Capsule data (dCcD_SrcCps) should be 76 bytes long.")
        return None
    
    # dCcD_SrcGObjInf
    mFlags, = struct.unpack('>I', bytes(data[:4]))
    mObjAt_mType, mObjAt_mAtp, mObjAt_mBase = struct.unpack('>lBxxxl', bytes(data[4:16]))
    mObjTg_mType, mObjTg_mBase = struct.unpack('>Il', bytes(data[16:24]))
    mObjCo_mBase, = struct.unpack('>l', bytes(data[24:28]))
    mGObjAt_mSe, mGObjAt_mHitMark, mGObjAt_mSpl, mGObjAt_mMtrl, mGObjAt_mGFlag = struct.unpack('>4BI', bytes(data[28:36]))
    mGObjTg_mSe, mGObjTg_mHitMark, mGObjTg_mSpl, mGObjTg_mMtrl, mGObjTg_mGFlag = struct.unpack('>4BI', bytes(data[36:44]))
    mGObjCo_mGFlag, = struct.unpack('>I', bytes(data[44:48]))

    # Swap in enums for known values
    mObjAt_mType = cCcD_ObjAtType.get(mObjAt_mType, hex(mObjAt_mType))
    mGObjAt_mSe = dCcD_hitSe.get(mGObjAt_mSe, hex(mGObjAt_mSe))
    mGObjTg_mSe = dCcD_hitSe.get(mGObjTg_mSe, hex(mGObjTg_mSe))

    # cM3dGTriS
    mStart_x, mStart_y, mStart_z, mEnd_x, mEnd_y, mEnd_z, mRadius  = struct.unpack('>3f3f1f', bytes(data[48:76]))

    return {
        "mFlags": mFlags,
        "mObjAt": (mObjAt_mType, mObjAt_mAtp, mObjAt_mBase),
        "mObjTg": (mObjTg_mType, mObjTg_mBase),
        "mObjCo": mObjCo_mBase,
        "mGObjAt": (mGObjAt_mSe, mGObjAt_mHitMark, mGObjAt_mSpl, mGObjAt_mMtrl, mGObjAt_mGFlag),
        "mGObjTg": (mGObjTg_mSe, mGObjTg_mHitMark, mGObjTg_mSpl, mGObjTg_mMtrl, mGObjTg_mGFlag),
        "mGObjCo": mGObjCo_mGFlag,
        "mStart": (mStart_x, mStart_y, mStart_z),
        "mEnd": (mEnd_x, mEnd_y, mEnd_z),
        "mRadius": mRadius,
    }

# Fetch the byte data from the file
def fetch_shape_data(filename, variable_name):
    with open(filename, 'r') as f:
        lines = f.readlines()

    # Find the start and end of the data
    start_index = None
    end_index = None
    section_rodata_present = False
    section_data_present = False

    for i, line in enumerate(lines):
        if variable_name in line:
            start_index = i
            if 'SECTION_RODATA' in line:
                section_rodata_present = True
            elif 'SECTION_DATA' in line:
                section_data_present = True
        if start_index is not None and '};' in line:
            end_index = i
            break

    if start_index is None or end_index is None:
        print(f"{variable_name} data not found in the file.")
        return None
    elif not section_rodata_present and not section_data_present:
        print(f"{variable_name} already setup!")
        return None

    # Extract the byte data
    byte_data = []
    for line in lines[start_index + 1:end_index]:
        byte_values = line.strip().split(',')
        for value in byte_values:
            if value:
                byte_data.append(int(value, 16))
    return ({
        "data": byte_data, 
        "section_rodata_present": section_rodata_present,
        "start_index": start_index,
        "end_index": end_index
    })

# Write the unpacked data back to the file
def write_cylinder_shape_data(filename, data, variable_name, section_rodata_present, start_index, end_index):
    with open(filename, 'r') as f:
        lines = f.readlines()

    # Formatting the output
    const_keyword = "const " if section_rodata_present else ""
    formatted_output = []
    formatted_output.append(f"{const_keyword}static dCcD_SrcCyl {variable_name} = {{\n")
    formatted_output.append("    {\n")
    
    # cCcD_SrcObj members
    formatted_output.append(f"        {{{hex(data['mFlags'])}, {{{{{data['mObjAt'][0]}, {hex(data['mObjAt'][1])}, {hex(data['mObjAt'][2])}}}, {{{hex(data['mObjTg'][0])}, {hex(data['mObjTg'][1])}}}, {hex(data['mObjCo'])}}}}}, // mObj\n")
    # dCcD_SrcGObjAt members
    formatted_output.append(f"        {{{data['mGObjAt'][0]}, {hex(data['mGObjAt'][1])}, {hex(data['mGObjAt'][2])}, {hex(data['mGObjAt'][3])}, {hex(data['mGObjAt'][4])}}}, // mGObjAt\n")
    # dCcD_SrcGObjTg members
    formatted_output.append(f"        {{{data['mGObjTg'][0]}, {hex(data['mGObjTg'][1])}, {hex(data['mGObjTg'][2])}, {hex(data['mGObjTg'][3])}, {hex(data['mGObjTg'][4])}}}, // mGObjTg\n")
    # dCcD_SrcGObjCo members
    formatted_output.append(f"        {{{hex(data['mGObjCo'])}}}, // mGObjCo\n")
    formatted_output.append("    }, // mObjInf\n")
    
    # cM3dGCylS members
    formatted_output.append("    {\n")
    formatted_output.append(f"        {{{data['mCenter'][0]}f, {data['mCenter'][1]}f, {data['mCenter'][2]}f}}, // mCenter\n")
    formatted_output.append(f"        {data['mRadius']}f, // mRadius\n")
    formatted_output.append(f"        {data['mHeight']}f // mHeight\n")
    formatted_output.append("    } // mCyl\n")
    formatted_output.append("};\n")
    
    # Remove the compiler strip gate macro if it was present
    if 'COMPILER_STRIP_GATE' in lines[end_index+1]:
        del lines[end_index+1]

    # Replace the original section with the new formatted output
    lines[start_index:end_index+1] = formatted_output

    # Write the modified lines back to the file
    with open(filename, 'w') as f:
        f.writelines(lines)

# Write the unpacked data back to the file
def write_sphere_shape_data(filename, data, variable_name, section_rodata_present, start_index, end_index):
    with open(filename, 'r') as f:
        lines = f.readlines()

    # Formatting the output
    const_keyword = "const " if section_rodata_present else ""
    formatted_output = []
    formatted_output.append(f"{const_keyword}static dCcD_SrcSph {variable_name} = {{\n")
    formatted_output.append("    {\n")
    
    # cCcD_SrcObj members
    formatted_output.append(f"        {{{hex(data['mFlags'])}, {{{{{data['mObjAt'][0]}, {hex(data['mObjAt'][1])}, {hex(data['mObjAt'][2])}}}, {{{hex(data['mObjTg'][0])}, {hex(data['mObjTg'][1])}}}, {hex(data['mObjCo'])}}}}}, // mObj\n")
    # dCcD_SrcGObjAt members
    formatted_output.append(f"        {{{data['mGObjAt'][0]}, {hex(data['mGObjAt'][1])}, {hex(data['mGObjAt'][2])}, {hex(data['mGObjAt'][3])}, {hex(data['mGObjAt'][4])}}}, // mGObjAt\n")
    # dCcD_SrcGObjTg members
    formatted_output.append(f"        {{{data['mGObjTg'][0]}, {hex(data['mGObjTg'][1])}, {hex(data['mGObjTg'][2])}, {hex(data['mGObjTg'][3])}, {hex(data['mGObjTg'][4])}}}, // mGObjTg\n")
    # dCcD_SrcGObjCo members
    formatted_output.append(f"        {{{hex(data['mGObjCo'])}}}, // mGObjCo\n")
    formatted_output.append("    }, // mObjInf\n")
    
    # cM3dGCylS members
    formatted_output.append("    {\n")
    formatted_output.append(f"        {{{{{data['mCenter'][0]}f, {data['mCenter'][1]}f, {data['mCenter'][2]}f}}, {data['mRadius']}f}} // mSph\n")
    formatted_output.append("    } // mSphAttr\n")
    formatted_output.append("};\n")
    
    # Remove the compiler strip gate macro if it was present
    if 'COMPILER_STRIP_GATE' in lines[end_index+1]:
        del lines[end_index+1]

    # Replace the original section with the new formatted output
    lines[start_index:end_index+1] = formatted_output

    # Write the modified lines back to the file
    with open(filename, 'w') as f:
        f.writelines(lines)

# Write the unpacked data back to the file
def write_triangle_shape_data(filename, data, variable_name, section_rodata_present, start_index, end_index):
    with open(filename, 'r') as f:
        lines = f.readlines()

    # Formatting the output
    const_keyword = "const " if section_rodata_present else ""
    formatted_output = []
    formatted_output.append(f"{const_keyword}static dCcD_SrcTri {variable_name} = {{\n")
    formatted_output.append("    {\n")
    
    # cCcD_SrcObj members
    formatted_output.append(f"        {{{hex(data['mFlags'])}, {{{{{data['mObjAt'][0]}, {hex(data['mObjAt'][1])}, {hex(data['mObjAt'][2])}}}, {{{hex(data['mObjTg'][0])}, {hex(data['mObjTg'][1])}}}, {hex(data['mObjCo'])}}}}}, // mObj\n")
    # dCcD_SrcGObjAt members
    formatted_output.append(f"        {{{data['mGObjAt'][0]}, {hex(data['mGObjAt'][1])}, {hex(data['mGObjAt'][2])}, {hex(data['mGObjAt'][3])}, {hex(data['mGObjAt'][4])}}}, // mGObjAt\n")
    # dCcD_SrcGObjTg members
    formatted_output.append(f"        {{{data['mGObjTg'][0]}, {hex(data['mGObjTg'][1])}, {hex(data['mGObjTg'][2])}, {hex(data['mGObjTg'][3])}, {hex(data['mGObjTg'][4])}}}, // mGObjTg\n")
    # dCcD_SrcGObjCo members
    formatted_output.append(f"        {{{hex(data['mGObjCo'])}}}, // mGObjCo\n")
    formatted_output.append("    }, // mObjInf\n")
    
    # cM3dGCylS members
    formatted_output.append("    {\n")
    formatted_output.append(f"        {{{{{data['a'][0]}f, {data['a'][1]}f, {data['a'][2]}f}}, {{{data['b'][0]}f, {data['b'][1]}f, {data['b'][2]}f}}, {{{data['c'][0]}f, {data['c'][1]}f, {data['c'][2]}f}}}} // mTri\n")
    formatted_output.append("    } // mTriAttr\n")
    formatted_output.append("};\n")
    
    # Remove the compiler strip gate macro if it was present
    if 'COMPILER_STRIP_GATE' in lines[end_index+1]:
        del lines[end_index+1]

    # Replace the original section with the new formatted output
    lines[start_index:end_index+1] = formatted_output

    # Write the modified lines back to the file
    with open(filename, 'w') as f:
        f.writelines(lines)

# Write the unpacked data back to the file
def write_capsule_shape_data(filename, data, variable_name, section_rodata_present, start_index, end_index):
    with open(filename, 'r') as f:
        lines = f.readlines()

    # Formatting the output
    const_keyword = "const " if section_rodata_present else ""
    formatted_output = []
    formatted_output.append(f"{const_keyword}static dCcD_SrcCps {variable_name} = {{\n")
    formatted_output.append("    {\n")
    
    # cCcD_SrcObj members
    formatted_output.append(f"        {{{hex(data['mFlags'])}, {{{{{data['mObjAt'][0]}, {hex(data['mObjAt'][1])}, {hex(data['mObjAt'][2])}}}, {{{hex(data['mObjTg'][0])}, {hex(data['mObjTg'][1])}}}, {hex(data['mObjCo'])}}}}}, // mObj\n")
    # dCcD_SrcGObjAt members
    formatted_output.append(f"        {{{data['mGObjAt'][0]}, {hex(data['mGObjAt'][1])}, {hex(data['mGObjAt'][2])}, {hex(data['mGObjAt'][3])}, {hex(data['mGObjAt'][4])}}}, // mGObjAt\n")
    # dCcD_SrcGObjTg members
    formatted_output.append(f"        {{{data['mGObjTg'][0]}, {hex(data['mGObjTg'][1])}, {hex(data['mGObjTg'][2])}, {hex(data['mGObjTg'][3])}, {hex(data['mGObjTg'][4])}}}, // mGObjTg\n")
    # dCcD_SrcGObjCo members
    formatted_output.append(f"        {{{hex(data['mGObjCo'])}}}, // mGObjCo\n")
    formatted_output.append("    }, // mObjInf\n")
    
    # cM3dGCylS members
    formatted_output.append("    {\n")
    formatted_output.append(f"        {{{{{data['mStart'][0]}f, {data['mStart'][1]}f, {data['mStart'][2]}f}}, {{{data['mEnd'][0]}f, {data['mEnd'][1]}f, {data['mEnd'][2]}f}}, {data['mRadius']}f}}, // mCps\n")
    formatted_output.append("    } // mCpsAttr\n")
    formatted_output.append("};\n")
    
    # Remove the compiler strip gate macro if it was present
    if 'COMPILER_STRIP_GATE' in lines[end_index+1]:
        del lines[end_index+1]

    # Replace the original section with the new formatted output
    lines[start_index:end_index+1] = formatted_output

    # Write the modified lines back to the file
    with open(filename, 'w') as f:
        f.writelines(lines)

def post_process(filename):
    """
    Checks if we need to include d_cc_d header file, remove structs, remove functions and/or rename ctor/dtors.
    """
    with open(filename, 'r') as f:
        lines = f.readlines()

    remove_structs = {
        "struct Vec",
        "struct cXyz",
        "struct dCcD_Stts",
        "struct dCcD_GStts",
        "struct dCcD_GObjInf",
        "struct dCcD_SrcSph"
        "struct dCcD_Cyl",
        "struct dCcD_Cyl",
        "struct dCcD_Sph",
        "struct dCcD_Cps",
        "struct dCcD_Tri",
        "struct dCcD_SrcSph",
        "struct dCcD_SrcCyl",
        "struct dCcD_SrcCps",
        "struct dCcD_SrcTri",
        "struct dCcD_GAtTgCoCommonBase",
        "struct cCcD_Obj",
        "struct cCcD_Stts",
        "struct cCcD_GStts",
        "struct cM3dGSph",
        "struct cM3dGPla",
        "struct cM3dGCyl",
        "struct cM3dGCps",
        "struct cM3dGAab",
        "struct cM3dGLin",
        "struct cM3dGTri",
        "struct Z2SeMgr",
        "struct JAISoundID",
        "struct Z2AudioMgr",
        "struct JGeometry"
    }

    remove_functions = {
        "void PSVECAdd();",
        "void PSVECSubtract();",
        "void PSVECSquareMag();",
        "void PSVECScale();",
        "void PSVECSquareDistance();",
        "void PSVECDotProduct();",
        "void PSVECCrossProduct();",
        "void C_VECReflect();",
        "void abs();",
        "void sin();",
        "void acos();",
        "void tan();",
        "u32 __float_nan;",
        "f32 G_CM3D_F_ABS_MIN",
        "u32 __float_max"
    }

    extern_c_replacements = {
        "asm cXyz::~cXyz()",
        "asm cM3dGPla::~cM3dGPla()",
        "cXyz::cXyz()",
        "asm cM3dGPla::~cM3dGPla()",
        "asm cM3dGCyl::~cM3dGCyl()",
        "asm cM3dGSph::~cM3dGSph()",
        "asm cM3dGAab::~cM3dGAab()",
        "asm dCcD_Sph::~dCcD_Sph()",
        "asm dCcD_Sph::dCcD_Sph()",
        "asm dCcD_GStts::~dCcD_GStts()",
        "asm cCcD_GStts::~cCcD_GStts()",
        "asm cXyz::cXyz(cXyz const& param_0)",
        "asm cXyz::cXyz(f32 param_0, f32 param_1, f32 param_2)",
        "asm void cXyz::set(f32 param_0, f32 param_1, f32 param_2)",
        "asm void cXyz::set(Vec const& param_0)",
        "asm void cXyz::operator=(cXyz const& param_0)",
        "asm void cXyz::operator+=(Vec const& param_0)",
        "JAISoundID::JAISoundID(u32 param_0)", # special case, needs manual replacement
        "asm dCcD_Cyl::~dCcD_Cyl()",
        "asm cM3dGLin::~cM3dGLin()",
        "asm dCcD_Cyl::dCcD_Cyl()",
        "asm dCcD_Stts::~dCcD_Stts()",
        "asm dCcD_Stts::dCcD_Stts()",
        "asm dCcD_Tri::~dCcD_Tri()",
        "asm dCcD_Tri::dCcD_Tri()",
        "asm cM3dGTri::~cM3dGTri()",
        "asm void cCcD_ObjHitInf::OnCoSetBit()",
        "asm void cXyz::abs()",
        "asm dCcD_Cps::~dCcD_Cps()",
        "asm dCcD_Cps::dCcD_Cps()"
    }

    include_line = False
    i = len(lines) - 1

    while i >= 0:
        line = lines[i]

        if any(struct in line for struct in remove_structs):
            print(f"Removing struct at line {i}: {line}")
            include_line = True

            # Find the end of the struct data
            end_index = None
            brace_count = 0
            for j in range(i, len(lines)):
                brace_count += lines[j].count('{')
                brace_count -= lines[j].count('}')
                if brace_count == 0:
                    end_index = j
                    break

            # Remove the struct data
            if end_index is not None:
                del lines[i:end_index+2]  # rm struct and trailing newline
                i = end_index + 1  # Adjust i to skip over deleted lines

        elif any(function in line for function in remove_functions):
            print(f"Removing function at line {i}: {line}")
            include_line = True
            del lines[i]

        elif any(function in line for function in extern_c_replacements) and not line.startswith("//"):
            print(f"Replacing function at line {i}: {line}")

            include_line = True

            # Grab the mangled name from 4 lines above
            if "asm" in line:
                symbol_line = lines[i-4]
            else:
                symbol_line = lines[i-1]

            match = re.search(r'(\S+)\s+\*/$', symbol_line)
            if match:
                symbol = match.group(1)
                print("SYMBOL:", symbol)
            else:
                print("Symbol not found")

            # comment out original line
            lines[i] = f"// {lines[i]}"

            # Add new line after with extern "C" asm void
            lines.insert(i+1, f'extern "C" asm void {symbol}() {{\n')

        i -= 1

    if include_line:
        # Find the first #include line
        include_index = next((i for i, line in enumerate(lines) if line.strip().startswith("#include")), None)
        if include_index is not None:
            # Insert the new header after the first #include line
            lines.insert(include_index + 1, '#include "d/cc/d_cc_d.h"\n')
        else:
            # If no #include line is found, insert at the beginning (or handle as you see fit)
            lines.insert(0, '#include "d/cc/d_cc_d.h"\n')

    # Write the modified lines back to the file
    with open(filename, 'w') as f:
        f.writelines(lines)

def search_file(target,pattern):
    file_matches = []

    # if target is a file, search the file
    if os.path.isfile(target):
        with open(target, 'r') as f:
            contents = f.read()
            matches = pattern.findall(contents)
            if matches:
                for match in matches:
                    # Extract the desired part of the match and append it to the file_matches list
                    variable_name = match[2]
                    file_matches.append((target, variable_name))
                    return file_matches
            print("No matches found in the file.")
            return None
    # if target is a directory, search all files in the directory
    elif os.path.isdir(target):
        for root, dirs, files in os.walk(target):
            for file in files:
                if file.endswith('.cpp'):
                    filepath = os.path.join(root, file)
                    with open(filepath, 'r') as f:
                        contents = f.read()
                        matches = pattern.findall(contents)
                        if matches:
                            for match in matches:
                                # Extract the desired part of the match and append it to the file_matches list
                                variable_name = match[2]
                                file_matches.append((filepath, variable_name))
        return file_matches
    print("Target is neither a file nor a directory.")
    return None

def search_files(shape, target, variable_name=None):
    """
    Returns a pairing of filename and shape data lines that have not been setup.
    If variable_name is not set, the function will attempt to find and setup all variables with the specified shape.
    """
    if variable_name is not None:
        search_shape = variable_name
    else:
        search_shape = shape

    pattern = re.compile(f'(SECTION_DATA|SECTION_RODATA).*static\\s+u8\\s+(const\\s+)?(\\w*{search_shape}\\w*)\\[\\d+\\]', re.I)
    return search_file(target,pattern)

def run_make_command(wibo_path=None, thread_num=1):
    cmd = ["make", "all", "rels", f"-j{thread_num}"]
    if wibo_path:
        cmd.append(f"WINE={wibo_path}")
    result = subprocess.run(cmd)
    if result.returncode != 0:
        print("Failed to run make command")
        sys.exit(1)

@click.command()
@click.option('--shape', required=True, help='Shape to unpack. Should be one of: triangle, sphere, cylinder or capsule.')
@click.option('--variable-name', default=None, required=False, help='Name of the variable in the file to transform. If not set, the script will atempt to find and setup all variables with the specified shape.')
@click.option('--target', required=True, type=str, help='Target filename or path where the file to be processed is located.')
@click.option('--wibo-path', default="~/git/c/wibo/build/wibo", help='Path to Wibo.')
@click.option('--thread-num', default=1, type=int, help='Number of threads for compilation.')
def process_file(shape, variable_name, target, wibo_path, thread_num):
    """
    Process the specified file(s) and unpack the shape of the variable(s).
    """

    match shape.lower():
        case "cylinder":
            filenames = search_files("cyl", target, variable_name)

            if filenames is None:
                sys.exit(0)

            for file in filenames:
                cylinder_data = None
                f_name = file[0]
                var_name = file[1]
                print(f_name)
                data = fetch_shape_data(f_name, var_name)
                if data is not None:
                    cylinder_data = unpack_cylinder_data(data["data"])

                if cylinder_data is not None:
                    print("Updating", f_name)
                    write_cylinder_shape_data(f_name, cylinder_data, variable_name, data["section_rodata_present"], data["start_index"], data["end_index"])
                    post_process(f_name)
                    run_make_command(wibo_path, thread_num)
        case "sphere":
            filenames = search_files("sph", target, variable_name)

            if filenames is None:
                sys.exit(0)

            for filename in filenames:
                sphere_data = None
                f_name = filename[0]
                variable_name = filename[1]
                data = fetch_shape_data(f_name, variable_name)
                if data is not None:
                    sphere_data = unpack_sphere_data(data["data"])

                if sphere_data is not None:
                    print("Updating", f_name)
                    write_sphere_shape_data(f_name, sphere_data, variable_name, data["section_rodata_present"], data["start_index"], data["end_index"])
                    post_process(f_name)
                    run_make_command()
        case "triangle":
            filenames = search_files("tri", target, variable_name)

            if filenames is None:
                sys.exit(0)

            for filename in filenames:
                triangle_data = None
                f_name = filename[0]
                variable_name = filename[1]
                data = fetch_shape_data(f_name, variable_name)
                if data is not None:
                    triangle_data = unpack_triangle_data(data["data"])

                if triangle_data is not None:
                    print("Updating", f_name)
                    write_triangle_shape_data(f_name, triangle_data, variable_name, data["section_rodata_present"], data["start_index"], data["end_index"])
                    post_process(f_name)
                    run_make_command()
        case "capsule":
            filenames = search_files("cps", target, variable_name)

            if filenames is None:
                sys.exit(0)

            for filename in filenames:
                capsule_data = None
                f_name = filename[0]
                variable_name = filename[1]
                data = fetch_shape_data(f_name, variable_name)
                if data is not None:
                    capsule_data = unpack_capsule_data(data["data"])

                if capsule_data is not None:
                    print("Updating", f_name)
                    write_capsule_shape_data(f_name, capsule_data, variable_name, data["section_rodata_present"], data["start_index"], data["end_index"])
                    post_process(f_name)
                    run_make_command()
        case _:
            raise ValueError(f"Unknown shape: {shape}")
        
    

if __name__ == '__main__':
    process_file()
