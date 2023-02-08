lbl_80230CE8:
/* 80230CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80230CEC  7C 08 02 A6 */	mflr r0
/* 80230CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80230CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80230CF8  7C 7F 1B 78 */	mr r31, r3
/* 80230CFC  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80230D00  80 63 00 08 */	lwz r3, 8(r3)
/* 80230D04  28 03 00 00 */	cmplwi r3, 0
/* 80230D08  41 82 00 10 */	beq lbl_80230D18
/* 80230D0C  48 0C F9 4D */	bl getStringPtr__10J2DTextBoxCFv
/* 80230D10  38 9F 00 54 */	addi r4, r31, 0x54
/* 80230D14  48 13 7E 19 */	bl strcpy
lbl_80230D18:
/* 80230D18  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80230D1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80230D20  28 03 00 00 */	cmplwi r3, 0
/* 80230D24  41 82 00 10 */	beq lbl_80230D34
/* 80230D28  48 0C F9 31 */	bl getStringPtr__10J2DTextBoxCFv
/* 80230D2C  38 9F 02 54 */	addi r4, r31, 0x254
/* 80230D30  48 13 7D FD */	bl strcpy
lbl_80230D34:
/* 80230D34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80230D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80230D3C  7C 08 03 A6 */	mtlr r0
/* 80230D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80230D44  4E 80 00 20 */	blr 
