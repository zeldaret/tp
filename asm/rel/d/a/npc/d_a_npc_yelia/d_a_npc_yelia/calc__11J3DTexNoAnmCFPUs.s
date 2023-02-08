lbl_80B50F68:
/* 80B50F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B50F6C  7C 08 02 A6 */	mflr r0
/* 80B50F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B50F74  7C 66 1B 78 */	mr r6, r3
/* 80B50F78  7C 85 23 78 */	mr r5, r4
/* 80B50F7C  80 63 00 08 */	lwz r3, 8(r3)
/* 80B50F80  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B50F84  4B 7D 9F CD */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B50F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B50F8C  7C 08 03 A6 */	mtlr r0
/* 80B50F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80B50F94  4E 80 00 20 */	blr 
