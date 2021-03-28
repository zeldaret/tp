lbl_80B2BA90:
/* 80B2BA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BA94  7C 08 02 A6 */	mflr r0
/* 80B2BA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BA9C  7C 66 1B 78 */	mr r6, r3
/* 80B2BAA0  7C 85 23 78 */	mr r5, r4
/* 80B2BAA4  80 63 00 08 */	lwz r3, 8(r3)
/* 80B2BAA8  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B2BAAC  4B 7F F4 A4 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B2BAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BAB4  7C 08 03 A6 */	mtlr r0
/* 80B2BAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BABC  4E 80 00 20 */	blr 
