lbl_8053D324:
/* 8053D324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D328  7C 08 02 A6 */	mflr r0
/* 8053D32C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D330  7C 66 1B 78 */	mr r6, r3
/* 8053D334  7C 85 23 78 */	mr r5, r4
/* 8053D338  80 63 00 08 */	lwz r3, 8(r3)
/* 8053D33C  A0 86 00 04 */	lhz r4, 4(r6)
/* 8053D340  4B DE DC 11 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 8053D344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D348  7C 08 03 A6 */	mtlr r0
/* 8053D34C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D350  4E 80 00 20 */	blr 
