lbl_80282E60:
/* 80282E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80282E64  7C 08 02 A6 */	mflr r0
/* 80282E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80282E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80282E70  7C 7F 1B 78 */	mr r31, r3
/* 80282E74  38 7F 00 08 */	addi r3, r31, 8
/* 80282E78  4B FF EA D5 */	bl range_prepare__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 80282E7C  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80282E80  2C 00 00 02 */	cmpwi r0, 2
/* 80282E84  41 82 00 44 */	beq lbl_80282EC8
/* 80282E88  40 80 00 14 */	bge lbl_80282E9C
/* 80282E8C  2C 00 00 00 */	cmpwi r0, 0
/* 80282E90  41 82 00 18 */	beq lbl_80282EA8
/* 80282E94  40 80 00 24 */	bge lbl_80282EB8
/* 80282E98  48 00 00 10 */	b lbl_80282EA8
lbl_80282E9C:
/* 80282E9C  2C 00 00 04 */	cmpwi r0, 4
/* 80282EA0  40 80 00 08 */	bge lbl_80282EA8
/* 80282EA4  48 00 00 34 */	b lbl_80282ED8
lbl_80282EA8:
/* 80282EA8  3C 60 80 28 */	lis r3, update_INTERPOLATE_NONE___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@ha /* 0x80282FE8@ha */
/* 80282EAC  38 03 2F E8 */	addi r0, r3, update_INTERPOLATE_NONE___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@l /* 0x80282FE8@l */
/* 80282EB0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80282EB4  48 00 00 48 */	b lbl_80282EFC
lbl_80282EB8:
/* 80282EB8  3C 60 80 28 */	lis r3, update_INTERPOLATE_LINEAR___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@ha /* 0x80282FF4@ha */
/* 80282EBC  38 03 2F F4 */	addi r0, r3, update_INTERPOLATE_LINEAR___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@l /* 0x80282FF4@l */
/* 80282EC0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80282EC4  48 00 00 38 */	b lbl_80282EFC
lbl_80282EC8:
/* 80282EC8  3C 60 80 28 */	lis r3, update_INTERPOLATE_PLATEAU___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@ha /* 0x80283024@ha */
/* 80282ECC  38 03 30 24 */	addi r0, r3, update_INTERPOLATE_PLATEAU___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@l /* 0x80283024@l */
/* 80282ED0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80282ED4  48 00 00 28 */	b lbl_80282EFC
lbl_80282ED8:
/* 80282ED8  3C 60 80 28 */	lis r3, update_INTERPOLATE_BSPLINE_dataMore3___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@ha /* 0x80283060@ha */
/* 80282EDC  38 03 30 60 */	addi r0, r3, update_INTERPOLATE_BSPLINE_dataMore3___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@l /* 0x80283060@l */
/* 80282EE0  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80282EE4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80282EE8  28 00 00 02 */	cmplwi r0, 2
/* 80282EEC  40 82 00 10 */	bne lbl_80282EFC
/* 80282EF0  3C 60 80 28 */	lis r3, update_INTERPOLATE_LINEAR___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@ha /* 0x80282FF4@ha */
/* 80282EF4  38 03 2F F4 */	addi r0, r3, update_INTERPOLATE_LINEAR___Q27JStudio29TFunctionValue_list_parameterFRCQ27JStudio29TFunctionValue_list_parameterd@l /* 0x80282FF4@l */
/* 80282EF8  90 1F 00 58 */	stw r0, 0x58(r31)
lbl_80282EFC:
/* 80282EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80282F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80282F04  7C 08 03 A6 */	mtlr r0
/* 80282F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80282F0C  4E 80 00 20 */	blr 
