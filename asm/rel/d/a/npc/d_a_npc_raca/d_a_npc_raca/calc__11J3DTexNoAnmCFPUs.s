lbl_80AB7BC8:
/* 80AB7BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB7BCC  7C 08 02 A6 */	mflr r0
/* 80AB7BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB7BD4  7C 66 1B 78 */	mr r6, r3
/* 80AB7BD8  7C 85 23 78 */	mr r5, r4
/* 80AB7BDC  80 63 00 08 */	lwz r3, 8(r3)
/* 80AB7BE0  A0 86 00 04 */	lhz r4, 4(r6)
/* 80AB7BE4  4B 87 33 6D */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80AB7BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB7BEC  7C 08 03 A6 */	mtlr r0
/* 80AB7BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB7BF4  4E 80 00 20 */	blr 
