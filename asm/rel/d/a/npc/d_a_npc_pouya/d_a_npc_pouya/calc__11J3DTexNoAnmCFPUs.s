lbl_80AB0D84:
/* 80AB0D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB0D88  7C 08 02 A6 */	mflr r0
/* 80AB0D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB0D90  7C 66 1B 78 */	mr r6, r3
/* 80AB0D94  7C 85 23 78 */	mr r5, r4
/* 80AB0D98  80 63 00 08 */	lwz r3, 8(r3)
/* 80AB0D9C  A0 86 00 04 */	lhz r4, 4(r6)
/* 80AB0DA0  4B 87 A1 B1 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80AB0DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB0DA8  7C 08 03 A6 */	mtlr r0
/* 80AB0DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB0DB0  4E 80 00 20 */	blr 
