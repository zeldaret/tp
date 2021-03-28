lbl_80460D00:
/* 80460D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460D04  7C 08 02 A6 */	mflr r0
/* 80460D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80460D0C  4B BD 94 7C */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80460D10  2C 03 00 0A */	cmpwi r3, 0xa
/* 80460D14  41 82 00 2C */	beq lbl_80460D40
/* 80460D18  40 80 00 14 */	bge lbl_80460D2C
/* 80460D1C  2C 03 00 03 */	cmpwi r3, 3
/* 80460D20  40 80 00 10 */	bge lbl_80460D30
/* 80460D24  48 00 00 0C */	b lbl_80460D30
/* 80460D28  48 00 00 08 */	b lbl_80460D30
lbl_80460D2C:
/* 80460D2C  2C 03 00 0C */	cmpwi r3, 0xc
lbl_80460D30:
/* 80460D30  3C 60 80 46 */	lis r3, struct_804668D8+0x0@ha
/* 80460D34  38 63 68 D8 */	addi r3, r3, struct_804668D8+0x0@l
/* 80460D38  38 63 00 82 */	addi r3, r3, 0x82
/* 80460D3C  48 00 00 10 */	b lbl_80460D4C
lbl_80460D40:
/* 80460D40  3C 60 80 46 */	lis r3, struct_804668D8+0x0@ha
/* 80460D44  38 63 68 D8 */	addi r3, r3, struct_804668D8+0x0@l
/* 80460D48  38 63 00 93 */	addi r3, r3, 0x93
lbl_80460D4C:
/* 80460D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80460D50  7C 08 03 A6 */	mtlr r0
/* 80460D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80460D58  4E 80 00 20 */	blr 
