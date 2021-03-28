lbl_80C12EF0:
/* 80C12EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C12EF4  7C 08 02 A6 */	mflr r0
/* 80C12EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C12EFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C12F00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C12F04  41 82 00 10 */	beq lbl_80C12F14
/* 80C12F08  7C 80 07 35 */	extsh. r0, r4
/* 80C12F0C  40 81 00 08 */	ble lbl_80C12F14
/* 80C12F10  4B 6B BE 2C */	b __dl__FPv
lbl_80C12F14:
/* 80C12F14  7F E3 FB 78 */	mr r3, r31
/* 80C12F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C12F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C12F20  7C 08 03 A6 */	mtlr r0
/* 80C12F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C12F28  4E 80 00 20 */	blr 
