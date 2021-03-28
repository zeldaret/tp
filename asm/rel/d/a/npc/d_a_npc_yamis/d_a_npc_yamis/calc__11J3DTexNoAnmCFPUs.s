lbl_80B483EC:
/* 80B483EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B483F0  7C 08 02 A6 */	mflr r0
/* 80B483F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B483F8  7C 66 1B 78 */	mr r6, r3
/* 80B483FC  7C 85 23 78 */	mr r5, r4
/* 80B48400  80 63 00 08 */	lwz r3, 8(r3)
/* 80B48404  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B48408  4B 7E 2B 48 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B4840C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B48410  7C 08 03 A6 */	mtlr r0
/* 80B48414  38 21 00 10 */	addi r1, r1, 0x10
/* 80B48418  4E 80 00 20 */	blr 
