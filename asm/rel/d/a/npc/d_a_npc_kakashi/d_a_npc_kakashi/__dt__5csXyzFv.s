lbl_8054DED8:
/* 8054DED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DEDC  7C 08 02 A6 */	mflr r0
/* 8054DEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DEE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DEE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8054DEEC  41 82 00 10 */	beq lbl_8054DEFC
/* 8054DEF0  7C 80 07 35 */	extsh. r0, r4
/* 8054DEF4  40 81 00 08 */	ble lbl_8054DEFC
/* 8054DEF8  4B D8 0E 44 */	b __dl__FPv
lbl_8054DEFC:
/* 8054DEFC  7F E3 FB 78 */	mr r3, r31
/* 8054DF00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DF08  7C 08 03 A6 */	mtlr r0
/* 8054DF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DF10  4E 80 00 20 */	blr 
