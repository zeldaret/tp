lbl_80B6AAE8:
/* 80B6AAE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6AAEC  7C 08 02 A6 */	mflr r0
/* 80B6AAF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6AAF4  7C 66 1B 78 */	mr r6, r3
/* 80B6AAF8  7C 85 23 78 */	mr r5, r4
/* 80B6AAFC  80 63 00 08 */	lwz r3, 8(r3)
/* 80B6AB00  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B6AB04  4B 7C 04 4C */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B6AB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6AB0C  7C 08 03 A6 */	mtlr r0
/* 80B6AB10  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6AB14  4E 80 00 20 */	blr 
