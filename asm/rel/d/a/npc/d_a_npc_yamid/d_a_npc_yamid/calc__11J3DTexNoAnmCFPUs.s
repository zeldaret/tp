lbl_80B44D88:
/* 80B44D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B44D8C  7C 08 02 A6 */	mflr r0
/* 80B44D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B44D94  7C 66 1B 78 */	mr r6, r3
/* 80B44D98  7C 85 23 78 */	mr r5, r4
/* 80B44D9C  80 63 00 08 */	lwz r3, 8(r3)
/* 80B44DA0  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B44DA4  4B 7E 61 AD */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B44DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B44DAC  7C 08 03 A6 */	mtlr r0
/* 80B44DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44DB4  4E 80 00 20 */	blr 
