lbl_8005D18C:
/* 8005D18C  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8005D190  7C 08 02 A6 */	mflr r0
/* 8005D194  90 01 01 74 */	stw r0, 0x174(r1)
/* 8005D198  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 8005D19C  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 8005D1A0  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 8005D1A4  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 8005D1A8  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 8005D1AC  F3 A1 01 48 */	psq_st f29, 328(r1), 0, 0 /* qr0 */
/* 8005D1B0  39 61 01 40 */	addi r11, r1, 0x140
/* 8005D1B4  48 30 4F FD */	bl _savegpr_18
/* 8005D1B8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005D1BC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005D1C0  83 43 0E 84 */	lwz r26, 0xe84(r3)
/* 8005D1C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005D1C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005D1CC  83 23 5D 74 */	lwz r25, 0x5d74(r3)
/* 8005D1D0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8005D1D4  38 61 00 38 */	addi r3, r1, 0x38
/* 8005D1D8  4B FF D9 29 */	bl dKyw_get_wind_vecpow__Fv
/* 8005D1DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8005D1E0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8005D1E4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8005D1E8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8005D1EC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8005D1F0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8005D1F4  3A A0 00 00 */	li r21, 0
/* 8005D1F8  3A 80 00 00 */	li r20, 0
/* 8005D1FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005D200  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005D204  38 7E 4E 20 */	addi r3, r30, 0x4e20
/* 8005D208  81 9E 4E 20 */	lwz r12, 0x4e20(r30)
/* 8005D20C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8005D210  7D 89 03 A6 */	mtctr r12
/* 8005D214  4E 80 04 21 */	bctrl 
/* 8005D218  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005D21C  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8005D220  C0 02 88 84 */	lfs f0, lit_5096(r2)
/* 8005D224  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8005D228  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8005D22C  A8 1A 36 D0 */	lha r0, 0x36d0(r26)
/* 8005D230  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005D234  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005D238  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 8005D23C  7C 00 18 00 */	cmpw r0, r3
/* 8005D240  41 81 00 08 */	bgt lbl_8005D248
/* 8005D244  B0 7A 36 D0 */	sth r3, 0x36d0(r26)
lbl_8005D248:
/* 8005D248  A8 1A 36 D0 */	lha r0, 0x36d0(r26)
/* 8005D24C  2C 00 00 00 */	cmpwi r0, 0
/* 8005D250  41 82 16 30 */	beq lbl_8005E880
/* 8005D254  38 79 00 E4 */	addi r3, r25, 0xe4
/* 8005D258  38 9A 36 E4 */	addi r4, r26, 0x36e4
/* 8005D25C  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8005D260  4B FF E5 01 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005D264  38 7A 36 D8 */	addi r3, r26, 0x36d8
/* 8005D268  38 99 00 D8 */	addi r4, r25, 0xd8
/* 8005D26C  48 2E A1 31 */	bl PSVECSquareDistance
/* 8005D270  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005D274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D278  40 81 00 58 */	ble lbl_8005D2D0
/* 8005D27C  FC 00 08 34 */	frsqrte f0, f1
/* 8005D280  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005D284  FC 44 00 32 */	fmul f2, f4, f0
/* 8005D288  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005D28C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005D290  FC 01 00 32 */	fmul f0, f1, f0
/* 8005D294  FC 03 00 28 */	fsub f0, f3, f0
/* 8005D298  FC 02 00 32 */	fmul f0, f2, f0
/* 8005D29C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005D2A0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005D2A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005D2A8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005D2AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005D2B0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005D2B4  FC 00 00 32 */	fmul f0, f0, f0
/* 8005D2B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8005D2BC  FC 03 00 28 */	fsub f0, f3, f0
/* 8005D2C0  FC 02 00 32 */	fmul f0, f2, f0
/* 8005D2C4  FC 21 00 32 */	fmul f1, f1, f0
/* 8005D2C8  FC 20 08 18 */	frsp f1, f1
/* 8005D2CC  48 00 00 88 */	b lbl_8005D354
lbl_8005D2D0:
/* 8005D2D0  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005D2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D2D8  40 80 00 10 */	bge lbl_8005D2E8
/* 8005D2DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005D2E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005D2E4  48 00 00 70 */	b lbl_8005D354
lbl_8005D2E8:
/* 8005D2E8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8005D2EC  80 81 00 34 */	lwz r4, 0x34(r1)
/* 8005D2F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005D2F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005D2F8  7C 03 00 00 */	cmpw r3, r0
/* 8005D2FC  41 82 00 14 */	beq lbl_8005D310
/* 8005D300  40 80 00 40 */	bge lbl_8005D340
/* 8005D304  2C 03 00 00 */	cmpwi r3, 0
/* 8005D308  41 82 00 20 */	beq lbl_8005D328
/* 8005D30C  48 00 00 34 */	b lbl_8005D340
lbl_8005D310:
/* 8005D310  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005D314  41 82 00 0C */	beq lbl_8005D320
/* 8005D318  38 00 00 01 */	li r0, 1
/* 8005D31C  48 00 00 28 */	b lbl_8005D344
lbl_8005D320:
/* 8005D320  38 00 00 02 */	li r0, 2
/* 8005D324  48 00 00 20 */	b lbl_8005D344
lbl_8005D328:
/* 8005D328  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005D32C  41 82 00 0C */	beq lbl_8005D338
/* 8005D330  38 00 00 05 */	li r0, 5
/* 8005D334  48 00 00 10 */	b lbl_8005D344
lbl_8005D338:
/* 8005D338  38 00 00 03 */	li r0, 3
/* 8005D33C  48 00 00 08 */	b lbl_8005D344
lbl_8005D340:
/* 8005D340  38 00 00 04 */	li r0, 4
lbl_8005D344:
/* 8005D344  2C 00 00 01 */	cmpwi r0, 1
/* 8005D348  40 82 00 0C */	bne lbl_8005D354
/* 8005D34C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005D350  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005D354:
/* 8005D354  C0 02 88 88 */	lfs f0, lit_5097(r2)
/* 8005D358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D35C  40 81 00 24 */	ble lbl_8005D380
/* 8005D360  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005D364  C0 02 88 7C */	lfs f0, lit_4467(r2)
/* 8005D368  EF C1 00 24 */	fdivs f30, f1, f0
/* 8005D36C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005D370  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8005D374  40 81 00 10 */	ble lbl_8005D384
/* 8005D378  FF C0 00 90 */	fmr f30, f0
/* 8005D37C  48 00 00 08 */	b lbl_8005D384
lbl_8005D380:
/* 8005D380  C3 C2 87 B8 */	lfs f30, lit_3954(r2)
lbl_8005D384:
/* 8005D384  C0 19 00 D8 */	lfs f0, 0xd8(r25)
/* 8005D388  D0 1A 36 D8 */	stfs f0, 0x36d8(r26)
/* 8005D38C  C0 19 00 E0 */	lfs f0, 0xe0(r25)
/* 8005D390  D0 1A 36 E0 */	stfs f0, 0x36e0(r26)
/* 8005D394  38 7A 36 D8 */	addi r3, r26, 0x36d8
/* 8005D398  38 99 00 D8 */	addi r4, r25, 0xd8
/* 8005D39C  48 2E A0 01 */	bl PSVECSquareDistance
/* 8005D3A0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005D3A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D3A8  40 81 00 58 */	ble lbl_8005D400
/* 8005D3AC  FC 00 08 34 */	frsqrte f0, f1
/* 8005D3B0  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005D3B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8005D3B8  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005D3BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8005D3C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8005D3C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8005D3C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8005D3CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8005D3D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005D3D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005D3D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005D3DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005D3E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005D3E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8005D3E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8005D3EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8005D3F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8005D3F4  FC 21 00 32 */	fmul f1, f1, f0
/* 8005D3F8  FC 20 08 18 */	frsp f1, f1
/* 8005D3FC  48 00 00 88 */	b lbl_8005D484
lbl_8005D400:
/* 8005D400  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005D404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D408  40 80 00 10 */	bge lbl_8005D418
/* 8005D40C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005D410  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005D414  48 00 00 70 */	b lbl_8005D484
lbl_8005D418:
/* 8005D418  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8005D41C  80 81 00 30 */	lwz r4, 0x30(r1)
/* 8005D420  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005D424  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005D428  7C 03 00 00 */	cmpw r3, r0
/* 8005D42C  41 82 00 14 */	beq lbl_8005D440
/* 8005D430  40 80 00 40 */	bge lbl_8005D470
/* 8005D434  2C 03 00 00 */	cmpwi r3, 0
/* 8005D438  41 82 00 20 */	beq lbl_8005D458
/* 8005D43C  48 00 00 34 */	b lbl_8005D470
lbl_8005D440:
/* 8005D440  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005D444  41 82 00 0C */	beq lbl_8005D450
/* 8005D448  38 00 00 01 */	li r0, 1
/* 8005D44C  48 00 00 28 */	b lbl_8005D474
lbl_8005D450:
/* 8005D450  38 00 00 02 */	li r0, 2
/* 8005D454  48 00 00 20 */	b lbl_8005D474
lbl_8005D458:
/* 8005D458  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005D45C  41 82 00 0C */	beq lbl_8005D468
/* 8005D460  38 00 00 05 */	li r0, 5
/* 8005D464  48 00 00 10 */	b lbl_8005D474
lbl_8005D468:
/* 8005D468  38 00 00 03 */	li r0, 3
/* 8005D46C  48 00 00 08 */	b lbl_8005D474
lbl_8005D470:
/* 8005D470  38 00 00 04 */	li r0, 4
lbl_8005D474:
/* 8005D474  2C 00 00 01 */	cmpwi r0, 1
/* 8005D478  40 82 00 0C */	bne lbl_8005D484
/* 8005D47C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005D480  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005D484:
/* 8005D484  C0 02 88 8C */	lfs f0, lit_5098(r2)
/* 8005D488  EC 41 00 24 */	fdivs f2, f1, f0
/* 8005D48C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005D490  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005D494  40 81 00 08 */	ble lbl_8005D49C
/* 8005D498  FC 40 00 90 */	fmr f2, f0
lbl_8005D49C:
/* 8005D49C  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 8005D4A0  C0 02 88 90 */	lfs f0, lit_5099(r2)
/* 8005D4A4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005D4A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005D4AC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8005D4B0  C0 19 00 D8 */	lfs f0, 0xd8(r25)
/* 8005D4B4  D0 1A 36 D8 */	stfs f0, 0x36d8(r26)
/* 8005D4B8  C0 19 00 DC */	lfs f0, 0xdc(r25)
/* 8005D4BC  D0 1A 36 DC */	stfs f0, 0x36dc(r26)
/* 8005D4C0  C0 19 00 E0 */	lfs f0, 0xe0(r25)
/* 8005D4C4  D0 1A 36 E0 */	stfs f0, 0x36e0(r26)
/* 8005D4C8  38 7A 36 E4 */	addi r3, r26, 0x36e4
/* 8005D4CC  38 99 00 E4 */	addi r4, r25, 0xe4
/* 8005D4D0  48 2E 9E CD */	bl PSVECSquareDistance
/* 8005D4D4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005D4D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D4DC  40 81 00 58 */	ble lbl_8005D534
/* 8005D4E0  FC 00 08 34 */	frsqrte f0, f1
/* 8005D4E4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005D4E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005D4EC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005D4F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005D4F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005D4F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005D4FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005D500  FC 44 00 32 */	fmul f2, f4, f0
/* 8005D504  FC 00 00 32 */	fmul f0, f0, f0
/* 8005D508  FC 01 00 32 */	fmul f0, f1, f0
/* 8005D50C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005D510  FC 02 00 32 */	fmul f0, f2, f0
/* 8005D514  FC 44 00 32 */	fmul f2, f4, f0
/* 8005D518  FC 00 00 32 */	fmul f0, f0, f0
/* 8005D51C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005D520  FC 03 00 28 */	fsub f0, f3, f0
/* 8005D524  FC 02 00 32 */	fmul f0, f2, f0
/* 8005D528  FC 21 00 32 */	fmul f1, f1, f0
/* 8005D52C  FC 20 08 18 */	frsp f1, f1
/* 8005D530  48 00 00 88 */	b lbl_8005D5B8
lbl_8005D534:
/* 8005D534  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005D538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D53C  40 80 00 10 */	bge lbl_8005D54C
/* 8005D540  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005D544  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005D548  48 00 00 70 */	b lbl_8005D5B8
lbl_8005D54C:
/* 8005D54C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8005D550  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8005D554  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005D558  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005D55C  7C 03 00 00 */	cmpw r3, r0
/* 8005D560  41 82 00 14 */	beq lbl_8005D574
/* 8005D564  40 80 00 40 */	bge lbl_8005D5A4
/* 8005D568  2C 03 00 00 */	cmpwi r3, 0
/* 8005D56C  41 82 00 20 */	beq lbl_8005D58C
/* 8005D570  48 00 00 34 */	b lbl_8005D5A4
lbl_8005D574:
/* 8005D574  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005D578  41 82 00 0C */	beq lbl_8005D584
/* 8005D57C  38 00 00 01 */	li r0, 1
/* 8005D580  48 00 00 28 */	b lbl_8005D5A8
lbl_8005D584:
/* 8005D584  38 00 00 02 */	li r0, 2
/* 8005D588  48 00 00 20 */	b lbl_8005D5A8
lbl_8005D58C:
/* 8005D58C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005D590  41 82 00 0C */	beq lbl_8005D59C
/* 8005D594  38 00 00 05 */	li r0, 5
/* 8005D598  48 00 00 10 */	b lbl_8005D5A8
lbl_8005D59C:
/* 8005D59C  38 00 00 03 */	li r0, 3
/* 8005D5A0  48 00 00 08 */	b lbl_8005D5A8
lbl_8005D5A4:
/* 8005D5A4  38 00 00 04 */	li r0, 4
lbl_8005D5A8:
/* 8005D5A8  2C 00 00 01 */	cmpwi r0, 1
/* 8005D5AC  40 82 00 0C */	bne lbl_8005D5B8
/* 8005D5B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005D5B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005D5B8:
/* 8005D5B8  C0 02 88 88 */	lfs f0, lit_5097(r2)
/* 8005D5BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D5C0  40 81 00 24 */	ble lbl_8005D5E4
/* 8005D5C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8005D5C8  C0 02 88 7C */	lfs f0, lit_4467(r2)
/* 8005D5CC  EC 21 00 24 */	fdivs f1, f1, f0
/* 8005D5D0  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005D5D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D5D8  40 81 00 10 */	ble lbl_8005D5E8
/* 8005D5DC  FC 20 00 90 */	fmr f1, f0
/* 8005D5E0  48 00 00 08 */	b lbl_8005D5E8
lbl_8005D5E4:
/* 8005D5E4  C0 22 87 B8 */	lfs f1, lit_3954(r2)
lbl_8005D5E8:
/* 8005D5E8  38 7A 36 FC */	addi r3, r26, 0x36fc
/* 8005D5EC  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8005D5F0  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005D5F4  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005D5F8  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005D5FC  48 21 23 81 */	bl cLib_addCalc__FPfffff
/* 8005D600  C0 3A 36 FC */	lfs f1, 0x36fc(r26)
/* 8005D604  C0 02 88 44 */	lfs f0, lit_4366(r2)
/* 8005D608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005D60C  40 81 00 08 */	ble lbl_8005D614
/* 8005D610  D0 1A 36 FC */	stfs f0, 0x36fc(r26)
lbl_8005D614:
/* 8005D614  38 7A 36 F0 */	addi r3, r26, 0x36f0
/* 8005D618  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 8005D61C  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005D620  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005D624  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005D628  48 21 23 55 */	bl cLib_addCalc__FPfffff
/* 8005D62C  38 7A 36 F4 */	addi r3, r26, 0x36f4
/* 8005D630  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 8005D634  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005D638  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005D63C  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005D640  48 21 23 3D */	bl cLib_addCalc__FPfffff
/* 8005D644  38 7A 36 F8 */	addi r3, r26, 0x36f8
/* 8005D648  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 8005D64C  C0 42 88 40 */	lfs f2, lit_4365(r2)
/* 8005D650  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005D654  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005D658  48 21 23 25 */	bl cLib_addCalc__FPfffff
/* 8005D65C  C0 19 00 E4 */	lfs f0, 0xe4(r25)
/* 8005D660  D0 1A 36 E4 */	stfs f0, 0x36e4(r26)
/* 8005D664  C0 19 00 E8 */	lfs f0, 0xe8(r25)
/* 8005D668  D0 1A 36 E8 */	stfs f0, 0x36e8(r26)
/* 8005D66C  C0 19 00 EC */	lfs f0, 0xec(r25)
/* 8005D670  D0 1A 36 EC */	stfs f0, 0x36ec(r26)
/* 8005D674  7F 23 CB 78 */	mr r3, r25
/* 8005D678  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8005D67C  C0 22 88 94 */	lfs f1, lit_5100(r2)
/* 8005D680  C0 42 87 FC */	lfs f2, lit_4112(r2)
/* 8005D684  4B FF E1 AD */	bl dKy_set_eyevect_calc2__FP12camera_classP3Vecff
/* 8005D688  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005D68C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8005D690  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8005D694  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8005D698  4B FF D4 49 */	bl dKyw_get_wind_vec__Fv
/* 8005D69C  4B FF D4 55 */	bl dKyw_get_wind_pow__Fv
/* 8005D6A0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005D6A4  D0 1A 36 CC */	stfs f0, 0x36cc(r26)
/* 8005D6A8  D0 1A 36 C8 */	stfs f0, 0x36c8(r26)
/* 8005D6AC  38 00 00 00 */	li r0, 0
/* 8005D6B0  98 1A 37 14 */	stb r0, 0x3714(r26)
/* 8005D6B4  3B 00 00 00 */	li r24, 0
/* 8005D6B8  3A E0 00 00 */	li r23, 0
/* 8005D6BC  3A C0 00 00 */	li r22, 0
/* 8005D6C0  3B DE 4E 00 */	addi r30, r30, 0x4e00
/* 8005D6C4  7F C3 F3 78 */	mr r3, r30
/* 8005D6C8  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005D6CC  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005D6D0  38 84 00 1F */	addi r4, r4, 0x1f
/* 8005D6D4  48 30 B2 C1 */	bl strcmp
/* 8005D6D8  2C 03 00 00 */	cmpwi r3, 0
/* 8005D6DC  40 82 00 20 */	bne lbl_8005D6FC
/* 8005D6E0  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005D6E4  7C 00 07 75 */	extsb. r0, r0
/* 8005D6E8  41 82 00 0C */	beq lbl_8005D6F4
/* 8005D6EC  2C 00 00 04 */	cmpwi r0, 4
/* 8005D6F0  40 82 00 5C */	bne lbl_8005D74C
lbl_8005D6F4:
/* 8005D6F4  3A 80 00 01 */	li r20, 1
/* 8005D6F8  48 00 00 54 */	b lbl_8005D74C
lbl_8005D6FC:
/* 8005D6FC  7F C3 F3 78 */	mr r3, r30
/* 8005D700  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005D704  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005D708  38 84 00 26 */	addi r4, r4, 0x26
/* 8005D70C  48 30 B2 89 */	bl strcmp
/* 8005D710  2C 03 00 00 */	cmpwi r3, 0
/* 8005D714  40 82 00 18 */	bne lbl_8005D72C
/* 8005D718  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005D71C  2C 00 00 01 */	cmpwi r0, 1
/* 8005D720  40 82 00 0C */	bne lbl_8005D72C
/* 8005D724  3A 80 00 02 */	li r20, 2
/* 8005D728  48 00 00 24 */	b lbl_8005D74C
lbl_8005D72C:
/* 8005D72C  7F C3 F3 78 */	mr r3, r30
/* 8005D730  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005D734  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005D738  38 84 00 2E */	addi r4, r4, 0x2e
/* 8005D73C  48 30 B2 59 */	bl strcmp
/* 8005D740  2C 03 00 00 */	cmpwi r3, 0
/* 8005D744  40 82 00 08 */	bne lbl_8005D74C
/* 8005D748  3A 80 00 03 */	li r20, 3
lbl_8005D74C:
/* 8005D74C  2C 14 00 00 */	cmpwi r20, 0
/* 8005D750  40 82 00 5C */	bne lbl_8005D7AC
/* 8005D754  4B FF F6 7D */	bl overhead_bg_chk__Fv
/* 8005D758  7C 78 1B 78 */	mr r24, r3
/* 8005D75C  38 61 00 98 */	addi r3, r1, 0x98
/* 8005D760  C0 22 88 94 */	lfs f1, lit_5100(r2)
/* 8005D764  4B FF F8 15 */	bl forward_overhead_bg_chk__FP4cXyzf
/* 8005D768  7C 77 1B 78 */	mr r23, r3
/* 8005D76C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8005D770  C0 22 88 98 */	lfs f1, lit_5101(r2)
/* 8005D774  4B FF F8 05 */	bl forward_overhead_bg_chk__FP4cXyzf
/* 8005D778  7C 76 1B 78 */	mr r22, r3
/* 8005D77C  2C 18 00 00 */	cmpwi r24, 0
/* 8005D780  41 82 00 14 */	beq lbl_8005D794
/* 8005D784  88 1A 37 14 */	lbz r0, 0x3714(r26)
/* 8005D788  60 00 00 01 */	ori r0, r0, 1
/* 8005D78C  98 1A 37 14 */	stb r0, 0x3714(r26)
/* 8005D790  48 00 00 30 */	b lbl_8005D7C0
lbl_8005D794:
/* 8005D794  2C 17 00 00 */	cmpwi r23, 0
/* 8005D798  41 82 00 28 */	beq lbl_8005D7C0
/* 8005D79C  88 1A 37 14 */	lbz r0, 0x3714(r26)
/* 8005D7A0  60 00 00 02 */	ori r0, r0, 2
/* 8005D7A4  98 1A 37 14 */	stb r0, 0x3714(r26)
/* 8005D7A8  48 00 00 18 */	b lbl_8005D7C0
lbl_8005D7AC:
/* 8005D7AC  3A A0 00 01 */	li r21, 1
/* 8005D7B0  88 1A 37 14 */	lbz r0, 0x3714(r26)
/* 8005D7B4  60 00 00 01 */	ori r0, r0, 1
/* 8005D7B8  98 1A 37 14 */	stb r0, 0x3714(r26)
/* 8005D7BC  C3 A2 88 9C */	lfs f29, lit_5102(r2)
lbl_8005D7C0:
/* 8005D7C0  2C 18 00 00 */	cmpwi r24, 0
/* 8005D7C4  41 82 00 20 */	beq lbl_8005D7E4
/* 8005D7C8  38 7A 37 08 */	addi r3, r26, 0x3708
/* 8005D7CC  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005D7D0  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8005D7D4  C0 62 88 40 */	lfs f3, lit_4365(r2)
/* 8005D7D8  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005D7DC  48 21 21 A1 */	bl cLib_addCalc__FPfffff
/* 8005D7E0  48 00 00 1C */	b lbl_8005D7FC
lbl_8005D7E4:
/* 8005D7E4  38 7A 37 08 */	addi r3, r26, 0x3708
/* 8005D7E8  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005D7EC  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8005D7F0  FC 60 10 90 */	fmr f3, f2
/* 8005D7F4  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005D7F8  48 21 21 85 */	bl cLib_addCalc__FPfffff
lbl_8005D7FC:
/* 8005D7FC  2C 17 00 00 */	cmpwi r23, 0
/* 8005D800  41 82 00 20 */	beq lbl_8005D820
/* 8005D804  38 7A 37 0C */	addi r3, r26, 0x370c
/* 8005D808  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005D80C  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8005D810  C0 62 88 40 */	lfs f3, lit_4365(r2)
/* 8005D814  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005D818  48 21 21 65 */	bl cLib_addCalc__FPfffff
/* 8005D81C  48 00 00 1C */	b lbl_8005D838
lbl_8005D820:
/* 8005D820  38 7A 37 0C */	addi r3, r26, 0x370c
/* 8005D824  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005D828  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8005D82C  FC 60 10 90 */	fmr f3, f2
/* 8005D830  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005D834  48 21 21 49 */	bl cLib_addCalc__FPfffff
lbl_8005D838:
/* 8005D838  2C 16 00 00 */	cmpwi r22, 0
/* 8005D83C  41 82 00 20 */	beq lbl_8005D85C
/* 8005D840  38 7A 37 10 */	addi r3, r26, 0x3710
/* 8005D844  C0 22 87 B8 */	lfs f1, lit_3954(r2)
/* 8005D848  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8005D84C  C0 62 88 40 */	lfs f3, lit_4365(r2)
/* 8005D850  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005D854  48 21 21 29 */	bl cLib_addCalc__FPfffff
/* 8005D858  48 00 00 1C */	b lbl_8005D874
lbl_8005D85C:
/* 8005D85C  38 7A 37 10 */	addi r3, r26, 0x3710
/* 8005D860  C0 22 88 14 */	lfs f1, lit_4354(r2)
/* 8005D864  C0 42 88 20 */	lfs f2, lit_4357(r2)
/* 8005D868  FC 60 10 90 */	fmr f3, f2
/* 8005D86C  C0 82 88 38 */	lfs f4, lit_4363(r2)
/* 8005D870  48 21 21 0D */	bl cLib_addCalc__FPfffff
lbl_8005D874:
/* 8005D874  A8 7A 36 D0 */	lha r3, 0x36d0(r26)
/* 8005D878  3A 63 FF FF */	addi r19, r3, -1
/* 8005D87C  C3 C2 88 14 */	lfs f30, lit_4354(r2)
/* 8005D880  1E 53 00 38 */	mulli r18, r19, 0x38
/* 8005D884  48 00 0F F4 */	b lbl_8005E878
lbl_8005D888:
/* 8005D888  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8005D88C  7F 9A 92 14 */	add r28, r26, r18
/* 8005D890  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 8005D894  88 1C 00 18 */	lbz r0, 0x18(r28)
/* 8005D898  7C 00 07 75 */	extsb. r0, r0
/* 8005D89C  41 82 00 14 */	beq lbl_8005D8B0
/* 8005D8A0  41 80 05 34 */	blt lbl_8005DDD4
/* 8005D8A4  2C 00 00 04 */	cmpwi r0, 4
/* 8005D8A8  40 80 05 2C */	bge lbl_8005DDD4
/* 8005D8AC  48 00 00 9C */	b lbl_8005D948
lbl_8005D8B0:
/* 8005D8B0  C0 22 88 88 */	lfs f1, lit_5097(r2)
/* 8005D8B4  48 20 A0 A1 */	bl cM_rndF__Ff
/* 8005D8B8  C0 02 88 A0 */	lfs f0, lit_5103(r2)
/* 8005D8BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8005D8C0  FC 00 00 50 */	fneg f0, f0
/* 8005D8C4  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 8005D8C8  38 00 00 00 */	li r0, 0
/* 8005D8CC  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 8005D8D0  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 8005D8D4  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 8005D8D8  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8005D8DC  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 8005D8E0  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8005D8E4  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 8005D8E8  C0 22 88 A4 */	lfs f1, lit_5104(r2)
/* 8005D8EC  48 20 A0 A1 */	bl cM_rndFX__Ff
/* 8005D8F0  D0 3C 00 1C */	stfs f1, 0x1c(r28)
/* 8005D8F4  C0 22 87 FC */	lfs f1, lit_4112(r2)
/* 8005D8F8  48 20 A0 5D */	bl cM_rndF__Ff
/* 8005D8FC  D0 3C 00 20 */	stfs f1, 0x20(r28)
/* 8005D900  C0 22 88 A4 */	lfs f1, lit_5104(r2)
/* 8005D904  48 20 A0 89 */	bl cM_rndFX__Ff
/* 8005D908  D0 3C 00 24 */	stfs f1, 0x24(r28)
/* 8005D90C  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005D910  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 8005D914  C0 22 88 A8 */	lfs f1, lit_5105(r2)
/* 8005D918  48 20 A0 3D */	bl cM_rndF__Ff
/* 8005D91C  D0 3C 00 34 */	stfs f1, 0x34(r28)
/* 8005D920  C0 22 88 A8 */	lfs f1, lit_5105(r2)
/* 8005D924  48 20 A0 31 */	bl cM_rndF__Ff
/* 8005D928  D0 3C 00 38 */	stfs f1, 0x38(r28)
/* 8005D92C  7F 43 D3 78 */	mr r3, r26
/* 8005D930  7E 64 9B 78 */	mr r4, r19
/* 8005D934  4B FF F4 75 */	bl rain_bg_chk__FP19dKankyo_rain_Packeti
/* 8005D938  88 7C 00 18 */	lbz r3, 0x18(r28)
/* 8005D93C  38 03 00 01 */	addi r0, r3, 1
/* 8005D940  98 1C 00 18 */	stb r0, 0x18(r28)
/* 8005D944  48 00 04 90 */	b lbl_8005DDD4
lbl_8005D948:
/* 8005D948  C0 22 88 20 */	lfs f1, lit_4357(r2)
/* 8005D94C  48 20 A0 41 */	bl cM_rndFX__Ff
/* 8005D950  3B 7C 00 3C */	addi r27, r28, 0x3c
/* 8005D954  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 8005D958  EC 20 08 28 */	fsubs f1, f0, f1
/* 8005D95C  7F 63 DB 78 */	mr r3, r27
/* 8005D960  C0 42 88 3C */	lfs f2, lit_4364(r2)
/* 8005D964  C0 62 88 20 */	lfs f3, lit_4357(r2)
/* 8005D968  C0 82 87 C4 */	lfs f4, lit_3993(r2)
/* 8005D96C  48 21 20 11 */	bl cLib_addCalc__FPfffff
/* 8005D970  C0 FC 00 1C */	lfs f7, 0x1c(r28)
/* 8005D974  C0 62 88 8C */	lfs f3, lit_5098(r2)
/* 8005D978  C0 81 00 C8 */	lfs f4, 0xc8(r1)
/* 8005D97C  C0 42 88 88 */	lfs f2, lit_5097(r2)
/* 8005D980  C0 3A 36 F0 */	lfs f1, 0x36f0(r26)
/* 8005D984  C0 1A 36 FC */	lfs f0, 0x36fc(r26)
/* 8005D988  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005D98C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8005D990  EC C4 00 2A */	fadds f6, f4, f0
/* 8005D994  C0 A1 00 A4 */	lfs f5, 0xa4(r1)
/* 8005D998  C0 22 88 AC */	lfs f1, lit_5106(r2)
/* 8005D99C  56 60 07 7E */	clrlwi r0, r19, 0x1d
/* 8005D9A0  C8 02 87 C8 */	lfd f0, lit_3995(r2)
/* 8005D9A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8005D9A8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8005D9AC  3C 60 43 30 */	lis r3, 0x4330
/* 8005D9B0  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 8005D9B4  C8 81 00 F0 */	lfd f4, 0xf0(r1)
/* 8005D9B8  EC 84 00 28 */	fsubs f4, f4, f0
/* 8005D9BC  EC 81 01 32 */	fmuls f4, f1, f4
/* 8005D9C0  EC 85 20 2A */	fadds f4, f5, f4
/* 8005D9C4  EC 86 20 2A */	fadds f4, f6, f4
/* 8005D9C8  EC 83 01 32 */	fmuls f4, f3, f4
/* 8005D9CC  EC 87 20 2A */	fadds f4, f7, f4
/* 8005D9D0  D0 9C 00 1C */	stfs f4, 0x1c(r28)
/* 8005D9D4  C1 3C 00 20 */	lfs f9, 0x20(r28)
/* 8005D9D8  C0 A2 88 B0 */	lfs f5, lit_5107(r2)
/* 8005D9DC  90 01 00 FC */	stw r0, 0xfc(r1)
/* 8005D9E0  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 8005D9E4  C8 81 00 F8 */	lfd f4, 0xf8(r1)
/* 8005D9E8  EC 84 00 28 */	fsubs f4, f4, f0
/* 8005D9EC  ED 05 01 32 */	fmuls f8, f5, f4
/* 8005D9F0  C0 E1 00 A8 */	lfs f7, 0xa8(r1)
/* 8005D9F4  C0 C1 00 CC */	lfs f6, 0xcc(r1)
/* 8005D9F8  C0 BA 36 F4 */	lfs f5, 0x36f4(r26)
/* 8005D9FC  C0 9A 36 FC */	lfs f4, 0x36fc(r26)
/* 8005DA00  EC 85 01 32 */	fmuls f4, f5, f4
/* 8005DA04  EC 82 01 32 */	fmuls f4, f2, f4
/* 8005DA08  EC 86 20 2A */	fadds f4, f6, f4
/* 8005DA0C  EC 87 20 2A */	fadds f4, f7, f4
/* 8005DA10  EC 83 01 32 */	fmuls f4, f3, f4
/* 8005DA14  EC 88 20 2A */	fadds f4, f8, f4
/* 8005DA18  EC 89 20 2A */	fadds f4, f9, f4
/* 8005DA1C  D0 9C 00 20 */	stfs f4, 0x20(r28)
/* 8005DA20  C0 FC 00 24 */	lfs f7, 0x24(r28)
/* 8005DA24  C0 C1 00 D0 */	lfs f6, 0xd0(r1)
/* 8005DA28  C0 BA 36 F8 */	lfs f5, 0x36f8(r26)
/* 8005DA2C  C0 9A 36 FC */	lfs f4, 0x36fc(r26)
/* 8005DA30  EC 85 01 32 */	fmuls f4, f5, f4
/* 8005DA34  EC 42 01 32 */	fmuls f2, f2, f4
/* 8005DA38  EC A6 10 2A */	fadds f5, f6, f2
/* 8005DA3C  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 8005DA40  56 60 07 BE */	clrlwi r0, r19, 0x1e
/* 8005DA44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8005DA48  90 01 01 04 */	stw r0, 0x104(r1)
/* 8005DA4C  90 61 01 00 */	stw r3, 0x100(r1)
/* 8005DA50  C8 41 01 00 */	lfd f2, 0x100(r1)
/* 8005DA54  EC 02 00 28 */	fsubs f0, f2, f0
/* 8005DA58  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005DA5C  EC 04 00 2A */	fadds f0, f4, f0
/* 8005DA60  EC 05 00 2A */	fadds f0, f5, f0
/* 8005DA64  EC 03 00 32 */	fmuls f0, f3, f0
/* 8005DA68  EC 07 00 2A */	fadds f0, f7, f0
/* 8005DA6C  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 8005DA70  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8005DA74  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8005DA78  EC 01 00 2A */	fadds f0, f1, f0
/* 8005DA7C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8005DA80  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8005DA84  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8005DA88  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8005DA8C  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 8005DA90  EC 01 00 2A */	fadds f0, f1, f0
/* 8005DA94  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8005DA98  38 61 00 BC */	addi r3, r1, 0xbc
/* 8005DA9C  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8005DAA0  48 2E 98 FD */	bl PSVECSquareDistance
/* 8005DAA4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005DAA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DAAC  40 81 00 58 */	ble lbl_8005DB04
/* 8005DAB0  FC 00 08 34 */	frsqrte f0, f1
/* 8005DAB4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005DAB8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DABC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005DAC0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DAC4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DAC8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DACC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DAD0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DAD4  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DAD8  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DADC  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DAE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DAE4  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DAE8  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DAEC  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DAF0  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DAF4  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DAF8  FC 21 00 32 */	fmul f1, f1, f0
/* 8005DAFC  FC 20 08 18 */	frsp f1, f1
/* 8005DB00  48 00 00 88 */	b lbl_8005DB88
lbl_8005DB04:
/* 8005DB04  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005DB08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DB0C  40 80 00 10 */	bge lbl_8005DB1C
/* 8005DB10  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005DB14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005DB18  48 00 00 70 */	b lbl_8005DB88
lbl_8005DB1C:
/* 8005DB1C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8005DB20  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8005DB24  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005DB28  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005DB2C  7C 03 00 00 */	cmpw r3, r0
/* 8005DB30  41 82 00 14 */	beq lbl_8005DB44
/* 8005DB34  40 80 00 40 */	bge lbl_8005DB74
/* 8005DB38  2C 03 00 00 */	cmpwi r3, 0
/* 8005DB3C  41 82 00 20 */	beq lbl_8005DB5C
/* 8005DB40  48 00 00 34 */	b lbl_8005DB74
lbl_8005DB44:
/* 8005DB44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005DB48  41 82 00 0C */	beq lbl_8005DB54
/* 8005DB4C  38 00 00 01 */	li r0, 1
/* 8005DB50  48 00 00 28 */	b lbl_8005DB78
lbl_8005DB54:
/* 8005DB54  38 00 00 02 */	li r0, 2
/* 8005DB58  48 00 00 20 */	b lbl_8005DB78
lbl_8005DB5C:
/* 8005DB5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005DB60  41 82 00 0C */	beq lbl_8005DB6C
/* 8005DB64  38 00 00 05 */	li r0, 5
/* 8005DB68  48 00 00 10 */	b lbl_8005DB78
lbl_8005DB6C:
/* 8005DB6C  38 00 00 03 */	li r0, 3
/* 8005DB70  48 00 00 08 */	b lbl_8005DB78
lbl_8005DB74:
/* 8005DB74  38 00 00 04 */	li r0, 4
lbl_8005DB78:
/* 8005DB78  2C 00 00 01 */	cmpwi r0, 1
/* 8005DB7C  40 82 00 0C */	bne lbl_8005DB88
/* 8005DB80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005DB84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005DB88:
/* 8005DB88  A8 7C 00 4C */	lha r3, 0x4c(r28)
/* 8005DB8C  2C 03 00 00 */	cmpwi r3, 0
/* 8005DB90  40 82 02 3C */	bne lbl_8005DDCC
/* 8005DB94  C0 02 88 A4 */	lfs f0, lit_5104(r2)
/* 8005DB98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DB9C  40 81 01 BC */	ble lbl_8005DD58
/* 8005DBA0  38 00 00 0A */	li r0, 0xa
/* 8005DBA4  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 8005DBA8  C0 22 88 88 */	lfs f1, lit_5097(r2)
/* 8005DBAC  48 20 9D A9 */	bl cM_rndF__Ff
/* 8005DBB0  C0 02 88 A0 */	lfs f0, lit_5103(r2)
/* 8005DBB4  EC 00 08 2A */	fadds f0, f0, f1
/* 8005DBB8  FC 00 00 50 */	fneg f0, f0
/* 8005DBBC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8005DBC0  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 8005DBC4  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 8005DBC8  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8005DBCC  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 8005DBD0  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8005DBD4  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 8005DBD8  38 61 00 BC */	addi r3, r1, 0xbc
/* 8005DBDC  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8005DBE0  48 2E 97 BD */	bl PSVECSquareDistance
/* 8005DBE4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005DBE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DBEC  40 81 00 58 */	ble lbl_8005DC44
/* 8005DBF0  FC 00 08 34 */	frsqrte f0, f1
/* 8005DBF4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005DBF8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DBFC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005DC00  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DC04  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DC08  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DC0C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DC10  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DC14  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DC18  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DC1C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DC20  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DC24  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DC28  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DC2C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DC30  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DC34  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DC38  FC 21 00 32 */	fmul f1, f1, f0
/* 8005DC3C  FC 20 08 18 */	frsp f1, f1
/* 8005DC40  48 00 00 88 */	b lbl_8005DCC8
lbl_8005DC44:
/* 8005DC44  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005DC48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DC4C  40 80 00 10 */	bge lbl_8005DC5C
/* 8005DC50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005DC54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005DC58  48 00 00 70 */	b lbl_8005DCC8
lbl_8005DC5C:
/* 8005DC5C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8005DC60  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8005DC64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005DC68  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005DC6C  7C 03 00 00 */	cmpw r3, r0
/* 8005DC70  41 82 00 14 */	beq lbl_8005DC84
/* 8005DC74  40 80 00 40 */	bge lbl_8005DCB4
/* 8005DC78  2C 03 00 00 */	cmpwi r3, 0
/* 8005DC7C  41 82 00 20 */	beq lbl_8005DC9C
/* 8005DC80  48 00 00 34 */	b lbl_8005DCB4
lbl_8005DC84:
/* 8005DC84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005DC88  41 82 00 0C */	beq lbl_8005DC94
/* 8005DC8C  38 00 00 01 */	li r0, 1
/* 8005DC90  48 00 00 28 */	b lbl_8005DCB8
lbl_8005DC94:
/* 8005DC94  38 00 00 02 */	li r0, 2
/* 8005DC98  48 00 00 20 */	b lbl_8005DCB8
lbl_8005DC9C:
/* 8005DC9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005DCA0  41 82 00 0C */	beq lbl_8005DCAC
/* 8005DCA4  38 00 00 05 */	li r0, 5
/* 8005DCA8  48 00 00 10 */	b lbl_8005DCB8
lbl_8005DCAC:
/* 8005DCAC  38 00 00 03 */	li r0, 3
/* 8005DCB0  48 00 00 08 */	b lbl_8005DCB8
lbl_8005DCB4:
/* 8005DCB4  38 00 00 04 */	li r0, 4
lbl_8005DCB8:
/* 8005DCB8  2C 00 00 01 */	cmpwi r0, 1
/* 8005DCBC  40 82 00 0C */	bne lbl_8005DCC8
/* 8005DCC0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005DCC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005DCC8:
/* 8005DCC8  C0 02 88 B4 */	lfs f0, lit_5108(r2)
/* 8005DCCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DCD0  40 81 00 2C */	ble lbl_8005DCFC
/* 8005DCD4  C0 22 88 A4 */	lfs f1, lit_5104(r2)
/* 8005DCD8  48 20 9C B5 */	bl cM_rndFX__Ff
/* 8005DCDC  D0 3C 00 1C */	stfs f1, 0x1c(r28)
/* 8005DCE0  C0 22 88 A4 */	lfs f1, lit_5104(r2)
/* 8005DCE4  48 20 9C A9 */	bl cM_rndFX__Ff
/* 8005DCE8  D0 3C 00 20 */	stfs f1, 0x20(r28)
/* 8005DCEC  C0 22 88 A4 */	lfs f1, lit_5104(r2)
/* 8005DCF0  48 20 9C 9D */	bl cM_rndFX__Ff
/* 8005DCF4  D0 3C 00 24 */	stfs f1, 0x24(r28)
/* 8005DCF8  48 00 00 4C */	b lbl_8005DD44
lbl_8005DCFC:
/* 8005DCFC  C0 22 88 B8 */	lfs f1, lit_5109(r2)
/* 8005DD00  48 20 9C 8D */	bl cM_rndFX__Ff
/* 8005DD04  FF E0 08 90 */	fmr f31, f1
/* 8005DD08  38 61 00 BC */	addi r3, r1, 0xbc
/* 8005DD0C  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8005DD10  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8005DD14  4B FF D9 F5 */	bl get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005DD18  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 8005DD1C  C0 02 88 A4 */	lfs f0, lit_5104(r2)
/* 8005DD20  EC 40 F8 2A */	fadds f2, f0, f31
/* 8005DD24  EC 01 00 B2 */	fmuls f0, f1, f2
/* 8005DD28  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 8005DD2C  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8005DD30  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005DD34  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 8005DD38  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8005DD3C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005DD40  D0 1C 00 24 */	stfs f0, 0x24(r28)
lbl_8005DD44:
/* 8005DD44  38 00 00 01 */	li r0, 1
/* 8005DD48  98 1C 00 18 */	stb r0, 0x18(r28)
/* 8005DD4C  7F 43 D3 78 */	mr r3, r26
/* 8005DD50  7E 64 9B 78 */	mr r4, r19
/* 8005DD54  4B FF F0 55 */	bl rain_bg_chk__FP19dKankyo_rain_Packeti
lbl_8005DD58:
/* 8005DD58  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 8005DD5C  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 8005DD60  EC 41 00 2A */	fadds f2, f1, f0
/* 8005DD64  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 8005DD68  C0 22 88 8C */	lfs f1, lit_5098(r2)
/* 8005DD6C  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 8005DD70  EC 01 00 2A */	fadds f0, f1, f0
/* 8005DD74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005DD78  40 80 00 5C */	bge lbl_8005DDD4
/* 8005DD7C  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 8005DD80  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 8005DD84  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8005DD88  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 8005DD8C  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8005DD90  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 8005DD94  C0 22 88 A4 */	lfs f1, lit_5104(r2)
/* 8005DD98  48 20 9B F5 */	bl cM_rndFX__Ff
/* 8005DD9C  D0 3C 00 1C */	stfs f1, 0x1c(r28)
/* 8005DDA0  C0 02 87 BC */	lfs f0, lit_3970(r2)
/* 8005DDA4  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 8005DDA8  C0 22 88 A4 */	lfs f1, lit_5104(r2)
/* 8005DDAC  48 20 9B E1 */	bl cM_rndFX__Ff
/* 8005DDB0  D0 3C 00 24 */	stfs f1, 0x24(r28)
/* 8005DDB4  7F 43 D3 78 */	mr r3, r26
/* 8005DDB8  7E 64 9B 78 */	mr r4, r19
/* 8005DDBC  4B FF EF ED */	bl rain_bg_chk__FP19dKankyo_rain_Packeti
/* 8005DDC0  38 00 00 0A */	li r0, 0xa
/* 8005DDC4  B0 1C 00 4C */	sth r0, 0x4c(r28)
/* 8005DDC8  48 00 00 0C */	b lbl_8005DDD4
lbl_8005DDCC:
/* 8005DDCC  38 03 FF FF */	addi r0, r3, -1
/* 8005DDD0  B0 1C 00 4C */	sth r0, 0x4c(r28)
lbl_8005DDD4:
/* 8005DDD4  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 8005DDD8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8005DDDC  EC 01 00 2A */	fadds f0, f1, f0
/* 8005DDE0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8005DDE4  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 8005DDE8  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 8005DDEC  EC 01 00 2A */	fadds f0, f1, f0
/* 8005DDF0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8005DDF4  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 8005DDF8  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 8005DDFC  EC 01 00 2A */	fadds f0, f1, f0
/* 8005DE00  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8005DE04  80 7F 0E 80 */	lwz r3, 0xe80(r31)
/* 8005DE08  38 03 FF FF */	addi r0, r3, -1
/* 8005DE0C  7C 13 00 00 */	cmpw r19, r0
/* 8005DE10  40 81 00 18 */	ble lbl_8005DE28
/* 8005DE14  A8 7A 36 D0 */	lha r3, 0x36d0(r26)
/* 8005DE18  38 03 FF FF */	addi r0, r3, -1
/* 8005DE1C  7C 13 00 00 */	cmpw r19, r0
/* 8005DE20  40 82 00 08 */	bne lbl_8005DE28
/* 8005DE24  B0 1A 36 D0 */	sth r0, 0x36d0(r26)
lbl_8005DE28:
/* 8005DE28  C3 E2 88 14 */	lfs f31, lit_4354(r2)
/* 8005DE2C  2C 18 00 00 */	cmpwi r24, 0
/* 8005DE30  40 82 00 10 */	bne lbl_8005DE40
/* 8005DE34  C0 1A 37 08 */	lfs f0, 0x3708(r26)
/* 8005DE38  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8005DE3C  40 80 01 28 */	bge lbl_8005DF64
lbl_8005DE40:
/* 8005DE40  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8005DE44  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8005DE48  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8005DE4C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8005DE50  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8005DE54  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8005DE58  C0 19 00 DC */	lfs f0, 0xdc(r25)
/* 8005DE5C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8005DE60  38 79 00 D8 */	addi r3, r25, 0xd8
/* 8005DE64  38 81 00 80 */	addi r4, r1, 0x80
/* 8005DE68  48 2E 95 35 */	bl PSVECSquareDistance
/* 8005DE6C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005DE70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DE74  40 81 00 58 */	ble lbl_8005DECC
/* 8005DE78  FC 00 08 34 */	frsqrte f0, f1
/* 8005DE7C  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005DE80  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DE84  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005DE88  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DE8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DE90  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DE94  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DE98  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DE9C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DEA0  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DEA4  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DEA8  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DEAC  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DEB0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DEB4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DEB8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DEBC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DEC0  FC 21 00 32 */	fmul f1, f1, f0
/* 8005DEC4  FC 20 08 18 */	frsp f1, f1
/* 8005DEC8  48 00 00 88 */	b lbl_8005DF50
lbl_8005DECC:
/* 8005DECC  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005DED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DED4  40 80 00 10 */	bge lbl_8005DEE4
/* 8005DED8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005DEDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005DEE0  48 00 00 70 */	b lbl_8005DF50
lbl_8005DEE4:
/* 8005DEE4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8005DEE8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8005DEEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005DEF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005DEF4  7C 03 00 00 */	cmpw r3, r0
/* 8005DEF8  41 82 00 14 */	beq lbl_8005DF0C
/* 8005DEFC  40 80 00 40 */	bge lbl_8005DF3C
/* 8005DF00  2C 03 00 00 */	cmpwi r3, 0
/* 8005DF04  41 82 00 20 */	beq lbl_8005DF24
/* 8005DF08  48 00 00 34 */	b lbl_8005DF3C
lbl_8005DF0C:
/* 8005DF0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005DF10  41 82 00 0C */	beq lbl_8005DF1C
/* 8005DF14  38 00 00 01 */	li r0, 1
/* 8005DF18  48 00 00 28 */	b lbl_8005DF40
lbl_8005DF1C:
/* 8005DF1C  38 00 00 02 */	li r0, 2
/* 8005DF20  48 00 00 20 */	b lbl_8005DF40
lbl_8005DF24:
/* 8005DF24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005DF28  41 82 00 0C */	beq lbl_8005DF34
/* 8005DF2C  38 00 00 05 */	li r0, 5
/* 8005DF30  48 00 00 10 */	b lbl_8005DF40
lbl_8005DF34:
/* 8005DF34  38 00 00 03 */	li r0, 3
/* 8005DF38  48 00 00 08 */	b lbl_8005DF40
lbl_8005DF3C:
/* 8005DF3C  38 00 00 04 */	li r0, 4
lbl_8005DF40:
/* 8005DF40  2C 00 00 01 */	cmpwi r0, 1
/* 8005DF44  40 82 00 0C */	bne lbl_8005DF50
/* 8005DF48  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005DF4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005DF50:
/* 8005DF50  C0 02 88 A4 */	lfs f0, lit_5104(r2)
/* 8005DF54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DF58  40 80 00 0C */	bge lbl_8005DF64
/* 8005DF5C  C0 1A 37 08 */	lfs f0, 0x3708(r26)
/* 8005DF60  EF FF 00 32 */	fmuls f31, f31, f0
lbl_8005DF64:
/* 8005DF64  2C 17 00 00 */	cmpwi r23, 0
/* 8005DF68  40 82 00 14 */	bne lbl_8005DF7C
/* 8005DF6C  C0 3A 37 0C */	lfs f1, 0x370c(r26)
/* 8005DF70  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005DF74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DF78  40 80 01 28 */	bge lbl_8005E0A0
lbl_8005DF7C:
/* 8005DF7C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8005DF80  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8005DF84  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8005DF88  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8005DF8C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8005DF90  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8005DF94  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8005DF98  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8005DF9C  38 61 00 98 */	addi r3, r1, 0x98
/* 8005DFA0  38 81 00 74 */	addi r4, r1, 0x74
/* 8005DFA4  48 2E 93 F9 */	bl PSVECSquareDistance
/* 8005DFA8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005DFAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005DFB0  40 81 00 58 */	ble lbl_8005E008
/* 8005DFB4  FC 00 08 34 */	frsqrte f0, f1
/* 8005DFB8  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005DFBC  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DFC0  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005DFC4  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DFC8  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DFCC  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DFD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DFD4  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DFD8  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DFDC  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DFE0  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DFE4  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DFE8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005DFEC  FC 00 00 32 */	fmul f0, f0, f0
/* 8005DFF0  FC 01 00 32 */	fmul f0, f1, f0
/* 8005DFF4  FC 03 00 28 */	fsub f0, f3, f0
/* 8005DFF8  FC 02 00 32 */	fmul f0, f2, f0
/* 8005DFFC  FC 21 00 32 */	fmul f1, f1, f0
/* 8005E000  FC 20 08 18 */	frsp f1, f1
/* 8005E004  48 00 00 88 */	b lbl_8005E08C
lbl_8005E008:
/* 8005E008  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005E00C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E010  40 80 00 10 */	bge lbl_8005E020
/* 8005E014  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E018  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005E01C  48 00 00 70 */	b lbl_8005E08C
lbl_8005E020:
/* 8005E020  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8005E024  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8005E028  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005E02C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005E030  7C 03 00 00 */	cmpw r3, r0
/* 8005E034  41 82 00 14 */	beq lbl_8005E048
/* 8005E038  40 80 00 40 */	bge lbl_8005E078
/* 8005E03C  2C 03 00 00 */	cmpwi r3, 0
/* 8005E040  41 82 00 20 */	beq lbl_8005E060
/* 8005E044  48 00 00 34 */	b lbl_8005E078
lbl_8005E048:
/* 8005E048  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E04C  41 82 00 0C */	beq lbl_8005E058
/* 8005E050  38 00 00 01 */	li r0, 1
/* 8005E054  48 00 00 28 */	b lbl_8005E07C
lbl_8005E058:
/* 8005E058  38 00 00 02 */	li r0, 2
/* 8005E05C  48 00 00 20 */	b lbl_8005E07C
lbl_8005E060:
/* 8005E060  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E064  41 82 00 0C */	beq lbl_8005E070
/* 8005E068  38 00 00 05 */	li r0, 5
/* 8005E06C  48 00 00 10 */	b lbl_8005E07C
lbl_8005E070:
/* 8005E070  38 00 00 03 */	li r0, 3
/* 8005E074  48 00 00 08 */	b lbl_8005E07C
lbl_8005E078:
/* 8005E078  38 00 00 04 */	li r0, 4
lbl_8005E07C:
/* 8005E07C  2C 00 00 01 */	cmpwi r0, 1
/* 8005E080  40 82 00 0C */	bne lbl_8005E08C
/* 8005E084  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E088  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005E08C:
/* 8005E08C  C0 02 88 BC */	lfs f0, lit_5110(r2)
/* 8005E090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E094  40 80 00 0C */	bge lbl_8005E0A0
/* 8005E098  C0 1A 37 0C */	lfs f0, 0x370c(r26)
/* 8005E09C  EF FF 00 32 */	fmuls f31, f31, f0
lbl_8005E0A0:
/* 8005E0A0  2C 16 00 00 */	cmpwi r22, 0
/* 8005E0A4  40 82 00 14 */	bne lbl_8005E0B8
/* 8005E0A8  C0 3A 37 10 */	lfs f1, 0x3710(r26)
/* 8005E0AC  C0 02 88 14 */	lfs f0, lit_4354(r2)
/* 8005E0B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E0B4  40 80 01 28 */	bge lbl_8005E1DC
lbl_8005E0B8:
/* 8005E0B8  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8005E0BC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8005E0C0  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8005E0C4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8005E0C8  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8005E0CC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8005E0D0  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8005E0D4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8005E0D8  38 61 00 8C */	addi r3, r1, 0x8c
/* 8005E0DC  38 81 00 68 */	addi r4, r1, 0x68
/* 8005E0E0  48 2E 92 BD */	bl PSVECSquareDistance
/* 8005E0E4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005E0E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E0EC  40 81 00 58 */	ble lbl_8005E144
/* 8005E0F0  FC 00 08 34 */	frsqrte f0, f1
/* 8005E0F4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005E0F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E0FC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005E100  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E104  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E108  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E10C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E110  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E114  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E118  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E11C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E120  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E124  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E128  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E12C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E130  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E134  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E138  FC 21 00 32 */	fmul f1, f1, f0
/* 8005E13C  FC 20 08 18 */	frsp f1, f1
/* 8005E140  48 00 00 88 */	b lbl_8005E1C8
lbl_8005E144:
/* 8005E144  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005E148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E14C  40 80 00 10 */	bge lbl_8005E15C
/* 8005E150  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E154  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005E158  48 00 00 70 */	b lbl_8005E1C8
lbl_8005E15C:
/* 8005E15C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8005E160  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8005E164  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005E168  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005E16C  7C 03 00 00 */	cmpw r3, r0
/* 8005E170  41 82 00 14 */	beq lbl_8005E184
/* 8005E174  40 80 00 40 */	bge lbl_8005E1B4
/* 8005E178  2C 03 00 00 */	cmpwi r3, 0
/* 8005E17C  41 82 00 20 */	beq lbl_8005E19C
/* 8005E180  48 00 00 34 */	b lbl_8005E1B4
lbl_8005E184:
/* 8005E184  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E188  41 82 00 0C */	beq lbl_8005E194
/* 8005E18C  38 00 00 01 */	li r0, 1
/* 8005E190  48 00 00 28 */	b lbl_8005E1B8
lbl_8005E194:
/* 8005E194  38 00 00 02 */	li r0, 2
/* 8005E198  48 00 00 20 */	b lbl_8005E1B8
lbl_8005E19C:
/* 8005E19C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E1A0  41 82 00 0C */	beq lbl_8005E1AC
/* 8005E1A4  38 00 00 05 */	li r0, 5
/* 8005E1A8  48 00 00 10 */	b lbl_8005E1B8
lbl_8005E1AC:
/* 8005E1AC  38 00 00 03 */	li r0, 3
/* 8005E1B0  48 00 00 08 */	b lbl_8005E1B8
lbl_8005E1B4:
/* 8005E1B4  38 00 00 04 */	li r0, 4
lbl_8005E1B8:
/* 8005E1B8  2C 00 00 01 */	cmpwi r0, 1
/* 8005E1BC  40 82 00 0C */	bne lbl_8005E1C8
/* 8005E1C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E1C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005E1C8:
/* 8005E1C8  C0 02 88 BC */	lfs f0, lit_5110(r2)
/* 8005E1CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E1D0  40 80 00 0C */	bge lbl_8005E1DC
/* 8005E1D4  C0 1A 37 10 */	lfs f0, 0x3710(r26)
/* 8005E1D8  EF FF 00 32 */	fmuls f31, f31, f0
lbl_8005E1DC:
/* 8005E1DC  2C 15 00 00 */	cmpwi r21, 0
/* 8005E1E0  41 82 05 0C */	beq lbl_8005E6EC
/* 8005E1E4  7F C3 F3 78 */	mr r3, r30
/* 8005E1E8  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005E1EC  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005E1F0  38 84 00 1F */	addi r4, r4, 0x1f
/* 8005E1F4  48 30 A7 A1 */	bl strcmp
/* 8005E1F8  2C 03 00 00 */	cmpwi r3, 0
/* 8005E1FC  40 82 00 58 */	bne lbl_8005E254
/* 8005E200  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005E204  7C 00 07 75 */	extsb. r0, r0
/* 8005E208  40 82 00 2C */	bne lbl_8005E234
/* 8005E20C  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8005E210  C0 02 88 C0 */	lfs f0, lit_5111(r2)
/* 8005E214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E218  40 81 06 44 */	ble lbl_8005E85C
/* 8005E21C  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 8005E220  C0 02 88 C4 */	lfs f0, lit_5112(r2)
/* 8005E224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E228  40 80 06 34 */	bge lbl_8005E85C
/* 8005E22C  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005E230  48 00 06 2C */	b lbl_8005E85C
lbl_8005E234:
/* 8005E234  2C 00 00 04 */	cmpwi r0, 4
/* 8005E238  40 82 06 24 */	bne lbl_8005E85C
/* 8005E23C  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 8005E240  C0 02 88 C8 */	lfs f0, lit_5113(r2)
/* 8005E244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E248  40 81 06 14 */	ble lbl_8005E85C
/* 8005E24C  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005E250  48 00 06 0C */	b lbl_8005E85C
lbl_8005E254:
/* 8005E254  2C 14 00 02 */	cmpwi r20, 2
/* 8005E258  40 82 02 40 */	bne lbl_8005E498
/* 8005E25C  C0 02 88 CC */	lfs f0, lit_5114(r2)
/* 8005E260  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8005E264  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 8005E268  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8005E26C  C0 02 88 D0 */	lfs f0, lit_5115(r2)
/* 8005E270  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8005E274  C0 02 88 D4 */	lfs f0, lit_5116(r2)
/* 8005E278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E27C  41 80 00 14 */	blt lbl_8005E290
/* 8005E280  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8005E284  C0 02 88 D8 */	lfs f0, lit_5117(r2)
/* 8005E288  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E28C  40 80 01 08 */	bge lbl_8005E394
lbl_8005E290:
/* 8005E290  38 61 00 BC */	addi r3, r1, 0xbc
/* 8005E294  38 81 00 50 */	addi r4, r1, 0x50
/* 8005E298  48 2E 91 05 */	bl PSVECSquareDistance
/* 8005E29C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005E2A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E2A4  40 81 00 58 */	ble lbl_8005E2FC
/* 8005E2A8  FC 00 08 34 */	frsqrte f0, f1
/* 8005E2AC  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005E2B0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E2B4  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005E2B8  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E2BC  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E2C0  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E2C4  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E2C8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E2CC  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E2D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E2D4  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E2D8  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E2DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E2E0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E2E8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E2EC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E2F0  FC 21 00 32 */	fmul f1, f1, f0
/* 8005E2F4  FC 20 08 18 */	frsp f1, f1
/* 8005E2F8  48 00 00 88 */	b lbl_8005E380
lbl_8005E2FC:
/* 8005E2FC  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005E300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E304  40 80 00 10 */	bge lbl_8005E314
/* 8005E308  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E30C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005E310  48 00 00 70 */	b lbl_8005E380
lbl_8005E314:
/* 8005E314  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8005E318  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8005E31C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005E320  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005E324  7C 03 00 00 */	cmpw r3, r0
/* 8005E328  41 82 00 14 */	beq lbl_8005E33C
/* 8005E32C  40 80 00 40 */	bge lbl_8005E36C
/* 8005E330  2C 03 00 00 */	cmpwi r3, 0
/* 8005E334  41 82 00 20 */	beq lbl_8005E354
/* 8005E338  48 00 00 34 */	b lbl_8005E36C
lbl_8005E33C:
/* 8005E33C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E340  41 82 00 0C */	beq lbl_8005E34C
/* 8005E344  38 00 00 01 */	li r0, 1
/* 8005E348  48 00 00 28 */	b lbl_8005E370
lbl_8005E34C:
/* 8005E34C  38 00 00 02 */	li r0, 2
/* 8005E350  48 00 00 20 */	b lbl_8005E370
lbl_8005E354:
/* 8005E354  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E358  41 82 00 0C */	beq lbl_8005E364
/* 8005E35C  38 00 00 05 */	li r0, 5
/* 8005E360  48 00 00 10 */	b lbl_8005E370
lbl_8005E364:
/* 8005E364  38 00 00 03 */	li r0, 3
/* 8005E368  48 00 00 08 */	b lbl_8005E370
lbl_8005E36C:
/* 8005E36C  38 00 00 04 */	li r0, 4
lbl_8005E370:
/* 8005E370  2C 00 00 01 */	cmpwi r0, 1
/* 8005E374  40 82 00 0C */	bne lbl_8005E380
/* 8005E378  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E37C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005E380:
/* 8005E380  C0 02 88 DC */	lfs f0, lit_5118(r2)
/* 8005E384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E388  40 81 04 D4 */	ble lbl_8005E85C
/* 8005E38C  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005E390  48 00 04 CC */	b lbl_8005E85C
lbl_8005E394:
/* 8005E394  38 61 00 BC */	addi r3, r1, 0xbc
/* 8005E398  38 81 00 50 */	addi r4, r1, 0x50
/* 8005E39C  48 2E 90 01 */	bl PSVECSquareDistance
/* 8005E3A0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005E3A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E3A8  40 81 00 58 */	ble lbl_8005E400
/* 8005E3AC  FC 00 08 34 */	frsqrte f0, f1
/* 8005E3B0  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005E3B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E3B8  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005E3BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E3C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E3C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E3C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E3CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E3D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E3D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E3D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E3DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E3E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E3E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E3E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E3EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E3F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E3F4  FC 21 00 32 */	fmul f1, f1, f0
/* 8005E3F8  FC 20 08 18 */	frsp f1, f1
/* 8005E3FC  48 00 00 88 */	b lbl_8005E484
lbl_8005E400:
/* 8005E400  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005E404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E408  40 80 00 10 */	bge lbl_8005E418
/* 8005E40C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E410  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005E414  48 00 00 70 */	b lbl_8005E484
lbl_8005E418:
/* 8005E418  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8005E41C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8005E420  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005E424  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005E428  7C 03 00 00 */	cmpw r3, r0
/* 8005E42C  41 82 00 14 */	beq lbl_8005E440
/* 8005E430  40 80 00 40 */	bge lbl_8005E470
/* 8005E434  2C 03 00 00 */	cmpwi r3, 0
/* 8005E438  41 82 00 20 */	beq lbl_8005E458
/* 8005E43C  48 00 00 34 */	b lbl_8005E470
lbl_8005E440:
/* 8005E440  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E444  41 82 00 0C */	beq lbl_8005E450
/* 8005E448  38 00 00 01 */	li r0, 1
/* 8005E44C  48 00 00 28 */	b lbl_8005E474
lbl_8005E450:
/* 8005E450  38 00 00 02 */	li r0, 2
/* 8005E454  48 00 00 20 */	b lbl_8005E474
lbl_8005E458:
/* 8005E458  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E45C  41 82 00 0C */	beq lbl_8005E468
/* 8005E460  38 00 00 05 */	li r0, 5
/* 8005E464  48 00 00 10 */	b lbl_8005E474
lbl_8005E468:
/* 8005E468  38 00 00 03 */	li r0, 3
/* 8005E46C  48 00 00 08 */	b lbl_8005E474
lbl_8005E470:
/* 8005E470  38 00 00 04 */	li r0, 4
lbl_8005E474:
/* 8005E474  2C 00 00 01 */	cmpwi r0, 1
/* 8005E478  40 82 00 0C */	bne lbl_8005E484
/* 8005E47C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E480  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005E484:
/* 8005E484  C0 02 88 E0 */	lfs f0, lit_5119(r2)
/* 8005E488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E48C  40 81 03 D0 */	ble lbl_8005E85C
/* 8005E490  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005E494  48 00 03 C8 */	b lbl_8005E85C
lbl_8005E498:
/* 8005E498  2C 14 00 03 */	cmpwi r20, 3
/* 8005E49C  40 82 01 34 */	bne lbl_8005E5D0
/* 8005E4A0  C0 02 88 E4 */	lfs f0, lit_5120(r2)
/* 8005E4A4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8005E4A8  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8005E4AC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8005E4B0  C0 02 88 E8 */	lfs f0, lit_5121(r2)
/* 8005E4B4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8005E4B8  38 61 00 BC */	addi r3, r1, 0xbc
/* 8005E4BC  38 81 00 44 */	addi r4, r1, 0x44
/* 8005E4C0  48 2E 8E DD */	bl PSVECSquareDistance
/* 8005E4C4  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005E4C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E4CC  40 81 00 58 */	ble lbl_8005E524
/* 8005E4D0  FC 00 08 34 */	frsqrte f0, f1
/* 8005E4D4  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005E4D8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E4DC  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005E4E0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E4E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E4E8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E4EC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E4F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E4F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E4F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E4FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E500  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E504  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E508  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E50C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E510  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E514  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E518  FC 21 00 32 */	fmul f1, f1, f0
/* 8005E51C  FC 20 08 18 */	frsp f1, f1
/* 8005E520  48 00 00 88 */	b lbl_8005E5A8
lbl_8005E524:
/* 8005E524  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005E528  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E52C  40 80 00 10 */	bge lbl_8005E53C
/* 8005E530  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E534  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005E538  48 00 00 70 */	b lbl_8005E5A8
lbl_8005E53C:
/* 8005E53C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8005E540  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8005E544  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005E548  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005E54C  7C 03 00 00 */	cmpw r3, r0
/* 8005E550  41 82 00 14 */	beq lbl_8005E564
/* 8005E554  40 80 00 40 */	bge lbl_8005E594
/* 8005E558  2C 03 00 00 */	cmpwi r3, 0
/* 8005E55C  41 82 00 20 */	beq lbl_8005E57C
/* 8005E560  48 00 00 34 */	b lbl_8005E594
lbl_8005E564:
/* 8005E564  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E568  41 82 00 0C */	beq lbl_8005E574
/* 8005E56C  38 00 00 01 */	li r0, 1
/* 8005E570  48 00 00 28 */	b lbl_8005E598
lbl_8005E574:
/* 8005E574  38 00 00 02 */	li r0, 2
/* 8005E578  48 00 00 20 */	b lbl_8005E598
lbl_8005E57C:
/* 8005E57C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E580  41 82 00 0C */	beq lbl_8005E58C
/* 8005E584  38 00 00 05 */	li r0, 5
/* 8005E588  48 00 00 10 */	b lbl_8005E598
lbl_8005E58C:
/* 8005E58C  38 00 00 03 */	li r0, 3
/* 8005E590  48 00 00 08 */	b lbl_8005E598
lbl_8005E594:
/* 8005E594  38 00 00 04 */	li r0, 4
lbl_8005E598:
/* 8005E598  2C 00 00 01 */	cmpwi r0, 1
/* 8005E59C  40 82 00 0C */	bne lbl_8005E5A8
/* 8005E5A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E5A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005E5A8:
/* 8005E5A8  C0 02 88 EC */	lfs f0, lit_5122(r2)
/* 8005E5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E5B0  40 80 00 08 */	bge lbl_8005E5B8
/* 8005E5B4  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
lbl_8005E5B8:
/* 8005E5B8  C0 39 00 DC */	lfs f1, 0xdc(r25)
/* 8005E5BC  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005E5C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E5C4  40 80 02 98 */	bge lbl_8005E85C
/* 8005E5C8  FF E0 00 90 */	fmr f31, f0
/* 8005E5CC  48 00 02 90 */	b lbl_8005E85C
lbl_8005E5D0:
/* 8005E5D0  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8005E5D4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8005E5D8  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8005E5DC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8005E5E0  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8005E5E4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8005E5E8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005E5EC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8005E5F0  38 61 00 5C */	addi r3, r1, 0x5c
/* 8005E5F4  48 2E 8B 45 */	bl PSVECSquareMag
/* 8005E5F8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005E5FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E600  40 81 00 58 */	ble lbl_8005E658
/* 8005E604  FC 00 08 34 */	frsqrte f0, f1
/* 8005E608  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005E60C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E610  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005E614  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E618  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E61C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E620  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E624  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E628  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E62C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E630  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E634  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E638  FC 44 00 32 */	fmul f2, f4, f0
/* 8005E63C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005E640  FC 01 00 32 */	fmul f0, f1, f0
/* 8005E644  FC 03 00 28 */	fsub f0, f3, f0
/* 8005E648  FC 02 00 32 */	fmul f0, f2, f0
/* 8005E64C  FC 21 00 32 */	fmul f1, f1, f0
/* 8005E650  FC 20 08 18 */	frsp f1, f1
/* 8005E654  48 00 00 88 */	b lbl_8005E6DC
lbl_8005E658:
/* 8005E658  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005E65C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E660  40 80 00 10 */	bge lbl_8005E670
/* 8005E664  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E668  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005E66C  48 00 00 70 */	b lbl_8005E6DC
lbl_8005E670:
/* 8005E670  D0 21 00 08 */	stfs f1, 8(r1)
/* 8005E674  80 81 00 08 */	lwz r4, 8(r1)
/* 8005E678  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005E67C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005E680  7C 03 00 00 */	cmpw r3, r0
/* 8005E684  41 82 00 14 */	beq lbl_8005E698
/* 8005E688  40 80 00 40 */	bge lbl_8005E6C8
/* 8005E68C  2C 03 00 00 */	cmpwi r3, 0
/* 8005E690  41 82 00 20 */	beq lbl_8005E6B0
/* 8005E694  48 00 00 34 */	b lbl_8005E6C8
lbl_8005E698:
/* 8005E698  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E69C  41 82 00 0C */	beq lbl_8005E6A8
/* 8005E6A0  38 00 00 01 */	li r0, 1
/* 8005E6A4  48 00 00 28 */	b lbl_8005E6CC
lbl_8005E6A8:
/* 8005E6A8  38 00 00 02 */	li r0, 2
/* 8005E6AC  48 00 00 20 */	b lbl_8005E6CC
lbl_8005E6B0:
/* 8005E6B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005E6B4  41 82 00 0C */	beq lbl_8005E6C0
/* 8005E6B8  38 00 00 05 */	li r0, 5
/* 8005E6BC  48 00 00 10 */	b lbl_8005E6CC
lbl_8005E6C0:
/* 8005E6C0  38 00 00 03 */	li r0, 3
/* 8005E6C4  48 00 00 08 */	b lbl_8005E6CC
lbl_8005E6C8:
/* 8005E6C8  38 00 00 04 */	li r0, 4
lbl_8005E6CC:
/* 8005E6CC  2C 00 00 01 */	cmpwi r0, 1
/* 8005E6D0  40 82 00 0C */	bne lbl_8005E6DC
/* 8005E6D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005E6D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005E6DC:
/* 8005E6DC  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8005E6E0  40 80 01 7C */	bge lbl_8005E85C
/* 8005E6E4  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005E6E8  48 00 01 74 */	b lbl_8005E85C
lbl_8005E6EC:
/* 8005E6EC  7F C3 F3 78 */	mr r3, r30
/* 8005E6F0  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005E6F4  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005E6F8  38 84 00 36 */	addi r4, r4, 0x36
/* 8005E6FC  48 30 A2 99 */	bl strcmp
/* 8005E700  2C 03 00 00 */	cmpwi r3, 0
/* 8005E704  40 82 00 6C */	bne lbl_8005E770
/* 8005E708  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005E70C  2C 00 00 01 */	cmpwi r0, 1
/* 8005E710  40 82 00 60 */	bne lbl_8005E770
/* 8005E714  C0 61 00 C4 */	lfs f3, 0xc4(r1)
/* 8005E718  C0 02 88 F0 */	lfs f0, lit_5123(r2)
/* 8005E71C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8005E720  41 80 00 3C */	blt lbl_8005E75C
/* 8005E724  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 8005E728  C0 02 88 F4 */	lfs f0, lit_5124(r2)
/* 8005E72C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005E730  40 80 00 14 */	bge lbl_8005E744
/* 8005E734  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 8005E738  C0 02 88 F8 */	lfs f0, lit_5125(r2)
/* 8005E73C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E740  41 80 00 1C */	blt lbl_8005E75C
lbl_8005E744:
/* 8005E744  C0 02 88 FC */	lfs f0, lit_5126(r2)
/* 8005E748  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005E74C  40 80 01 10 */	bge lbl_8005E85C
/* 8005E750  C0 02 89 00 */	lfs f0, lit_5127(r2)
/* 8005E754  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8005E758  40 81 01 04 */	ble lbl_8005E85C
lbl_8005E75C:
/* 8005E75C  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005E760  88 1A 37 14 */	lbz r0, 0x3714(r26)
/* 8005E764  60 00 00 01 */	ori r0, r0, 1
/* 8005E768  98 1A 37 14 */	stb r0, 0x3714(r26)
/* 8005E76C  48 00 00 F0 */	b lbl_8005E85C
lbl_8005E770:
/* 8005E770  7F C3 F3 78 */	mr r3, r30
/* 8005E774  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005E778  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005E77C  38 84 00 3E */	addi r4, r4, 0x3e
/* 8005E780  48 30 A2 15 */	bl strcmp
/* 8005E784  2C 03 00 00 */	cmpwi r3, 0
/* 8005E788  40 82 00 8C */	bne lbl_8005E814
/* 8005E78C  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005E790  2C 00 00 09 */	cmpwi r0, 9
/* 8005E794  40 82 00 80 */	bne lbl_8005E814
/* 8005E798  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 8005E79C  C0 02 89 04 */	lfs f0, lit_5128(r2)
/* 8005E7A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005E7A4  40 80 00 34 */	bge lbl_8005E7D8
/* 8005E7A8  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 8005E7AC  C0 02 89 08 */	lfs f0, lit_5129(r2)
/* 8005E7B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E7B4  40 81 00 24 */	ble lbl_8005E7D8
/* 8005E7B8  C0 02 89 0C */	lfs f0, lit_5130(r2)
/* 8005E7BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E7C0  40 80 00 18 */	bge lbl_8005E7D8
/* 8005E7C4  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005E7C8  88 1A 37 14 */	lbz r0, 0x3714(r26)
/* 8005E7CC  60 00 00 01 */	ori r0, r0, 1
/* 8005E7D0  98 1A 37 14 */	stb r0, 0x3714(r26)
/* 8005E7D4  48 00 00 88 */	b lbl_8005E85C
lbl_8005E7D8:
/* 8005E7D8  C0 02 89 10 */	lfs f0, lit_5131(r2)
/* 8005E7DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005E7E0  40 81 00 7C */	ble lbl_8005E85C
/* 8005E7E4  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 8005E7E8  C0 02 89 14 */	lfs f0, lit_5132(r2)
/* 8005E7EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E7F0  40 81 00 6C */	ble lbl_8005E85C
/* 8005E7F4  C0 02 89 18 */	lfs f0, lit_5133(r2)
/* 8005E7F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E7FC  40 80 00 60 */	bge lbl_8005E85C
/* 8005E800  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005E804  88 1A 37 14 */	lbz r0, 0x3714(r26)
/* 8005E808  60 00 00 01 */	ori r0, r0, 1
/* 8005E80C  98 1A 37 14 */	stb r0, 0x3714(r26)
/* 8005E810  48 00 00 4C */	b lbl_8005E85C
lbl_8005E814:
/* 8005E814  7F C3 F3 78 */	mr r3, r30
/* 8005E818  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_rain__stringBase0@ha /* 0x8037A578@ha */
/* 8005E81C  38 84 A5 78 */	addi r4, r4, d_kankyo_d_kankyo_rain__stringBase0@l /* 0x8037A578@l */
/* 8005E820  38 84 00 26 */	addi r4, r4, 0x26
/* 8005E824  48 30 A1 71 */	bl strcmp
/* 8005E828  2C 03 00 00 */	cmpwi r3, 0
/* 8005E82C  40 82 00 30 */	bne lbl_8005E85C
/* 8005E830  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8005E834  2C 00 00 02 */	cmpwi r0, 2
/* 8005E838  40 82 00 24 */	bne lbl_8005E85C
/* 8005E83C  C0 21 00 C4 */	lfs f1, 0xc4(r1)
/* 8005E840  C0 02 89 1C */	lfs f0, lit_5134(r2)
/* 8005E844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005E848  40 81 00 14 */	ble lbl_8005E85C
/* 8005E84C  C3 E2 87 B8 */	lfs f31, lit_3954(r2)
/* 8005E850  88 1A 37 14 */	lbz r0, 0x3714(r26)
/* 8005E854  60 00 00 01 */	ori r0, r0, 1
/* 8005E858  98 1A 37 14 */	stb r0, 0x3714(r26)
lbl_8005E85C:
/* 8005E85C  C0 22 88 3C */	lfs f1, lit_4364(r2)
/* 8005E860  48 20 91 2D */	bl cM_rndFX__Ff
/* 8005E864  EC 1E 08 2A */	fadds f0, f30, f1
/* 8005E868  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8005E86C  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 8005E870  3A 73 FF FF */	addi r19, r19, -1
/* 8005E874  3A 52 FF C8 */	addi r18, r18, -56
lbl_8005E878:
/* 8005E878  2C 13 00 00 */	cmpwi r19, 0
/* 8005E87C  40 80 F0 0C */	bge lbl_8005D888
lbl_8005E880:
/* 8005E880  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 8005E884  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 8005E888  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 8005E88C  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 8005E890  E3 A1 01 48 */	psq_l f29, 328(r1), 0, 0 /* qr0 */
/* 8005E894  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 8005E898  39 61 01 40 */	addi r11, r1, 0x140
/* 8005E89C  48 30 39 61 */	bl _restgpr_18
/* 8005E8A0  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8005E8A4  7C 08 03 A6 */	mtlr r0
/* 8005E8A8  38 21 01 70 */	addi r1, r1, 0x170
/* 8005E8AC  4E 80 00 20 */	blr 
