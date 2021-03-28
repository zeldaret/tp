lbl_80CA296C:
/* 80CA296C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA2970  7C 08 02 A6 */	mflr r0
/* 80CA2974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA2978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA297C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CA2980  7C 7E 1B 78 */	mr r30, r3
/* 80CA2984  80 63 06 28 */	lwz r3, 0x628(r3)
/* 80CA2988  83 E3 00 04 */	lwz r31, 4(r3)
/* 80CA298C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80CA2990  4B 36 A3 D4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CA2994  38 7E 07 D4 */	addi r3, r30, 0x7d4
/* 80CA2998  4B 36 A5 AC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CA299C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80CA29A0  4B 36 A5 A4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CA29A4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80CA29A8  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80CA29AC  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80CA29B0  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80CA29B4  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80CA29B8  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80CA29BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CA29C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CA29C4  38 9F 00 24 */	addi r4, r31, 0x24
/* 80CA29C8  4B 6A 3A E8 */	b PSMTXCopy
/* 80CA29CC  80 7E 06 28 */	lwz r3, 0x628(r30)
/* 80CA29D0  4B 36 E8 1C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80CA29D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA29D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CA29DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA29E0  7C 08 03 A6 */	mtlr r0
/* 80CA29E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA29E8  4E 80 00 20 */	blr 
