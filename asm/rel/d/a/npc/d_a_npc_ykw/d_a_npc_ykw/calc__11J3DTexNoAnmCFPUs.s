lbl_80B667FC:
/* 80B667FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66800  7C 08 02 A6 */	mflr r0
/* 80B66804  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66808  7C 66 1B 78 */	mr r6, r3
/* 80B6680C  7C 85 23 78 */	mr r5, r4
/* 80B66810  80 63 00 08 */	lwz r3, 8(r3)
/* 80B66814  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B66818  4B 7C 47 39 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B6681C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66820  7C 08 03 A6 */	mtlr r0
/* 80B66824  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66828  4E 80 00 20 */	blr 
