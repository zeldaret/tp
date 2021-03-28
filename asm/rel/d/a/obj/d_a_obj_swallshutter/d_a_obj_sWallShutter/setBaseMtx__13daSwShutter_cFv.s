lbl_805982A4:
/* 805982A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805982A8  7C 08 02 A6 */	mflr r0
/* 805982AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805982B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805982B4  7C 7F 1B 78 */	mr r31, r3
/* 805982B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805982BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805982C0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805982C4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805982C8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 805982CC  4B DA E6 1C */	b PSMTXTrans
/* 805982D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805982D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805982D8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805982DC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 805982E0  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 805982E4  4B A7 3F BC */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 805982E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805982EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805982F0  A8 9F 05 B8 */	lha r4, 0x5b8(r31)
/* 805982F4  A8 BF 05 BA */	lha r5, 0x5ba(r31)
/* 805982F8  A8 DF 05 BC */	lha r6, 0x5bc(r31)
/* 805982FC  4B A7 3F A4 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80598300  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80598304  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80598308  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8059830C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80598310  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80598314  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80598318  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8059831C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80598320  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80598324  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80598328  38 84 00 24 */	addi r4, r4, 0x24
/* 8059832C  4B DA E1 84 */	b PSMTXCopy
/* 80598330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80598334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598338  7C 08 03 A6 */	mtlr r0
/* 8059833C  38 21 00 10 */	addi r1, r1, 0x10
/* 80598340  4E 80 00 20 */	blr 
