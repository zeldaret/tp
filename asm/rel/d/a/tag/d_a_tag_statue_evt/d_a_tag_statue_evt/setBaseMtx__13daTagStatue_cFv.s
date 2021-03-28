lbl_805A7000:
/* 805A7000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7004  7C 08 02 A6 */	mflr r0
/* 805A7008  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A700C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7010  7C 7F 1B 78 */	mr r31, r3
/* 805A7014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805A7018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805A701C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805A7020  3C 80 80 5B */	lis r4, lit_3690@ha
/* 805A7024  C0 44 81 10 */	lfs f2, lit_3690@l(r4)
/* 805A7028  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805A702C  EC 42 00 2A */	fadds f2, f2, f0
/* 805A7030  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805A7034  4B D9 F8 B4 */	b PSMTXTrans
/* 805A7038  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805A703C  4B A6 5F 08 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805A7040  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805A7044  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805A7048  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 805A704C  38 84 00 24 */	addi r4, r4, 0x24
/* 805A7050  4B D9 F4 60 */	b PSMTXCopy
/* 805A7054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A705C  7C 08 03 A6 */	mtlr r0
/* 805A7060  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7064  4E 80 00 20 */	blr 
