lbl_80AC360C:
/* 80AC360C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3610  7C 08 02 A6 */	mflr r0
/* 80AC3614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC361C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC3620  41 82 00 10 */	beq lbl_80AC3630
/* 80AC3624  7C 80 07 35 */	extsh. r0, r4
/* 80AC3628  40 81 00 08 */	ble lbl_80AC3630
/* 80AC362C  4B 80 B7 11 */	bl __dl__FPv
lbl_80AC3630:
/* 80AC3630  7F E3 FB 78 */	mr r3, r31
/* 80AC3634  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC363C  7C 08 03 A6 */	mtlr r0
/* 80AC3640  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3644  4E 80 00 20 */	blr 
