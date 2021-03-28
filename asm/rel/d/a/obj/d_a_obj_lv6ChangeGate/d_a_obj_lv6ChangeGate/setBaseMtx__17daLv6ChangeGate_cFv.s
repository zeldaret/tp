lbl_80C70D38:
/* 80C70D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70D3C  7C 08 02 A6 */	mflr r0
/* 80C70D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70D48  7C 7F 1B 78 */	mr r31, r3
/* 80C70D4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C70D50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C70D54  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C70D58  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C70D5C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C70D60  4B 6D 5B 88 */	b PSMTXTrans
/* 80C70D64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C70D68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C70D6C  38 80 00 00 */	li r4, 0
/* 80C70D70  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C70D74  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C70D78  4B 39 B5 28 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C70D7C  C0 3F 14 D8 */	lfs f1, 0x14d8(r31)
/* 80C70D80  3C 60 80 C7 */	lis r3, lit_3664@ha
/* 80C70D84  C0 43 21 84 */	lfs f2, lit_3664@l(r3)
/* 80C70D88  FC 60 10 90 */	fmr f3, f2
/* 80C70D8C  4B 39 C0 10 */	b transM__14mDoMtx_stack_cFfff
/* 80C70D90  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80C70D94  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C70D98  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C70D9C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C70DA0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C70DA4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C70DA8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C70DAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C70DB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C70DB4  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80C70DB8  38 84 00 24 */	addi r4, r4, 0x24
/* 80C70DBC  4B 6D 56 F4 */	b PSMTXCopy
/* 80C70DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C70DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70DC8  7C 08 03 A6 */	mtlr r0
/* 80C70DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70DD0  4E 80 00 20 */	blr 
