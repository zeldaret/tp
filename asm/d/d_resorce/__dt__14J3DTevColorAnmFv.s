lbl_8003B1A4:
/* 8003B1A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B1A8  7C 08 02 A6 */	mflr r0
/* 8003B1AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B1B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B1B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B1B8  41 82 00 10 */	beq lbl_8003B1C8
/* 8003B1BC  7C 80 07 35 */	extsh. r0, r4
/* 8003B1C0  40 81 00 08 */	ble lbl_8003B1C8
/* 8003B1C4  48 29 3B 79 */	bl __dl__FPv
lbl_8003B1C8:
/* 8003B1C8  7F E3 FB 78 */	mr r3, r31
/* 8003B1CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B1D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B1D4  7C 08 03 A6 */	mtlr r0
/* 8003B1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B1DC  4E 80 00 20 */	blr 
