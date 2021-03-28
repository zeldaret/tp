lbl_800BF0B8:
/* 800BF0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF0BC  7C 08 02 A6 */	mflr r0
/* 800BF0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF0C4  7C 65 1B 78 */	mr r5, r3
/* 800BF0C8  90 81 00 08 */	stw r4, 8(r1)
/* 800BF0CC  38 65 2C A8 */	addi r3, r5, 0x2ca8
/* 800BF0D0  38 81 00 08 */	addi r4, r1, 8
/* 800BF0D4  88 A5 2F 9A */	lbz r5, 0x2f9a(r5)
/* 800BF0D8  48 20 54 D9 */	bl startLinkVoiceLevel__14Z2CreatureLinkF10JAISoundIDSc
/* 800BF0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF0E0  7C 08 03 A6 */	mtlr r0
/* 800BF0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF0E8  4E 80 00 20 */	blr 
