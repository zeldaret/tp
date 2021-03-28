lbl_80C1F490:
/* 80C1F490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F494  7C 08 02 A6 */	mflr r0
/* 80C1F498  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F49C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1F4A0  7C 7F 1B 78 */	mr r31, r3
/* 80C1F4A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1F4A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1F4AC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C1F4B0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C1F4B4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C1F4B8  4B 72 74 30 */	b PSMTXTrans
/* 80C1F4BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1F4C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1F4C4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C1F4C8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C1F4CC  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C1F4D0  4B 3E CD D0 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C1F4D4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1F4D8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C1F4DC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C1F4E0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C1F4E4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C1F4E8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C1F4EC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C1F4F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1F4F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1F4F8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C1F4FC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C1F500  4B 72 6F B0 */	b PSMTXCopy
/* 80C1F504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1F508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F50C  7C 08 03 A6 */	mtlr r0
/* 80C1F510  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F514  4E 80 00 20 */	blr 
