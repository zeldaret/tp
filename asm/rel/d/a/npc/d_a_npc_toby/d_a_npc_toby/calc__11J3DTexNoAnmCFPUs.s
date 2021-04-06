lbl_80B236B0:
/* 80B236B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B236B4  7C 08 02 A6 */	mflr r0
/* 80B236B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B236BC  7C 66 1B 78 */	mr r6, r3
/* 80B236C0  7C 85 23 78 */	mr r5, r4
/* 80B236C4  80 63 00 08 */	lwz r3, 8(r3)
/* 80B236C8  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B236CC  4B 80 78 85 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B236D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B236D4  7C 08 03 A6 */	mtlr r0
/* 80B236D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B236DC  4E 80 00 20 */	blr 
