lbl_80B9A58C:
/* 80B9A58C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A590  7C 08 02 A6 */	mflr r0
/* 80B9A594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A598  7C 66 1B 78 */	mr r6, r3
/* 80B9A59C  7C 85 23 78 */	mr r5, r4
/* 80B9A5A0  80 63 00 08 */	lwz r3, 8(r3)
/* 80B9A5A4  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B9A5A8  4B 79 09 A8 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B9A5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A5B0  7C 08 03 A6 */	mtlr r0
/* 80B9A5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A5B8  4E 80 00 20 */	blr 
