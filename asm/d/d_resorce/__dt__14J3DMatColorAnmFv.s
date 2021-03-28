lbl_8003B2B8:
/* 8003B2B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B2BC  7C 08 02 A6 */	mflr r0
/* 8003B2C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B2C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B2C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B2CC  41 82 00 10 */	beq lbl_8003B2DC
/* 8003B2D0  7C 80 07 35 */	extsh. r0, r4
/* 8003B2D4  40 81 00 08 */	ble lbl_8003B2DC
/* 8003B2D8  48 29 3A 65 */	bl __dl__FPv
lbl_8003B2DC:
/* 8003B2DC  7F E3 FB 78 */	mr r3, r31
/* 8003B2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B2E8  7C 08 03 A6 */	mtlr r0
/* 8003B2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B2F0  4E 80 00 20 */	blr 
