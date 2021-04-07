lbl_80B003FC:
/* 80B003FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00400  7C 08 02 A6 */	mflr r0
/* 80B00404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00408  7C 66 1B 78 */	mr r6, r3
/* 80B0040C  7C 85 23 78 */	mr r5, r4
/* 80B00410  80 63 00 08 */	lwz r3, 8(r3)
/* 80B00414  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B00418  4B 82 AB 39 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B0041C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B00420  7C 08 03 A6 */	mtlr r0
/* 80B00424  38 21 00 10 */	addi r1, r1, 0x10
/* 80B00428  4E 80 00 20 */	blr 
