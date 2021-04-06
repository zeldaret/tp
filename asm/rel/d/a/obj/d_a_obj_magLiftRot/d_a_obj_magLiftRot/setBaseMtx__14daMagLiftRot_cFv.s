lbl_80C8EA28:
/* 80C8EA28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8EA2C  7C 08 02 A6 */	mflr r0
/* 80C8EA30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8EA34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C8EA38  7C 7F 1B 78 */	mr r31, r3
/* 80C8EA3C  C0 03 06 2C */	lfs f0, 0x62c(r3)
/* 80C8EA40  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 80C8EA44  3C 60 80 C9 */	lis r3, lit_3634@ha /* 0x80C8FB04@ha */
/* 80C8EA48  C0 03 FB 04 */	lfs f0, lit_3634@l(r3)  /* 0x80C8FB04@l */
/* 80C8EA4C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80C8EA50  C0 1F 06 30 */	lfs f0, 0x630(r31)
/* 80C8EA54  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80C8EA58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8EA5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8EA60  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C8EA64  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C8EA68  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C8EA6C  4B 6B 7E 7D */	bl PSMTXTrans
/* 80C8EA70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8EA74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8EA78  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80C8EA7C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80C8EA80  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80C8EA84  4B 37 D8 1D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C8EA88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8EA8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8EA90  A8 9F 05 E6 */	lha r4, 0x5e6(r31)
/* 80C8EA94  A8 BF 05 E8 */	lha r5, 0x5e8(r31)
/* 80C8EA98  A8 DF 05 EA */	lha r6, 0x5ea(r31)
/* 80C8EA9C  4B 37 D8 05 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C8EAA0  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 80C8EAA4  C0 5F 05 F0 */	lfs f2, 0x5f0(r31)
/* 80C8EAA8  C0 7F 05 F4 */	lfs f3, 0x5f4(r31)
/* 80C8EAAC  4B 37 E2 F1 */	bl transM__14mDoMtx_stack_cFfff
/* 80C8EAB0  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80C8EAB4  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80C8EAB8  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 80C8EABC  4B 37 E3 7D */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C8EAC0  3C 60 80 C9 */	lis r3, lit_3634@ha /* 0x80C8FB04@ha */
/* 80C8EAC4  C0 03 FB 04 */	lfs f0, lit_3634@l(r3)  /* 0x80C8FB04@l */
/* 80C8EAC8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C8EACC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C8EAD0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C8EAD4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8EAD8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C8EADC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C8EAE0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C8EAE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8EAE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8EAEC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C8EAF0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C8EAF4  4B 6B 79 BD */	bl PSMTXCopy
/* 80C8EAF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C8EAFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C8EB00  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C8EB04  4B 6B 79 AD */	bl PSMTXCopy
/* 80C8EB08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C8EB0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8EB10  7C 08 03 A6 */	mtlr r0
/* 80C8EB14  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8EB18  4E 80 00 20 */	blr 
