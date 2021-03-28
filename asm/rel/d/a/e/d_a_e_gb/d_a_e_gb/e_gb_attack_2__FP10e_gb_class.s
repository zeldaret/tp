lbl_806C2AB0:
/* 806C2AB0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806C2AB4  7C 08 02 A6 */	mflr r0
/* 806C2AB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 806C2ABC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 806C2AC0  93 C1 00 48 */	stw r30, 0x48(r1)
/* 806C2AC4  7C 7E 1B 78 */	mr r30, r3
/* 806C2AC8  3C 80 80 6C */	lis r4, lit_3906@ha
/* 806C2ACC  3B E4 74 E8 */	addi r31, r4, lit_3906@l
/* 806C2AD0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806C2AD4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806C2AD8  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 806C2ADC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806C2AE0  80 83 05 B8 */	lwz r4, 0x5b8(r3)
/* 806C2AE4  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 806C2AE8  A8 03 06 9C */	lha r0, 0x69c(r3)
/* 806C2AEC  2C 00 00 01 */	cmpwi r0, 1
/* 806C2AF0  41 82 00 8C */	beq lbl_806C2B7C
/* 806C2AF4  40 80 00 10 */	bge lbl_806C2B04
/* 806C2AF8  2C 00 00 00 */	cmpwi r0, 0
/* 806C2AFC  40 80 00 14 */	bge lbl_806C2B10
/* 806C2B00  48 00 04 A8 */	b lbl_806C2FA8
lbl_806C2B04:
/* 806C2B04  2C 00 00 03 */	cmpwi r0, 3
/* 806C2B08  40 80 04 A0 */	bge lbl_806C2FA8
/* 806C2B0C  48 00 01 68 */	b lbl_806C2C74
lbl_806C2B10:
/* 806C2B10  38 80 00 07 */	li r4, 7
/* 806C2B14  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806C2B18  38 A0 00 02 */	li r5, 2
/* 806C2B1C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C2B20  4B FF F2 1D */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C2B24  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806C2B28  4B BA 4E 2C */	b cM_rndF__Ff
/* 806C2B2C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806C2B30  EC 00 08 2A */	fadds f0, f0, f1
/* 806C2B34  FC 00 00 1E */	fctiwz f0, f0
/* 806C2B38  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806C2B3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C2B40  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806C2B44  38 00 00 01 */	li r0, 1
/* 806C2B48  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C2B4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007022F@ha */
/* 806C2B50  38 03 02 2F */	addi r0, r3, 0x022F /* 0x0007022F@l */
/* 806C2B54  90 01 00 18 */	stw r0, 0x18(r1)
/* 806C2B58  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806C2B5C  38 81 00 18 */	addi r4, r1, 0x18
/* 806C2B60  38 A0 00 00 */	li r5, 0
/* 806C2B64  38 C0 FF FF */	li r6, -1
/* 806C2B68  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806C2B6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806C2B70  7D 89 03 A6 */	mtctr r12
/* 806C2B74  4E 80 04 21 */	bctrl 
/* 806C2B78  48 00 04 30 */	b lbl_806C2FA8
lbl_806C2B7C:
/* 806C2B7C  D0 7E 05 2C */	stfs f3, 0x52c(r30)
/* 806C2B80  D0 7E 04 FC */	stfs f3, 0x4fc(r30)
/* 806C2B84  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 806C2B88  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806C2B8C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806C2B90  EC 21 00 2A */	fadds f1, f1, f0
/* 806C2B94  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806C2B98  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 806C2B9C  4B BA CE A0 */	b cLib_addCalc2__FPffff
/* 806C2BA0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806C2BA4  A8 9E 06 B8 */	lha r4, 0x6b8(r30)
/* 806C2BA8  38 A0 00 02 */	li r5, 2
/* 806C2BAC  38 C0 08 00 */	li r6, 0x800
/* 806C2BB0  4B BA DA 58 */	b cLib_addCalcAngleS2__FPssss
/* 806C2BB4  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 806C2BB8  38 80 00 00 */	li r4, 0
/* 806C2BBC  38 A0 00 02 */	li r5, 2
/* 806C2BC0  38 C0 08 00 */	li r6, 0x800
/* 806C2BC4  4B BA DA 44 */	b cLib_addCalcAngleS2__FPssss
/* 806C2BC8  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806C2BCC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806C2BD0  38 A0 00 08 */	li r5, 8
/* 806C2BD4  38 C0 08 00 */	li r6, 0x800
/* 806C2BD8  4B BA DA 30 */	b cLib_addCalcAngleS2__FPssss
/* 806C2BDC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806C2BE0  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 806C2BE4  38 A0 00 08 */	li r5, 8
/* 806C2BE8  38 C0 04 00 */	li r6, 0x400
/* 806C2BEC  4B BA DA 1C */	b cLib_addCalcAngleS2__FPssss
/* 806C2BF0  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 806C2BF4  2C 00 00 00 */	cmpwi r0, 0
/* 806C2BF8  40 82 03 B0 */	bne lbl_806C2FA8
/* 806C2BFC  7F C3 F3 78 */	mr r3, r30
/* 806C2C00  38 80 00 06 */	li r4, 6
/* 806C2C04  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 806C2C08  38 A0 00 00 */	li r5, 0
/* 806C2C0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C2C10  4B FF F1 2D */	bl head_anm_init__FP10e_gb_classifUcf
/* 806C2C14  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007014E@ha */
/* 806C2C18  38 03 01 4E */	addi r0, r3, 0x014E /* 0x0007014E@l */
/* 806C2C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C2C20  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806C2C24  38 81 00 14 */	addi r4, r1, 0x14
/* 806C2C28  38 A0 FF FF */	li r5, -1
/* 806C2C2C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806C2C30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C2C34  7D 89 03 A6 */	mtctr r12
/* 806C2C38  4E 80 04 21 */	bctrl 
/* 806C2C3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070230@ha */
/* 806C2C40  38 03 02 30 */	addi r0, r3, 0x0230 /* 0x00070230@l */
/* 806C2C44  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C2C48  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806C2C4C  38 81 00 10 */	addi r4, r1, 0x10
/* 806C2C50  38 A0 00 00 */	li r5, 0
/* 806C2C54  38 C0 FF FF */	li r6, -1
/* 806C2C58  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806C2C5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806C2C60  7D 89 03 A6 */	mtctr r12
/* 806C2C64  4E 80 04 21 */	bctrl 
/* 806C2C68  38 00 00 02 */	li r0, 2
/* 806C2C6C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C2C70  48 00 03 38 */	b lbl_806C2FA8
lbl_806C2C74:
/* 806C2C74  C0 25 04 D0 */	lfs f1, 0x4d0(r5)
/* 806C2C78  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806C2C7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C2C80  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806C2C84  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 806C2C88  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806C2C8C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C2C90  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806C2C94  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806C2C98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C2C9C  4C 41 13 82 */	cror 2, 1, 2
/* 806C2CA0  40 82 00 0C */	bne lbl_806C2CAC
/* 806C2CA4  D0 7E 05 2C */	stfs f3, 0x52c(r30)
/* 806C2CA8  48 00 00 6C */	b lbl_806C2D14
lbl_806C2CAC:
/* 806C2CAC  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806C2CB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C2CB4  4C 41 13 82 */	cror 2, 1, 2
/* 806C2CB8  40 82 00 58 */	bne lbl_806C2D10
/* 806C2CBC  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 806C2CC0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 806C2CC4  40 82 00 08 */	bne lbl_806C2CCC
/* 806C2CC8  D0 7E 04 FC */	stfs f3, 0x4fc(r30)
lbl_806C2CCC:
/* 806C2CCC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806C2CD0  EC 20 00 32 */	fmuls f1, f0, f0
/* 806C2CD4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806C2CD8  EC 00 00 32 */	fmuls f0, f0, f0
/* 806C2CDC  EC 21 00 2A */	fadds f1, f1, f0
/* 806C2CE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C2CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C2CE8  40 81 00 0C */	ble lbl_806C2CF4
/* 806C2CEC  FC 00 08 34 */	frsqrte f0, f1
/* 806C2CF0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_806C2CF4:
/* 806C2CF4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806C2CF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C2CFC  40 80 00 18 */	bge lbl_806C2D14
/* 806C2D00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C2D04  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806C2D08  FC 60 00 90 */	fmr f3, f0
/* 806C2D0C  48 00 00 08 */	b lbl_806C2D14
lbl_806C2D10:
/* 806C2D10  D0 7E 04 FC */	stfs f3, 0x4fc(r30)
lbl_806C2D14:
/* 806C2D14  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806C2D18  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C2D1C  4C 41 13 82 */	cror 2, 1, 2
/* 806C2D20  40 82 00 1C */	bne lbl_806C2D3C
/* 806C2D24  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806C2D28  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C2D2C  4C 40 13 82 */	cror 2, 0, 2
/* 806C2D30  40 82 00 0C */	bne lbl_806C2D3C
/* 806C2D34  38 00 00 01 */	li r0, 1
/* 806C2D38  98 1E 0C 20 */	stb r0, 0xc20(r30)
lbl_806C2D3C:
/* 806C2D3C  D0 7E 05 2C */	stfs f3, 0x52c(r30)
/* 806C2D40  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806C2D44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C2D48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C2D4C  4C 40 13 82 */	cror 2, 0, 2
/* 806C2D50  40 82 02 58 */	bne lbl_806C2FA8
/* 806C2D54  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 806C2D58  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 806C2D5C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806C2D60  EC 01 00 2A */	fadds f0, f1, f0
/* 806C2D64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C2D68  4C 40 13 82 */	cror 2, 0, 2
/* 806C2D6C  40 82 02 3C */	bne lbl_806C2FA8
/* 806C2D70  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806C2D74  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806C2D78  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806C2D7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C2D80  40 80 00 80 */	bge lbl_806C2E00
/* 806C2D84  38 7E 0E 74 */	addi r3, r30, 0xe74
/* 806C2D88  38 9E 0E 78 */	addi r4, r30, 0xe78
/* 806C2D8C  38 BE 05 38 */	addi r5, r30, 0x538
/* 806C2D90  38 C0 00 00 */	li r6, 0
/* 806C2D94  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806C2D98  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806C2D9C  39 00 00 01 */	li r8, 1
/* 806C2DA0  4B 95 A2 80 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 806C2DA4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C2DA8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806C2DAC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806C2DB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806C2DB4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806C2DB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C2DBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806C2DC0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806C2DC4  38 80 00 05 */	li r4, 5
/* 806C2DC8  38 A0 00 0F */	li r5, 0xf
/* 806C2DCC  38 C1 00 28 */	addi r6, r1, 0x28
/* 806C2DD0  4B 9A CC 54 */	b StartShock__12dVibration_cFii4cXyz
/* 806C2DD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070231@ha */
/* 806C2DD8  38 03 02 31 */	addi r0, r3, 0x0231 /* 0x00070231@l */
/* 806C2DDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C2DE0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806C2DE4  38 81 00 0C */	addi r4, r1, 0xc
/* 806C2DE8  38 A0 00 00 */	li r5, 0
/* 806C2DEC  38 C0 FF FF */	li r6, -1
/* 806C2DF0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806C2DF4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806C2DF8  7D 89 03 A6 */	mtctr r12
/* 806C2DFC  4E 80 04 21 */	bctrl 
lbl_806C2E00:
/* 806C2E00  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C2E04  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 806C2E08  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806C2E0C  38 80 00 01 */	li r4, 1
/* 806C2E10  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C2E14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C2E18  40 82 00 14 */	bne lbl_806C2E2C
/* 806C2E1C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C2E20  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C2E24  41 82 00 08 */	beq lbl_806C2E2C
/* 806C2E28  38 80 00 00 */	li r4, 0
lbl_806C2E2C:
/* 806C2E2C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C2E30  41 82 01 78 */	beq lbl_806C2FA8
/* 806C2E34  38 61 00 1C */	addi r3, r1, 0x1c
/* 806C2E38  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806C2E3C  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 806C2E40  4B BA 3C F4 */	b __mi__4cXyzCFRC3Vec
/* 806C2E44  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806C2E48  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806C2E4C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806C2E50  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806C2E54  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806C2E58  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806C2E5C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C2E60  4B BA 4A F4 */	b cM_rndF__Ff
/* 806C2E64  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 806C2E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C2E6C  40 80 01 08 */	bge lbl_806C2F74
/* 806C2E70  38 61 00 34 */	addi r3, r1, 0x34
/* 806C2E74  4B C8 42 C4 */	b PSVECSquareMag
/* 806C2E78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C2E7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C2E80  40 81 00 58 */	ble lbl_806C2ED8
/* 806C2E84  FC 00 08 34 */	frsqrte f0, f1
/* 806C2E88  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C2E8C  FC 44 00 32 */	fmul f2, f4, f0
/* 806C2E90  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C2E94  FC 00 00 32 */	fmul f0, f0, f0
/* 806C2E98  FC 01 00 32 */	fmul f0, f1, f0
/* 806C2E9C  FC 03 00 28 */	fsub f0, f3, f0
/* 806C2EA0  FC 02 00 32 */	fmul f0, f2, f0
/* 806C2EA4  FC 44 00 32 */	fmul f2, f4, f0
/* 806C2EA8  FC 00 00 32 */	fmul f0, f0, f0
/* 806C2EAC  FC 01 00 32 */	fmul f0, f1, f0
/* 806C2EB0  FC 03 00 28 */	fsub f0, f3, f0
/* 806C2EB4  FC 02 00 32 */	fmul f0, f2, f0
/* 806C2EB8  FC 44 00 32 */	fmul f2, f4, f0
/* 806C2EBC  FC 00 00 32 */	fmul f0, f0, f0
/* 806C2EC0  FC 01 00 32 */	fmul f0, f1, f0
/* 806C2EC4  FC 03 00 28 */	fsub f0, f3, f0
/* 806C2EC8  FC 02 00 32 */	fmul f0, f2, f0
/* 806C2ECC  FC 21 00 32 */	fmul f1, f1, f0
/* 806C2ED0  FC 20 08 18 */	frsp f1, f1
/* 806C2ED4  48 00 00 88 */	b lbl_806C2F5C
lbl_806C2ED8:
/* 806C2ED8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C2EDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C2EE0  40 80 00 10 */	bge lbl_806C2EF0
/* 806C2EE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C2EE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806C2EEC  48 00 00 70 */	b lbl_806C2F5C
lbl_806C2EF0:
/* 806C2EF0  D0 21 00 08 */	stfs f1, 8(r1)
/* 806C2EF4  80 81 00 08 */	lwz r4, 8(r1)
/* 806C2EF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C2EFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C2F00  7C 03 00 00 */	cmpw r3, r0
/* 806C2F04  41 82 00 14 */	beq lbl_806C2F18
/* 806C2F08  40 80 00 40 */	bge lbl_806C2F48
/* 806C2F0C  2C 03 00 00 */	cmpwi r3, 0
/* 806C2F10  41 82 00 20 */	beq lbl_806C2F30
/* 806C2F14  48 00 00 34 */	b lbl_806C2F48
lbl_806C2F18:
/* 806C2F18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C2F1C  41 82 00 0C */	beq lbl_806C2F28
/* 806C2F20  38 00 00 01 */	li r0, 1
/* 806C2F24  48 00 00 28 */	b lbl_806C2F4C
lbl_806C2F28:
/* 806C2F28  38 00 00 02 */	li r0, 2
/* 806C2F2C  48 00 00 20 */	b lbl_806C2F4C
lbl_806C2F30:
/* 806C2F30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C2F34  41 82 00 0C */	beq lbl_806C2F40
/* 806C2F38  38 00 00 05 */	li r0, 5
/* 806C2F3C  48 00 00 10 */	b lbl_806C2F4C
lbl_806C2F40:
/* 806C2F40  38 00 00 03 */	li r0, 3
/* 806C2F44  48 00 00 08 */	b lbl_806C2F4C
lbl_806C2F48:
/* 806C2F48  38 00 00 04 */	li r0, 4
lbl_806C2F4C:
/* 806C2F4C  2C 00 00 01 */	cmpwi r0, 1
/* 806C2F50  40 82 00 0C */	bne lbl_806C2F5C
/* 806C2F54  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C2F58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806C2F5C:
/* 806C2F5C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806C2F60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C2F64  40 80 00 10 */	bge lbl_806C2F74
/* 806C2F68  38 00 00 00 */	li r0, 0
/* 806C2F6C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C2F70  48 00 00 38 */	b lbl_806C2FA8
lbl_806C2F74:
/* 806C2F74  38 00 00 00 */	li r0, 0
/* 806C2F78  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 806C2F7C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 806C2F80  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806C2F84  4B BA 49 D0 */	b cM_rndF__Ff
/* 806C2F88  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806C2F8C  EC 00 08 2A */	fadds f0, f0, f1
/* 806C2F90  FC 00 00 1E */	fctiwz f0, f0
/* 806C2F94  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806C2F98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C2F9C  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806C2FA0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C2FA4  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
lbl_806C2FA8:
/* 806C2FA8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806C2FAC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 806C2FB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806C2FB4  7C 08 03 A6 */	mtlr r0
/* 806C2FB8  38 21 00 50 */	addi r1, r1, 0x50
/* 806C2FBC  4E 80 00 20 */	blr 
