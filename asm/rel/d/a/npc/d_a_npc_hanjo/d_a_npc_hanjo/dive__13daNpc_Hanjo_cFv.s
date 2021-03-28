lbl_809FBC3C:
/* 809FBC3C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809FBC40  7C 08 02 A6 */	mflr r0
/* 809FBC44  90 01 00 64 */	stw r0, 0x64(r1)
/* 809FBC48  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809FBC4C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809FBC50  39 61 00 50 */	addi r11, r1, 0x50
/* 809FBC54  4B 96 65 88 */	b _savegpr_29
/* 809FBC58  7C 7E 1B 78 */	mr r30, r3
/* 809FBC5C  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha
/* 809FBC60  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l
/* 809FBC64  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809FBC68  38 81 00 24 */	addi r4, r1, 0x24
/* 809FBC6C  4B 62 1C 24 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 809FBC70  2C 03 00 00 */	cmpwi r3, 0
/* 809FBC74  41 82 03 2C */	beq lbl_809FBFA0
/* 809FBC78  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 809FBC7C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 809FBC80  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 809FBC84  4C 40 13 82 */	cror 2, 0, 2
/* 809FBC88  40 82 00 18 */	bne lbl_809FBCA0
/* 809FBC8C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 809FBC90  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809FBC94  C0 5F 01 9C */	lfs f2, 0x19c(r31)
/* 809FBC98  4B 87 4A A8 */	b cLib_chaseF__FPfff
/* 809FBC9C  48 00 03 04 */	b lbl_809FBFA0
lbl_809FBCA0:
/* 809FBCA0  88 1E 17 20 */	lbz r0, 0x1720(r30)
/* 809FBCA4  28 00 00 00 */	cmplwi r0, 0
/* 809FBCA8  40 82 00 4C */	bne lbl_809FBCF4
/* 809FBCAC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060032@ha */
/* 809FBCB0  38 03 00 32 */	addi r0, r3, 0x0032 /* 0x00060032@l */
/* 809FBCB4  90 01 00 20 */	stw r0, 0x20(r1)
/* 809FBCB8  38 7E 05 80 */	addi r3, r30, 0x580
/* 809FBCBC  38 81 00 20 */	addi r4, r1, 0x20
/* 809FBCC0  38 A0 00 00 */	li r5, 0
/* 809FBCC4  38 C0 FF FF */	li r6, -1
/* 809FBCC8  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 809FBCCC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 809FBCD0  7D 89 03 A6 */	mtctr r12
/* 809FBCD4  4E 80 04 21 */	bctrl 
/* 809FBCD8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 809FBCDC  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 809FBCE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 809FBCE4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809FBCE8  38 00 00 01 */	li r0, 1
/* 809FBCEC  98 1E 17 20 */	stb r0, 0x1720(r30)
/* 809FBCF0  48 00 01 0C */	b lbl_809FBDFC
lbl_809FBCF4:
/* 809FBCF4  88 1E 17 1F */	lbz r0, 0x171f(r30)
/* 809FBCF8  28 00 00 00 */	cmplwi r0, 0
/* 809FBCFC  40 82 01 00 */	bne lbl_809FBDFC
/* 809FBD00  C0 1E 0D EC */	lfs f0, 0xdec(r30)
/* 809FBD04  EC 01 00 2A */	fadds f0, f1, f0
/* 809FBD08  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 809FBD0C  40 80 00 48 */	bge lbl_809FBD54
/* 809FBD10  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809FBD14  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 809FBD18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FBD1C  40 80 00 20 */	bge lbl_809FBD3C
/* 809FBD20  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 809FBD24  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 809FBD28  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 809FBD2C  FC 60 10 90 */	fmr f3, f2
/* 809FBD30  FC 80 10 90 */	fmr f4, f2
/* 809FBD34  4B 87 3C 48 */	b cLib_addCalc__FPfffff
/* 809FBD38  48 00 00 1C */	b lbl_809FBD54
lbl_809FBD3C:
/* 809FBD3C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 809FBD40  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 809FBD44  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 809FBD48  C0 7F 01 A4 */	lfs f3, 0x1a4(r31)
/* 809FBD4C  FC 80 10 90 */	fmr f4, f2
/* 809FBD50  4B 87 3C 2C */	b cLib_addCalc__FPfffff
lbl_809FBD54:
/* 809FBD54  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809FBD58  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 809FBD5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FBD60  40 80 00 9C */	bge lbl_809FBDFC
/* 809FBD64  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 809FBD68  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 809FBD6C  38 7F 00 00 */	addi r3, r31, 0
/* 809FBD70  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 809FBD74  EC 01 00 2A */	fadds f0, f1, f0
/* 809FBD78  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 809FBD7C  40 80 00 80 */	bge lbl_809FBDFC
/* 809FBD80  38 00 00 01 */	li r0, 1
/* 809FBD84  98 1E 17 1F */	stb r0, 0x171f(r30)
/* 809FBD88  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FBD8C  2C 00 00 12 */	cmpwi r0, 0x12
/* 809FBD90  40 82 00 5C */	bne lbl_809FBDEC
/* 809FBD94  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FBD98  2C 00 00 07 */	cmpwi r0, 7
/* 809FBD9C  41 82 00 24 */	beq lbl_809FBDC0
/* 809FBDA0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FBDA4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FBDA8  4B 74 9A F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FBDAC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FBDB0  38 00 00 07 */	li r0, 7
/* 809FBDB4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FBDB8  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FBDBC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FBDC0:
/* 809FBDC0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FBDC4  2C 00 00 13 */	cmpwi r0, 0x13
/* 809FBDC8  41 82 00 24 */	beq lbl_809FBDEC
/* 809FBDCC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FBDD0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FBDD4  4B 74 9A C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FBDD8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FBDDC  38 00 00 13 */	li r0, 0x13
/* 809FBDE0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FBDE4  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FBDE8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809FBDEC:
/* 809FBDEC  38 00 00 00 */	li r0, 0
/* 809FBDF0  B0 1E 17 1C */	sth r0, 0x171c(r30)
/* 809FBDF4  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FBDF8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_809FBDFC:
/* 809FBDFC  88 1E 17 1F */	lbz r0, 0x171f(r30)
/* 809FBE00  28 00 00 00 */	cmplwi r0, 0
/* 809FBE04  41 82 01 84 */	beq lbl_809FBF88
/* 809FBE08  A8 BE 17 1C */	lha r5, 0x171c(r30)
/* 809FBE0C  38 05 08 34 */	addi r0, r5, 0x834
/* 809FBE10  B0 1E 17 1C */	sth r0, 0x171c(r30)
/* 809FBE14  A8 9E 17 1C */	lha r4, 0x171c(r30)
/* 809FBE18  54 80 04 78 */	rlwinm r0, r4, 0, 0x11, 0x1c
/* 809FBE1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 809FBE20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 809FBE24  7F E3 04 2E */	lfsx f31, r3, r0
/* 809FBE28  7C A0 07 35 */	extsh. r0, r5
/* 809FBE2C  40 80 00 0C */	bge lbl_809FBE38
/* 809FBE30  7C 80 07 35 */	extsh. r0, r4
/* 809FBE34  40 80 00 14 */	bge lbl_809FBE48
lbl_809FBE38:
/* 809FBE38  7C A0 07 35 */	extsh. r0, r5
/* 809FBE3C  41 80 01 24 */	blt lbl_809FBF60
/* 809FBE40  7C 80 07 35 */	extsh. r0, r4
/* 809FBE44  40 80 01 1C */	bge lbl_809FBF60
lbl_809FBE48:
/* 809FBE48  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809FBE4C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809FBE50  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809FBE54  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809FBE58  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809FBE5C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809FBE60  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809FBE64  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809FBE68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FBE6C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 809FBE70  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 809FBE74  38 00 00 FF */	li r0, 0xff
/* 809FBE78  90 01 00 08 */	stw r0, 8(r1)
/* 809FBE7C  38 80 00 00 */	li r4, 0
/* 809FBE80  90 81 00 0C */	stw r4, 0xc(r1)
/* 809FBE84  38 00 FF FF */	li r0, -1
/* 809FBE88  90 01 00 10 */	stw r0, 0x10(r1)
/* 809FBE8C  90 81 00 14 */	stw r4, 0x14(r1)
/* 809FBE90  90 81 00 18 */	stw r4, 0x18(r1)
/* 809FBE94  90 81 00 1C */	stw r4, 0x1c(r1)
/* 809FBE98  38 80 FF FF */	li r4, -1
/* 809FBE9C  38 A0 00 00 */	li r5, 0
/* 809FBEA0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008363@ha */
/* 809FBEA4  38 C6 83 63 */	addi r6, r6, 0x8363 /* 0x00008363@l */
/* 809FBEA8  38 E1 00 28 */	addi r7, r1, 0x28
/* 809FBEAC  39 00 00 00 */	li r8, 0
/* 809FBEB0  39 20 00 00 */	li r9, 0
/* 809FBEB4  39 40 00 00 */	li r10, 0
/* 809FBEB8  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 809FBEBC  4B 65 16 10 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 809FBEC0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 809FBEC4  38 00 00 FF */	li r0, 0xff
/* 809FBEC8  90 01 00 08 */	stw r0, 8(r1)
/* 809FBECC  38 80 00 00 */	li r4, 0
/* 809FBED0  90 81 00 0C */	stw r4, 0xc(r1)
/* 809FBED4  38 00 FF FF */	li r0, -1
/* 809FBED8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809FBEDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 809FBEE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 809FBEE4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 809FBEE8  38 80 FF FF */	li r4, -1
/* 809FBEEC  38 A0 00 00 */	li r5, 0
/* 809FBEF0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008364@ha */
/* 809FBEF4  38 C6 83 64 */	addi r6, r6, 0x8364 /* 0x00008364@l */
/* 809FBEF8  38 E1 00 28 */	addi r7, r1, 0x28
/* 809FBEFC  39 00 00 00 */	li r8, 0
/* 809FBF00  39 20 00 00 */	li r9, 0
/* 809FBF04  39 40 00 00 */	li r10, 0
/* 809FBF08  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 809FBF0C  4B 65 15 C0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 809FBF10  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 809FBF14  38 00 00 FF */	li r0, 0xff
/* 809FBF18  90 01 00 08 */	stw r0, 8(r1)
/* 809FBF1C  38 80 00 00 */	li r4, 0
/* 809FBF20  90 81 00 0C */	stw r4, 0xc(r1)
/* 809FBF24  38 00 FF FF */	li r0, -1
/* 809FBF28  90 01 00 10 */	stw r0, 0x10(r1)
/* 809FBF2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 809FBF30  90 81 00 18 */	stw r4, 0x18(r1)
/* 809FBF34  90 81 00 1C */	stw r4, 0x1c(r1)
/* 809FBF38  38 80 FF FF */	li r4, -1
/* 809FBF3C  38 A0 00 00 */	li r5, 0
/* 809FBF40  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008365@ha */
/* 809FBF44  38 C6 83 65 */	addi r6, r6, 0x8365 /* 0x00008365@l */
/* 809FBF48  38 E1 00 28 */	addi r7, r1, 0x28
/* 809FBF4C  39 00 00 00 */	li r8, 0
/* 809FBF50  39 20 00 00 */	li r9, 0
/* 809FBF54  39 40 00 00 */	li r10, 0
/* 809FBF58  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 809FBF5C  4B 65 15 70 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_809FBF60:
/* 809FBF60  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 809FBF64  38 7F 00 00 */	addi r3, r31, 0
/* 809FBF68  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 809FBF6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 809FBF70  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 809FBF74  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 809FBF78  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 809FBF7C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 809FBF80  EC 01 00 2A */	fadds f0, f1, f0
/* 809FBF84  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_809FBF88:
/* 809FBF88  38 7E 05 2C */	addi r3, r30, 0x52c
/* 809FBF8C  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809FBF90  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 809FBF94  4B 87 47 AC */	b cLib_chaseF__FPfff
/* 809FBF98  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FBF9C  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_809FBFA0:
/* 809FBFA0  80 7E 0B 7C */	lwz r3, 0xb7c(r30)
/* 809FBFA4  2C 03 00 12 */	cmpwi r3, 0x12
/* 809FBFA8  40 82 00 A4 */	bne lbl_809FC04C
/* 809FBFAC  88 1E 17 20 */	lbz r0, 0x1720(r30)
/* 809FBFB0  28 00 00 00 */	cmplwi r0, 0
/* 809FBFB4  41 82 00 6C */	beq lbl_809FC020
/* 809FBFB8  88 1E 17 1F */	lbz r0, 0x171f(r30)
/* 809FBFBC  28 00 00 00 */	cmplwi r0, 0
/* 809FBFC0  40 82 00 60 */	bne lbl_809FC020
/* 809FBFC4  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809FBFC8  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 809FBFCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FBFD0  40 80 00 50 */	bge lbl_809FC020
/* 809FBFD4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 809FBFD8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809FBFDC  EC 21 00 28 */	fsubs f1, f1, f0
/* 809FBFE0  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 809FBFE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FBFE8  40 80 00 64 */	bge lbl_809FC04C
/* 809FBFEC  2C 03 00 12 */	cmpwi r3, 0x12
/* 809FBFF0  40 82 00 5C */	bne lbl_809FC04C
/* 809FBFF4  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 809FBFF8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 809FBFFC  FC 00 02 10 */	fabs f0, f0
/* 809FC000  FC 20 00 18 */	frsp f1, f0
/* 809FC004  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 809FC008  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 809FC00C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FC010  40 80 00 3C */	bge lbl_809FC04C
/* 809FC014  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 809FC018  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 809FC01C  48 00 00 30 */	b lbl_809FC04C
lbl_809FC020:
/* 809FC020  2C 03 00 12 */	cmpwi r3, 0x12
/* 809FC024  40 82 00 28 */	bne lbl_809FC04C
/* 809FC028  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809FC02C  38 63 00 0C */	addi r3, r3, 0xc
/* 809FC030  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 809FC034  4B 92 C3 F8 */	b checkPass__12J3DFrameCtrlFf
/* 809FC038  2C 03 00 00 */	cmpwi r3, 0
/* 809FC03C  41 82 00 10 */	beq lbl_809FC04C
/* 809FC040  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FC044  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809FC048  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_809FC04C:
/* 809FC04C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809FC050  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809FC054  39 61 00 50 */	addi r11, r1, 0x50
/* 809FC058  4B 96 61 D0 */	b _restgpr_29
/* 809FC05C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809FC060  7C 08 03 A6 */	mtlr r0
/* 809FC064  38 21 00 60 */	addi r1, r1, 0x60
/* 809FC068  4E 80 00 20 */	blr 
