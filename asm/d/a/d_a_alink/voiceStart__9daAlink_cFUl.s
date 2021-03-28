lbl_800BF084:
/* 800BF084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF088  7C 08 02 A6 */	mflr r0
/* 800BF08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF090  7C 65 1B 78 */	mr r5, r3
/* 800BF094  90 81 00 08 */	stw r4, 8(r1)
/* 800BF098  38 65 2C A8 */	addi r3, r5, 0x2ca8
/* 800BF09C  38 81 00 08 */	addi r4, r1, 8
/* 800BF0A0  88 A5 2F 9A */	lbz r5, 0x2f9a(r5)
/* 800BF0A4  48 20 52 7D */	bl startLinkVoice__14Z2CreatureLinkF10JAISoundIDSc
/* 800BF0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF0AC  7C 08 03 A6 */	mtlr r0
/* 800BF0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF0B4  4E 80 00 20 */	blr 
