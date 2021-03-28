lbl_800BF124:
/* 800BF124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF128  7C 08 02 A6 */	mflr r0
/* 800BF12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF130  7C 66 1B 78 */	mr r6, r3
/* 800BF134  90 81 00 08 */	stw r4, 8(r1)
/* 800BF138  38 66 2C A8 */	addi r3, r6, 0x2ca8
/* 800BF13C  38 81 00 08 */	addi r4, r1, 8
/* 800BF140  38 A0 00 00 */	li r5, 0
/* 800BF144  88 C6 2F 9A */	lbz r6, 0x2f9a(r6)
/* 800BF148  48 20 4A 8D */	bl startLinkSound__14Z2CreatureLinkF10JAISoundIDUlSc
/* 800BF14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF150  7C 08 03 A6 */	mtlr r0
/* 800BF154  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF158  4E 80 00 20 */	blr 
