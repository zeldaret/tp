lbl_806ECB64:
/* 806ECB64  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 806ECB68  7C 08 02 A6 */	mflr r0
/* 806ECB6C  90 01 01 54 */	stw r0, 0x154(r1)
/* 806ECB70  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 806ECB74  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 806ECB78  39 61 01 40 */	addi r11, r1, 0x140
/* 806ECB7C  4B C7 56 60 */	b _savegpr_29
/* 806ECB80  7C 7D 1B 78 */	mr r29, r3
/* 806ECB84  3C 60 80 6F */	lis r3, lit_3966@ha
/* 806ECB88  3B E3 08 60 */	addi r31, r3, lit_3966@l
/* 806ECB8C  38 61 00 CC */	addi r3, r1, 0xcc
/* 806ECB90  4B 98 A9 EC */	b __ct__11dBgS_GndChkFv
/* 806ECB94  38 61 00 5C */	addi r3, r1, 0x5c
/* 806ECB98  4B 98 B0 D0 */	b __ct__11dBgS_LinChkFv
/* 806ECB9C  3B C0 00 00 */	li r30, 0
/* 806ECBA0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806ECBA4  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 806ECBA8  4B A7 2D 28 */	b getThrowBoomerangActor__9daPy_py_cFv
/* 806ECBAC  90 7D 06 6C */	stw r3, 0x66c(r29)
/* 806ECBB0  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 806ECBB4  2C 00 00 03 */	cmpwi r0, 3
/* 806ECBB8  41 82 04 30 */	beq lbl_806ECFE8
/* 806ECBBC  40 80 00 1C */	bge lbl_806ECBD8
/* 806ECBC0  2C 00 00 01 */	cmpwi r0, 1
/* 806ECBC4  41 82 01 20 */	beq lbl_806ECCE4
/* 806ECBC8  40 80 01 CC */	bge lbl_806ECD94
/* 806ECBCC  2C 00 00 00 */	cmpwi r0, 0
/* 806ECBD0  40 80 00 18 */	bge lbl_806ECBE8
/* 806ECBD4  48 00 09 50 */	b lbl_806ED524
lbl_806ECBD8:
/* 806ECBD8  2C 00 00 05 */	cmpwi r0, 5
/* 806ECBDC  41 82 07 F4 */	beq lbl_806ED3D0
/* 806ECBE0  40 80 09 44 */	bge lbl_806ED524
/* 806ECBE4  48 00 06 84 */	b lbl_806ED268
lbl_806ECBE8:
/* 806ECBE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ECBEC  D0 3D 05 30 */	stfs f1, 0x530(r29)
/* 806ECBF0  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 806ECBF4  D0 3D 04 FC */	stfs f1, 0x4fc(r29)
/* 806ECBF8  80 1D 0D 24 */	lwz r0, 0xd24(r29)
/* 806ECBFC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806ECC00  90 1D 0D 24 */	stw r0, 0xd24(r29)
/* 806ECC04  7F A3 EB 78 */	mr r3, r29
/* 806ECC08  38 80 00 13 */	li r4, 0x13
/* 806ECC0C  38 A0 00 00 */	li r5, 0
/* 806ECC10  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806ECC14  4B FF DA 7D */	bl setBck__8daE_HZ_cFiUcff
/* 806ECC18  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021D@ha */
/* 806ECC1C  38 03 02 1D */	addi r0, r3, 0x021D /* 0x0007021D@l */
/* 806ECC20  90 01 00 28 */	stw r0, 0x28(r1)
/* 806ECC24  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 806ECC28  38 81 00 28 */	addi r4, r1, 0x28
/* 806ECC2C  38 A0 00 00 */	li r5, 0
/* 806ECC30  38 C0 FF FF */	li r6, -1
/* 806ECC34  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 806ECC38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806ECC3C  7D 89 03 A6 */	mtctr r12
/* 806ECC40  4E 80 04 21 */	bctrl 
/* 806ECC44  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007020A@ha */
/* 806ECC48  38 03 02 0A */	addi r0, r3, 0x020A /* 0x0007020A@l */
/* 806ECC4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806ECC50  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 806ECC54  38 81 00 24 */	addi r4, r1, 0x24
/* 806ECC58  38 A0 FF FF */	li r5, -1
/* 806ECC5C  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 806ECC60  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806ECC64  7D 89 03 A6 */	mtctr r12
/* 806ECC68  4E 80 04 21 */	bctrl 
/* 806ECC6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806ECC70  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806ECC74  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806ECC78  38 00 00 01 */	li r0, 1
/* 806ECC7C  90 1D 06 C8 */	stw r0, 0x6c8(r29)
/* 806ECC80  38 00 00 00 */	li r0, 0
/* 806ECC84  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 806ECC88  7F A3 EB 78 */	mr r3, r29
/* 806ECC8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806ECC90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806ECC94  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806ECC98  4B 92 DB 48 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806ECC9C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806ECCA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ECCA4  4C 41 13 82 */	cror 2, 1, 2
/* 806ECCA8  40 82 00 08 */	bne lbl_806ECCB0
/* 806ECCAC  FC 20 00 90 */	fmr f1, f0
lbl_806ECCB0:
/* 806ECCB0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806ECCB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ECCB8  40 80 00 08 */	bge lbl_806ECCC0
/* 806ECCBC  FC 20 00 90 */	fmr f1, f0
lbl_806ECCC0:
/* 806ECCC0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806ECCC4  EC 20 00 72 */	fmuls f1, f0, f1
/* 806ECCC8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806ECCCC  EC 01 00 24 */	fdivs f0, f1, f0
/* 806ECCD0  FC 00 00 1E */	fctiwz f0, f0
/* 806ECCD4  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 806ECCD8  80 01 01 24 */	lwz r0, 0x124(r1)
/* 806ECCDC  7C 00 07 34 */	extsh r0, r0
/* 806ECCE0  90 1D 06 CC */	stw r0, 0x6cc(r29)
lbl_806ECCE4:
/* 806ECCE4  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 806ECCE8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806ECCEC  EC 1F 00 24 */	fdivs f0, f31, f0
/* 806ECCF0  EC 21 00 28 */	fsubs f1, f1, f0
/* 806ECCF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806ECCF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ECCFC  40 80 00 08 */	bge lbl_806ECD04
/* 806ECD00  FC 20 00 90 */	fmr f1, f0
lbl_806ECD04:
/* 806ECD04  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806ECD08  EC 00 08 2A */	fadds f0, f0, f1
/* 806ECD0C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806ECD10  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 806ECD14  38 03 F8 30 */	addi r0, r3, -2000
/* 806ECD18  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 806ECD1C  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806ECD20  38 63 00 0C */	addi r3, r3, 0xc
/* 806ECD24  80 1D 06 CC */	lwz r0, 0x6cc(r29)
/* 806ECD28  C8 3F 00 C8 */	lfd f1, 0xc8(r31)
/* 806ECD2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806ECD30  90 01 01 24 */	stw r0, 0x124(r1)
/* 806ECD34  3C 00 43 30 */	lis r0, 0x4330
/* 806ECD38  90 01 01 20 */	stw r0, 0x120(r1)
/* 806ECD3C  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 806ECD40  EC 20 08 28 */	fsubs f1, f0, f1
/* 806ECD44  4B C3 B6 E8 */	b checkPass__12J3DFrameCtrlFf
/* 806ECD48  2C 03 00 00 */	cmpwi r3, 0
/* 806ECD4C  40 82 00 1C */	bne lbl_806ECD68
/* 806ECD50  80 7D 06 6C */	lwz r3, 0x66c(r29)
/* 806ECD54  28 03 00 00 */	cmplwi r3, 0
/* 806ECD58  41 82 00 10 */	beq lbl_806ECD68
/* 806ECD5C  80 03 09 64 */	lwz r0, 0x964(r3)
/* 806ECD60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806ECD64  41 82 00 08 */	beq lbl_806ECD6C
lbl_806ECD68:
/* 806ECD68  3B C0 00 01 */	li r30, 1
lbl_806ECD6C:
/* 806ECD6C  2C 1E 00 00 */	cmpwi r30, 0
/* 806ECD70  41 82 07 B4 */	beq lbl_806ED524
/* 806ECD74  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806ECD78  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806ECD7C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806ECD80  38 00 00 02 */	li r0, 2
/* 806ECD84  90 1D 06 C8 */	stw r0, 0x6c8(r29)
/* 806ECD88  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806ECD8C  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 806ECD90  48 00 07 94 */	b lbl_806ED524
lbl_806ECD94:
/* 806ECD94  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806ECD98  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 806ECD9C  EC 01 00 2A */	fadds f0, f1, f0
/* 806ECDA0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806ECDA4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806ECDA8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 806ECDAC  EC 21 00 28 */	fsubs f1, f1, f0
/* 806ECDB0  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806ECDB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ECDB8  4C 41 13 82 */	cror 2, 1, 2
/* 806ECDBC  40 82 07 68 */	bne lbl_806ED524
/* 806ECDC0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 806ECDC4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806ECDC8  40 80 00 0C */	bge lbl_806ECDD4
/* 806ECDCC  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806ECDD0  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_806ECDD4:
/* 806ECDD4  80 7D 06 6C */	lwz r3, 0x66c(r29)
/* 806ECDD8  28 03 00 00 */	cmplwi r3, 0
/* 806ECDDC  40 82 00 10 */	bne lbl_806ECDEC
/* 806ECDE0  7F A3 EB 78 */	mr r3, r29
/* 806ECDE4  4B FF FD 09 */	bl setWindEnd__8daE_HZ_cFv
/* 806ECDE8  48 00 07 3C */	b lbl_806ED524
lbl_806ECDEC:
/* 806ECDEC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806ECDF0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806ECDF4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806ECDF8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806ECDFC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806ECE00  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806ECE04  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806ECE08  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 806ECE0C  EC 21 00 28 */	fsubs f1, f1, f0
/* 806ECE10  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806ECE14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ECE18  4C 41 13 82 */	cror 2, 1, 2
/* 806ECE1C  40 82 00 50 */	bne lbl_806ECE6C
/* 806ECE20  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 806ECE24  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ECE28  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 806ECE2C  4B B8 39 14 */	b cLib_chaseF__FPfff
/* 806ECE30  2C 03 00 00 */	cmpwi r3, 0
/* 806ECE34  41 82 00 08 */	beq lbl_806ECE3C
/* 806ECE38  3B C0 00 01 */	li r30, 1
lbl_806ECE3C:
/* 806ECE3C  80 7D 06 6C */	lwz r3, 0x66c(r29)
/* 806ECE40  80 03 09 64 */	lwz r0, 0x964(r3)
/* 806ECE44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806ECE48  41 82 00 24 */	beq lbl_806ECE6C
/* 806ECE4C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806ECE50  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806ECE54  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806ECE58  4B 92 D9 88 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806ECE5C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806ECE60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ECE64  40 80 00 08 */	bge lbl_806ECE6C
/* 806ECE68  3B C0 00 01 */	li r30, 1
lbl_806ECE6C:
/* 806ECE6C  2C 1E 00 00 */	cmpwi r30, 0
/* 806ECE70  41 82 06 B4 */	beq lbl_806ED524
/* 806ECE74  38 00 00 03 */	li r0, 3
/* 806ECE78  90 1D 06 C8 */	stw r0, 0x6c8(r29)
/* 806ECE7C  38 00 00 01 */	li r0, 1
/* 806ECE80  98 1D 06 E4 */	stb r0, 0x6e4(r29)
/* 806ECE84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806ECE88  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806ECE8C  38 61 00 38 */	addi r3, r1, 0x38
/* 806ECE90  38 81 00 50 */	addi r4, r1, 0x50
/* 806ECE94  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806ECE98  4B B7 9C 9C */	b __mi__4cXyzCFRC3Vec
/* 806ECE9C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806ECEA0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806ECEA4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806ECEA8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806ECEAC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806ECEB0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806ECEB4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806ECEB8  38 81 00 50 */	addi r4, r1, 0x50
/* 806ECEBC  4B B8 3D 48 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806ECEC0  B0 7D 06 B2 */	sth r3, 0x6b2(r29)
/* 806ECEC4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806ECEC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806ECECC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806ECED0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806ECED4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806ECED8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806ECEDC  38 61 00 2C */	addi r3, r1, 0x2c
/* 806ECEE0  4B C5 A2 58 */	b PSVECSquareMag
/* 806ECEE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806ECEE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ECEEC  40 81 00 58 */	ble lbl_806ECF44
/* 806ECEF0  FC 00 08 34 */	frsqrte f0, f1
/* 806ECEF4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806ECEF8  FC 44 00 32 */	fmul f2, f4, f0
/* 806ECEFC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806ECF00  FC 00 00 32 */	fmul f0, f0, f0
/* 806ECF04  FC 01 00 32 */	fmul f0, f1, f0
/* 806ECF08  FC 03 00 28 */	fsub f0, f3, f0
/* 806ECF0C  FC 02 00 32 */	fmul f0, f2, f0
/* 806ECF10  FC 44 00 32 */	fmul f2, f4, f0
/* 806ECF14  FC 00 00 32 */	fmul f0, f0, f0
/* 806ECF18  FC 01 00 32 */	fmul f0, f1, f0
/* 806ECF1C  FC 03 00 28 */	fsub f0, f3, f0
/* 806ECF20  FC 02 00 32 */	fmul f0, f2, f0
/* 806ECF24  FC 44 00 32 */	fmul f2, f4, f0
/* 806ECF28  FC 00 00 32 */	fmul f0, f0, f0
/* 806ECF2C  FC 01 00 32 */	fmul f0, f1, f0
/* 806ECF30  FC 03 00 28 */	fsub f0, f3, f0
/* 806ECF34  FC 02 00 32 */	fmul f0, f2, f0
/* 806ECF38  FC 21 00 32 */	fmul f1, f1, f0
/* 806ECF3C  FC 20 08 18 */	frsp f1, f1
/* 806ECF40  48 00 00 88 */	b lbl_806ECFC8
lbl_806ECF44:
/* 806ECF44  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806ECF48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ECF4C  40 80 00 10 */	bge lbl_806ECF5C
/* 806ECF50  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806ECF54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806ECF58  48 00 00 70 */	b lbl_806ECFC8
lbl_806ECF5C:
/* 806ECF5C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806ECF60  80 81 00 08 */	lwz r4, 8(r1)
/* 806ECF64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806ECF68  3C 00 7F 80 */	lis r0, 0x7f80
/* 806ECF6C  7C 03 00 00 */	cmpw r3, r0
/* 806ECF70  41 82 00 14 */	beq lbl_806ECF84
/* 806ECF74  40 80 00 40 */	bge lbl_806ECFB4
/* 806ECF78  2C 03 00 00 */	cmpwi r3, 0
/* 806ECF7C  41 82 00 20 */	beq lbl_806ECF9C
/* 806ECF80  48 00 00 34 */	b lbl_806ECFB4
lbl_806ECF84:
/* 806ECF84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806ECF88  41 82 00 0C */	beq lbl_806ECF94
/* 806ECF8C  38 00 00 01 */	li r0, 1
/* 806ECF90  48 00 00 28 */	b lbl_806ECFB8
lbl_806ECF94:
/* 806ECF94  38 00 00 02 */	li r0, 2
/* 806ECF98  48 00 00 20 */	b lbl_806ECFB8
lbl_806ECF9C:
/* 806ECF9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806ECFA0  41 82 00 0C */	beq lbl_806ECFAC
/* 806ECFA4  38 00 00 05 */	li r0, 5
/* 806ECFA8  48 00 00 10 */	b lbl_806ECFB8
lbl_806ECFAC:
/* 806ECFAC  38 00 00 03 */	li r0, 3
/* 806ECFB0  48 00 00 08 */	b lbl_806ECFB8
lbl_806ECFB4:
/* 806ECFB4  38 00 00 04 */	li r0, 4
lbl_806ECFB8:
/* 806ECFB8  2C 00 00 01 */	cmpwi r0, 1
/* 806ECFBC  40 82 00 0C */	bne lbl_806ECFC8
/* 806ECFC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806ECFC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806ECFC8:
/* 806ECFC8  D0 3D 06 78 */	stfs f1, 0x678(r29)
/* 806ECFCC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806ECFD0  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 806ECFD4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 806ECFD8  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 806ECFDC  38 00 08 00 */	li r0, 0x800
/* 806ECFE0  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 806ECFE4  48 00 05 40 */	b lbl_806ED524
lbl_806ECFE8:
/* 806ECFE8  80 7D 06 6C */	lwz r3, 0x66c(r29)
/* 806ECFEC  28 03 00 00 */	cmplwi r3, 0
/* 806ECFF0  40 82 00 28 */	bne lbl_806ED018
/* 806ECFF4  7F A3 EB 78 */	mr r3, r29
/* 806ECFF8  4B FF FA F5 */	bl setWindEnd__8daE_HZ_cFv
/* 806ECFFC  38 61 00 5C */	addi r3, r1, 0x5c
/* 806ED000  38 80 FF FF */	li r4, -1
/* 806ED004  4B 98 AC D8 */	b __dt__11dBgS_LinChkFv
/* 806ED008  38 61 00 CC */	addi r3, r1, 0xcc
/* 806ED00C  38 80 FF FF */	li r4, -1
/* 806ED010  4B 98 A5 E0 */	b __dt__11dBgS_GndChkFv
/* 806ED014  48 00 05 7C */	b lbl_806ED590
lbl_806ED018:
/* 806ED018  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806ED01C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806ED020  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806ED024  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806ED028  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806ED02C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806ED030  C0 3D 06 A4 */	lfs f1, 0x6a4(r29)
/* 806ED034  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806ED038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806ED03C  40 80 00 34 */	bge lbl_806ED070
/* 806ED040  80 03 09 64 */	lwz r0, 0x964(r3)
/* 806ED044  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806ED048  41 82 00 28 */	beq lbl_806ED070
/* 806ED04C  7F A3 EB 78 */	mr r3, r29
/* 806ED050  4B FF FA 9D */	bl setWindEnd__8daE_HZ_cFv
/* 806ED054  38 61 00 5C */	addi r3, r1, 0x5c
/* 806ED058  38 80 FF FF */	li r4, -1
/* 806ED05C  4B 98 AC 80 */	b __dt__11dBgS_LinChkFv
/* 806ED060  38 61 00 CC */	addi r3, r1, 0xcc
/* 806ED064  38 80 FF FF */	li r4, -1
/* 806ED068  4B 98 A5 88 */	b __dt__11dBgS_GndChkFv
/* 806ED06C  48 00 05 24 */	b lbl_806ED590
lbl_806ED070:
/* 806ED070  A8 7D 06 B2 */	lha r3, 0x6b2(r29)
/* 806ED074  38 03 08 00 */	addi r0, r3, 0x800
/* 806ED078  B0 1D 06 B2 */	sth r0, 0x6b2(r29)
/* 806ED07C  38 61 00 5C */	addi r3, r1, 0x5c
/* 806ED080  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806ED084  38 A1 00 50 */	addi r5, r1, 0x50
/* 806ED088  38 C0 00 00 */	li r6, 0
/* 806ED08C  4B 98 AC D8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806ED090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806ED094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806ED098  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 806ED09C  7F C3 F3 78 */	mr r3, r30
/* 806ED0A0  38 81 00 5C */	addi r4, r1, 0x5c
/* 806ED0A4  4B 98 73 10 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806ED0A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806ED0AC  40 82 00 6C */	bne lbl_806ED118
/* 806ED0B0  A8 1D 06 B2 */	lha r0, 0x6b2(r29)
/* 806ED0B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806ED0B8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806ED0BC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806ED0C0  7C 43 04 2E */	lfsx f2, r3, r0
/* 806ED0C4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 806ED0C8  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 806ED0CC  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 806ED0D0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806ED0D4  EC 21 00 2A */	fadds f1, f1, f0
/* 806ED0D8  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 806ED0DC  4B B8 36 64 */	b cLib_chaseF__FPfff
/* 806ED0E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806ED0E4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806ED0E8  A8 1D 06 B2 */	lha r0, 0x6b2(r29)
/* 806ED0EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806ED0F0  7C 63 02 14 */	add r3, r3, r0
/* 806ED0F4  C0 43 00 04 */	lfs f2, 4(r3)
/* 806ED0F8  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 806ED0FC  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 806ED100  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 806ED104  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806ED108  EC 21 00 2A */	fadds f1, f1, f0
/* 806ED10C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 806ED110  4B B8 36 30 */	b cLib_chaseF__FPfff
/* 806ED114  48 00 00 14 */	b lbl_806ED128
lbl_806ED118:
/* 806ED118  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 806ED11C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806ED120  EC 01 00 2A */	fadds f0, f1, f0
/* 806ED124  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_806ED128:
/* 806ED128  38 7D 06 78 */	addi r3, r29, 0x678
/* 806ED12C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED130  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 806ED134  4B B8 36 0C */	b cLib_chaseF__FPfff
/* 806ED138  38 61 00 CC */	addi r3, r1, 0xcc
/* 806ED13C  38 81 00 50 */	addi r4, r1, 0x50
/* 806ED140  4B B7 AB E8 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806ED144  7F C3 F3 78 */	mr r3, r30
/* 806ED148  38 81 00 CC */	addi r4, r1, 0xcc
/* 806ED14C  4B 98 73 54 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806ED150  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806ED154  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806ED158  40 80 00 24 */	bge lbl_806ED17C
/* 806ED15C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 806ED160  EC 40 08 28 */	fsubs f2, f0, f1
/* 806ED164  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806ED168  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806ED16C  40 80 00 34 */	bge lbl_806ED1A0
/* 806ED170  EC 00 08 2A */	fadds f0, f0, f1
/* 806ED174  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806ED178  48 00 00 28 */	b lbl_806ED1A0
lbl_806ED17C:
/* 806ED17C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 806ED180  EC 00 08 28 */	fsubs f0, f0, f1
/* 806ED184  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806ED188  38 63 0B 7C */	addi r3, r3, l_HIO@l
/* 806ED18C  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 806ED190  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 806ED194  40 80 00 0C */	bge lbl_806ED1A0
/* 806ED198  EC 01 10 2A */	fadds f0, f1, f2
/* 806ED19C  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_806ED1A0:
/* 806ED1A0  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 806ED1A4  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 806ED1A8  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 806ED1AC  EC 21 00 2A */	fadds f1, f1, f0
/* 806ED1B0  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 806ED1B4  4B B8 35 8C */	b cLib_chaseF__FPfff
/* 806ED1B8  38 7D 06 7C */	addi r3, r29, 0x67c
/* 806ED1BC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED1C0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 806ED1C4  4B B8 35 7C */	b cLib_chaseF__FPfff
/* 806ED1C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806ED1CC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806ED1D0  A8 1D 06 B4 */	lha r0, 0x6b4(r29)
/* 806ED1D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806ED1D8  7C 63 02 14 */	add r3, r3, r0
/* 806ED1DC  C0 23 00 04 */	lfs f1, 4(r3)
/* 806ED1E0  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 806ED1E4  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 806ED1E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 806ED1EC  FC 00 00 1E */	fctiwz f0, f0
/* 806ED1F0  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 806ED1F4  80 81 01 24 */	lwz r4, 0x124(r1)
/* 806ED1F8  38 A0 01 00 */	li r5, 0x100
/* 806ED1FC  4B B8 39 94 */	b cLib_chaseAngleS__FPsss
/* 806ED200  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806ED204  38 80 00 01 */	li r4, 1
/* 806ED208  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806ED20C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806ED210  40 82 00 18 */	bne lbl_806ED228
/* 806ED214  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED218  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806ED21C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806ED220  41 82 00 08 */	beq lbl_806ED228
/* 806ED224  38 80 00 00 */	li r4, 0
lbl_806ED228:
/* 806ED228  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806ED22C  41 82 00 14 */	beq lbl_806ED240
/* 806ED230  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 806ED234  38 80 80 00 */	li r4, -32768
/* 806ED238  38 A0 04 00 */	li r5, 0x400
/* 806ED23C  4B B8 39 54 */	b cLib_chaseAngleS__FPsss
lbl_806ED240:
/* 806ED240  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806ED244  38 63 0B 7C */	addi r3, r3, l_HIO@l
/* 806ED248  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806ED24C  FC 00 00 1E */	fctiwz f0, f0
/* 806ED250  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 806ED254  80 61 01 24 */	lwz r3, 0x124(r1)
/* 806ED258  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 806ED25C  7C 03 00 50 */	subf r0, r3, r0
/* 806ED260  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 806ED264  48 00 02 C0 */	b lbl_806ED524
lbl_806ED268:
/* 806ED268  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 806ED26C  38 80 80 00 */	li r4, -32768
/* 806ED270  38 A0 08 00 */	li r5, 0x800
/* 806ED274  4B B8 39 1C */	b cLib_chaseAngleS__FPsss
/* 806ED278  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806ED27C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806ED280  A8 1D 06 B4 */	lha r0, 0x6b4(r29)
/* 806ED284  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806ED288  7C 63 02 14 */	add r3, r3, r0
/* 806ED28C  C0 23 00 04 */	lfs f1, 4(r3)
/* 806ED290  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 806ED294  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 806ED298  EC 00 00 72 */	fmuls f0, f0, f1
/* 806ED29C  FC 00 00 1E */	fctiwz f0, f0
/* 806ED2A0  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 806ED2A4  80 81 01 24 */	lwz r4, 0x124(r1)
/* 806ED2A8  38 A0 01 00 */	li r5, 0x100
/* 806ED2AC  4B B8 38 E4 */	b cLib_chaseAngleS__FPsss
/* 806ED2B0  38 7D 06 80 */	addi r3, r29, 0x680
/* 806ED2B4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED2B8  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 806ED2BC  4B B8 34 84 */	b cLib_chaseF__FPfff
/* 806ED2C0  A8 1D 06 D6 */	lha r0, 0x6d6(r29)
/* 806ED2C4  2C 00 00 00 */	cmpwi r0, 0
/* 806ED2C8  41 82 00 10 */	beq lbl_806ED2D8
/* 806ED2CC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 806ED2D0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806ED2D4  48 00 00 E8 */	b lbl_806ED3BC
lbl_806ED2D8:
/* 806ED2D8  80 1D 0B 24 */	lwz r0, 0xb24(r29)
/* 806ED2DC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806ED2E0  41 82 00 DC */	beq lbl_806ED3BC
/* 806ED2E4  7F A3 EB 78 */	mr r3, r29
/* 806ED2E8  38 80 00 01 */	li r4, 1
/* 806ED2EC  4B FF DD B9 */	bl setTgSetBit__8daE_HZ_cFi
/* 806ED2F0  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806ED2F4  38 63 0B 7C */	addi r3, r3, l_HIO@l
/* 806ED2F8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806ED2FC  FC 00 00 1E */	fctiwz f0, f0
/* 806ED300  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 806ED304  80 01 01 24 */	lwz r0, 0x124(r1)
/* 806ED308  B0 1D 06 D8 */	sth r0, 0x6d8(r29)
/* 806ED30C  7F A3 EB 78 */	mr r3, r29
/* 806ED310  38 80 00 0E */	li r4, 0xe
/* 806ED314  38 A0 00 00 */	li r5, 0
/* 806ED318  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED31C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806ED320  4B FF D3 71 */	bl setBck__8daE_HZ_cFiUcff
/* 806ED324  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007020F@ha */
/* 806ED328  38 03 02 0F */	addi r0, r3, 0x020F /* 0x0007020F@l */
/* 806ED32C  90 01 00 20 */	stw r0, 0x20(r1)
/* 806ED330  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 806ED334  38 81 00 20 */	addi r4, r1, 0x20
/* 806ED338  38 A0 FF FF */	li r5, -1
/* 806ED33C  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 806ED340  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806ED344  7D 89 03 A6 */	mtctr r12
/* 806ED348  4E 80 04 21 */	bctrl 
/* 806ED34C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070210@ha */
/* 806ED350  38 03 02 10 */	addi r0, r3, 0x0210 /* 0x00070210@l */
/* 806ED354  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806ED358  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 806ED35C  38 81 00 1C */	addi r4, r1, 0x1c
/* 806ED360  38 A0 00 00 */	li r5, 0
/* 806ED364  38 C0 FF FF */	li r6, -1
/* 806ED368  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 806ED36C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806ED370  7D 89 03 A6 */	mtctr r12
/* 806ED374  4E 80 04 21 */	bctrl 
/* 806ED378  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 806ED37C  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 806ED380  90 01 00 18 */	stw r0, 0x18(r1)
/* 806ED384  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 806ED388  38 81 00 18 */	addi r4, r1, 0x18
/* 806ED38C  38 A0 00 00 */	li r5, 0
/* 806ED390  38 C0 FF FF */	li r6, -1
/* 806ED394  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 806ED398  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806ED39C  7D 89 03 A6 */	mtctr r12
/* 806ED3A0  4E 80 04 21 */	bctrl 
/* 806ED3A4  38 00 00 00 */	li r0, 0
/* 806ED3A8  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 806ED3AC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806ED3B0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806ED3B4  38 00 00 05 */	li r0, 5
/* 806ED3B8  90 1D 06 C8 */	stw r0, 0x6c8(r29)
lbl_806ED3BC:
/* 806ED3BC  A8 7D 06 B2 */	lha r3, 0x6b2(r29)
/* 806ED3C0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 806ED3C4  7C 03 00 50 */	subf r0, r3, r0
/* 806ED3C8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 806ED3CC  48 00 01 58 */	b lbl_806ED524
lbl_806ED3D0:
/* 806ED3D0  A8 1D 06 B2 */	lha r0, 0x6b2(r29)
/* 806ED3D4  2C 00 04 00 */	cmpwi r0, 0x400
/* 806ED3D8  40 81 00 30 */	ble lbl_806ED408
/* 806ED3DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021A@ha */
/* 806ED3E0  38 03 02 1A */	addi r0, r3, 0x021A /* 0x0007021A@l */
/* 806ED3E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806ED3E8  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 806ED3EC  38 81 00 14 */	addi r4, r1, 0x14
/* 806ED3F0  38 A0 00 00 */	li r5, 0
/* 806ED3F4  38 C0 FF FF */	li r6, -1
/* 806ED3F8  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 806ED3FC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806ED400  7D 89 03 A6 */	mtctr r12
/* 806ED404  4E 80 04 21 */	bctrl 
lbl_806ED408:
/* 806ED408  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806ED40C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806ED410  A8 1D 06 B4 */	lha r0, 0x6b4(r29)
/* 806ED414  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806ED418  7C 63 02 14 */	add r3, r3, r0
/* 806ED41C  C0 23 00 04 */	lfs f1, 4(r3)
/* 806ED420  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 806ED424  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 806ED428  EC 00 00 72 */	fmuls f0, f0, f1
/* 806ED42C  FC 00 00 1E */	fctiwz f0, f0
/* 806ED430  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 806ED434  80 81 01 24 */	lwz r4, 0x124(r1)
/* 806ED438  38 A0 01 00 */	li r5, 0x100
/* 806ED43C  4B B8 37 54 */	b cLib_chaseAngleS__FPsss
/* 806ED440  38 7D 06 80 */	addi r3, r29, 0x680
/* 806ED444  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED448  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 806ED44C  4B B8 32 F4 */	b cLib_chaseF__FPfff
/* 806ED450  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806ED454  38 63 00 0C */	addi r3, r3, 0xc
/* 806ED458  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 806ED45C  4B C3 AF D0 */	b checkPass__12J3DFrameCtrlFf
/* 806ED460  2C 03 00 00 */	cmpwi r3, 0
/* 806ED464  41 82 00 30 */	beq lbl_806ED494
/* 806ED468  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 806ED46C  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 806ED470  90 01 00 10 */	stw r0, 0x10(r1)
/* 806ED474  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 806ED478  38 81 00 10 */	addi r4, r1, 0x10
/* 806ED47C  38 A0 00 00 */	li r5, 0
/* 806ED480  38 C0 FF FF */	li r6, -1
/* 806ED484  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 806ED488  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806ED48C  7D 89 03 A6 */	mtctr r12
/* 806ED490  4E 80 04 21 */	bctrl 
lbl_806ED494:
/* 806ED494  80 1D 0B 24 */	lwz r0, 0xb24(r29)
/* 806ED498  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806ED49C  41 82 00 78 */	beq lbl_806ED514
/* 806ED4A0  38 7D 06 B2 */	addi r3, r29, 0x6b2
/* 806ED4A4  38 80 00 00 */	li r4, 0
/* 806ED4A8  38 A0 01 00 */	li r5, 0x100
/* 806ED4AC  4B B8 36 E4 */	b cLib_chaseAngleS__FPsss
/* 806ED4B0  A8 1D 06 B2 */	lha r0, 0x6b2(r29)
/* 806ED4B4  2C 00 00 00 */	cmpwi r0, 0
/* 806ED4B8  40 82 00 5C */	bne lbl_806ED514
/* 806ED4BC  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806ED4C0  38 80 00 01 */	li r4, 1
/* 806ED4C4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806ED4C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806ED4CC  40 82 00 18 */	bne lbl_806ED4E4
/* 806ED4D0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED4D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806ED4D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806ED4DC  41 82 00 08 */	beq lbl_806ED4E4
/* 806ED4E0  38 80 00 00 */	li r4, 0
lbl_806ED4E4:
/* 806ED4E4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806ED4E8  41 82 00 2C */	beq lbl_806ED514
/* 806ED4EC  7F A3 EB 78 */	mr r3, r29
/* 806ED4F0  38 80 00 07 */	li r4, 7
/* 806ED4F4  4B FF D5 E9 */	bl setActionMode__8daE_HZ_cFi
/* 806ED4F8  38 61 00 5C */	addi r3, r1, 0x5c
/* 806ED4FC  38 80 FF FF */	li r4, -1
/* 806ED500  4B 98 A7 DC */	b __dt__11dBgS_LinChkFv
/* 806ED504  38 61 00 CC */	addi r3, r1, 0xcc
/* 806ED508  38 80 FF FF */	li r4, -1
/* 806ED50C  4B 98 A0 E4 */	b __dt__11dBgS_GndChkFv
/* 806ED510  48 00 00 80 */	b lbl_806ED590
lbl_806ED514:
/* 806ED514  A8 7D 06 B2 */	lha r3, 0x6b2(r29)
/* 806ED518  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 806ED51C  7C 03 00 50 */	subf r0, r3, r0
/* 806ED520  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_806ED524:
/* 806ED524  7F A3 EB 78 */	mr r3, r29
/* 806ED528  38 80 00 13 */	li r4, 0x13
/* 806ED52C  4B FF D2 09 */	bl checkBck__8daE_HZ_cFi
/* 806ED530  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806ED534  41 82 00 44 */	beq lbl_806ED578
/* 806ED538  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 806ED53C  38 63 00 0C */	addi r3, r3, 0xc
/* 806ED540  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 806ED544  4B C3 AE E8 */	b checkPass__12J3DFrameCtrlFf
/* 806ED548  2C 03 00 00 */	cmpwi r3, 0
/* 806ED54C  41 82 00 2C */	beq lbl_806ED578
/* 806ED550  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007020B@ha */
/* 806ED554  38 03 02 0B */	addi r0, r3, 0x020B /* 0x0007020B@l */
/* 806ED558  90 01 00 0C */	stw r0, 0xc(r1)
/* 806ED55C  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 806ED560  38 81 00 0C */	addi r4, r1, 0xc
/* 806ED564  38 A0 FF FF */	li r5, -1
/* 806ED568  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 806ED56C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806ED570  7D 89 03 A6 */	mtctr r12
/* 806ED574  4E 80 04 21 */	bctrl 
lbl_806ED578:
/* 806ED578  38 61 00 5C */	addi r3, r1, 0x5c
/* 806ED57C  38 80 FF FF */	li r4, -1
/* 806ED580  4B 98 A7 5C */	b __dt__11dBgS_LinChkFv
/* 806ED584  38 61 00 CC */	addi r3, r1, 0xcc
/* 806ED588  38 80 FF FF */	li r4, -1
/* 806ED58C  4B 98 A0 64 */	b __dt__11dBgS_GndChkFv
lbl_806ED590:
/* 806ED590  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 806ED594  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 806ED598  39 61 01 40 */	addi r11, r1, 0x140
/* 806ED59C  4B C7 4C 8C */	b _restgpr_29
/* 806ED5A0  80 01 01 54 */	lwz r0, 0x154(r1)
/* 806ED5A4  7C 08 03 A6 */	mtlr r0
/* 806ED5A8  38 21 01 50 */	addi r1, r1, 0x150
/* 806ED5AC  4E 80 00 20 */	blr 
