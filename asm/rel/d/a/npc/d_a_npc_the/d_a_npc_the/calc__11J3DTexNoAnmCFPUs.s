lbl_80AF99C4:
/* 80AF99C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF99C8  7C 08 02 A6 */	mflr r0
/* 80AF99CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF99D0  7C 66 1B 78 */	mr r6, r3
/* 80AF99D4  7C 85 23 78 */	mr r5, r4
/* 80AF99D8  80 63 00 08 */	lwz r3, 8(r3)
/* 80AF99DC  A0 86 00 04 */	lhz r4, 4(r6)
/* 80AF99E0  4B 83 15 71 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80AF99E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF99E8  7C 08 03 A6 */	mtlr r0
/* 80AF99EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF99F0  4E 80 00 20 */	blr 
