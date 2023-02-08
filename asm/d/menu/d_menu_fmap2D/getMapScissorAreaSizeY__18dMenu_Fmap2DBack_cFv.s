lbl_801D2920:
/* 801D2920  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D2924  7C 08 02 A6 */	mflr r0
/* 801D2928  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D292C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801D2930  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801D2934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D2938  7C 7F 1B 78 */	mr r31, r3
/* 801D293C  80 63 0C A4 */	lwz r3, 0xca4(r3)
/* 801D2940  80 63 00 04 */	lwz r3, 4(r3)
/* 801D2944  C3 E3 00 D0 */	lfs f31, 0xd0(r3)
/* 801D2948  48 12 51 B5 */	bl getParentPane__7J2DPaneFv
/* 801D294C  48 00 00 10 */	b lbl_801D295C
lbl_801D2950:
/* 801D2950  C0 03 00 D0 */	lfs f0, 0xd0(r3)
/* 801D2954  EF FF 00 32 */	fmuls f31, f31, f0
/* 801D2958  48 12 51 A5 */	bl getParentPane__7J2DPaneFv
lbl_801D295C:
/* 801D295C  28 03 00 00 */	cmplwi r3, 0
/* 801D2960  40 82 FF F0 */	bne lbl_801D2950
/* 801D2964  80 7F 0C A4 */	lwz r3, 0xca4(r31)
/* 801D2968  80 63 00 04 */	lwz r3, 4(r3)
/* 801D296C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801D2970  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801D2974  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D2978  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801D297C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801D2980  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801D2984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D2988  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D298C  7C 08 03 A6 */	mtlr r0
/* 801D2990  38 21 00 20 */	addi r1, r1, 0x20
/* 801D2994  4E 80 00 20 */	blr 
