lbl_809B7F5C:
/* 809B7F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7F60  7C 08 02 A6 */	mflr r0
/* 809B7F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7F68  7C 66 1B 78 */	mr r6, r3
/* 809B7F6C  7C 85 23 78 */	mr r5, r4
/* 809B7F70  80 63 00 08 */	lwz r3, 8(r3)
/* 809B7F74  A0 86 00 04 */	lhz r4, 4(r6)
/* 809B7F78  4B 97 2F D9 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809B7F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B7F80  7C 08 03 A6 */	mtlr r0
/* 809B7F84  38 21 00 10 */	addi r1, r1, 0x10
/* 809B7F88  4E 80 00 20 */	blr 
