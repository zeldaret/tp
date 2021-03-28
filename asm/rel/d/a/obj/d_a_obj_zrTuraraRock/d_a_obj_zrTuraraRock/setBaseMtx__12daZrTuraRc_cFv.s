lbl_80D41934:
/* 80D41934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D41938  7C 08 02 A6 */	mflr r0
/* 80D4193C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D41940  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D41944  7C 7F 1B 78 */	mr r31, r3
/* 80D41948  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4194C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D41950  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D41954  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D41958  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D4195C  4B 60 4F 8C */	b PSMTXTrans
/* 80D41960  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D41964  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D41968  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80D4196C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80D41970  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80D41974  4B 2C A9 2C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80D41978  C0 3F 06 FC */	lfs f1, 0x6fc(r31)
/* 80D4197C  FC 40 08 90 */	fmr f2, f1
/* 80D41980  FC 60 08 90 */	fmr f3, f1
/* 80D41984  4B 2C B4 B4 */	b scaleM__14mDoMtx_stack_cFfff
/* 80D41988  3C 60 80 D4 */	lis r3, lit_3684@ha
/* 80D4198C  C0 03 24 04 */	lfs f0, lit_3684@l(r3)
/* 80D41990  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D41994  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D41998  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D4199C  80 7F 06 E4 */	lwz r3, 0x6e4(r31)
/* 80D419A0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D419A4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D419A8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D419AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D419B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D419B4  80 9F 06 E4 */	lwz r4, 0x6e4(r31)
/* 80D419B8  38 84 00 24 */	addi r4, r4, 0x24
/* 80D419BC  4B 60 4A F4 */	b PSMTXCopy
/* 80D419C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D419C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D419C8  7C 08 03 A6 */	mtlr r0
/* 80D419CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D419D0  4E 80 00 20 */	blr 
