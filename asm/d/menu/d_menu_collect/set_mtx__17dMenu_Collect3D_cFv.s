lbl_801B6D30:
/* 801B6D30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B6D34  7C 08 02 A6 */	mflr r0
/* 801B6D38  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B6D3C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801B6D40  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801B6D44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B6D48  7C 7F 1B 78 */	mr r31, r3
/* 801B6D4C  C3 E2 A5 28 */	lfs f31, lit_4481(r2)
/* 801B6D50  48 00 07 B5 */	bl getMaskMdlVisible__17dMenu_Collect3D_cFv
/* 801B6D54  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B6D58  28 00 00 02 */	cmplwi r0, 2
/* 801B6D5C  40 82 00 2C */	bne lbl_801B6D88
/* 801B6D60  48 00 07 3D */	bl getMirrorNum__17dMenu_Collect3D_cFv
/* 801B6D64  38 03 FF FE */	addi r0, r3, -2
/* 801B6D68  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801B6D6C  28 00 00 01 */	cmplwi r0, 1
/* 801B6D70  40 81 00 10 */	ble lbl_801B6D80
/* 801B6D74  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B6D78  28 00 00 04 */	cmplwi r0, 4
/* 801B6D7C  40 82 00 48 */	bne lbl_801B6DC4
lbl_801B6D80:
/* 801B6D80  C3 E2 A5 B4 */	lfs f31, lit_7505(r2)
/* 801B6D84  48 00 00 40 */	b lbl_801B6DC4
lbl_801B6D88:
/* 801B6D88  48 00 06 AD */	bl getCrystalNum__17dMenu_Collect3D_cFv
/* 801B6D8C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B6D90  28 00 00 01 */	cmplwi r0, 1
/* 801B6D94  41 82 00 0C */	beq lbl_801B6DA0
/* 801B6D98  28 00 00 02 */	cmplwi r0, 2
/* 801B6D9C  40 82 00 0C */	bne lbl_801B6DA8
lbl_801B6DA0:
/* 801B6DA0  C3 E2 A5 B8 */	lfs f31, lit_7506(r2)
/* 801B6DA4  48 00 00 20 */	b lbl_801B6DC4
lbl_801B6DA8:
/* 801B6DA8  28 00 00 03 */	cmplwi r0, 3
/* 801B6DAC  40 82 00 0C */	bne lbl_801B6DB8
/* 801B6DB0  C3 E2 A5 BC */	lfs f31, lit_7507(r2)
/* 801B6DB4  48 00 00 10 */	b lbl_801B6DC4
lbl_801B6DB8:
/* 801B6DB8  28 00 00 04 */	cmplwi r0, 4
/* 801B6DBC  40 82 00 08 */	bne lbl_801B6DC4
/* 801B6DC0  C3 E2 A5 C0 */	lfs f31, lit_7508(r2)
lbl_801B6DC4:
/* 801B6DC4  C0 3F 03 CC */	lfs f1, 0x3cc(r31)
/* 801B6DC8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B6DCC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B6DD0  C0 03 06 4C */	lfs f0, 0x64c(r3)
/* 801B6DD4  EC 00 F8 2A */	fadds f0, f0, f31
/* 801B6DD8  EC 01 00 2A */	fadds f0, f1, f0
/* 801B6DDC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801B6DE0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801B6DE4  D0 01 00 08 */	stfs f0, 8(r1)
/* 801B6DE8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B6DEC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801B6DF0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801B6DF4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801B6DF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801B6DFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801B6E00  C0 3F 03 B0 */	lfs f1, 0x3b0(r31)
/* 801B6E04  C0 5F 03 B4 */	lfs f2, 0x3b4(r31)
/* 801B6E08  C0 7F 03 B8 */	lfs f3, 0x3b8(r31)
/* 801B6E0C  48 18 FA DD */	bl PSMTXTrans
/* 801B6E10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801B6E14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801B6E18  A8 9F 03 BE */	lha r4, 0x3be(r31)
/* 801B6E1C  4B E5 56 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 801B6E20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801B6E24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801B6E28  A8 9F 03 BC */	lha r4, 0x3bc(r31)
/* 801B6E2C  4B E5 55 71 */	bl mDoMtx_XrotM__FPA4_fs
/* 801B6E30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801B6E34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801B6E38  A8 9F 03 C0 */	lha r4, 0x3c0(r31)
/* 801B6E3C  4B E5 56 91 */	bl mDoMtx_ZrotM__FPA4_fs
/* 801B6E40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801B6E44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801B6E48  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801B6E4C  38 84 00 24 */	addi r4, r4, 0x24
/* 801B6E50  48 18 F6 61 */	bl PSMTXCopy
/* 801B6E54  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801B6E58  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801B6E5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B6E60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B6E64  7C 08 03 A6 */	mtlr r0
/* 801B6E68  38 21 00 30 */	addi r1, r1, 0x30
/* 801B6E6C  4E 80 00 20 */	blr 
