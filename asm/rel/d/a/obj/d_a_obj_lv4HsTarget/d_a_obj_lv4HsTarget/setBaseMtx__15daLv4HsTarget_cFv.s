lbl_80C5F690:
/* 80C5F690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F694  7C 08 02 A6 */	mflr r0
/* 80C5F698  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F69C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5F6A0  7C 7F 1B 78 */	mr r31, r3
/* 80C5F6A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5F6A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5F6AC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C5F6B0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C5F6B4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C5F6B8  4B 6E 72 30 */	b PSMTXTrans
/* 80C5F6BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5F6C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5F6C4  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C5F6C8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C5F6CC  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C5F6D0  4B 3A CB D0 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C5F6D4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5F6D8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C5F6DC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C5F6E0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C5F6E4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C5F6E8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C5F6EC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C5F6F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5F6F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5F6F8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C5F6FC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C5F700  4B 6E 6D B0 */	b PSMTXCopy
/* 80C5F704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5F708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F70C  7C 08 03 A6 */	mtlr r0
/* 80C5F710  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F714  4E 80 00 20 */	blr 
