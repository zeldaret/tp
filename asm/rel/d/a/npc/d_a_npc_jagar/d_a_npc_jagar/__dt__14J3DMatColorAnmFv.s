lbl_80A14EF8:
/* 80A14EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A14EFC  7C 08 02 A6 */	mflr r0
/* 80A14F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A14F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A14F08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A14F0C  41 82 00 10 */	beq lbl_80A14F1C
/* 80A14F10  7C 80 07 35 */	extsh. r0, r4
/* 80A14F14  40 81 00 08 */	ble lbl_80A14F1C
/* 80A14F18  4B 8B 9E 24 */	b __dl__FPv
lbl_80A14F1C:
/* 80A14F1C  7F E3 FB 78 */	mr r3, r31
/* 80A14F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A14F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A14F28  7C 08 03 A6 */	mtlr r0
/* 80A14F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14F30  4E 80 00 20 */	blr 
