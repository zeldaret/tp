lbl_8065F37C:
/* 8065F37C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8065F380  7C 08 02 A6 */	mflr r0
/* 8065F384  90 01 00 34 */	stw r0, 0x34(r1)
/* 8065F388  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8065F38C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8065F390  7C 7E 1B 78 */	mr r30, r3
/* 8065F394  3C 80 80 66 */	lis r4, lit_3987@ha
/* 8065F398  3B E4 2D B0 */	addi r31, r4, lit_3987@l
/* 8065F39C  4B FF 99 35 */	bl setSeSnort__7daCow_cFv
/* 8065F3A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065F3A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065F3A8  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8065F3AC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8065F3B0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8065F3B4  4B CE 7F E8 */	b PSVECSquareDistance
/* 8065F3B8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065F3BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065F3C0  40 81 00 58 */	ble lbl_8065F418
/* 8065F3C4  FC 00 08 34 */	frsqrte f0, f1
/* 8065F3C8  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065F3CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8065F3D0  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065F3D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8065F3D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8065F3DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8065F3E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8065F3E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8065F3E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8065F3EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8065F3F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8065F3F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8065F3F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8065F3FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8065F400  FC 01 00 32 */	fmul f0, f1, f0
/* 8065F404  FC 03 00 28 */	fsub f0, f3, f0
/* 8065F408  FC 02 00 32 */	fmul f0, f2, f0
/* 8065F40C  FC 21 00 32 */	fmul f1, f1, f0
/* 8065F410  FC 20 08 18 */	frsp f1, f1
/* 8065F414  48 00 00 88 */	b lbl_8065F49C
lbl_8065F418:
/* 8065F418  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065F41C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065F420  40 80 00 10 */	bge lbl_8065F430
/* 8065F424  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8065F428  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8065F42C  48 00 00 70 */	b lbl_8065F49C
lbl_8065F430:
/* 8065F430  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8065F434  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8065F438  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065F43C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065F440  7C 03 00 00 */	cmpw r3, r0
/* 8065F444  41 82 00 14 */	beq lbl_8065F458
/* 8065F448  40 80 00 40 */	bge lbl_8065F488
/* 8065F44C  2C 03 00 00 */	cmpwi r3, 0
/* 8065F450  41 82 00 20 */	beq lbl_8065F470
/* 8065F454  48 00 00 34 */	b lbl_8065F488
lbl_8065F458:
/* 8065F458  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065F45C  41 82 00 0C */	beq lbl_8065F468
/* 8065F460  38 00 00 01 */	li r0, 1
/* 8065F464  48 00 00 28 */	b lbl_8065F48C
lbl_8065F468:
/* 8065F468  38 00 00 02 */	li r0, 2
/* 8065F46C  48 00 00 20 */	b lbl_8065F48C
lbl_8065F470:
/* 8065F470  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065F474  41 82 00 0C */	beq lbl_8065F480
/* 8065F478  38 00 00 05 */	li r0, 5
/* 8065F47C  48 00 00 10 */	b lbl_8065F48C
lbl_8065F480:
/* 8065F480  38 00 00 03 */	li r0, 3
/* 8065F484  48 00 00 08 */	b lbl_8065F48C
lbl_8065F488:
/* 8065F488  38 00 00 04 */	li r0, 4
lbl_8065F48C:
/* 8065F48C  2C 00 00 01 */	cmpwi r0, 1
/* 8065F490  40 82 00 0C */	bne lbl_8065F49C
/* 8065F494  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8065F498  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8065F49C:
/* 8065F49C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8065F4A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065F4A4  40 80 00 10 */	bge lbl_8065F4B4
/* 8065F4A8  7F C3 F3 78 */	mr r3, r30
/* 8065F4AC  38 80 00 02 */	li r4, 2
/* 8065F4B0  4B FF 98 8D */	bl setRushVibration__7daCow_cFi
lbl_8065F4B4:
/* 8065F4B4  38 00 00 01 */	li r0, 1
/* 8065F4B8  98 1E 0C B5 */	stb r0, 0xcb5(r30)
/* 8065F4BC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8065F4C0  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8065F4C4  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8065F4C8  4B C1 12 78 */	b cLib_chaseF__FPfff
/* 8065F4CC  38 7E 0C 42 */	addi r3, r30, 0xc42
/* 8065F4D0  38 80 10 00 */	li r4, 0x1000
/* 8065F4D4  38 A0 04 00 */	li r5, 0x400
/* 8065F4D8  4B C1 11 F8 */	b cLib_chaseS__FPsss
/* 8065F4DC  80 7E 0C 0C */	lwz r3, 0xc0c(r30)
/* 8065F4E0  88 9E 0C 10 */	lbz r4, 0xc10(r30)
/* 8065F4E4  7C 84 07 74 */	extsb r4, r4
/* 8065F4E8  4B 9F 22 C8 */	b dPath_GetPnt__FPC5dPathi
/* 8065F4EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8065F4F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8065F4F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8065F4F8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8065F4FC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8065F500  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8065F504  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8065F508  38 81 00 10 */	addi r4, r1, 0x10
/* 8065F50C  4B C1 16 F8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8065F510  7C 64 1B 78 */	mr r4, r3
/* 8065F514  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8065F518  38 A0 00 10 */	li r5, 0x10
/* 8065F51C  38 C0 08 00 */	li r6, 0x800
/* 8065F520  38 E0 01 00 */	li r7, 0x100
/* 8065F524  4B C1 10 1C */	b cLib_addCalcAngleS__FPsssss
/* 8065F528  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8065F52C  38 81 00 10 */	addi r4, r1, 0x10
/* 8065F530  4B CE 7E 6C */	b PSVECSquareDistance
/* 8065F534  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065F538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065F53C  40 81 00 58 */	ble lbl_8065F594
/* 8065F540  FC 00 08 34 */	frsqrte f0, f1
/* 8065F544  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065F548  FC 44 00 32 */	fmul f2, f4, f0
/* 8065F54C  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065F550  FC 00 00 32 */	fmul f0, f0, f0
/* 8065F554  FC 01 00 32 */	fmul f0, f1, f0
/* 8065F558  FC 03 00 28 */	fsub f0, f3, f0
/* 8065F55C  FC 02 00 32 */	fmul f0, f2, f0
/* 8065F560  FC 44 00 32 */	fmul f2, f4, f0
/* 8065F564  FC 00 00 32 */	fmul f0, f0, f0
/* 8065F568  FC 01 00 32 */	fmul f0, f1, f0
/* 8065F56C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065F570  FC 02 00 32 */	fmul f0, f2, f0
/* 8065F574  FC 44 00 32 */	fmul f2, f4, f0
/* 8065F578  FC 00 00 32 */	fmul f0, f0, f0
/* 8065F57C  FC 01 00 32 */	fmul f0, f1, f0
/* 8065F580  FC 03 00 28 */	fsub f0, f3, f0
/* 8065F584  FC 02 00 32 */	fmul f0, f2, f0
/* 8065F588  FC 21 00 32 */	fmul f1, f1, f0
/* 8065F58C  FC 20 08 18 */	frsp f1, f1
/* 8065F590  48 00 00 88 */	b lbl_8065F618
lbl_8065F594:
/* 8065F594  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065F598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065F59C  40 80 00 10 */	bge lbl_8065F5AC
/* 8065F5A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8065F5A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8065F5A8  48 00 00 70 */	b lbl_8065F618
lbl_8065F5AC:
/* 8065F5AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065F5B0  80 81 00 08 */	lwz r4, 8(r1)
/* 8065F5B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065F5B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065F5BC  7C 03 00 00 */	cmpw r3, r0
/* 8065F5C0  41 82 00 14 */	beq lbl_8065F5D4
/* 8065F5C4  40 80 00 40 */	bge lbl_8065F604
/* 8065F5C8  2C 03 00 00 */	cmpwi r3, 0
/* 8065F5CC  41 82 00 20 */	beq lbl_8065F5EC
/* 8065F5D0  48 00 00 34 */	b lbl_8065F604
lbl_8065F5D4:
/* 8065F5D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065F5D8  41 82 00 0C */	beq lbl_8065F5E4
/* 8065F5DC  38 00 00 01 */	li r0, 1
/* 8065F5E0  48 00 00 28 */	b lbl_8065F608
lbl_8065F5E4:
/* 8065F5E4  38 00 00 02 */	li r0, 2
/* 8065F5E8  48 00 00 20 */	b lbl_8065F608
lbl_8065F5EC:
/* 8065F5EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065F5F0  41 82 00 0C */	beq lbl_8065F5FC
/* 8065F5F4  38 00 00 05 */	li r0, 5
/* 8065F5F8  48 00 00 10 */	b lbl_8065F608
lbl_8065F5FC:
/* 8065F5FC  38 00 00 03 */	li r0, 3
/* 8065F600  48 00 00 08 */	b lbl_8065F608
lbl_8065F604:
/* 8065F604  38 00 00 04 */	li r0, 4
lbl_8065F608:
/* 8065F608  2C 00 00 01 */	cmpwi r0, 1
/* 8065F60C  40 82 00 0C */	bne lbl_8065F618
/* 8065F610  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8065F614  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8065F618:
/* 8065F618  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8065F61C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065F620  40 80 00 6C */	bge lbl_8065F68C
/* 8065F624  88 7E 0C 10 */	lbz r3, 0xc10(r30)
/* 8065F628  38 03 00 01 */	addi r0, r3, 1
/* 8065F62C  98 1E 0C 10 */	stb r0, 0xc10(r30)
/* 8065F630  88 1E 0C 10 */	lbz r0, 0xc10(r30)
/* 8065F634  7C 03 07 74 */	extsb r3, r0
/* 8065F638  80 9E 0C 0C */	lwz r4, 0xc0c(r30)
/* 8065F63C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8065F640  7C 03 00 00 */	cmpw r3, r0
/* 8065F644  41 80 00 48 */	blt lbl_8065F68C
/* 8065F648  A0 04 00 02 */	lhz r0, 2(r4)
/* 8065F64C  7C 00 07 34 */	extsh r0, r0
/* 8065F650  2C 00 FF FF */	cmpwi r0, -1
/* 8065F654  41 82 00 28 */	beq lbl_8065F67C
/* 8065F658  38 00 00 00 */	li r0, 0
/* 8065F65C  98 1E 0C 10 */	stb r0, 0xc10(r30)
/* 8065F660  80 7E 0C 0C */	lwz r3, 0xc0c(r30)
/* 8065F664  A0 63 00 02 */	lhz r3, 2(r3)
/* 8065F668  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8065F66C  7C 04 07 74 */	extsb r4, r0
/* 8065F670  4B 9F 21 7C */	b dPath_GetRoomPath__Fii
/* 8065F674  90 7E 0C 0C */	stw r3, 0xc0c(r30)
/* 8065F678  48 00 00 14 */	b lbl_8065F68C
lbl_8065F67C:
/* 8065F67C  38 00 00 07 */	li r0, 7
/* 8065F680  98 1E 0C 9F */	stb r0, 0xc9f(r30)
/* 8065F684  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065F688  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8065F68C:
/* 8065F68C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8065F690  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8065F694  38 A0 00 08 */	li r5, 8
/* 8065F698  38 C0 04 00 */	li r6, 0x400
/* 8065F69C  38 E0 01 00 */	li r7, 0x100
/* 8065F6A0  4B C1 0E A0 */	b cLib_addCalcAngleS__FPsssss
/* 8065F6A4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8065F6A8  B0 1E 0C 34 */	sth r0, 0xc34(r30)
/* 8065F6AC  A0 1E 05 68 */	lhz r0, 0x568(r30)
/* 8065F6B0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8065F6B4  41 82 00 14 */	beq lbl_8065F6C8
/* 8065F6B8  38 00 00 07 */	li r0, 7
/* 8065F6BC  98 1E 0C 9F */	stb r0, 0xc9f(r30)
/* 8065F6C0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065F6C4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8065F6C8:
/* 8065F6C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8065F6CC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8065F6D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8065F6D4  7C 08 03 A6 */	mtlr r0
/* 8065F6D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8065F6DC  4E 80 00 20 */	blr 
