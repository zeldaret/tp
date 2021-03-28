lbl_80990E9C:
/* 80990E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990EA0  7C 08 02 A6 */	mflr r0
/* 80990EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990EA8  7C 66 1B 78 */	mr r6, r3
/* 80990EAC  7C 85 23 78 */	mr r5, r4
/* 80990EB0  80 63 00 08 */	lwz r3, 8(r3)
/* 80990EB4  A0 86 00 04 */	lhz r4, 4(r6)
/* 80990EB8  4B 99 A0 98 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80990EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990EC0  7C 08 03 A6 */	mtlr r0
/* 80990EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80990EC8  4E 80 00 20 */	blr 
