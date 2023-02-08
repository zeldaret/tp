lbl_805DED58:
/* 805DED58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DED5C  7C 08 02 A6 */	mflr r0
/* 805DED60  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DED64  39 61 00 40 */	addi r11, r1, 0x40
/* 805DED68  4B D8 34 71 */	bl _savegpr_28
/* 805DED6C  7C 7D 1B 78 */	mr r29, r3
/* 805DED70  7C BE 2B 78 */	mr r30, r5
/* 805DED74  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 805DED78  80 65 00 84 */	lwz r3, 0x84(r5)
/* 805DED7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805DED80  1F FC 00 30 */	mulli r31, r28, 0x30
/* 805DED84  7C 60 FA 14 */	add r3, r0, r31
/* 805DED88  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DED8C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DED90  4B D6 77 21 */	bl PSMTXCopy
/* 805DED94  2C 1C 00 02 */	cmpwi r28, 2
/* 805DED98  41 82 00 A8 */	beq lbl_805DEE40
/* 805DED9C  40 80 01 34 */	bge lbl_805DEED0
/* 805DEDA0  2C 1C 00 01 */	cmpwi r28, 1
/* 805DEDA4  40 80 00 08 */	bge lbl_805DEDAC
/* 805DEDA8  48 00 01 28 */	b lbl_805DEED0
lbl_805DEDAC:
/* 805DEDAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DEDB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DEDB4  3C 80 80 5F */	lis r4, lit_3934@ha /* 0x805ED094@ha */
/* 805DEDB8  C0 44 D0 94 */	lfs f2, lit_3934@l(r4)  /* 0x805ED094@l */
/* 805DEDBC  A8 1D 06 D4 */	lha r0, 0x6d4(r29)
/* 805DEDC0  3C 80 80 5F */	lis r4, lit_4066@ha /* 0x805ED1A8@ha */
/* 805DEDC4  C8 24 D1 A8 */	lfd f1, lit_4066@l(r4)  /* 0x805ED1A8@l */
/* 805DEDC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805DEDCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DEDD0  3C 00 43 30 */	lis r0, 0x4330
/* 805DEDD4  90 01 00 08 */	stw r0, 8(r1)
/* 805DEDD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805DEDDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805DEDE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805DEDE4  FC 00 00 1E */	fctiwz f0, f0
/* 805DEDE8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805DEDEC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805DEDF0  4B A2 D6 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 805DEDF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DEDF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DEDFC  3C 80 80 5F */	lis r4, lit_3934@ha /* 0x805ED094@ha */
/* 805DEE00  C0 44 D0 94 */	lfs f2, lit_3934@l(r4)  /* 0x805ED094@l */
/* 805DEE04  A8 1D 06 D6 */	lha r0, 0x6d6(r29)
/* 805DEE08  3C 80 80 5F */	lis r4, lit_4066@ha /* 0x805ED1A8@ha */
/* 805DEE0C  C8 24 D1 A8 */	lfd f1, lit_4066@l(r4)  /* 0x805ED1A8@l */
/* 805DEE10  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805DEE14  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805DEE18  3C 00 43 30 */	lis r0, 0x4330
/* 805DEE1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805DEE20  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805DEE24  EC 00 08 28 */	fsubs f0, f0, f1
/* 805DEE28  EC 02 00 32 */	fmuls f0, f2, f0
/* 805DEE2C  FC 00 00 1E */	fctiwz f0, f0
/* 805DEE30  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805DEE34  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805DEE38  4B A2 D6 95 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805DEE3C  48 00 00 94 */	b lbl_805DEED0
lbl_805DEE40:
/* 805DEE40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DEE44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DEE48  3C 80 80 5F */	lis r4, lit_3934@ha /* 0x805ED094@ha */
/* 805DEE4C  C0 44 D0 94 */	lfs f2, lit_3934@l(r4)  /* 0x805ED094@l */
/* 805DEE50  A8 1D 06 D4 */	lha r0, 0x6d4(r29)
/* 805DEE54  3C 80 80 5F */	lis r4, lit_4066@ha /* 0x805ED1A8@ha */
/* 805DEE58  C8 24 D1 A8 */	lfd f1, lit_4066@l(r4)  /* 0x805ED1A8@l */
/* 805DEE5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805DEE60  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DEE64  3C 00 43 30 */	lis r0, 0x4330
/* 805DEE68  90 01 00 20 */	stw r0, 0x20(r1)
/* 805DEE6C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805DEE70  EC 00 08 28 */	fsubs f0, f0, f1
/* 805DEE74  EC 02 00 32 */	fmuls f0, f2, f0
/* 805DEE78  FC 00 00 1E */	fctiwz f0, f0
/* 805DEE7C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805DEE80  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 805DEE84  4B A2 D5 B1 */	bl mDoMtx_YrotM__FPA4_fs
/* 805DEE88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DEE8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DEE90  3C 80 80 5F */	lis r4, lit_3934@ha /* 0x805ED094@ha */
/* 805DEE94  C0 44 D0 94 */	lfs f2, lit_3934@l(r4)  /* 0x805ED094@l */
/* 805DEE98  A8 1D 06 D6 */	lha r0, 0x6d6(r29)
/* 805DEE9C  3C 80 80 5F */	lis r4, lit_4066@ha /* 0x805ED1A8@ha */
/* 805DEEA0  C8 24 D1 A8 */	lfd f1, lit_4066@l(r4)  /* 0x805ED1A8@l */
/* 805DEEA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805DEEA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DEEAC  3C 00 43 30 */	lis r0, 0x4330
/* 805DEEB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805DEEB4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805DEEB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805DEEBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 805DEEC0  FC 00 00 1E */	fctiwz f0, f0
/* 805DEEC4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805DEEC8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805DEECC  4B A2 D6 01 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_805DEED0:
/* 805DEED0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DEED4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DEED8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 805DEEDC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805DEEE0  7C 80 FA 14 */	add r4, r0, r31
/* 805DEEE4  4B D6 75 CD */	bl PSMTXCopy
/* 805DEEE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DEEEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DEEF0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 805DEEF4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 805DEEF8  4B D6 75 B9 */	bl PSMTXCopy
/* 805DEEFC  38 60 00 01 */	li r3, 1
/* 805DEF00  39 61 00 40 */	addi r11, r1, 0x40
/* 805DEF04  4B D8 33 21 */	bl _restgpr_28
/* 805DEF08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DEF0C  7C 08 03 A6 */	mtlr r0
/* 805DEF10  38 21 00 40 */	addi r1, r1, 0x40
/* 805DEF14  4E 80 00 20 */	blr 
