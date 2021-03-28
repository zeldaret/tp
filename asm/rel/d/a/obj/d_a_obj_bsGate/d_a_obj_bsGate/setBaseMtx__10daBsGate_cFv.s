lbl_80BC2910:
/* 80BC2910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC2914  7C 08 02 A6 */	mflr r0
/* 80BC2918  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC291C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC2920  7C 7F 1B 78 */	mr r31, r3
/* 80BC2924  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC2928  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC292C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BC2930  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BC2934  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BC2938  4B 78 3F B0 */	b PSMTXTrans
/* 80BC293C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC2940  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC2944  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80BC2948  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BC294C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BC2950  4B 44 99 50 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80BC2954  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 80BC2958  3C 60 80 BC */	lis r3, lit_3647@ha
/* 80BC295C  C0 43 31 A8 */	lfs f2, lit_3647@l(r3)
/* 80BC2960  FC 60 10 90 */	fmr f3, f2
/* 80BC2964  4B 44 A4 38 */	b transM__14mDoMtx_stack_cFfff
/* 80BC2968  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BC296C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BC2970  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BC2974  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BC2978  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BC297C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80BC2980  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BC2984  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC2988  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC298C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BC2990  38 84 00 24 */	addi r4, r4, 0x24
/* 80BC2994  4B 78 3B 1C */	b PSMTXCopy
/* 80BC2998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC299C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC29A0  7C 08 03 A6 */	mtlr r0
/* 80BC29A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC29A8  4E 80 00 20 */	blr 
