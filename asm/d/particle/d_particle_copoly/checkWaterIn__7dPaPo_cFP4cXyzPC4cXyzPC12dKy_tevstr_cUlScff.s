lbl_80050CC4:
/* 80050CC4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80050CC8  7C 08 02 A6 */	mflr r0
/* 80050CCC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80050CD0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80050CD4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80050CD8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80050CDC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80050CE0  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80050CE4  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80050CE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80050CEC  48 31 14 E1 */	bl _savegpr_25
/* 80050CF0  7C 7A 1B 78 */	mr r26, r3
/* 80050CF4  7C 9B 23 78 */	mr r27, r4
/* 80050CF8  7C BC 2B 78 */	mr r28, r5
/* 80050CFC  7C DD 33 78 */	mr r29, r6
/* 80050D00  7C FE 3B 78 */	mr r30, r7
/* 80050D04  7D 1F 43 78 */	mr r31, r8
/* 80050D08  FF A0 08 90 */	fmr f29, f1
/* 80050D0C  FF C0 10 90 */	fmr f30, f2
/* 80050D10  80 83 00 28 */	lwz r4, 0x28(r3)
/* 80050D14  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80050D18  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80050D1C  41 82 01 24 */	beq lbl_80050E40
/* 80050D20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80050D24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80050D28  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80050D2C  7F 23 CB 78 */	mr r3, r25
/* 80050D30  38 84 01 80 */	addi r4, r4, 0x180
/* 80050D34  48 02 39 2D */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80050D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80050D3C  41 82 01 04 */	beq lbl_80050E40
/* 80050D40  7F 23 CB 78 */	mr r3, r25
/* 80050D44  80 9A 00 28 */	lwz r4, 0x28(r26)
/* 80050D48  38 84 01 80 */	addi r4, r4, 0x180
/* 80050D4C  48 02 41 05 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80050D50  2C 03 00 06 */	cmpwi r3, 6
/* 80050D54  41 82 00 EC */	beq lbl_80050E40
/* 80050D58  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 80050D5C  C0 23 01 CC */	lfs f1, 0x1cc(r3)
/* 80050D60  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80050D64  EF E1 00 28 */	fsubs f31, f1, f0
/* 80050D68  C0 02 85 F8 */	lfs f0, lit_3672(r2)
/* 80050D6C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80050D70  4C 41 13 82 */	cror 2, 1, 2
/* 80050D74  40 82 00 C0 */	bne lbl_80050E34
/* 80050D78  D0 3B 00 04 */	stfs f1, 4(r27)
/* 80050D7C  88 1A 00 37 */	lbz r0, 0x37(r26)
/* 80050D80  28 00 00 00 */	cmplwi r0, 0
/* 80050D84  40 82 00 44 */	bne lbl_80050DC8
/* 80050D88  38 00 00 01 */	li r0, 1
/* 80050D8C  98 1A 00 37 */	stb r0, 0x37(r26)
/* 80050D90  57 C0 03 5B */	rlwinm. r0, r30, 0, 0xd, 0xd
/* 80050D94  40 82 00 34 */	bne lbl_80050DC8
/* 80050D98  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 80050D9C  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 80050DA0  C0 23 01 CC */	lfs f1, 0x1cc(r3)
/* 80050DA4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80050DA8  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 80050DAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80050DB0  4C 41 13 82 */	cror 2, 1, 2
/* 80050DB4  40 82 00 14 */	bne lbl_80050DC8
/* 80050DB8  7F 63 DB 78 */	mr r3, r27
/* 80050DBC  FC 20 E8 90 */	fmr f1, f29
/* 80050DC0  38 80 00 00 */	li r4, 0
/* 80050DC4  4B FC EA B9 */	bl fopKyM_createWpillar__FPC4cXyzfi
lbl_80050DC8:
/* 80050DC8  C0 1A 00 30 */	lfs f0, 0x30(r26)
/* 80050DCC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80050DD0  40 80 00 3C */	bge lbl_80050E0C
/* 80050DD4  57 C0 03 9D */	rlwinm. r0, r30, 0, 0xe, 0xe
/* 80050DD8  40 82 00 34 */	bne lbl_80050E0C
/* 80050DDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80050DE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80050DE4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80050DE8  7F 44 D3 78 */	mr r4, r26
/* 80050DEC  80 BA 00 28 */	lwz r5, 0x28(r26)
/* 80050DF0  38 A5 01 80 */	addi r5, r5, 0x180
/* 80050DF4  7F 66 DB 78 */	mr r6, r27
/* 80050DF8  FC 20 F0 90 */	fmr f1, f30
/* 80050DFC  7F A7 EB 78 */	mr r7, r29
/* 80050E00  7F 88 E3 78 */	mr r8, r28
/* 80050E04  7F E9 FB 78 */	mr r9, r31
/* 80050E08  4B FF BA 31 */	bl setWaterRipple__13dPa_control_cFPUlR13cBgS_PolyInfoPC4cXyzfPC12dKy_tevstr_cPC4cXyzSc
lbl_80050E0C:
/* 80050E0C  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 80050E10  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80050E14  40 80 00 0C */	bge lbl_80050E20
/* 80050E18  38 60 00 01 */	li r3, 1
/* 80050E1C  48 00 00 30 */	b lbl_80050E4C
lbl_80050E20:
/* 80050E20  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80050E24  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80050E28  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80050E2C  38 60 00 02 */	li r3, 2
/* 80050E30  48 00 00 1C */	b lbl_80050E4C
lbl_80050E34:
/* 80050E34  38 00 00 00 */	li r0, 0
/* 80050E38  98 1A 00 37 */	stb r0, 0x37(r26)
/* 80050E3C  48 00 00 0C */	b lbl_80050E48
lbl_80050E40:
/* 80050E40  38 00 00 00 */	li r0, 0
/* 80050E44  98 1A 00 37 */	stb r0, 0x37(r26)
lbl_80050E48:
/* 80050E48  38 60 00 00 */	li r3, 0
lbl_80050E4C:
/* 80050E4C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80050E50  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80050E54  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80050E58  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80050E5C  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80050E60  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80050E64  39 61 00 30 */	addi r11, r1, 0x30
/* 80050E68  48 31 13 B1 */	bl _restgpr_25
/* 80050E6C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80050E70  7C 08 03 A6 */	mtlr r0
/* 80050E74  38 21 00 60 */	addi r1, r1, 0x60
/* 80050E78  4E 80 00 20 */	blr 
