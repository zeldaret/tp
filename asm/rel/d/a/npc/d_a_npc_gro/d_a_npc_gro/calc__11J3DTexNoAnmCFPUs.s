lbl_809DE658:
/* 809DE658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DE65C  7C 08 02 A6 */	mflr r0
/* 809DE660  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DE664  7C 66 1B 78 */	mr r6, r3
/* 809DE668  7C 85 23 78 */	mr r5, r4
/* 809DE66C  80 63 00 08 */	lwz r3, 8(r3)
/* 809DE670  A0 86 00 04 */	lhz r4, 4(r6)
/* 809DE674  4B 94 C8 DD */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 809DE678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DE67C  7C 08 03 A6 */	mtlr r0
/* 809DE680  38 21 00 10 */	addi r1, r1, 0x10
/* 809DE684  4E 80 00 20 */	blr 
