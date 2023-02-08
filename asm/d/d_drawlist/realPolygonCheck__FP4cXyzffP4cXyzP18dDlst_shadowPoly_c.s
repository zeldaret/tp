lbl_80054854:
/* 80054854  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80054858  7C 08 02 A6 */	mflr r0
/* 8005485C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80054860  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80054864  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80054868  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8005486C  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80054870  39 61 00 80 */	addi r11, r1, 0x80
/* 80054874  48 30 D9 61 */	bl _savegpr_27
/* 80054878  7C 7B 1B 78 */	mr r27, r3
/* 8005487C  FF E0 08 90 */	fmr f31, f1
/* 80054880  FF C0 10 90 */	fmr f30, f2
/* 80054884  7C 9C 23 78 */	mr r28, r4
/* 80054888  7C BD 2B 78 */	mr r29, r5
/* 8005488C  38 61 00 20 */	addi r3, r1, 0x20
/* 80054890  48 21 36 F9 */	bl __ct__13cBgS_ShdwDrawFv
/* 80054894  3C 60 80 3B */	lis r3, __vt__14ShdwDrawPoly_c@ha /* 0x803A8DEC@ha */
/* 80054898  38 03 8D EC */	addi r0, r3, __vt__14ShdwDrawPoly_c@l /* 0x803A8DEC@l */
/* 8005489C  90 01 00 30 */	stw r0, 0x30(r1)
/* 800548A0  C0 22 86 58 */	lfs f1, lit_5127(r2)
/* 800548A4  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 800548A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800548AC  C0 22 86 5C */	lfs f1, lit_5128(r2)
/* 800548B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800548B4  40 81 00 08 */	ble lbl_800548BC
/* 800548B8  48 00 00 08 */	b lbl_800548C0
lbl_800548BC:
/* 800548BC  FC 20 00 90 */	fmr f1, f0
lbl_800548C0:
/* 800548C0  EC 1F F0 2A */	fadds f0, f31, f30
/* 800548C4  EC 40 08 28 */	fsubs f2, f0, f1
/* 800548C8  C0 3B 00 04 */	lfs f1, 4(r27)
/* 800548CC  EC 01 10 28 */	fsubs f0, f1, f2
/* 800548D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800548D4  C0 02 86 60 */	lfs f0, lit_5129(r2)
/* 800548D8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800548DC  EC 01 00 2A */	fadds f0, f1, f0
/* 800548E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800548E4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 800548E8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 800548EC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800548F0  EC 01 00 2A */	fadds f0, f1, f0
/* 800548F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 800548F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800548FC  40 80 00 10 */	bge lbl_8005490C
/* 80054900  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80054904  D0 21 00 08 */	stfs f1, 8(r1)
/* 80054908  48 00 00 08 */	b lbl_80054910
lbl_8005490C:
/* 8005490C  D0 21 00 14 */	stfs f1, 0x14(r1)
lbl_80054910:
/* 80054910  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80054914  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80054918  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8005491C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80054920  EC 00 F8 2A */	fadds f0, f0, f31
/* 80054924  D0 01 00 08 */	stfs f0, 8(r1)
/* 80054928  C0 3B 00 08 */	lfs f1, 8(r27)
/* 8005492C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80054930  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80054934  EC 01 00 2A */	fadds f0, f1, f0
/* 80054938  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8005493C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80054940  40 80 00 10 */	bge lbl_80054950
/* 80054944  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80054948  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8005494C  48 00 00 08 */	b lbl_80054954
lbl_80054950:
/* 80054950  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_80054954:
/* 80054954  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80054958  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8005495C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80054960  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80054964  EC 00 F8 2A */	fadds f0, f0, f31
/* 80054968  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8005496C  C0 22 86 64 */	lfs f1, lit_5130(r2)
/* 80054970  C0 0D 86 F4 */	lfs f0, mFovyRate__14mDoLib_clipper(r13)
/* 80054974  EC 01 00 32 */	fmuls f0, f1, f0
/* 80054978  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 8005497C  3B C3 D8 E4 */	addi r30, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 80054980  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 80054984  7F C3 F3 78 */	mr r3, r30
/* 80054988  48 21 EE 05 */	bl calcViewFrustum__11J3DUClipperFv
/* 8005498C  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 80054990  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 80054994  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 80054998  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 8005499C  38 A1 00 08 */	addi r5, r1, 8
/* 800549A0  38 C1 00 14 */	addi r6, r1, 0x14
/* 800549A4  48 21 F0 A1 */	bl clip__11J3DUClipperCFPA4_CfP3VecP3Vec
/* 800549A8  7C 7F 1B 78 */	mr r31, r3
/* 800549AC  C0 0D 86 F0 */	lfs f0, mSystemFar__14mDoLib_clipper(r13)
/* 800549B0  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 800549B4  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha /* 0x803DD8E4@ha */
/* 800549B8  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l /* 0x803DD8E4@l */
/* 800549BC  48 21 ED D1 */	bl calcViewFrustum__11J3DUClipperFv
/* 800549C0  2C 1F 00 00 */	cmpwi r31, 0
/* 800549C4  41 82 00 24 */	beq lbl_800549E8
/* 800549C8  3C 60 80 3B */	lis r3, __vt__14ShdwDrawPoly_c@ha /* 0x803A8DEC@ha */
/* 800549CC  38 03 8D EC */	addi r0, r3, __vt__14ShdwDrawPoly_c@l /* 0x803A8DEC@l */
/* 800549D0  90 01 00 30 */	stw r0, 0x30(r1)
/* 800549D4  38 61 00 20 */	addi r3, r1, 0x20
/* 800549D8  38 80 00 00 */	li r4, 0
/* 800549DC  48 21 35 F5 */	bl __dt__13cBgS_ShdwDrawFv
/* 800549E0  38 60 00 00 */	li r3, 0
/* 800549E4  48 00 00 60 */	b lbl_80054A44
lbl_800549E8:
/* 800549E8  38 61 00 20 */	addi r3, r1, 0x20
/* 800549EC  38 81 00 14 */	addi r4, r1, 0x14
/* 800549F0  38 A1 00 08 */	addi r5, r1, 8
/* 800549F4  48 21 36 55 */	bl Set__13cBgS_ShdwDrawFR4cXyzR4cXyz
/* 800549F8  38 61 00 20 */	addi r3, r1, 0x20
/* 800549FC  3C 80 80 05 */	lis r4, psdRealCallBack__FP13cBgS_ShdwDrawP10cBgD_Vtx_tiiiP8cM3dGPla@ha /* 0x80054688@ha */
/* 80054A00  38 84 46 88 */	addi r4, r4, psdRealCallBack__FP13cBgS_ShdwDrawP10cBgD_Vtx_tiiiP8cM3dGPla@l /* 0x80054688@l */
/* 80054A04  48 21 36 69 */	bl SetCallback__13cBgS_ShdwDrawFPFP13cBgS_ShdwDrawP10cBgD_Vtx_tiiiP8cM3dGPla_i
/* 80054A08  93 61 00 54 */	stw r27, 0x54(r1)
/* 80054A0C  93 81 00 58 */	stw r28, 0x58(r1)
/* 80054A10  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 80054A14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80054A18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80054A1C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80054A20  38 81 00 20 */	addi r4, r1, 0x20
/* 80054A24  48 01 FE 1D */	bl ShdwDraw__4cBgSFP13cBgS_ShdwDraw
/* 80054A28  3C 60 80 3B */	lis r3, __vt__14ShdwDrawPoly_c@ha /* 0x803A8DEC@ha */
/* 80054A2C  38 03 8D EC */	addi r0, r3, __vt__14ShdwDrawPoly_c@l /* 0x803A8DEC@l */
/* 80054A30  90 01 00 30 */	stw r0, 0x30(r1)
/* 80054A34  38 61 00 20 */	addi r3, r1, 0x20
/* 80054A38  38 80 00 00 */	li r4, 0
/* 80054A3C  48 21 35 95 */	bl __dt__13cBgS_ShdwDrawFv
/* 80054A40  38 60 00 01 */	li r3, 1
lbl_80054A44:
/* 80054A44  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80054A48  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80054A4C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80054A50  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80054A54  39 61 00 80 */	addi r11, r1, 0x80
/* 80054A58  48 30 D7 C9 */	bl _restgpr_27
/* 80054A5C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80054A60  7C 08 03 A6 */	mtlr r0
/* 80054A64  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80054A68  4E 80 00 20 */	blr 
