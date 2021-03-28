lbl_80A9A5C0:
/* 80A9A5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9A5C4  7C 08 02 A6 */	mflr r0
/* 80A9A5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9A5CC  7C 66 1B 78 */	mr r6, r3
/* 80A9A5D0  7C 85 23 78 */	mr r5, r4
/* 80A9A5D4  80 63 00 08 */	lwz r3, 8(r3)
/* 80A9A5D8  A0 86 00 04 */	lhz r4, 4(r6)
/* 80A9A5DC  4B 89 09 74 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80A9A5E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9A5E4  7C 08 03 A6 */	mtlr r0
/* 80A9A5E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9A5EC  4E 80 00 20 */	blr 
