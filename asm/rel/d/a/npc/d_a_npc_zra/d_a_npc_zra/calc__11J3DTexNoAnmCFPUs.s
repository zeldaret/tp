lbl_80B7EDC0:
/* 80B7EDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7EDC4  7C 08 02 A6 */	mflr r0
/* 80B7EDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7EDCC  7C 66 1B 78 */	mr r6, r3
/* 80B7EDD0  7C 85 23 78 */	mr r5, r4
/* 80B7EDD4  80 63 00 08 */	lwz r3, 8(r3)
/* 80B7EDD8  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B7EDDC  4B 7A C1 74 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B7EDE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7EDE4  7C 08 03 A6 */	mtlr r0
/* 80B7EDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7EDEC  4E 80 00 20 */	blr 
