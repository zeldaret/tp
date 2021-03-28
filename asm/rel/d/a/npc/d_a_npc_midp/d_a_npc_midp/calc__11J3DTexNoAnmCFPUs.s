lbl_80A727DC:
/* 80A727DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A727E0  7C 08 02 A6 */	mflr r0
/* 80A727E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A727E8  7C 66 1B 78 */	mr r6, r3
/* 80A727EC  7C 85 23 78 */	mr r5, r4
/* 80A727F0  80 63 00 08 */	lwz r3, 8(r3)
/* 80A727F4  A0 86 00 04 */	lhz r4, 4(r6)
/* 80A727F8  4B 8B 87 58 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80A727FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A72800  7C 08 03 A6 */	mtlr r0
/* 80A72804  38 21 00 10 */	addi r1, r1, 0x10
/* 80A72808  4E 80 00 20 */	blr 
