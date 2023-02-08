lbl_80848C88:
/* 80848C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80848C8C  7C 08 02 A6 */	mflr r0
/* 80848C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80848C94  7C 66 1B 78 */	mr r6, r3
/* 80848C98  7C 85 23 78 */	mr r5, r4
/* 80848C9C  80 63 00 08 */	lwz r3, 8(r3)
/* 80848CA0  A0 86 00 04 */	lhz r4, 4(r6)
/* 80848CA4  4B AE 22 AD */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80848CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80848CAC  7C 08 03 A6 */	mtlr r0
/* 80848CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80848CB4  4E 80 00 20 */	blr 
