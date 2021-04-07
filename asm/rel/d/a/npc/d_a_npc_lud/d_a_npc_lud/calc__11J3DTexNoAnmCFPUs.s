lbl_80A6EA84:
/* 80A6EA84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6EA88  7C 08 02 A6 */	mflr r0
/* 80A6EA8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6EA90  7C 66 1B 78 */	mr r6, r3
/* 80A6EA94  7C 85 23 78 */	mr r5, r4
/* 80A6EA98  80 63 00 08 */	lwz r3, 8(r3)
/* 80A6EA9C  A0 86 00 04 */	lhz r4, 4(r6)
/* 80A6EAA0  4B 8B C4 B1 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80A6EAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6EAA8  7C 08 03 A6 */	mtlr r0
/* 80A6EAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6EAB0  4E 80 00 20 */	blr 
