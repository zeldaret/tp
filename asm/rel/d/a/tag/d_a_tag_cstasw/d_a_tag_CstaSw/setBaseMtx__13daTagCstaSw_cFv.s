lbl_805A2098:
/* 805A2098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A209C  7C 08 02 A6 */	mflr r0
/* 805A20A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A20A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A20A8  7C 7F 1B 78 */	mr r31, r3
/* 805A20AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A20B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A20B4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805A20B8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805A20BC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805A20C0  4B DA 48 29 */	bl PSMTXTrans
/* 805A20C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A20C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A20CC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805A20D0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805A20D4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 805A20D8  4B A6 A1 C9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 805A20DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A20E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A20E4  7C 08 03 A6 */	mtlr r0
/* 805A20E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A20EC  4E 80 00 20 */	blr 
