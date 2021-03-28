lbl_80797274:
/* 80797274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80797278  7C 08 02 A6 */	mflr r0
/* 8079727C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80797280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80797284  7C 7F 1B 78 */	mr r31, r3
/* 80797288  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8079728C  4B 87 5A D8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80797290  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80797294  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797298  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8079729C  4B 87 51 98 */	b mDoMtx_YrotM__FPA4_fs
/* 807972A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807972A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807972A8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807972AC  4B 87 50 F0 */	b mDoMtx_XrotM__FPA4_fs
/* 807972B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807972B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807972B8  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 807972BC  4B 87 52 10 */	b mDoMtx_ZrotM__FPA4_fs
/* 807972C0  3C 60 80 7A */	lis r3, l_HIO@ha
/* 807972C4  38 63 89 CC */	addi r3, r3, l_HIO@l
/* 807972C8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807972CC  FC 40 08 90 */	fmr f2, f1
/* 807972D0  FC 60 08 90 */	fmr f3, f1
/* 807972D4  4B 87 5B 64 */	b scaleM__14mDoMtx_stack_cFfff
/* 807972D8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807972DC  80 83 00 04 */	lwz r4, 4(r3)
/* 807972E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807972E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807972E8  38 84 00 24 */	addi r4, r4, 0x24
/* 807972EC  4B BA F1 C4 */	b PSMTXCopy
/* 807972F0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807972F4  4B 87 9E F8 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 807972F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807972FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80797300  7C 08 03 A6 */	mtlr r0
/* 80797304  38 21 00 10 */	addi r1, r1, 0x10
/* 80797308  4E 80 00 20 */	blr 
