lbl_806CAA34:
/* 806CAA34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806CAA38  7C 08 02 A6 */	mflr r0
/* 806CAA3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806CAA40  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806CAA44  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806CAA48  7C 7E 1B 78 */	mr r30, r3
/* 806CAA4C  3C 60 80 6D */	lis r3, lit_3904@ha /* 0x806CD000@ha */
/* 806CAA50  3B E3 D0 00 */	addi r31, r3, lit_3904@l /* 0x806CD000@l */
/* 806CAA54  38 00 00 0A */	li r0, 0xa
/* 806CAA58  B0 1E 0B 92 */	sth r0, 0xb92(r30)
/* 806CAA5C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806CAA60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CAA64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CAA68  4C 41 13 82 */	cror 2, 1, 2
/* 806CAA6C  40 82 00 18 */	bne lbl_806CAA84
/* 806CAA70  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806CAA74  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 806CAA78  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806CAA7C  4B BA 5C C5 */	bl cLib_chaseF__FPfff
/* 806CAA80  48 00 00 14 */	b lbl_806CAA94
lbl_806CAA84:
/* 806CAA84  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806CAA88  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 806CAA8C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806CAA90  4B BA 5C B1 */	bl cLib_chaseF__FPfff
lbl_806CAA94:
/* 806CAA94  80 1E 0B 78 */	lwz r0, 0xb78(r30)
/* 806CAA98  2C 00 00 02 */	cmpwi r0, 2
/* 806CAA9C  41 82 02 08 */	beq lbl_806CACA4
/* 806CAAA0  40 80 00 14 */	bge lbl_806CAAB4
/* 806CAAA4  2C 00 00 00 */	cmpwi r0, 0
/* 806CAAA8  41 82 00 1C */	beq lbl_806CAAC4
/* 806CAAAC  40 80 00 FC */	bge lbl_806CABA8
/* 806CAAB0  48 00 03 04 */	b lbl_806CADB4
lbl_806CAAB4:
/* 806CAAB4  2C 00 00 04 */	cmpwi r0, 4
/* 806CAAB8  41 82 02 B8 */	beq lbl_806CAD70
/* 806CAABC  40 80 02 F8 */	bge lbl_806CADB4
/* 806CAAC0  48 00 02 84 */	b lbl_806CAD44
lbl_806CAAC4:
/* 806CAAC4  80 1E 08 C8 */	lwz r0, 0x8c8(r30)
/* 806CAAC8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CAACC  90 1E 08 C8 */	stw r0, 0x8c8(r30)
/* 806CAAD0  80 1E 0A 00 */	lwz r0, 0xa00(r30)
/* 806CAAD4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806CAAD8  90 1E 0A 00 */	stw r0, 0xa00(r30)
/* 806CAADC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806CAAE0  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 806CAAE4  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806CAAE8  38 00 00 00 */	li r0, 0
/* 806CAAEC  98 1E 0B 9E */	stb r0, 0xb9e(r30)
/* 806CAAF0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806CAAF4  7F C3 F3 78 */	mr r3, r30
/* 806CAAF8  38 80 00 04 */	li r4, 4
/* 806CAAFC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806CAB00  38 A0 00 02 */	li r5, 2
/* 806CAB04  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CAB08  4B FF CF B1 */	bl bckSet__8daE_GE_cFifUcf
/* 806CAB0C  38 00 00 01 */	li r0, 1
/* 806CAB10  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CAB14  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070469@ha */
/* 806CAB18  38 03 04 69 */	addi r0, r3, 0x0469 /* 0x00070469@l */
/* 806CAB1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806CAB20  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806CAB24  38 81 00 10 */	addi r4, r1, 0x10
/* 806CAB28  38 A0 FF FF */	li r5, -1
/* 806CAB2C  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806CAB30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806CAB34  7D 89 03 A6 */	mtctr r12
/* 806CAB38  4E 80 04 21 */	bctrl 
/* 806CAB3C  38 00 00 00 */	li r0, 0
/* 806CAB40  B0 1E 0B 8A */	sth r0, 0xb8a(r30)
/* 806CAB44  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 806CAB48  4B B9 CE 45 */	bl cM_rndFX__Ff
/* 806CAB4C  A8 7E 0B 2E */	lha r3, 0xb2e(r30)
/* 806CAB50  3C 63 00 01 */	addis r3, r3, 1
/* 806CAB54  38 03 80 00 */	addi r0, r3, -32768
/* 806CAB58  C8 5F 00 70 */	lfd f2, 0x70(r31)
/* 806CAB5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806CAB60  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806CAB64  3C 00 43 30 */	lis r0, 0x4330
/* 806CAB68  90 01 00 18 */	stw r0, 0x18(r1)
/* 806CAB6C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 806CAB70  EC 00 10 28 */	fsubs f0, f0, f2
/* 806CAB74  EC 00 08 2A */	fadds f0, f0, f1
/* 806CAB78  FC 00 00 1E */	fctiwz f0, f0
/* 806CAB7C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806CAB80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806CAB84  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806CAB88  88 1E 0B 9A */	lbz r0, 0xb9a(r30)
/* 806CAB8C  28 00 00 02 */	cmplwi r0, 2
/* 806CAB90  41 82 00 10 */	beq lbl_806CABA0
/* 806CAB94  38 00 00 96 */	li r0, 0x96
/* 806CAB98  B0 1E 0B 8E */	sth r0, 0xb8e(r30)
/* 806CAB9C  48 00 00 0C */	b lbl_806CABA8
lbl_806CABA0:
/* 806CABA0  38 00 00 5A */	li r0, 0x5a
/* 806CABA4  B0 1E 0B 8E */	sth r0, 0xb8e(r30)
lbl_806CABA8:
/* 806CABA8  A8 1E 0B 8E */	lha r0, 0xb8e(r30)
/* 806CABAC  2C 00 00 00 */	cmpwi r0, 0
/* 806CABB0  40 82 00 40 */	bne lbl_806CABF0
/* 806CABB4  7F C3 F3 78 */	mr r3, r30
/* 806CABB8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806CABBC  38 A0 00 0A */	li r5, 0xa
/* 806CABC0  38 C0 00 00 */	li r6, 0
/* 806CABC4  38 E0 00 21 */	li r7, 0x21
/* 806CABC8  4B 95 1F 11 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806CABCC  7F C3 F3 78 */	mr r3, r30
/* 806CABD0  4B 94 F0 AD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806CABD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CABD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CABDC  88 9E 0B 9C */	lbz r4, 0xb9c(r30)
/* 806CABE0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806CABE4  7C 05 07 74 */	extsb r5, r0
/* 806CABE8  4B 96 A6 19 */	bl onSwitch__10dSv_info_cFii
/* 806CABEC  48 00 01 C8 */	b lbl_806CADB4
lbl_806CABF0:
/* 806CABF0  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 806CABF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806CABF8  41 82 00 84 */	beq lbl_806CAC7C
/* 806CABFC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 806CAC00  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 806CAC04  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CAC08  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806CAC0C  38 81 00 0C */	addi r4, r1, 0xc
/* 806CAC10  38 A0 00 00 */	li r5, 0
/* 806CAC14  38 C0 FF FF */	li r6, -1
/* 806CAC18  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806CAC1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CAC20  7D 89 03 A6 */	mtctr r12
/* 806CAC24  4E 80 04 21 */	bctrl 
/* 806CAC28  38 7E 0B 44 */	addi r3, r30, 0xb44
/* 806CAC2C  38 9E 0B 48 */	addi r4, r30, 0xb48
/* 806CAC30  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806CAC34  38 C0 00 00 */	li r6, 0
/* 806CAC38  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806CAC3C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806CAC40  39 00 00 01 */	li r8, 1
/* 806CAC44  4B 95 23 DD */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 806CAC48  38 60 00 00 */	li r3, 0
/* 806CAC4C  B0 7E 0B 8E */	sth r3, 0xb8e(r30)
/* 806CAC50  38 00 00 02 */	li r0, 2
/* 806CAC54  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CAC58  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 806CAC5C  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 806CAC60  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806CAC64  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CAC68  38 00 80 00 */	li r0, -32768
/* 806CAC6C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806CAC70  B0 7E 04 E8 */	sth r3, 0x4e8(r30)
/* 806CAC74  38 7E 06 9C */	addi r3, r30, 0x69c
/* 806CAC78  4B 9A C4 9D */	bl SetGroundUpY__9dBgS_AcchFf
lbl_806CAC7C:
/* 806CAC7C  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 806CAC80  38 03 08 00 */	addi r0, r3, 0x800
/* 806CAC84  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 806CAC88  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806CAC8C  38 80 40 00 */	li r4, 0x4000
/* 806CAC90  38 A0 00 08 */	li r5, 8
/* 806CAC94  38 C0 10 00 */	li r6, 0x1000
/* 806CAC98  38 E0 00 10 */	li r7, 0x10
/* 806CAC9C  4B BA 58 A5 */	bl cLib_addCalcAngleS__FPsssss
/* 806CACA0  48 00 01 14 */	b lbl_806CADB4
lbl_806CACA4:
/* 806CACA4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806CACA8  38 80 80 00 */	li r4, -32768
/* 806CACAC  38 A0 00 08 */	li r5, 8
/* 806CACB0  38 C0 10 00 */	li r6, 0x1000
/* 806CACB4  38 E0 00 10 */	li r7, 0x10
/* 806CACB8  4B BA 58 89 */	bl cLib_addCalcAngleS__FPsssss
/* 806CACBC  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 806CACC0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806CACC4  41 82 00 F0 */	beq lbl_806CADB4
/* 806CACC8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 806CACCC  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 806CACD0  90 01 00 08 */	stw r0, 8(r1)
/* 806CACD4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806CACD8  38 81 00 08 */	addi r4, r1, 8
/* 806CACDC  38 A0 00 00 */	li r5, 0
/* 806CACE0  38 C0 FF FF */	li r6, -1
/* 806CACE4  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806CACE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CACEC  7D 89 03 A6 */	mtctr r12
/* 806CACF0  4E 80 04 21 */	bctrl 
/* 806CACF4  38 7E 0B 44 */	addi r3, r30, 0xb44
/* 806CACF8  38 9E 0B 48 */	addi r4, r30, 0xb48
/* 806CACFC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806CAD00  38 C0 00 00 */	li r6, 0
/* 806CAD04  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806CAD08  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806CAD0C  39 00 00 01 */	li r8, 1
/* 806CAD10  4B 95 23 11 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 806CAD14  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CAD18  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806CAD1C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806CAD20  38 00 00 03 */	li r0, 3
/* 806CAD24  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CAD28  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 806CAD2C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CAD30  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806CAD34  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806CAD38  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CAD3C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806CAD40  48 00 00 74 */	b lbl_806CADB4
lbl_806CAD44:
/* 806CAD44  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CAD48  38 63 00 0C */	addi r3, r3, 0xc
/* 806CAD4C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 806CAD50  4B C5 D6 DD */	bl checkPass__12J3DFrameCtrlFf
/* 806CAD54  2C 03 00 00 */	cmpwi r3, 0
/* 806CAD58  41 82 00 5C */	beq lbl_806CADB4
/* 806CAD5C  38 00 00 00 */	li r0, 0
/* 806CAD60  B0 1E 0B 8E */	sth r0, 0xb8e(r30)
/* 806CAD64  38 00 00 04 */	li r0, 4
/* 806CAD68  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CAD6C  48 00 00 48 */	b lbl_806CADB4
lbl_806CAD70:
/* 806CAD70  A8 1E 0B 8E */	lha r0, 0xb8e(r30)
/* 806CAD74  2C 00 00 00 */	cmpwi r0, 0
/* 806CAD78  40 82 00 3C */	bne lbl_806CADB4
/* 806CAD7C  7F C3 F3 78 */	mr r3, r30
/* 806CAD80  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806CAD84  38 A0 00 0A */	li r5, 0xa
/* 806CAD88  38 C0 00 00 */	li r6, 0
/* 806CAD8C  38 E0 00 21 */	li r7, 0x21
/* 806CAD90  4B 95 1D 49 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806CAD94  7F C3 F3 78 */	mr r3, r30
/* 806CAD98  4B 94 EE E5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806CAD9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CADA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CADA4  88 9E 0B 9C */	lbz r4, 0xb9c(r30)
/* 806CADA8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806CADAC  7C 05 07 74 */	extsb r5, r0
/* 806CADB0  4B 96 A4 51 */	bl onSwitch__10dSv_info_cFii
lbl_806CADB4:
/* 806CADB4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806CADB8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806CADBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806CADC0  7C 08 03 A6 */	mtlr r0
/* 806CADC4  38 21 00 30 */	addi r1, r1, 0x30
/* 806CADC8  4E 80 00 20 */	blr 
