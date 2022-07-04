lbl_8051FABC:
/* 8051FABC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8051FAC0  7C 08 02 A6 */	mflr r0
/* 8051FAC4  90 01 01 04 */	stw r0, 0x104(r1)
/* 8051FAC8  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8051FACC  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 8051FAD0  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 8051FAD4  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 8051FAD8  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 8051FADC  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 8051FAE0  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 8051FAE4  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 8051FAE8  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 8051FAEC  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 8051FAF0  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 8051FAF4  F3 41 00 A8 */	psq_st f26, 168(r1), 0, 0 /* qr0 */
/* 8051FAF8  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 8051FAFC  F3 21 00 98 */	psq_st f25, 152(r1), 0, 0 /* qr0 */
/* 8051FB00  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 8051FB04  F3 01 00 88 */	psq_st f24, 136(r1), 0, 0 /* qr0 */
/* 8051FB08  DA E1 00 70 */	stfd f23, 0x70(r1)
/* 8051FB0C  F2 E1 00 78 */	psq_st f23, 120(r1), 0, 0 /* qr0 */
/* 8051FB10  DA C1 00 60 */	stfd f22, 0x60(r1)
/* 8051FB14  F2 C1 00 68 */	psq_st f22, 104(r1), 0, 0 /* qr0 */
/* 8051FB18  39 61 00 60 */	addi r11, r1, 0x60
/* 8051FB1C  4B E4 26 9D */	bl _savegpr_20
/* 8051FB20  7C 75 1B 78 */	mr r21, r3
/* 8051FB24  3C 60 80 52 */	lis r3, lit_1109@ha /* 0x805278D0@ha */
/* 8051FB28  3B 63 78 D0 */	addi r27, r3, lit_1109@l /* 0x805278D0@l */
/* 8051FB2C  3C 60 80 52 */	lis r3, lit_3999@ha /* 0x80523028@ha */
/* 8051FB30  3B 83 30 28 */	addi r28, r3, lit_3999@l /* 0x80523028@l */
/* 8051FB34  4B B3 AF AD */	bl dKyw_get_wind_vec__Fv
/* 8051FB38  7C 7D 1B 78 */	mr r29, r3
/* 8051FB3C  4B B3 AF B5 */	bl dKyw_get_wind_pow__Fv
/* 8051FB40  FE C0 08 90 */	fmr f22, f1
/* 8051FB44  4B B3 AF AD */	bl dKyw_get_wind_pow__Fv
/* 8051FB48  EE C1 05 B2 */	fmuls f22, f1, f22
/* 8051FB4C  88 1B 00 58 */	lbz r0, 0x58(r27)
/* 8051FB50  7C 00 07 75 */	extsb. r0, r0
/* 8051FB54  40 82 00 14 */	bne lbl_8051FB68
/* 8051FB58  38 00 00 00 */	li r0, 0
/* 8051FB5C  B0 1B 00 56 */	sth r0, 0x56(r27)
/* 8051FB60  38 00 00 01 */	li r0, 1
/* 8051FB64  98 1B 00 58 */	stb r0, 0x58(r27)
lbl_8051FB68:
/* 8051FB68  88 1B 00 5C */	lbz r0, 0x5c(r27)
/* 8051FB6C  7C 00 07 75 */	extsb. r0, r0
/* 8051FB70  40 82 00 14 */	bne lbl_8051FB84
/* 8051FB74  38 00 00 00 */	li r0, 0
/* 8051FB78  B0 1B 00 5A */	sth r0, 0x5a(r27)
/* 8051FB7C  38 00 00 01 */	li r0, 1
/* 8051FB80  98 1B 00 5C */	stb r0, 0x5c(r27)
lbl_8051FB84:
/* 8051FB84  C0 1C 00 D8 */	lfs f0, 0xd8(r28)
/* 8051FB88  FC 16 00 40 */	fcmpo cr0, f22, f0
/* 8051FB8C  40 80 00 08 */	bge lbl_8051FB94
/* 8051FB90  FE C0 00 90 */	fmr f22, f0
lbl_8051FB94:
/* 8051FB94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051FB98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051FB9C  3A 83 4E 00 */	addi r20, r3, 0x4e00
/* 8051FBA0  7E 83 A3 78 */	mr r3, r20
/* 8051FBA4  3C 80 80 52 */	lis r4, d_a_grass__stringBase0@ha /* 0x805231C0@ha */
/* 8051FBA8  38 84 31 C0 */	addi r4, r4, d_a_grass__stringBase0@l /* 0x805231C0@l */
/* 8051FBAC  38 A0 00 06 */	li r5, 6
/* 8051FBB0  4B E4 64 DD */	bl memcmp
/* 8051FBB4  2C 03 00 00 */	cmpwi r3, 0
/* 8051FBB8  40 82 00 20 */	bne lbl_8051FBD8
/* 8051FBBC  28 1D 00 00 */	cmplwi r29, 0
/* 8051FBC0  41 82 00 18 */	beq lbl_8051FBD8
/* 8051FBC4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8051FBC8  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8051FBCC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8051FBD0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8051FBD4  FE C0 00 90 */	fmr f22, f0
lbl_8051FBD8:
/* 8051FBD8  7E 83 A3 78 */	mr r3, r20
/* 8051FBDC  3C 80 80 52 */	lis r4, d_a_grass__stringBase0@ha /* 0x805231C0@ha */
/* 8051FBE0  38 84 31 C0 */	addi r4, r4, d_a_grass__stringBase0@l /* 0x805231C0@l */
/* 8051FBE4  38 84 00 07 */	addi r4, r4, 7
/* 8051FBE8  38 A0 00 06 */	li r5, 6
/* 8051FBEC  4B E4 64 A1 */	bl memcmp
/* 8051FBF0  2C 03 00 00 */	cmpwi r3, 0
/* 8051FBF4  40 82 00 20 */	bne lbl_8051FC14
/* 8051FBF8  28 1D 00 00 */	cmplwi r29, 0
/* 8051FBFC  41 82 00 18 */	beq lbl_8051FC14
/* 8051FC00  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8051FC04  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8051FC08  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8051FC0C  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8051FC10  C2 DC 00 DC */	lfs f22, 0xdc(r28)
lbl_8051FC14:
/* 8051FC14  3E F5 00 02 */	addis r23, r21, 2
/* 8051FC18  C0 3C 00 E0 */	lfs f1, 0xe0(r28)
/* 8051FC1C  3A F7 BD 64 */	addi r23, r23, -17052
/* 8051FC20  4B D4 7D 35 */	bl cM_rndF__Ff
/* 8051FC24  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8051FC28  EC 00 08 2A */	fadds f0, f0, f1
/* 8051FC2C  FC 00 00 1E */	fctiwz f0, f0
/* 8051FC30  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051FC34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8051FC38  3C 75 00 02 */	addis r3, r21, 2
/* 8051FC3C  A8 03 D7 14 */	lha r0, -0x28ec(r3)
/* 8051FC40  7C 00 22 14 */	add r0, r0, r4
/* 8051FC44  B0 03 D7 14 */	sth r0, -0x28ec(r3)
/* 8051FC48  C3 1C 00 68 */	lfs f24, 0x68(r28)
/* 8051FC4C  C0 3C 00 E4 */	lfs f1, 0xe4(r28)
/* 8051FC50  EC 18 B0 28 */	fsubs f0, f24, f22
/* 8051FC54  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051FC58  EC 18 00 2A */	fadds f0, f24, f0
/* 8051FC5C  FC 00 00 1E */	fctiwz f0, f0
/* 8051FC60  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8051FC64  83 01 00 14 */	lwz r24, 0x14(r1)
/* 8051FC68  3A C0 00 00 */	li r22, 0
/* 8051FC6C  3A 80 00 00 */	li r20, 0
/* 8051FC70  C0 1C 00 E8 */	lfs f0, 0xe8(r28)
/* 8051FC74  EC 00 05 B2 */	fmuls f0, f0, f22
/* 8051FC78  FC 00 00 1E */	fctiwz f0, f0
/* 8051FC7C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8051FC80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8051FC84  7C 1A 07 34 */	extsh r26, r0
/* 8051FC88  C0 1C 00 EC */	lfs f0, 0xec(r28)
/* 8051FC8C  EC 00 05 B2 */	fmuls f0, f0, f22
/* 8051FC90  FC 00 00 1E */	fctiwz f0, f0
/* 8051FC94  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8051FC98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051FC9C  7C 19 07 34 */	extsh r25, r0
/* 8051FCA0  C3 3C 00 F0 */	lfs f25, 0xf0(r28)
/* 8051FCA4  EE F9 05 B2 */	fmuls f23, f25, f22
/* 8051FCA8  CB 5C 00 38 */	lfd f26, 0x38(r28)
/* 8051FCAC  3F C0 43 30 */	lis r30, 0x4330
/* 8051FCB0  C3 7C 00 F4 */	lfs f27, 0xf4(r28)
/* 8051FCB4  C3 9C 00 60 */	lfs f28, 0x60(r28)
/* 8051FCB8  C3 BC 00 C8 */	lfs f29, 0xc8(r28)
/* 8051FCBC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8051FCC0  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8051FCC4  C3 DC 00 F8 */	lfs f30, 0xf8(r28)
/* 8051FCC8  C3 FC 00 FC */	lfs f31, 0xfc(r28)
/* 8051FCCC  C2 DC 01 00 */	lfs f22, 0x100(r28)
lbl_8051FCD0:
/* 8051FCD0  6E C0 80 00 */	xoris r0, r22, 0x8000
/* 8051FCD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051FCD8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8051FCDC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8051FCE0  EC 00 D0 28 */	fsubs f0, f0, f26
/* 8051FCE4  EC 20 06 F2 */	fmuls f1, f0, f27
/* 8051FCE8  7E C0 26 70 */	srawi r0, r22, 4
/* 8051FCEC  7C 00 01 94 */	addze r0, r0
/* 8051FCF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051FCF4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8051FCF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051FCFC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8051FD00  EC 00 D0 28 */	fsubs f0, f0, f26
/* 8051FD04  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8051FD08  EC 1C 00 2A */	fadds f0, f28, f0
/* 8051FD0C  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8051FD10  40 81 00 0C */	ble lbl_8051FD1C
/* 8051FD14  FC 60 E8 90 */	fmr f3, f29
/* 8051FD18  48 00 00 08 */	b lbl_8051FD20
lbl_8051FD1C:
/* 8051FD1C  FC 60 00 90 */	fmr f3, f0
lbl_8051FD20:
/* 8051FD20  A8 9B 00 5A */	lha r4, 0x5a(r27)
/* 8051FD24  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 8051FD28  7C 9F 04 2E */	lfsx f4, r31, r0
/* 8051FD2C  A8 7B 00 56 */	lha r3, 0x56(r27)
/* 8051FD30  7C 03 A2 14 */	add r0, r3, r20
/* 8051FD34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8051FD38  7C BF 04 2E */	lfsx f5, r31, r0
/* 8051FD3C  7C 03 D2 14 */	add r0, r3, r26
/* 8051FD40  B0 1B 00 56 */	sth r0, 0x56(r27)
/* 8051FD44  7C 04 CA 14 */	add r0, r4, r25
/* 8051FD48  B0 1B 00 5A */	sth r0, 0x5a(r27)
/* 8051FD4C  38 77 00 04 */	addi r3, r23, 4
/* 8051FD50  EC 1E 00 72 */	fmuls f0, f30, f1
/* 8051FD54  EC 58 00 2A */	fadds f2, f24, f0
/* 8051FD58  EC 3F 00 F2 */	fmuls f1, f31, f3
/* 8051FD5C  EC 19 01 32 */	fmuls f0, f25, f4
/* 8051FD60  EC 16 00 2A */	fadds f0, f22, f0
/* 8051FD64  EC 05 00 2A */	fadds f0, f5, f0
/* 8051FD68  EC 01 00 32 */	fmuls f0, f1, f0
/* 8051FD6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8051FD70  EC 03 00 2A */	fadds f0, f3, f0
/* 8051FD74  EC 17 00 32 */	fmuls f0, f23, f0
/* 8051FD78  FC 00 00 1E */	fctiwz f0, f0
/* 8051FD7C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8051FD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051FD84  7C 04 07 34 */	extsh r4, r0
/* 8051FD88  7F 05 07 34 */	extsh r5, r24
/* 8051FD8C  38 C0 0F A0 */	li r6, 0xfa0
/* 8051FD90  38 E0 00 01 */	li r7, 1
/* 8051FD94  4B D5 07 AD */	bl cLib_addCalcAngleS__FPsssss
/* 8051FD98  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8051FD9C  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8051FDA0  4B D4 78 D5 */	bl cM_atan2s__Fff
/* 8051FDA4  7C 64 07 34 */	extsh r4, r3
/* 8051FDA8  38 77 00 02 */	addi r3, r23, 2
/* 8051FDAC  38 A0 00 14 */	li r5, 0x14
/* 8051FDB0  38 C0 0F A0 */	li r6, 0xfa0
/* 8051FDB4  38 E0 00 01 */	li r7, 1
/* 8051FDB8  4B D5 07 89 */	bl cLib_addCalcAngleS__FPsssss
/* 8051FDBC  3A D6 00 01 */	addi r22, r22, 1
/* 8051FDC0  2C 16 00 10 */	cmpwi r22, 0x10
/* 8051FDC4  3A F7 00 38 */	addi r23, r23, 0x38
/* 8051FDC8  3A 94 0B EA */	addi r20, r20, 0xbea
/* 8051FDCC  41 80 FF 04 */	blt lbl_8051FCD0
/* 8051FDD0  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8051FDD4  8B A3 0D 64 */	lbz r29, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8051FDD8  7F BD 07 74 */	extsb r29, r29
/* 8051FDDC  3C 75 00 02 */	addis r3, r21, 2
/* 8051FDE0  57 A0 10 3A */	slwi r0, r29, 2
/* 8051FDE4  7C 63 02 14 */	add r3, r3, r0
/* 8051FDE8  82 83 D5 E4 */	lwz r20, -0x2a1c(r3)
/* 8051FDEC  7E 96 A3 78 */	mr r22, r20
/* 8051FDF0  38 60 00 00 */	li r3, 0
/* 8051FDF4  4B B0 FC 91 */	bl dComIfGs_Grass_hide_Set__FSc
/* 8051FDF8  28 14 00 00 */	cmplwi r20, 0
/* 8051FDFC  41 82 01 04 */	beq lbl_8051FF00
/* 8051FE00  38 00 00 00 */	li r0, 0
/* 8051FE04  98 1B 00 3D */	stb r0, 0x3d(r27)
/* 8051FE08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051FE0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051FE10  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 8051FE14  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8051FE18  C0 5C 01 04 */	lfs f2, 0x104(r28)
/* 8051FE1C  38 80 00 0B */	li r4, 0xb
/* 8051FE20  38 A0 00 00 */	li r5, 0
/* 8051FE24  4B B6 58 0D */	bl SetAttr__12dCcMassS_MngFffUcUc
/* 8051FE28  3F E0 00 01 */	lis r31, 0x0001 /* 0x000089D7@ha */
lbl_8051FE2C:
/* 8051FE2C  38 BF 89 D7 */	addi r5, r31, 0x89D7 /* 0x000089D7@l */
/* 8051FE30  88 16 00 05 */	lbz r0, 5(r22)
/* 8051FE34  28 00 00 07 */	cmplwi r0, 7
/* 8051FE38  41 80 00 18 */	blt lbl_8051FE50
/* 8051FE3C  28 00 00 09 */	cmplwi r0, 9
/* 8051FE40  41 81 00 10 */	bgt lbl_8051FE50
/* 8051FE44  3C 60 00 01 */	lis r3, 0x0001 /* 0x000089D6@ha */
/* 8051FE48  38 A3 89 D6 */	addi r5, r3, 0x89D6 /* 0x000089D6@l */
/* 8051FE4C  48 00 00 1C */	b lbl_8051FE68
lbl_8051FE50:
/* 8051FE50  28 00 00 04 */	cmplwi r0, 4
/* 8051FE54  41 80 00 14 */	blt lbl_8051FE68
/* 8051FE58  28 00 00 06 */	cmplwi r0, 6
/* 8051FE5C  41 81 00 0C */	bgt lbl_8051FE68
/* 8051FE60  3C 60 00 01 */	lis r3, 0x0001 /* 0x000089D8@ha */
/* 8051FE64  38 A3 89 D8 */	addi r5, r3, 0x89D8 /* 0x000089D8@l */
lbl_8051FE68:
/* 8051FE68  88 16 00 01 */	lbz r0, 1(r22)
/* 8051FE6C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8051FE70  40 82 00 38 */	bne lbl_8051FEA8
/* 8051FE74  88 76 00 02 */	lbz r3, 2(r22)
/* 8051FE78  7C 60 07 75 */	extsb. r0, r3
/* 8051FE7C  41 80 00 14 */	blt lbl_8051FE90
/* 8051FE80  7E C3 B3 78 */	mr r3, r22
/* 8051FE84  7F A4 EB 78 */	mr r4, r29
/* 8051FE88  4B FF ED 01 */	bl hitCheck__13dGrass_data_cFiUs
/* 8051FE8C  48 00 00 64 */	b lbl_8051FEF0
lbl_8051FE90:
/* 8051FE90  7C 60 07 74 */	extsb r0, r3
/* 8051FE94  2C 00 FF FE */	cmpwi r0, -2
/* 8051FE98  40 80 00 58 */	bge lbl_8051FEF0
/* 8051FE9C  38 03 00 01 */	addi r0, r3, 1
/* 8051FEA0  98 16 00 02 */	stb r0, 2(r22)
/* 8051FEA4  48 00 00 4C */	b lbl_8051FEF0
lbl_8051FEA8:
/* 8051FEA8  88 16 00 02 */	lbz r0, 2(r22)
/* 8051FEAC  7C 05 07 74 */	extsb r5, r0
/* 8051FEB0  2C 05 00 10 */	cmpwi r5, 0x10
/* 8051FEB4  41 80 00 3C */	blt lbl_8051FEF0
/* 8051FEB8  38 00 00 00 */	li r0, 0
/* 8051FEBC  3C 60 80 45 */	lis r3, m_grass__9daGrass_c@ha /* 0x80450DB0@ha */
/* 8051FEC0  80 83 0D B0 */	lwz r4, m_grass__9daGrass_c@l(r3)  /* 0x80450DB0@l */
/* 8051FEC4  1C 65 00 38 */	mulli r3, r5, 0x38
/* 8051FEC8  3C 63 00 02 */	addis r3, r3, 2
/* 8051FECC  38 63 BD 64 */	addi r3, r3, -17052
/* 8051FED0  7C 04 19 AE */	stbx r0, r4, r3
/* 8051FED4  4B D4 79 99 */	bl cM_rnd__Fv
/* 8051FED8  C0 1C 00 70 */	lfs f0, 0x70(r28)
/* 8051FEDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051FEE0  FC 00 00 1E */	fctiwz f0, f0
/* 8051FEE4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8051FEE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051FEEC  98 16 00 02 */	stb r0, 2(r22)
lbl_8051FEF0:
/* 8051FEF0  82 D6 00 48 */	lwz r22, 0x48(r22)
/* 8051FEF4  28 16 00 00 */	cmplwi r22, 0
/* 8051FEF8  40 82 FF 34 */	bne lbl_8051FE2C
/* 8051FEFC  48 00 00 24 */	b lbl_8051FF20
lbl_8051FF00:
/* 8051FF00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051FF04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051FF08  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 8051FF0C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 8051FF10  FC 40 08 90 */	fmr f2, f1
/* 8051FF14  38 80 00 0B */	li r4, 0xb
/* 8051FF18  38 A0 00 00 */	li r5, 0
/* 8051FF1C  4B B6 57 15 */	bl SetAttr__12dCcMassS_MngFffUcUc
lbl_8051FF20:
/* 8051FF20  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 8051FF24  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 8051FF28  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 8051FF2C  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 8051FF30  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 8051FF34  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 8051FF38  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 8051FF3C  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 8051FF40  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 8051FF44  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 8051FF48  E3 41 00 A8 */	psq_l f26, 168(r1), 0, 0 /* qr0 */
/* 8051FF4C  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 8051FF50  E3 21 00 98 */	psq_l f25, 152(r1), 0, 0 /* qr0 */
/* 8051FF54  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 8051FF58  E3 01 00 88 */	psq_l f24, 136(r1), 0, 0 /* qr0 */
/* 8051FF5C  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 8051FF60  E2 E1 00 78 */	psq_l f23, 120(r1), 0, 0 /* qr0 */
/* 8051FF64  CA E1 00 70 */	lfd f23, 0x70(r1)
/* 8051FF68  E2 C1 00 68 */	psq_l f22, 104(r1), 0, 0 /* qr0 */
/* 8051FF6C  CA C1 00 60 */	lfd f22, 0x60(r1)
/* 8051FF70  39 61 00 60 */	addi r11, r1, 0x60
/* 8051FF74  4B E4 22 91 */	bl _restgpr_20
/* 8051FF78  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8051FF7C  7C 08 03 A6 */	mtlr r0
/* 8051FF80  38 21 01 00 */	addi r1, r1, 0x100
/* 8051FF84  4E 80 00 20 */	blr 
