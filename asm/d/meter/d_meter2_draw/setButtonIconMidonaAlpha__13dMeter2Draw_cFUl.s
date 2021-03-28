lbl_80219A84:
/* 80219A84  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80219A88  7C 08 02 A6 */	mflr r0
/* 80219A8C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80219A90  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80219A94  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80219A98  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80219A9C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80219AA0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80219AA4  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80219AA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80219AAC  48 14 87 2D */	bl _savegpr_28
/* 80219AB0  7C 7D 1B 78 */	mr r29, r3
/* 80219AB4  7C 9E 23 78 */	mr r30, r4
/* 80219AB8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80219ABC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80219AC0  C0 03 01 24 */	lfs f0, 0x124(r3)
/* 80219AC4  80 7D 03 08 */	lwz r3, 0x308(r29)
/* 80219AC8  80 63 00 04 */	lwz r3, 4(r3)
/* 80219ACC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80219AD0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80219AD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80219AD8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80219ADC  7D 89 03 A6 */	mtctr r12
/* 80219AE0  4E 80 04 21 */	bctrl 
/* 80219AE4  80 7D 03 08 */	lwz r3, 0x308(r29)
/* 80219AE8  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80219AEC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80219AF0  C0 24 01 2C */	lfs f1, 0x12c(r4)
/* 80219AF4  C0 44 01 30 */	lfs f2, 0x130(r4)
/* 80219AF8  48 03 AA B9 */	bl paneTrans__8CPaneMgrFff
/* 80219AFC  80 7D 03 08 */	lwz r3, 0x308(r29)
/* 80219B00  48 03 BB 4D */	bl isVisible__13CPaneMgrAlphaFv
/* 80219B04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80219B08  41 82 02 44 */	beq lbl_80219D4C
/* 80219B0C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80219B10  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80219B14  C0 43 01 28 */	lfs f2, 0x128(r3)
/* 80219B18  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80219B1C  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80219B20  EC 01 00 32 */	fmuls f0, f1, f0
/* 80219B24  EF C2 00 32 */	fmuls f30, f2, f0
/* 80219B28  80 7D 03 08 */	lwz r3, 0x308(r29)
/* 80219B2C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80219B30  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 80219B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80219B38  3C 00 43 30 */	lis r0, 0x4330
/* 80219B3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80219B40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80219B44  EC 20 08 28 */	fsubs f1, f0, f1
/* 80219B48  C0 02 AE CC */	lfs f0, lit_8207(r2)
/* 80219B4C  EF A1 00 24 */	fdivs f29, f1, f0
/* 80219B50  80 7D 02 F8 */	lwz r3, 0x2f8(r29)
/* 80219B54  48 03 BC D5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80219B58  FF E0 08 90 */	fmr f31, f1
/* 80219B5C  3B E0 00 01 */	li r31, 1
/* 80219B60  7F A3 EB 78 */	mr r3, r29
/* 80219B64  48 00 20 51 */	bl getCanoeFishing__13dMeter2Draw_cFv
/* 80219B68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80219B6C  40 82 00 60 */	bne lbl_80219BCC
/* 80219B70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80219B74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80219B78  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 80219B7C  7F 83 E3 78 */	mr r3, r28
/* 80219B80  38 80 05 40 */	li r4, 0x540
/* 80219B84  4B E1 AE 39 */	bl isEventBit__11dSv_event_cCFUs
/* 80219B88  2C 03 00 00 */	cmpwi r3, 0
/* 80219B8C  40 82 00 18 */	bne lbl_80219BA4
/* 80219B90  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80219B94  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80219B98  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 80219B9C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80219BA0  41 82 00 2C */	beq lbl_80219BCC
lbl_80219BA4:
/* 80219BA4  7F 83 E3 78 */	mr r3, r28
/* 80219BA8  38 80 0C 10 */	li r4, 0xc10
/* 80219BAC  4B E1 AE 11 */	bl isEventBit__11dSv_event_cCFUs
/* 80219BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80219BB4  41 82 00 18 */	beq lbl_80219BCC
/* 80219BB8  7F 83 E3 78 */	mr r3, r28
/* 80219BBC  38 80 61 40 */	li r4, 0x6140
/* 80219BC0  4B E1 AD FD */	bl isEventBit__11dSv_event_cCFUs
/* 80219BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80219BC8  41 82 00 0C */	beq lbl_80219BD4
lbl_80219BCC:
/* 80219BCC  C3 A2 AE 80 */	lfs f29, lit_4182(r2)
/* 80219BD0  48 00 00 E8 */	b lbl_80219CB8
lbl_80219BD4:
/* 80219BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80219BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80219BDC  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 80219BE0  28 00 00 00 */	cmplwi r0, 0
/* 80219BE4  41 82 00 0C */	beq lbl_80219BF0
/* 80219BE8  C3 A2 AE 80 */	lfs f29, lit_4182(r2)
/* 80219BEC  48 00 00 CC */	b lbl_80219CB8
lbl_80219BF0:
/* 80219BF0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80219BF4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80219BF8  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 80219BFC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80219C00  40 82 00 34 */	bne lbl_80219C34
/* 80219C04  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80219C08  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80219C0C  88 03 04 2A */	lbz r0, 0x42a(r3)
/* 80219C10  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 80219C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80219C18  3C 00 43 30 */	lis r0, 0x4330
/* 80219C1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80219C20  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80219C24  EC 20 08 28 */	fsubs f1, f0, f1
/* 80219C28  C0 02 AE CC */	lfs f0, lit_8207(r2)
/* 80219C2C  EF A1 00 24 */	fdivs f29, f1, f0
/* 80219C30  48 00 00 88 */	b lbl_80219CB8
lbl_80219C34:
/* 80219C34  88 1D 07 64 */	lbz r0, 0x764(r29)
/* 80219C38  28 00 00 07 */	cmplwi r0, 7
/* 80219C3C  40 82 00 7C */	bne lbl_80219CB8
/* 80219C40  57 C0 00 43 */	rlwinm. r0, r30, 0, 1, 1
/* 80219C44  40 82 00 74 */	bne lbl_80219CB8
/* 80219C48  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80219C4C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80219C50  40 81 00 68 */	ble lbl_80219CB8
/* 80219C54  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 80219C58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80219C5C  40 82 00 0C */	bne lbl_80219C68
/* 80219C60  C0 02 AE 98 */	lfs f0, lit_4923(r2)
/* 80219C64  D0 1D 07 38 */	stfs f0, 0x738(r29)
lbl_80219C68:
/* 80219C68  C0 22 AE 98 */	lfs f1, lit_4923(r2)
/* 80219C6C  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 80219C70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80219C74  40 82 00 3C */	bne lbl_80219CB0
/* 80219C78  38 00 00 77 */	li r0, 0x77
/* 80219C7C  90 01 00 08 */	stw r0, 8(r1)
/* 80219C80  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80219C84  38 81 00 08 */	addi r4, r1, 8
/* 80219C88  38 A0 00 00 */	li r5, 0
/* 80219C8C  38 C0 00 00 */	li r6, 0
/* 80219C90  38 E0 00 00 */	li r7, 0
/* 80219C94  C0 22 AE 84 */	lfs f1, lit_4183(r2)
/* 80219C98  FC 40 08 90 */	fmr f2, f1
/* 80219C9C  C0 62 AE B0 */	lfs f3, lit_5786(r2)
/* 80219CA0  FC 80 18 90 */	fmr f4, f3
/* 80219CA4  39 00 00 00 */	li r8, 0
/* 80219CA8  48 09 1C DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80219CAC  48 00 4D 25 */	bl dMeter2Info_set2DVibration__Fv
lbl_80219CB0:
/* 80219CB0  D3 BD 07 20 */	stfs f29, 0x720(r29)
/* 80219CB4  3B E0 00 00 */	li r31, 0
lbl_80219CB8:
/* 80219CB8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80219CBC  41 82 00 58 */	beq lbl_80219D14
/* 80219CC0  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80219CC4  C0 1D 07 38 */	lfs f0, 0x738(r29)
/* 80219CC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80219CCC  41 82 00 08 */	beq lbl_80219CD4
/* 80219CD0  D0 3D 07 38 */	stfs f1, 0x738(r29)
lbl_80219CD4:
/* 80219CD4  C0 1D 07 20 */	lfs f0, 0x720(r29)
/* 80219CD8  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 80219CDC  41 82 00 38 */	beq lbl_80219D14
/* 80219CE0  38 7D 07 20 */	addi r3, r29, 0x720
/* 80219CE4  FC 20 E8 90 */	fmr f1, f29
/* 80219CE8  C0 42 AE D0 */	lfs f2, lit_8359(r2)
/* 80219CEC  C0 62 AE 94 */	lfs f3, lit_4922(r2)
/* 80219CF0  48 05 5D 4D */	bl cLib_addCalc2__FPffff
/* 80219CF4  C0 1D 07 20 */	lfs f0, 0x720(r29)
/* 80219CF8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80219CFC  FC 00 02 10 */	fabs f0, f0
/* 80219D00  FC 20 00 18 */	frsp f1, f0
/* 80219D04  C0 02 AE D4 */	lfs f0, lit_8360(r2)
/* 80219D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80219D0C  40 80 00 08 */	bge lbl_80219D14
/* 80219D10  D3 BD 07 20 */	stfs f29, 0x720(r29)
lbl_80219D14:
/* 80219D14  80 7D 03 08 */	lwz r3, 0x308(r29)
/* 80219D18  C0 22 AE CC */	lfs f1, lit_8207(r2)
/* 80219D1C  C0 1D 07 20 */	lfs f0, 0x720(r29)
/* 80219D20  EC 01 00 32 */	fmuls f0, f1, f0
/* 80219D24  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80219D28  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80219D2C  FC 00 00 1E */	fctiwz f0, f0
/* 80219D30  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80219D34  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80219D38  81 83 00 00 */	lwz r12, 0(r3)
/* 80219D3C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80219D40  7D 89 03 A6 */	mtctr r12
/* 80219D44  4E 80 04 21 */	bctrl 
/* 80219D48  48 00 00 0C */	b lbl_80219D54
lbl_80219D4C:
/* 80219D4C  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80219D50  D0 1D 07 20 */	stfs f0, 0x720(r29)
lbl_80219D54:
/* 80219D54  80 7D 03 14 */	lwz r3, 0x314(r29)
/* 80219D58  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80219D5C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80219D60  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80219D64  C0 43 01 78 */	lfs f2, 0x178(r3)
/* 80219D68  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80219D6C  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80219D70  EC 01 00 32 */	fmuls f0, f1, f0
/* 80219D74  EC 42 00 32 */	fmuls f2, f2, f0
/* 80219D78  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 80219D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80219D80  3C 00 43 30 */	lis r0, 0x4330
/* 80219D84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80219D88  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80219D8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80219D90  EC 22 00 32 */	fmuls f1, f2, f0
/* 80219D94  C0 02 AE CC */	lfs f0, lit_8207(r2)
/* 80219D98  EF A1 00 24 */	fdivs f29, f1, f0
/* 80219D9C  80 7D 02 F8 */	lwz r3, 0x2f8(r29)
/* 80219DA0  48 03 BA 89 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80219DA4  FF C0 08 90 */	fmr f30, f1
/* 80219DA8  57 C0 01 CF */	rlwinm. r0, r30, 0, 7, 7
/* 80219DAC  41 82 00 0C */	beq lbl_80219DB8
/* 80219DB0  C3 A2 AE 80 */	lfs f29, lit_4182(r2)
/* 80219DB4  48 00 00 44 */	b lbl_80219DF8
lbl_80219DB8:
/* 80219DB8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80219DBC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80219DC0  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 80219DC4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80219DC8  40 82 00 30 */	bne lbl_80219DF8
/* 80219DCC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80219DD0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80219DD4  88 03 04 2B */	lbz r0, 0x42b(r3)
/* 80219DD8  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 80219DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80219DE0  3C 00 43 30 */	lis r0, 0x4330
/* 80219DE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80219DE8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80219DEC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80219DF0  C0 02 AE CC */	lfs f0, lit_8207(r2)
/* 80219DF4  EF A1 00 24 */	fdivs f29, f1, f0
lbl_80219DF8:
/* 80219DF8  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80219DFC  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 80219E00  41 82 00 38 */	beq lbl_80219E38
/* 80219E04  38 7D 07 24 */	addi r3, r29, 0x724
/* 80219E08  FC 20 E8 90 */	fmr f1, f29
/* 80219E0C  C0 42 AE D0 */	lfs f2, lit_8359(r2)
/* 80219E10  C0 62 AE 94 */	lfs f3, lit_4922(r2)
/* 80219E14  48 05 5C 29 */	bl cLib_addCalc2__FPffff
/* 80219E18  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80219E1C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80219E20  FC 00 02 10 */	fabs f0, f0
/* 80219E24  FC 20 00 18 */	frsp f1, f0
/* 80219E28  C0 02 AE D4 */	lfs f0, lit_8360(r2)
/* 80219E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80219E30  40 80 00 08 */	bge lbl_80219E38
/* 80219E34  D3 BD 07 24 */	stfs f29, 0x724(r29)
lbl_80219E38:
/* 80219E38  80 7D 03 14 */	lwz r3, 0x314(r29)
/* 80219E3C  C0 22 AE CC */	lfs f1, lit_8207(r2)
/* 80219E40  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80219E44  EC 01 00 32 */	fmuls f0, f1, f0
/* 80219E48  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80219E4C  FC 00 00 1E */	fctiwz f0, f0
/* 80219E50  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80219E54  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80219E58  81 83 00 00 */	lwz r12, 0(r3)
/* 80219E5C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80219E60  7D 89 03 A6 */	mtctr r12
/* 80219E64  4E 80 04 21 */	bctrl 
/* 80219E68  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80219E6C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80219E70  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80219E74  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80219E78  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80219E7C  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80219E80  39 61 00 30 */	addi r11, r1, 0x30
/* 80219E84  48 14 83 A1 */	bl _restgpr_28
/* 80219E88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80219E8C  7C 08 03 A6 */	mtlr r0
/* 80219E90  38 21 00 60 */	addi r1, r1, 0x60
/* 80219E94  4E 80 00 20 */	blr 
