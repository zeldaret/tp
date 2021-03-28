lbl_80AABE8C:
/* 80AABE8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AABE90  7C 08 02 A6 */	mflr r0
/* 80AABE94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AABE98  7C 66 1B 78 */	mr r6, r3
/* 80AABE9C  7C 85 23 78 */	mr r5, r4
/* 80AABEA0  80 63 00 08 */	lwz r3, 8(r3)
/* 80AABEA4  A0 86 00 04 */	lhz r4, 4(r6)
/* 80AABEA8  4B 87 F0 A8 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80AABEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AABEB0  7C 08 03 A6 */	mtlr r0
/* 80AABEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AABEB8  4E 80 00 20 */	blr 
