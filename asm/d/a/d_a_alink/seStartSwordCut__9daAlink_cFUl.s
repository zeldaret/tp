lbl_800BF0EC:
/* 800BF0EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF0F0  7C 08 02 A6 */	mflr r0
/* 800BF0F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF0F8  7C 66 1B 78 */	mr r6, r3
/* 800BF0FC  90 81 00 08 */	stw r4, 8(r1)
/* 800BF100  38 66 2C A8 */	addi r3, r6, 0x2ca8
/* 800BF104  38 81 00 08 */	addi r4, r1, 8
/* 800BF108  38 A0 00 00 */	li r5, 0
/* 800BF10C  88 C6 2F 9A */	lbz r6, 0x2f9a(r6)
/* 800BF110  48 20 55 E1 */	bl startLinkSwordSound__14Z2CreatureLinkF10JAISoundIDUlSc
/* 800BF114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF118  7C 08 03 A6 */	mtlr r0
/* 800BF11C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF120  4E 80 00 20 */	blr 
