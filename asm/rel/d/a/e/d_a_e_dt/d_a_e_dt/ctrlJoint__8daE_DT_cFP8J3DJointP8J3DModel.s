lbl_806AD97C:
/* 806AD97C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806AD980  7C 08 02 A6 */	mflr r0
/* 806AD984  90 01 00 54 */	stw r0, 0x54(r1)
/* 806AD988  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 806AD98C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 806AD990  39 61 00 40 */	addi r11, r1, 0x40
/* 806AD994  4B CB 48 45 */	bl _savegpr_28
/* 806AD998  7C 7C 1B 78 */	mr r28, r3
/* 806AD99C  7C BD 2B 78 */	mr r29, r5
/* 806AD9A0  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 806AD9A4  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806AD9A8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806AD9AC  1F DF 00 30 */	mulli r30, r31, 0x30
/* 806AD9B0  7C 60 F2 14 */	add r3, r0, r30
/* 806AD9B4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AD9B8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AD9BC  4B C9 8A F5 */	bl PSMTXCopy
/* 806AD9C0  A8 1C 07 4C */	lha r0, 0x74c(r28)
/* 806AD9C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806AD9C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806AD9CC  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806AD9D0  7C 45 04 2E */	lfsx f2, r5, r0
/* 806AD9D4  3C 60 80 6B */	lis r3, lit_3868@ha /* 0x806B5CFC@ha */
/* 806AD9D8  C0 23 5C FC */	lfs f1, lit_3868@l(r3)  /* 0x806B5CFC@l */
/* 806AD9DC  C0 1C 07 48 */	lfs f0, 0x748(r28)
/* 806AD9E0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806AD9E4  EF E1 00 2A */	fadds f31, f1, f0
/* 806AD9E8  A8 1C 07 50 */	lha r0, 0x750(r28)
/* 806AD9EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806AD9F0  7C 65 04 2E */	lfsx f3, r5, r0
/* 806AD9F4  A8 1C 07 4E */	lha r0, 0x74e(r28)
/* 806AD9F8  3C 60 80 6B */	lis r3, lit_3870@ha /* 0x806B5D04@ha */
/* 806AD9FC  C8 43 5D 04 */	lfd f2, lit_3870@l(r3)  /* 0x806B5D04@l */
/* 806ADA00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806ADA04  90 01 00 0C */	stw r0, 0xc(r1)
/* 806ADA08  3C 60 43 30 */	lis r3, 0x4330
/* 806ADA0C  90 61 00 08 */	stw r3, 8(r1)
/* 806ADA10  C8 01 00 08 */	lfd f0, 8(r1)
/* 806ADA14  EC 00 10 28 */	fsubs f0, f0, f2
/* 806ADA18  EC 00 00 F2 */	fmuls f0, f0, f3
/* 806ADA1C  FC 00 00 1E */	fctiwz f0, f0
/* 806ADA20  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806ADA24  80 81 00 14 */	lwz r4, 0x14(r1)
/* 806ADA28  A8 1C 07 54 */	lha r0, 0x754(r28)
/* 806ADA2C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806ADA30  7C 65 04 2E */	lfsx f3, r5, r0
/* 806ADA34  A8 1C 07 52 */	lha r0, 0x752(r28)
/* 806ADA38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806ADA3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806ADA40  90 61 00 18 */	stw r3, 0x18(r1)
/* 806ADA44  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 806ADA48  EC 00 10 28 */	fsubs f0, f0, f2
/* 806ADA4C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 806ADA50  FC 00 00 1E */	fctiwz f0, f0
/* 806ADA54  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806ADA58  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 806ADA5C  28 1F 00 26 */	cmplwi r31, 0x26
/* 806ADA60  41 81 00 F0 */	bgt lbl_806ADB50
/* 806ADA64  3C 60 80 6B */	lis r3, lit_3874@ha /* 0x806B5FBC@ha */
/* 806ADA68  38 63 5F BC */	addi r3, r3, lit_3874@l /* 0x806B5FBC@l */
/* 806ADA6C  57 E0 10 3A */	slwi r0, r31, 2
/* 806ADA70  7C 03 00 2E */	lwzx r0, r3, r0
/* 806ADA74  7C 09 03 A6 */	mtctr r0
/* 806ADA78  4E 80 04 20 */	bctr 
lbl_806ADA7C:
/* 806ADA7C  FC 40 F8 90 */	fmr f2, f31
/* 806ADA80  FC 60 08 90 */	fmr f3, f1
/* 806ADA84  4B 95 F3 B5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806ADA88  3C 60 80 6B */	lis r3, lit_3868@ha /* 0x806B5CFC@ha */
/* 806ADA8C  C0 23 5C FC */	lfs f1, lit_3868@l(r3)  /* 0x806B5CFC@l */
/* 806ADA90  FC 40 08 90 */	fmr f2, f1
/* 806ADA94  FC 60 F8 90 */	fmr f3, f31
/* 806ADA98  4B 95 F3 A1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806ADA9C  48 00 00 B4 */	b lbl_806ADB50
lbl_806ADAA0:
/* 806ADAA0  EF E1 F8 24 */	fdivs f31, f1, f31
/* 806ADAA4  FC 40 F8 90 */	fmr f2, f31
/* 806ADAA8  FC 60 08 90 */	fmr f3, f1
/* 806ADAAC  4B 95 F3 8D */	bl scaleM__14mDoMtx_stack_cFfff
/* 806ADAB0  3C 60 80 6B */	lis r3, lit_3868@ha /* 0x806B5CFC@ha */
/* 806ADAB4  C0 23 5C FC */	lfs f1, lit_3868@l(r3)  /* 0x806B5CFC@l */
/* 806ADAB8  FC 40 08 90 */	fmr f2, f1
/* 806ADABC  FC 60 F8 90 */	fmr f3, f31
/* 806ADAC0  4B 95 F3 79 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806ADAC4  48 00 00 8C */	b lbl_806ADB50
lbl_806ADAC8:
/* 806ADAC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806ADACC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806ADAD0  4B 95 E9 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 806ADAD4  48 00 00 7C */	b lbl_806ADB50
lbl_806ADAD8:
/* 806ADAD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806ADADC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806ADAE0  7C 04 00 D0 */	neg r0, r4
/* 806ADAE4  7C 04 07 34 */	extsh r4, r0
/* 806ADAE8  4B 95 E9 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 806ADAEC  48 00 00 64 */	b lbl_806ADB50
lbl_806ADAF0:
/* 806ADAF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806ADAF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806ADAF8  7C A4 2B 78 */	mr r4, r5
/* 806ADAFC  4B 95 E9 39 */	bl mDoMtx_YrotM__FPA4_fs
/* 806ADB00  48 00 00 50 */	b lbl_806ADB50
lbl_806ADB04:
/* 806ADB04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806ADB08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806ADB0C  7C 05 00 D0 */	neg r0, r5
/* 806ADB10  7C 04 07 34 */	extsh r4, r0
/* 806ADB14  4B 95 E9 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 806ADB18  48 00 00 38 */	b lbl_806ADB50
lbl_806ADB1C:
/* 806ADB1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806ADB20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806ADB24  A8 9C 07 34 */	lha r4, 0x734(r28)
/* 806ADB28  4B 95 E9 A5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806ADB2C  48 00 00 24 */	b lbl_806ADB50
lbl_806ADB30:
/* 806ADB30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806ADB34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806ADB38  A8 9C 07 44 */	lha r4, 0x744(r28)
/* 806ADB3C  4B 95 E8 F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 806ADB40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806ADB44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806ADB48  A8 9C 07 42 */	lha r4, 0x742(r28)
/* 806ADB4C  4B 95 E9 81 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_806ADB50:
/* 806ADB50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806ADB54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806ADB58  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 806ADB5C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806ADB60  7C 80 F2 14 */	add r4, r0, r30
/* 806ADB64  4B C9 89 4D */	bl PSMTXCopy
/* 806ADB68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806ADB6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806ADB70  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806ADB74  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806ADB78  4B C9 89 39 */	bl PSMTXCopy
/* 806ADB7C  38 60 00 01 */	li r3, 1
/* 806ADB80  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 806ADB84  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 806ADB88  39 61 00 40 */	addi r11, r1, 0x40
/* 806ADB8C  4B CB 46 99 */	bl _restgpr_28
/* 806ADB90  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806ADB94  7C 08 03 A6 */	mtlr r0
/* 806ADB98  38 21 00 50 */	addi r1, r1, 0x50
/* 806ADB9C  4E 80 00 20 */	blr 
