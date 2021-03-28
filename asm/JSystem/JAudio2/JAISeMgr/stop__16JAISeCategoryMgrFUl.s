lbl_8029FDE0:
/* 8029FDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029FDE4  7C 08 02 A6 */	mflr r0
/* 8029FDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029FDEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029FDF0  93 C1 00 08 */	stw r30, 8(r1)
/* 8029FDF4  7C 9E 23 78 */	mr r30, r4
/* 8029FDF8  83 E3 00 58 */	lwz r31, 0x58(r3)
/* 8029FDFC  48 00 00 18 */	b lbl_8029FE14
lbl_8029FE00:
/* 8029FE00  80 7F 00 00 */	lwz r3, 0(r31)
/* 8029FE04  38 63 00 10 */	addi r3, r3, 0x10
/* 8029FE08  7F C4 F3 78 */	mr r4, r30
/* 8029FE0C  48 00 26 D1 */	bl stop__8JAISoundFUl
/* 8029FE10  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_8029FE14:
/* 8029FE14  28 1F 00 00 */	cmplwi r31, 0
/* 8029FE18  40 82 FF E8 */	bne lbl_8029FE00
/* 8029FE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029FE20  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029FE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029FE28  7C 08 03 A6 */	mtlr r0
/* 8029FE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8029FE30  4E 80 00 20 */	blr 
