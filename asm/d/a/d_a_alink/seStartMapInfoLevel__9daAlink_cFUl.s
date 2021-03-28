lbl_800BF1CC:
/* 800BF1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF1D0  7C 08 02 A6 */	mflr r0
/* 800BF1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF1D8  7C 66 1B 78 */	mr r6, r3
/* 800BF1DC  90 81 00 08 */	stw r4, 8(r1)
/* 800BF1E0  38 66 2C A8 */	addi r3, r6, 0x2ca8
/* 800BF1E4  38 81 00 08 */	addi r4, r1, 8
/* 800BF1E8  88 A6 2F A5 */	lbz r5, 0x2fa5(r6)
/* 800BF1EC  88 C6 2F 9A */	lbz r6, 0x2f9a(r6)
/* 800BF1F0  48 20 4C 79 */	bl startLinkSoundLevel__14Z2CreatureLinkF10JAISoundIDUlSc
/* 800BF1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF1F8  7C 08 03 A6 */	mtlr r0
/* 800BF1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF200  4E 80 00 20 */	blr 
