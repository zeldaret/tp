lbl_80D30534:
/* 80D30534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D30538  7C 08 02 A6 */	mflr r0
/* 80D3053C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D30540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D30544  93 C1 00 08 */	stw r30, 8(r1)
/* 80D30548  7C 7E 1B 78 */	mr r30, r3
/* 80D3054C  3C 60 80 D3 */	lis r3, l_arcName@ha
/* 80D30550  3B E3 19 24 */	addi r31, r3, l_arcName@l
/* 80D30554  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D30558  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3055C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D30560  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D30564  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D30568  4B 61 63 80 */	b PSMTXTrans
/* 80D3056C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D30570  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D30574  A8 9E 07 7C */	lha r4, 0x77c(r30)
/* 80D30578  4B 2D BF 54 */	b mDoMtx_ZrotM__FPA4_fs
/* 80D3057C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D30580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D30584  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80D30588  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80D3058C  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80D30590  4B 2D BD 10 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D30594  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80D30598  FC 40 08 90 */	fmr f2, f1
/* 80D3059C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80D305A0  4B 2D C7 FC */	b transM__14mDoMtx_stack_cFfff
/* 80D305A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D305A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D305AC  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80D305B0  38 84 00 24 */	addi r4, r4, 0x24
/* 80D305B4  4B 61 5E FC */	b PSMTXCopy
/* 80D305B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D305BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D305C0  38 9F 00 48 */	addi r4, r31, 0x48
/* 80D305C4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D305C8  4B 61 67 A4 */	b PSMTXMultVec
/* 80D305CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D305D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D305D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D305D8  7C 08 03 A6 */	mtlr r0
/* 80D305DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D305E0  4E 80 00 20 */	blr 
