lbl_80B80A94:
/* 80B80A94  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80B80A98  7C 08 02 A6 */	mflr r0
/* 80B80A9C  90 01 01 24 */	stw r0, 0x124(r1)
/* 80B80AA0  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80B80AA4  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 80B80AA8  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80B80AAC  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 80B80AB0  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80B80AB4  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 80B80AB8  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 80B80ABC  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 80B80AC0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80B80AC4  4B 7E 17 04 */	b _savegpr_24
/* 80B80AC8  7C 79 1B 78 */	mr r25, r3
/* 80B80ACC  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B80AD0  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l
/* 80B80AD4  38 7F 00 00 */	addi r3, r31, 0
/* 80B80AD8  AB A3 00 74 */	lha r29, 0x74(r3)
/* 80B80ADC  3B 80 00 08 */	li r28, 8
/* 80B80AE0  C3 DF 01 14 */	lfs f30, 0x114(r31)
/* 80B80AE4  C3 BF 00 F0 */	lfs f29, 0xf0(r31)
/* 80B80AE8  C3 99 15 28 */	lfs f28, 0x1528(r25)
/* 80B80AEC  C3 F9 07 9C */	lfs f31, 0x79c(r25)
/* 80B80AF0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B80AF4  D0 19 05 30 */	stfs f0, 0x530(r25)
/* 80B80AF8  88 19 15 3C */	lbz r0, 0x153c(r25)
/* 80B80AFC  28 00 00 00 */	cmplwi r0, 0
/* 80B80B00  41 82 05 C8 */	beq lbl_80B810C8
/* 80B80B04  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B80B08  80 63 00 04 */	lwz r3, 4(r3)
/* 80B80B0C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B80B10  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B80B14  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B80B18  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B80B1C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B80B20  4B 7C 59 90 */	b PSMTXCopy
/* 80B80B24  38 79 04 EC */	addi r3, r25, 0x4ec
/* 80B80B28  4B 48 C3 48 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B80B2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B80B30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B80B34  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B80B38  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80B80B3C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B80B40  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80B80B44  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B80B48  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80B80B4C  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80B80B50  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B80B54  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80B80B58  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B80B5C  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80B80B60  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B80B64  38 79 0C 18 */	addi r3, r25, 0xc18
/* 80B80B68  38 81 00 54 */	addi r4, r1, 0x54
/* 80B80B6C  38 A1 00 84 */	addi r5, r1, 0x84
/* 80B80B70  4B FF 79 9D */	bl getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B80B74  88 19 15 3E */	lbz r0, 0x153e(r25)
/* 80B80B78  28 00 00 00 */	cmplwi r0, 0
/* 80B80B7C  41 82 03 A8 */	beq lbl_80B80F24
/* 80B80B80  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B80B84  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B80B88  C0 1F 07 74 */	lfs f0, 0x774(r31)
/* 80B80B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B80B90  40 81 00 38 */	ble lbl_80B80BC8
/* 80B80B94  C0 1F 07 78 */	lfs f0, 0x778(r31)
/* 80B80B98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B80B9C  40 80 00 2C */	bge lbl_80B80BC8
/* 80B80BA0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B80BA4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B80BA8  38 61 00 24 */	addi r3, r1, 0x24
/* 80B80BAC  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 80B80BB0  C0 5F 07 80 */	lfs f2, 0x780(r31)
/* 80B80BB4  FC 60 08 90 */	fmr f3, f1
/* 80B80BB8  4B 6E EE 84 */	b cLib_addCalc2__FPffff
/* 80B80BBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B80BC0  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B80BC4  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B80BC8:
/* 80B80BC8  7F 23 CB 78 */	mr r3, r25
/* 80B80BCC  7F A4 EB 78 */	mr r4, r29
/* 80B80BD0  38 A0 00 08 */	li r5, 8
/* 80B80BD4  38 D9 04 DE */	addi r6, r25, 0x4de
/* 80B80BD8  38 F9 04 E0 */	addi r7, r25, 0x4e0
/* 80B80BDC  48 00 13 DD */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B80BE0  C0 39 15 48 */	lfs f1, 0x1548(r25)
/* 80B80BE4  C0 1F 07 84 */	lfs f0, 0x784(r31)
/* 80B80BE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B80BEC  D0 19 15 48 */	stfs f0, 0x1548(r25)
/* 80B80BF0  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80B80BF4  38 99 15 44 */	addi r4, r25, 0x1544
/* 80B80BF8  7C 65 1B 78 */	mr r5, r3
/* 80B80BFC  4B 7C 64 94 */	b PSVECAdd
/* 80B80C00  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B80C04  2C 00 28 00 */	cmpwi r0, 0x2800
/* 80B80C08  40 80 01 20 */	bge lbl_80B80D28
/* 80B80C0C  C0 39 15 4C */	lfs f1, 0x154c(r25)
/* 80B80C10  C0 19 15 44 */	lfs f0, 0x1544(r25)
/* 80B80C14  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B80C18  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B80C1C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B80C20  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80B80C24  38 61 00 3C */	addi r3, r1, 0x3c
/* 80B80C28  4B 7C 65 10 */	b PSVECSquareMag
/* 80B80C2C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B80C30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B80C34  40 81 00 58 */	ble lbl_80B80C8C
/* 80B80C38  FC 00 08 34 */	frsqrte f0, f1
/* 80B80C3C  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B80C40  FC 44 00 32 */	fmul f2, f4, f0
/* 80B80C44  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B80C48  FC 00 00 32 */	fmul f0, f0, f0
/* 80B80C4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B80C50  FC 03 00 28 */	fsub f0, f3, f0
/* 80B80C54  FC 02 00 32 */	fmul f0, f2, f0
/* 80B80C58  FC 44 00 32 */	fmul f2, f4, f0
/* 80B80C5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B80C60  FC 01 00 32 */	fmul f0, f1, f0
/* 80B80C64  FC 03 00 28 */	fsub f0, f3, f0
/* 80B80C68  FC 02 00 32 */	fmul f0, f2, f0
/* 80B80C6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B80C70  FC 00 00 32 */	fmul f0, f0, f0
/* 80B80C74  FC 01 00 32 */	fmul f0, f1, f0
/* 80B80C78  FC 03 00 28 */	fsub f0, f3, f0
/* 80B80C7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B80C80  FC 41 00 32 */	fmul f2, f1, f0
/* 80B80C84  FC 40 10 18 */	frsp f2, f2
/* 80B80C88  48 00 00 90 */	b lbl_80B80D18
lbl_80B80C8C:
/* 80B80C8C  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B80C90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B80C94  40 80 00 10 */	bge lbl_80B80CA4
/* 80B80C98  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B80C9C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B80CA0  48 00 00 78 */	b lbl_80B80D18
lbl_80B80CA4:
/* 80B80CA4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B80CA8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B80CAC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B80CB0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B80CB4  7C 03 00 00 */	cmpw r3, r0
/* 80B80CB8  41 82 00 14 */	beq lbl_80B80CCC
/* 80B80CBC  40 80 00 40 */	bge lbl_80B80CFC
/* 80B80CC0  2C 03 00 00 */	cmpwi r3, 0
/* 80B80CC4  41 82 00 20 */	beq lbl_80B80CE4
/* 80B80CC8  48 00 00 34 */	b lbl_80B80CFC
lbl_80B80CCC:
/* 80B80CCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B80CD0  41 82 00 0C */	beq lbl_80B80CDC
/* 80B80CD4  38 00 00 01 */	li r0, 1
/* 80B80CD8  48 00 00 28 */	b lbl_80B80D00
lbl_80B80CDC:
/* 80B80CDC  38 00 00 02 */	li r0, 2
/* 80B80CE0  48 00 00 20 */	b lbl_80B80D00
lbl_80B80CE4:
/* 80B80CE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B80CE8  41 82 00 0C */	beq lbl_80B80CF4
/* 80B80CEC  38 00 00 05 */	li r0, 5
/* 80B80CF0  48 00 00 10 */	b lbl_80B80D00
lbl_80B80CF4:
/* 80B80CF4  38 00 00 03 */	li r0, 3
/* 80B80CF8  48 00 00 08 */	b lbl_80B80D00
lbl_80B80CFC:
/* 80B80CFC  38 00 00 04 */	li r0, 4
lbl_80B80D00:
/* 80B80D00  2C 00 00 01 */	cmpwi r0, 1
/* 80B80D04  40 82 00 10 */	bne lbl_80B80D14
/* 80B80D08  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B80D0C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B80D10  48 00 00 08 */	b lbl_80B80D18
lbl_80B80D14:
/* 80B80D14  FC 40 08 90 */	fmr f2, f1
lbl_80B80D18:
/* 80B80D18  C0 39 15 48 */	lfs f1, 0x1548(r25)
/* 80B80D1C  4B 6E 69 58 */	b cM_atan2s__Fff
/* 80B80D20  7C 03 00 D0 */	neg r0, r3
/* 80B80D24  B0 19 04 DC */	sth r0, 0x4dc(r25)
lbl_80B80D28:
/* 80B80D28  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B80D2C  B0 19 08 F0 */	sth r0, 0x8f0(r25)
/* 80B80D30  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B80D34  B0 19 08 F2 */	sth r0, 0x8f2(r25)
/* 80B80D38  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B80D3C  B0 19 08 F4 */	sth r0, 0x8f4(r25)
/* 80B80D40  A8 19 08 F0 */	lha r0, 0x8f0(r25)
/* 80B80D44  B0 19 04 E4 */	sth r0, 0x4e4(r25)
/* 80B80D48  A8 19 08 F2 */	lha r0, 0x8f2(r25)
/* 80B80D4C  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80B80D50  A8 19 08 F4 */	lha r0, 0x8f4(r25)
/* 80B80D54  B0 19 04 E8 */	sth r0, 0x4e8(r25)
/* 80B80D58  88 19 15 77 */	lbz r0, 0x1577(r25)
/* 80B80D5C  28 00 00 00 */	cmplwi r0, 0
/* 80B80D60  41 82 00 78 */	beq lbl_80B80DD8
/* 80B80D64  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80B80D68  C0 19 15 48 */	lfs f0, 0x1548(r25)
/* 80B80D6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B80D70  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80B80D74  4C 40 13 82 */	cror 2, 0, 2
/* 80B80D78  40 82 00 60 */	bne lbl_80B80DD8
/* 80B80D7C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B80D80  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B80D84  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80B80D88  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B80D8C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B80D90  D3 E1 00 7C */	stfs f31, 0x7c(r1)
/* 80B80D94  38 61 00 78 */	addi r3, r1, 0x78
/* 80B80D98  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80B80D9C  38 80 00 00 */	li r4, 0
/* 80B80DA0  4B 49 EA DC */	b fopKyM_createWpillar__FPC4cXyzfi
/* 80B80DA4  38 00 00 00 */	li r0, 0
/* 80B80DA8  98 19 15 77 */	stb r0, 0x1577(r25)
/* 80B80DAC  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600C4@ha */
/* 80B80DB0  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000600C4@l */
/* 80B80DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B80DB8  38 79 0B 48 */	addi r3, r25, 0xb48
/* 80B80DBC  38 81 00 14 */	addi r4, r1, 0x14
/* 80B80DC0  38 A0 00 00 */	li r5, 0
/* 80B80DC4  38 C0 FF FF */	li r6, -1
/* 80B80DC8  81 99 0B 48 */	lwz r12, 0xb48(r25)
/* 80B80DCC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B80DD0  7D 89 03 A6 */	mtctr r12
/* 80B80DD4  4E 80 04 21 */	bctrl 
lbl_80B80DD8:
/* 80B80DD8  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 80B80DDC  38 7F 00 00 */	addi r3, r31, 0
/* 80B80DE0  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B80DE4  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80B80DE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B80DEC  4C 40 13 82 */	cror 2, 0, 2
/* 80B80DF0  40 82 01 2C */	bne lbl_80B80F1C
/* 80B80DF4  38 00 00 00 */	li r0, 0
/* 80B80DF8  98 19 15 3E */	stb r0, 0x153e(r25)
/* 80B80DFC  98 19 15 3C */	stb r0, 0x153c(r25)
/* 80B80E00  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B80E04  D0 19 15 28 */	stfs f0, 0x1528(r25)
/* 80B80E08  C0 39 15 4C */	lfs f1, 0x154c(r25)
/* 80B80E0C  C0 19 15 44 */	lfs f0, 0x1544(r25)
/* 80B80E10  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B80E14  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B80E18  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B80E1C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B80E20  38 61 00 30 */	addi r3, r1, 0x30
/* 80B80E24  4B 7C 63 14 */	b PSVECSquareMag
/* 80B80E28  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B80E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B80E30  40 81 00 58 */	ble lbl_80B80E88
/* 80B80E34  FC 00 08 34 */	frsqrte f0, f1
/* 80B80E38  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B80E3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B80E40  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B80E44  FC 00 00 32 */	fmul f0, f0, f0
/* 80B80E48  FC 01 00 32 */	fmul f0, f1, f0
/* 80B80E4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B80E50  FC 02 00 32 */	fmul f0, f2, f0
/* 80B80E54  FC 44 00 32 */	fmul f2, f4, f0
/* 80B80E58  FC 00 00 32 */	fmul f0, f0, f0
/* 80B80E5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B80E60  FC 03 00 28 */	fsub f0, f3, f0
/* 80B80E64  FC 02 00 32 */	fmul f0, f2, f0
/* 80B80E68  FC 44 00 32 */	fmul f2, f4, f0
/* 80B80E6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B80E70  FC 01 00 32 */	fmul f0, f1, f0
/* 80B80E74  FC 03 00 28 */	fsub f0, f3, f0
/* 80B80E78  FC 02 00 32 */	fmul f0, f2, f0
/* 80B80E7C  FC 21 00 32 */	fmul f1, f1, f0
/* 80B80E80  FC 20 08 18 */	frsp f1, f1
/* 80B80E84  48 00 00 88 */	b lbl_80B80F0C
lbl_80B80E88:
/* 80B80E88  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B80E8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B80E90  40 80 00 10 */	bge lbl_80B80EA0
/* 80B80E94  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B80E98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B80E9C  48 00 00 70 */	b lbl_80B80F0C
lbl_80B80EA0:
/* 80B80EA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B80EA4  80 81 00 08 */	lwz r4, 8(r1)
/* 80B80EA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B80EAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B80EB0  7C 03 00 00 */	cmpw r3, r0
/* 80B80EB4  41 82 00 14 */	beq lbl_80B80EC8
/* 80B80EB8  40 80 00 40 */	bge lbl_80B80EF8
/* 80B80EBC  2C 03 00 00 */	cmpwi r3, 0
/* 80B80EC0  41 82 00 20 */	beq lbl_80B80EE0
/* 80B80EC4  48 00 00 34 */	b lbl_80B80EF8
lbl_80B80EC8:
/* 80B80EC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B80ECC  41 82 00 0C */	beq lbl_80B80ED8
/* 80B80ED0  38 00 00 01 */	li r0, 1
/* 80B80ED4  48 00 00 28 */	b lbl_80B80EFC
lbl_80B80ED8:
/* 80B80ED8  38 00 00 02 */	li r0, 2
/* 80B80EDC  48 00 00 20 */	b lbl_80B80EFC
lbl_80B80EE0:
/* 80B80EE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B80EE4  41 82 00 0C */	beq lbl_80B80EF0
/* 80B80EE8  38 00 00 05 */	li r0, 5
/* 80B80EEC  48 00 00 10 */	b lbl_80B80EFC
lbl_80B80EF0:
/* 80B80EF0  38 00 00 03 */	li r0, 3
/* 80B80EF4  48 00 00 08 */	b lbl_80B80EFC
lbl_80B80EF8:
/* 80B80EF8  38 00 00 04 */	li r0, 4
lbl_80B80EFC:
/* 80B80EFC  2C 00 00 01 */	cmpwi r0, 1
/* 80B80F00  40 82 00 0C */	bne lbl_80B80F0C
/* 80B80F04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B80F08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B80F0C:
/* 80B80F0C  D0 39 15 24 */	stfs f1, 0x1524(r25)
/* 80B80F10  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B80F14  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B80F18  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B80F1C:
/* 80B80F1C  38 60 00 01 */	li r3, 1
/* 80B80F20  48 00 08 30 */	b lbl_80B81750
lbl_80B80F24:
/* 80B80F24  38 00 D0 00 */	li r0, -12288
/* 80B80F28  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80B80F2C  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B80F30  3B 61 00 2A */	addi r27, r1, 0x2a
/* 80B80F34  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 80B80F38  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B80F3C  3B 41 00 2C */	addi r26, r1, 0x2c
/* 80B80F40  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80B80F44  38 00 00 5A */	li r0, 0x5a
/* 80B80F48  90 19 15 1C */	stw r0, 0x151c(r25)
/* 80B80F4C  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80B80F50  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B80F54  41 80 03 44 */	blt lbl_80B81298
/* 80B80F58  88 19 15 77 */	lbz r0, 0x1577(r25)
/* 80B80F5C  28 00 00 00 */	cmplwi r0, 0
/* 80B80F60  40 82 00 64 */	bne lbl_80B80FC4
/* 80B80F64  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80B80F68  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80B80F6C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80B80F70  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80B80F74  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B80F78  D3 E1 00 70 */	stfs f31, 0x70(r1)
/* 80B80F7C  38 61 00 6C */	addi r3, r1, 0x6c
/* 80B80F80  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80B80F84  38 80 00 00 */	li r4, 0
/* 80B80F88  4B 49 E8 F4 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 80B80F8C  38 00 00 01 */	li r0, 1
/* 80B80F90  98 19 15 77 */	stb r0, 0x1577(r25)
/* 80B80F94  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D5@ha */
/* 80B80F98  38 03 00 D5 */	addi r0, r3, 0x00D5 /* 0x000600D5@l */
/* 80B80F9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B80FA0  38 79 0B 48 */	addi r3, r25, 0xb48
/* 80B80FA4  38 81 00 10 */	addi r4, r1, 0x10
/* 80B80FA8  38 A0 00 00 */	li r5, 0
/* 80B80FAC  38 C0 FF FF */	li r6, -1
/* 80B80FB0  81 99 0B 48 */	lwz r12, 0xb48(r25)
/* 80B80FB4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B80FB8  7D 89 03 A6 */	mtctr r12
/* 80B80FBC  4E 80 04 21 */	bctrl 
/* 80B80FC0  48 00 02 D8 */	b lbl_80B81298
lbl_80B80FC4:
/* 80B80FC4  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B80FC8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B80FCC  C0 1F 07 74 */	lfs f0, 0x774(r31)
/* 80B80FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B80FD4  40 81 00 38 */	ble lbl_80B8100C
/* 80B80FD8  C0 1F 07 8C */	lfs f0, 0x78c(r31)
/* 80B80FDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B80FE0  40 80 00 2C */	bge lbl_80B8100C
/* 80B80FE4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B80FE8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B80FEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80B80FF0  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 80B80FF4  C0 5F 07 80 */	lfs f2, 0x780(r31)
/* 80B80FF8  C0 7F 07 4C */	lfs f3, 0x74c(r31)
/* 80B80FFC  4B 6E EA 40 */	b cLib_addCalc2__FPffff
/* 80B81000  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B81004  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B81008  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B8100C:
/* 80B8100C  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80B81010  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80B81014  40 81 02 84 */	ble lbl_80B81298
/* 80B81018  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B8101C  2C 00 E0 00 */	cmpwi r0, -8192
/* 80B81020  40 80 02 78 */	bge lbl_80B81298
/* 80B81024  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B81028  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80B8102C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81030  40 81 02 68 */	ble lbl_80B81298
/* 80B81034  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B81038  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B8103C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B81040  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80B81044  7F 23 CB 78 */	mr r3, r25
/* 80B81048  38 81 00 9C */	addi r4, r1, 0x9c
/* 80B8104C  48 00 15 39 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B81050  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80B81054  D0 19 15 44 */	stfs f0, 0x1544(r25)
/* 80B81058  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80B8105C  D0 19 15 48 */	stfs f0, 0x1548(r25)
/* 80B81060  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80B81064  D0 19 15 4C */	stfs f0, 0x154c(r25)
/* 80B81068  38 00 00 01 */	li r0, 1
/* 80B8106C  98 19 15 3E */	stb r0, 0x153e(r25)
/* 80B81070  7F 23 CB 78 */	mr r3, r25
/* 80B81074  7F A4 EB 78 */	mr r4, r29
/* 80B81078  38 A0 00 08 */	li r5, 8
/* 80B8107C  7F 66 DB 78 */	mr r6, r27
/* 80B81080  7F 47 D3 78 */	mr r7, r26
/* 80B81084  48 00 0F 35 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B81088  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 80B8108C  B0 19 04 E0 */	sth r0, 0x4e0(r25)
/* 80B81090  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B81094  B0 19 08 F0 */	sth r0, 0x8f0(r25)
/* 80B81098  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B8109C  B0 19 08 F2 */	sth r0, 0x8f2(r25)
/* 80B810A0  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B810A4  B0 19 08 F4 */	sth r0, 0x8f4(r25)
/* 80B810A8  A8 19 08 F0 */	lha r0, 0x8f0(r25)
/* 80B810AC  B0 19 04 E4 */	sth r0, 0x4e4(r25)
/* 80B810B0  A8 19 08 F2 */	lha r0, 0x8f2(r25)
/* 80B810B4  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80B810B8  A8 19 08 F4 */	lha r0, 0x8f4(r25)
/* 80B810BC  B0 19 04 E8 */	sth r0, 0x4e8(r25)
/* 80B810C0  38 60 00 01 */	li r3, 1
/* 80B810C4  48 00 06 8C */	b lbl_80B81750
lbl_80B810C8:
/* 80B810C8  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80B810CC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B810D0  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 80B810D4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B810D8  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80B810DC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B810E0  38 79 0C 18 */	addi r3, r25, 0xc18
/* 80B810E4  38 81 00 48 */	addi r4, r1, 0x48
/* 80B810E8  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80B810EC  4B FF 74 21 */	bl getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B810F0  7C 7A 1B 78 */	mr r26, r3
/* 80B810F4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80B810F8  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80B810FC  4B 6E FB 78 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B81100  B0 61 00 28 */	sth r3, 0x28(r1)
/* 80B81104  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 80B81108  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80B8110C  4B 6E FA F8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B81110  B0 61 00 2A */	sth r3, 0x2a(r1)
/* 80B81114  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B81118  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80B8111C  7F 23 CB 78 */	mr r3, r25
/* 80B81120  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80B81124  38 A1 00 28 */	addi r5, r1, 0x28
/* 80B81128  48 00 0C 41 */	bl evasionCalc__11daNpc_zrA_cFR4cXyzR5csXyz
/* 80B8112C  2C 1A 00 00 */	cmpwi r26, 0
/* 80B81130  41 82 01 50 */	beq lbl_80B81280
/* 80B81134  38 79 0C 18 */	addi r3, r25, 0xc18
/* 80B81138  38 81 00 60 */	addi r4, r1, 0x60
/* 80B8113C  4B 5C FC 08 */	b getNextPos__13daNpcF_Path_cFR4cXyz
/* 80B81140  38 61 00 60 */	addi r3, r1, 0x60
/* 80B81144  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80B81148  4B 6E FB 2C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8114C  7C 7B 1B 78 */	mr r27, r3
/* 80B81150  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80B81154  38 81 00 60 */	addi r4, r1, 0x60
/* 80B81158  4B 6E FA AC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8115C  7C 7A 1B 78 */	mr r26, r3
/* 80B81160  A0 19 0C 18 */	lhz r0, 0xc18(r25)
/* 80B81164  80 79 0C 1C */	lwz r3, 0xc1c(r25)
/* 80B81168  80 63 00 08 */	lwz r3, 8(r3)
/* 80B8116C  54 00 20 36 */	slwi r0, r0, 4
/* 80B81170  7C 63 02 14 */	add r3, r3, r0
/* 80B81174  8B C3 00 03 */	lbz r30, 3(r3)
/* 80B81178  28 1E 00 00 */	cmplwi r30, 0
/* 80B8117C  40 82 00 14 */	bne lbl_80B81190
/* 80B81180  4B 6E 66 EC */	b cM_rnd__Fv
/* 80B81184  C0 1F 07 4C */	lfs f0, 0x74c(r31)
/* 80B81188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8118C  41 80 00 10 */	blt lbl_80B8119C
lbl_80B81190:
/* 80B81190  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80B81194  28 00 00 01 */	cmplwi r0, 1
/* 80B81198  40 82 00 30 */	bne lbl_80B811C8
lbl_80B8119C:
/* 80B8119C  80 19 15 1C */	lwz r0, 0x151c(r25)
/* 80B811A0  2C 00 00 00 */	cmpwi r0, 0
/* 80B811A4  41 82 00 24 */	beq lbl_80B811C8
/* 80B811A8  C0 1F 07 64 */	lfs f0, 0x764(r31)
/* 80B811AC  D0 19 15 28 */	stfs f0, 0x1528(r25)
/* 80B811B0  C3 99 15 28 */	lfs f28, 0x1528(r25)
/* 80B811B4  38 00 00 5A */	li r0, 0x5a
/* 80B811B8  90 19 15 1C */	stw r0, 0x151c(r25)
/* 80B811BC  38 00 00 01 */	li r0, 1
/* 80B811C0  98 19 15 3D */	stb r0, 0x153d(r25)
/* 80B811C4  48 00 00 BC */	b lbl_80B81280
lbl_80B811C8:
/* 80B811C8  88 19 15 3D */	lbz r0, 0x153d(r25)
/* 80B811CC  28 00 00 00 */	cmplwi r0, 0
/* 80B811D0  41 82 00 2C */	beq lbl_80B811FC
/* 80B811D4  38 60 00 00 */	li r3, 0
/* 80B811D8  98 79 15 3D */	stb r3, 0x153d(r25)
/* 80B811DC  38 00 00 01 */	li r0, 1
/* 80B811E0  98 19 15 3C */	stb r0, 0x153c(r25)
/* 80B811E4  38 00 D0 00 */	li r0, -12288
/* 80B811E8  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80B811EC  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B811F0  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 80B811F4  98 79 15 93 */	stb r3, 0x1593(r25)
/* 80B811F8  48 00 00 88 */	b lbl_80B81280
lbl_80B811FC:
/* 80B811FC  7F 63 07 34 */	extsh r3, r27
/* 80B81200  A8 01 00 28 */	lha r0, 0x28(r1)
/* 80B81204  7C 63 00 50 */	subf r3, r3, r0
/* 80B81208  4B 7E 3E C8 */	b abs
/* 80B8120C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80B81210  41 81 00 1C */	bgt lbl_80B8122C
/* 80B81214  7F 43 07 34 */	extsh r3, r26
/* 80B81218  A8 01 00 28 */	lha r0, 0x28(r1)
/* 80B8121C  7C 63 00 50 */	subf r3, r3, r0
/* 80B81220  4B 7E 3E B0 */	b abs
/* 80B81224  2C 03 40 00 */	cmpwi r3, 0x4000
/* 80B81228  40 81 00 48 */	ble lbl_80B81270
lbl_80B8122C:
/* 80B8122C  4B 6E 66 40 */	b cM_rnd__Fv
/* 80B81230  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B81234  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81238  40 80 00 38 */	bge lbl_80B81270
/* 80B8123C  80 19 15 1C */	lwz r0, 0x151c(r25)
/* 80B81240  2C 00 00 00 */	cmpwi r0, 0
/* 80B81244  41 82 00 2C */	beq lbl_80B81270
/* 80B81248  38 00 00 00 */	li r0, 0
/* 80B8124C  98 19 15 3C */	stb r0, 0x153c(r25)
/* 80B81250  38 00 00 3C */	li r0, 0x3c
/* 80B81254  90 19 15 40 */	stw r0, 0x1540(r25)
/* 80B81258  C0 1F 07 90 */	lfs f0, 0x790(r31)
/* 80B8125C  D0 19 15 28 */	stfs f0, 0x1528(r25)
/* 80B81260  C3 99 15 28 */	lfs f28, 0x1528(r25)
/* 80B81264  38 00 00 5A */	li r0, 0x5a
/* 80B81268  90 19 15 1C */	stw r0, 0x151c(r25)
/* 80B8126C  48 00 00 14 */	b lbl_80B81280
lbl_80B81270:
/* 80B81270  38 00 00 00 */	li r0, 0
/* 80B81274  98 19 15 3C */	stb r0, 0x153c(r25)
/* 80B81278  38 79 15 92 */	addi r3, r25, 0x1592
/* 80B8127C  4B FF E4 4D */	bl func_80B7F6C8
lbl_80B81280:
/* 80B81280  7F 23 CB 78 */	mr r3, r25
/* 80B81284  48 00 0A 45 */	bl turnSwimCheck__11daNpc_zrA_cFv
/* 80B81288  2C 03 00 00 */	cmpwi r3, 0
/* 80B8128C  41 82 00 0C */	beq lbl_80B81298
/* 80B81290  38 60 00 01 */	li r3, 1
/* 80B81294  48 00 04 BC */	b lbl_80B81750
lbl_80B81298:
/* 80B81298  38 79 15 40 */	addi r3, r25, 0x1540
/* 80B8129C  4B FF E4 11 */	bl func_80B7F6AC
/* 80B812A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B812A4  41 82 00 10 */	beq lbl_80B812B4
/* 80B812A8  3B 80 00 04 */	li r28, 4
/* 80B812AC  57 A0 08 3C */	slwi r0, r29, 1
/* 80B812B0  7C 1D 07 34 */	extsh r29, r0
lbl_80B812B4:
/* 80B812B4  A8 79 04 DC */	lha r3, 0x4dc(r25)
/* 80B812B8  A8 01 00 28 */	lha r0, 0x28(r1)
/* 80B812BC  7C 03 00 50 */	subf r0, r3, r0
/* 80B812C0  7C 1B 07 34 */	extsh r27, r0
/* 80B812C4  A8 79 04 DE */	lha r3, 0x4de(r25)
/* 80B812C8  3B C1 00 2A */	addi r30, r1, 0x2a
/* 80B812CC  A8 01 00 2A */	lha r0, 0x2a(r1)
/* 80B812D0  7C 03 00 50 */	subf r0, r3, r0
/* 80B812D4  7C 18 07 34 */	extsh r24, r0
/* 80B812D8  3B 40 00 00 */	li r26, 0
/* 80B812DC  88 19 15 76 */	lbz r0, 0x1576(r25)
/* 80B812E0  28 00 00 00 */	cmplwi r0, 0
/* 80B812E4  41 82 01 30 */	beq lbl_80B81414
/* 80B812E8  80 19 15 14 */	lwz r0, 0x1514(r25)
/* 80B812EC  2C 00 00 00 */	cmpwi r0, 0
/* 80B812F0  40 82 01 24 */	bne lbl_80B81414
/* 80B812F4  88 19 15 3C */	lbz r0, 0x153c(r25)
/* 80B812F8  28 00 00 00 */	cmplwi r0, 0
/* 80B812FC  40 82 01 18 */	bne lbl_80B81414
/* 80B81300  88 19 15 3D */	lbz r0, 0x153d(r25)
/* 80B81304  28 00 00 00 */	cmplwi r0, 0
/* 80B81308  40 82 01 0C */	bne lbl_80B81414
/* 80B8130C  7F 63 DB 78 */	mr r3, r27
/* 80B81310  4B 7E 3D C0 */	b abs
/* 80B81314  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80B81318  41 81 00 14 */	bgt lbl_80B8132C
/* 80B8131C  7F 03 C3 78 */	mr r3, r24
/* 80B81320  4B 7E 3D B0 */	b abs
/* 80B81324  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80B81328  40 81 00 EC */	ble lbl_80B81414
lbl_80B8132C:
/* 80B8132C  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B81330  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 80B81334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81338  40 81 00 DC */	ble lbl_80B81414
/* 80B8133C  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B81340  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B81344  A8 61 00 2C */	lha r3, 0x2c(r1)
/* 80B81348  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80B8134C  40 81 00 0C */	ble lbl_80B81358
/* 80B81350  7F 00 07 35 */	extsh. r0, r24
/* 80B81354  41 80 00 68 */	blt lbl_80B813BC
lbl_80B81358:
/* 80B81358  2C 03 E0 00 */	cmpwi r3, -8192
/* 80B8135C  40 80 00 0C */	bge lbl_80B81368
/* 80B81360  7F 00 07 35 */	extsh. r0, r24
/* 80B81364  41 81 00 58 */	bgt lbl_80B813BC
lbl_80B81368:
/* 80B81368  2C 1B D0 00 */	cmpwi r27, -12288
/* 80B8136C  40 80 00 2C */	bge lbl_80B81398
/* 80B81370  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B81374  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81378  4C 41 13 82 */	cror 2, 1, 2
/* 80B8137C  40 82 00 40 */	bne lbl_80B813BC
/* 80B81380  C0 1F 07 98 */	lfs f0, 0x798(r31)
/* 80B81384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81388  4C 40 13 82 */	cror 2, 0, 2
/* 80B8138C  40 82 00 30 */	bne lbl_80B813BC
/* 80B81390  3B 40 00 01 */	li r26, 1
/* 80B81394  48 00 00 28 */	b lbl_80B813BC
lbl_80B81398:
/* 80B81398  C0 1F 07 9C */	lfs f0, 0x79c(r31)
/* 80B8139C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B813A0  4C 41 13 82 */	cror 2, 1, 2
/* 80B813A4  40 82 00 18 */	bne lbl_80B813BC
/* 80B813A8  C0 1F 07 A0 */	lfs f0, 0x7a0(r31)
/* 80B813AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B813B0  4C 40 13 82 */	cror 2, 0, 2
/* 80B813B4  40 82 00 08 */	bne lbl_80B813BC
/* 80B813B8  3B 40 00 01 */	li r26, 1
lbl_80B813BC:
/* 80B813BC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80B813C0  41 82 00 2C */	beq lbl_80B813EC
/* 80B813C4  7F 23 CB 78 */	mr r3, r25
/* 80B813C8  38 81 00 28 */	addi r4, r1, 0x28
/* 80B813CC  38 B9 15 36 */	addi r5, r25, 0x1536
/* 80B813D0  7F 80 07 34 */	extsh r0, r28
/* 80B813D4  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B813D8  7C 00 01 94 */	addze r0, r0
/* 80B813DC  7C 06 07 34 */	extsh r6, r0
/* 80B813E0  7F A7 EB 78 */	mr r7, r29
/* 80B813E4  48 00 11 11 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B813E8  48 00 00 44 */	b lbl_80B8142C
lbl_80B813EC:
/* 80B813EC  7F 23 CB 78 */	mr r3, r25
/* 80B813F0  38 81 00 28 */	addi r4, r1, 0x28
/* 80B813F4  38 B9 15 36 */	addi r5, r25, 0x1536
/* 80B813F8  7F 86 E3 78 */	mr r6, r28
/* 80B813FC  7F A0 07 34 */	extsh r0, r29
/* 80B81400  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B81404  7C 00 01 94 */	addze r0, r0
/* 80B81408  7C 07 07 34 */	extsh r7, r0
/* 80B8140C  48 00 10 E9 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B81410  48 00 00 1C */	b lbl_80B8142C
lbl_80B81414:
/* 80B81414  7F 23 CB 78 */	mr r3, r25
/* 80B81418  38 81 00 28 */	addi r4, r1, 0x28
/* 80B8141C  38 B9 15 36 */	addi r5, r25, 0x1536
/* 80B81420  7F 86 E3 78 */	mr r6, r28
/* 80B81424  7F A7 EB 78 */	mr r7, r29
/* 80B81428  48 00 10 CD */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
lbl_80B8142C:
/* 80B8142C  C0 59 15 24 */	lfs f2, 0x1524(r25)
/* 80B81430  38 7F 00 00 */	addi r3, r31, 0
/* 80B81434  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B81438  EC 3C 00 32 */	fmuls f1, f28, f0
/* 80B8143C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80B81440  40 81 00 14 */	ble lbl_80B81454
/* 80B81444  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80B81448  EF DE 00 32 */	fmuls f30, f30, f0
/* 80B8144C  C0 1F 07 4C */	lfs f0, 0x74c(r31)
/* 80B81450  EF BD 00 32 */	fmuls f29, f29, f0
lbl_80B81454:
/* 80B81454  38 79 15 24 */	addi r3, r25, 0x1524
/* 80B81458  FC 40 F0 90 */	fmr f2, f30
/* 80B8145C  FC 60 E8 90 */	fmr f3, f29
/* 80B81460  4B 6E E5 DC */	b cLib_addCalc2__FPffff
/* 80B81464  88 19 15 3C */	lbz r0, 0x153c(r25)
/* 80B81468  28 00 00 01 */	cmplwi r0, 1
/* 80B8146C  40 82 00 5C */	bne lbl_80B814C8
/* 80B81470  88 19 15 77 */	lbz r0, 0x1577(r25)
/* 80B81474  28 00 00 01 */	cmplwi r0, 1
/* 80B81478  40 82 00 50 */	bne lbl_80B814C8
/* 80B8147C  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B81480  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B81484  C0 1F 07 74 */	lfs f0, 0x774(r31)
/* 80B81488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8148C  40 81 00 7C */	ble lbl_80B81508
/* 80B81490  C0 1F 07 78 */	lfs f0, 0x778(r31)
/* 80B81494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81498  40 80 00 70 */	bge lbl_80B81508
/* 80B8149C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B814A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B814A4  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B814A8  C0 3F 07 7C */	lfs f1, 0x77c(r31)
/* 80B814AC  C0 5F 07 80 */	lfs f2, 0x780(r31)
/* 80B814B0  FC 60 08 90 */	fmr f3, f1
/* 80B814B4  4B 6E E5 88 */	b cLib_addCalc2__FPffff
/* 80B814B8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B814BC  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B814C0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B814C4  48 00 00 44 */	b lbl_80B81508
lbl_80B814C8:
/* 80B814C8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80B814CC  40 82 00 3C */	bne lbl_80B81508
/* 80B814D0  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B814D4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B814D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B814DC  38 61 00 18 */	addi r3, r1, 0x18
/* 80B814E0  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B814E4  38 9F 00 00 */	addi r4, r31, 0
/* 80B814E8  C0 04 00 78 */	lfs f0, 0x78(r4)
/* 80B814EC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80B814F0  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B814F4  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80B814F8  4B 6E E5 44 */	b cLib_addCalc2__FPffff
/* 80B814FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B81500  80 79 05 68 */	lwz r3, 0x568(r25)
/* 80B81504  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80B81508:
/* 80B81508  C0 39 15 24 */	lfs f1, 0x1524(r25)
/* 80B8150C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B81510  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80B81514  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80B81518  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80B8151C  7F 23 CB 78 */	mr r3, r25
/* 80B81520  38 81 00 9C */	addi r4, r1, 0x9c
/* 80B81524  48 00 10 61 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B81528  88 19 15 3C */	lbz r0, 0x153c(r25)
/* 80B8152C  28 00 00 00 */	cmplwi r0, 0
/* 80B81530  40 82 00 2C */	bne lbl_80B8155C
/* 80B81534  80 19 05 FC */	lwz r0, 0x5fc(r25)
/* 80B81538  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80B8153C  41 82 00 20 */	beq lbl_80B8155C
/* 80B81540  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 80B81544  38 7F 00 00 */	addi r3, r31, 0
/* 80B81548  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80B8154C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80B81550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81554  40 81 00 08 */	ble lbl_80B8155C
/* 80B81558  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
lbl_80B8155C:
/* 80B8155C  38 79 15 1C */	addi r3, r25, 0x151c
/* 80B81560  4B FF E1 4D */	bl func_80B7F6AC
/* 80B81564  2C 03 00 00 */	cmpwi r3, 0
/* 80B81568  40 82 01 88 */	bne lbl_80B816F0
/* 80B8156C  80 19 15 14 */	lwz r0, 0x1514(r25)
/* 80B81570  2C 00 00 00 */	cmpwi r0, 0
/* 80B81574  41 82 00 98 */	beq lbl_80B8160C
/* 80B81578  38 79 15 18 */	addi r3, r25, 0x1518
/* 80B8157C  7F A4 EB 78 */	mr r4, r29
/* 80B81580  38 A0 00 08 */	li r5, 8
/* 80B81584  38 C0 02 00 */	li r6, 0x200
/* 80B81588  4B 6E F0 80 */	b cLib_addCalcAngleS2__FPssss
/* 80B8158C  80 79 15 14 */	lwz r3, 0x1514(r25)
/* 80B81590  2C 03 00 00 */	cmpwi r3, 0
/* 80B81594  40 81 00 20 */	ble lbl_80B815B4
/* 80B81598  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 80B8159C  7C 00 EA 14 */	add r0, r0, r29
/* 80B815A0  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80B815A4  7F A0 07 34 */	extsh r0, r29
/* 80B815A8  7C 03 02 14 */	add r0, r3, r0
/* 80B815AC  90 19 15 14 */	stw r0, 0x1514(r25)
/* 80B815B0  48 00 00 1C */	b lbl_80B815CC
lbl_80B815B4:
/* 80B815B4  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 80B815B8  7C 1D 00 50 */	subf r0, r29, r0
/* 80B815BC  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80B815C0  7F A0 07 34 */	extsh r0, r29
/* 80B815C4  7C 00 18 50 */	subf r0, r0, r3
/* 80B815C8  90 19 15 14 */	stw r0, 0x1514(r25)
lbl_80B815CC:
/* 80B815CC  80 79 15 14 */	lwz r3, 0x1514(r25)
/* 80B815D0  4B 7E 3B 00 */	b abs
/* 80B815D4  3C 00 00 01 */	lis r0, 1
/* 80B815D8  7C 03 00 00 */	cmpw r3, r0
/* 80B815DC  40 81 01 14 */	ble lbl_80B816F0
/* 80B815E0  38 00 00 00 */	li r0, 0
/* 80B815E4  90 19 15 14 */	stw r0, 0x1514(r25)
/* 80B815E8  4B 6E 62 84 */	b cM_rnd__Fv
/* 80B815EC  C0 1F 07 70 */	lfs f0, 0x770(r31)
/* 80B815F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B815F4  FC 00 00 1E */	fctiwz f0, f0
/* 80B815F8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80B815FC  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80B81600  38 03 00 5A */	addi r0, r3, 0x5a
/* 80B81604  90 19 15 1C */	stw r0, 0x151c(r25)
/* 80B81608  48 00 00 E8 */	b lbl_80B816F0
lbl_80B8160C:
/* 80B8160C  4B 6E 62 60 */	b cM_rnd__Fv
/* 80B81610  C0 1F 07 A4 */	lfs f0, 0x7a4(r31)
/* 80B81614  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81618  40 81 00 90 */	ble lbl_80B816A8
/* 80B8161C  7F 23 CB 78 */	mr r3, r25
/* 80B81620  7F A4 EB 78 */	mr r4, r29
/* 80B81624  7F 85 E3 78 */	mr r5, r28
/* 80B81628  7F C6 F3 78 */	mr r6, r30
/* 80B8162C  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80B81630  48 00 09 89 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B81634  A8 79 04 E0 */	lha r3, 0x4e0(r25)
/* 80B81638  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 80B8163C  7C 63 00 50 */	subf r3, r3, r0
/* 80B81640  4B 7E 3A 90 */	b abs
/* 80B81644  B0 79 15 18 */	sth r3, 0x1518(r25)
/* 80B81648  38 79 15 18 */	addi r3, r25, 0x1518
/* 80B8164C  7F A4 EB 78 */	mr r4, r29
/* 80B81650  38 A0 00 08 */	li r5, 8
/* 80B81654  38 C0 02 00 */	li r6, 0x200
/* 80B81658  4B 6E EF B0 */	b cLib_addCalcAngleS2__FPssss
/* 80B8165C  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 80B81660  2C 00 00 00 */	cmpwi r0, 0
/* 80B81664  40 81 00 20 */	ble lbl_80B81684
/* 80B81668  7C 00 EA 14 */	add r0, r0, r29
/* 80B8166C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80B81670  80 79 15 14 */	lwz r3, 0x1514(r25)
/* 80B81674  7F A0 07 34 */	extsh r0, r29
/* 80B81678  7C 03 02 14 */	add r0, r3, r0
/* 80B8167C  90 19 15 14 */	stw r0, 0x1514(r25)
/* 80B81680  48 00 00 1C */	b lbl_80B8169C
lbl_80B81684:
/* 80B81684  7C 1D 00 50 */	subf r0, r29, r0
/* 80B81688  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80B8168C  7F A3 07 34 */	extsh r3, r29
/* 80B81690  80 19 15 14 */	lwz r0, 0x1514(r25)
/* 80B81694  7C 03 00 50 */	subf r0, r3, r0
/* 80B81698  90 19 15 14 */	stw r0, 0x1514(r25)
lbl_80B8169C:
/* 80B8169C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B816A0  D0 19 15 28 */	stfs f0, 0x1528(r25)
/* 80B816A4  48 00 00 4C */	b lbl_80B816F0
lbl_80B816A8:
/* 80B816A8  4B 6E 61 C4 */	b cM_rnd__Fv
/* 80B816AC  C0 1F 07 70 */	lfs f0, 0x770(r31)
/* 80B816B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B816B4  FC 00 00 1E */	fctiwz f0, f0
/* 80B816B8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80B816BC  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80B816C0  38 03 00 5A */	addi r0, r3, 0x5a
/* 80B816C4  90 19 15 1C */	stw r0, 0x151c(r25)
/* 80B816C8  38 00 00 00 */	li r0, 0
/* 80B816CC  90 19 15 14 */	stw r0, 0x1514(r25)
/* 80B816D0  38 7F 00 00 */	addi r3, r31, 0
/* 80B816D4  C3 83 00 70 */	lfs f28, 0x70(r3)
/* 80B816D8  4B 6E 61 94 */	b cM_rnd__Fv
/* 80B816DC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B816E0  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80B816E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B816E8  EC 1C 00 2A */	fadds f0, f28, f0
/* 80B816EC  D0 19 15 28 */	stfs f0, 0x1528(r25)
lbl_80B816F0:
/* 80B816F0  80 19 15 14 */	lwz r0, 0x1514(r25)
/* 80B816F4  2C 00 00 00 */	cmpwi r0, 0
/* 80B816F8  40 82 00 1C */	bne lbl_80B81714
/* 80B816FC  7F 23 CB 78 */	mr r3, r25
/* 80B81700  7F A4 EB 78 */	mr r4, r29
/* 80B81704  7F 85 E3 78 */	mr r5, r28
/* 80B81708  7F C6 F3 78 */	mr r6, r30
/* 80B8170C  38 E1 00 2C */	addi r7, r1, 0x2c
/* 80B81710  48 00 08 A9 */	bl calcBank__11daNpc_zrA_cFssRsRs
lbl_80B81714:
/* 80B81714  A8 01 00 2C */	lha r0, 0x2c(r1)
/* 80B81718  B0 19 04 E0 */	sth r0, 0x4e0(r25)
/* 80B8171C  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 80B81720  B0 19 08 F0 */	sth r0, 0x8f0(r25)
/* 80B81724  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80B81728  B0 19 08 F2 */	sth r0, 0x8f2(r25)
/* 80B8172C  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 80B81730  B0 19 08 F4 */	sth r0, 0x8f4(r25)
/* 80B81734  A8 19 08 F0 */	lha r0, 0x8f0(r25)
/* 80B81738  B0 19 04 E4 */	sth r0, 0x4e4(r25)
/* 80B8173C  A8 19 08 F2 */	lha r0, 0x8f2(r25)
/* 80B81740  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 80B81744  A8 19 08 F4 */	lha r0, 0x8f4(r25)
/* 80B81748  B0 19 04 E8 */	sth r0, 0x4e8(r25)
/* 80B8174C  38 60 00 01 */	li r3, 1
lbl_80B81750:
/* 80B81750  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 80B81754  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80B81758  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 80B8175C  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80B81760  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 80B81764  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80B81768  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 80B8176C  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 80B81770  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80B81774  4B 7E 0A A0 */	b _restgpr_24
/* 80B81778  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80B8177C  7C 08 03 A6 */	mtlr r0
/* 80B81780  38 21 01 20 */	addi r1, r1, 0x120
/* 80B81784  4E 80 00 20 */	blr 
