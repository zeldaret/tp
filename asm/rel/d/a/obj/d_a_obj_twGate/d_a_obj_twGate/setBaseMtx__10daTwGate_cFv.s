lbl_80D1FB84:
/* 80D1FB84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1FB88  7C 08 02 A6 */	mflr r0
/* 80D1FB8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1FB90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1FB94  7C 7F 1B 78 */	mr r31, r3
/* 80D1FB98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1FB9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1FBA0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D1FBA4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D1FBA8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D1FBAC  4B 62 6D 3C */	b PSMTXTrans
/* 80D1FBB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1FBB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1FBB8  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80D1FBBC  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80D1FBC0  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80D1FBC4  4B 2E C6 DC */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D1FBC8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D1FBCC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D1FBD0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D1FBD4  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D1FBD8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D1FBDC  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D1FBE0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D1FBE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1FBE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1FBEC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80D1FBF0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D1FBF4  4B 62 68 BC */	b PSMTXCopy
/* 80D1FBF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1FBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1FC00  7C 08 03 A6 */	mtlr r0
/* 80D1FC04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1FC08  4E 80 00 20 */	blr 
