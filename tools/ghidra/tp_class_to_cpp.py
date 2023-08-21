# Dumps structure members to C format with comments and names
#@Pheenoh / Taka
#@category
#@keybinding 
#@menupath 
#@toolbar 

dtm = currentProgram.getDataTypeManager();

type_name = askString("Generate Struct Members", "Enter a data type name: ")
struct = dtm.getDataType("/" + type_name)

size = struct.getLength()
size_str = str("{:X}".format(size))

offset_pad_size = len(size_str)

check = False
start_address = ""
member_name = ""
undefined_member_name = ""

for i in range (struct.numComponents):
    data_type = str(struct.getComponent(i).getDataType().getName())
    offset = struct.getComponent(i).getOffset()
    hex_offset_string = str("0x%0*X" % (offset_pad_size, offset))

    if struct.getComponent(i).getFieldName() is not None:
        member_name = str(struct.getComponent(i).getFieldName())
    else:
        member_name = "field_"+hex_offset_string.lower()

    # if undefined member
    if data_type == 'undefined' or check == True:
        if data_type == 'undefined':
            if check == False:
                check = True
                start_address = hex_offset_string
            continue

        check = False
        undefined_member_name = "field_"+start_address+"["+hex_offset_string+" - "+start_address+"]"

    if undefined_member_name != "":
        undefined_member_name = "/* " +start_address+" */ u8 "+undefined_member_name+";"
        print(undefined_member_name)
        undefined_member_name = ""

    # turn 'byte' members into u8
    if data_type == 'byte':
	data_type = 'u8'

    # turn 'pointer' members into void*
    if data_type == 'pointer':
	data_type = 'void*'

    if data_type == 'float':
	data_type = 'f32'

    data_type = str(data_type)

    if "[" in data_type:
        # move array to member name
        array_start_idx = data_type.find("[")
        array = data_type[array_start_idx:]
        data_type = data_type[0:array_start_idx]
        member_name = member_name+array
    
    member_string = "/* " +hex_offset_string+" */ "+str(data_type).replace(" ","")+" "+member_name+";"
    print(member_string)