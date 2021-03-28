lbl_80689544:
/* 80689544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80689548  7C 08 02 A6 */	mflr r0
/* 8068954C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80689550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80689554  93 C1 00 08 */	stw r30, 8(r1)
/* 80689558  7C 7F 1B 78 */	mr r31, r3
/* 8068955C  3C 60 80 69 */	lis r3, lit_3768@ha
/* 80689560  3B C3 A2 44 */	addi r30, r3, lit_3768@l
/* 80689564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80689568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8068956C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80689570  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80689574  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 80689578  EC 42 00 2A */	fadds f2, f2, f0
/* 8068957C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80689580  4B CB D3 68 */	b PSMTXTrans
/* 80689584  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80689588  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 8068958C  FC 60 08 90 */	fmr f3, f1
/* 80689590  4B 98 38 0C */	b transM__14mDoMtx_stack_cFfff
/* 80689594  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80689598  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8068959C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 806895A0  7C 00 00 D0 */	neg r0, r0
/* 806895A4  7C 04 07 34 */	extsh r4, r0
/* 806895A8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 806895AC  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 806895B0  4B 98 2C F0 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 806895B4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806895B8  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 806895BC  FC 60 08 90 */	fmr f3, f1
/* 806895C0  4B 98 37 DC */	b transM__14mDoMtx_stack_cFfff
/* 806895C4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806895C8  83 C3 00 04 */	lwz r30, 4(r3)
/* 806895CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806895D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806895D4  38 9E 00 24 */	addi r4, r30, 0x24
/* 806895D8  4B CB CE D8 */	b PSMTXCopy
/* 806895DC  93 FE 00 14 */	stw r31, 0x14(r30)
/* 806895E0  38 C0 00 01 */	li r6, 1
/* 806895E4  3C 60 80 68 */	lis r3, JointCallBack__8daE_BG_cFP8J3DJointi@ha
/* 806895E8  38 83 59 48 */	addi r4, r3, JointCallBack__8daE_BG_cFP8J3DJointi@l
/* 806895EC  48 00 00 18 */	b lbl_80689604
lbl_806895F0:
/* 806895F0  80 65 00 28 */	lwz r3, 0x28(r5)
/* 806895F4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 806895F8  7C 63 00 2E */	lwzx r3, r3, r0
/* 806895FC  90 83 00 04 */	stw r4, 4(r3)
/* 80689600  38 C6 00 01 */	addi r6, r6, 1
lbl_80689604:
/* 80689604  80 BE 00 04 */	lwz r5, 4(r30)
/* 80689608  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 8068960C  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80689610  7C 00 18 40 */	cmplw r0, r3
/* 80689614  41 80 FF DC */	blt lbl_806895F0
/* 80689618  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8068961C  4B 98 7B D0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80689620  38 C0 00 01 */	li r6, 1
/* 80689624  38 80 00 00 */	li r4, 0
/* 80689628  48 00 00 18 */	b lbl_80689640
lbl_8068962C:
/* 8068962C  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80689630  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80689634  7C 63 00 2E */	lwzx r3, r3, r0
/* 80689638  90 83 00 04 */	stw r4, 4(r3)
/* 8068963C  38 C6 00 01 */	addi r6, r6, 1
lbl_80689640:
/* 80689640  80 BE 00 04 */	lwz r5, 4(r30)
/* 80689644  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80689648  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8068964C  7C 00 18 40 */	cmplw r0, r3
/* 80689650  41 80 FF DC */	blt lbl_8068962C
/* 80689654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80689658  83 C1 00 08 */	lwz r30, 8(r1)
/* 8068965C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80689660  7C 08 03 A6 */	mtlr r0
/* 80689664  38 21 00 10 */	addi r1, r1, 0x10
/* 80689668  4E 80 00 20 */	blr 
