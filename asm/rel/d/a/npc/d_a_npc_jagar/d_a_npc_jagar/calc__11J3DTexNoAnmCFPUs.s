lbl_80A18FB0:
/* 80A18FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A18FB4  7C 08 02 A6 */	mflr r0
/* 80A18FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A18FBC  7C 66 1B 78 */	mr r6, r3
/* 80A18FC0  7C 85 23 78 */	mr r5, r4
/* 80A18FC4  80 63 00 08 */	lwz r3, 8(r3)
/* 80A18FC8  A0 86 00 04 */	lhz r4, 4(r6)
/* 80A18FCC  4B 91 1F 84 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80A18FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A18FD4  7C 08 03 A6 */	mtlr r0
/* 80A18FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A18FDC  4E 80 00 20 */	blr 
