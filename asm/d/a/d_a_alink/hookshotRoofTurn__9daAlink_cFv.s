lbl_8010B3AC:
/* 8010B3AC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8010B3B0  7C 08 02 A6 */	mflr r0
/* 8010B3B4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8010B3B8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8010B3BC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8010B3C0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8010B3C4  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8010B3C8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 8010B3CC  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8010B3D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8010B3D4  48 25 6E 09 */	bl _savegpr_29
/* 8010B3D8  7C 7E 1B 78 */	mr r30, r3
/* 8010B3DC  3B E0 00 00 */	li r31, 0
/* 8010B3E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010B3E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B3E8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010B3EC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8010B3F0  40 82 01 C4 */	bne lbl_8010B5B4
/* 8010B3F4  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 8010B3F8  C0 5E 38 08 */	lfs f2, 0x3808(r30)
/* 8010B3FC  EC 20 10 2A */	fadds f1, f0, f2
/* 8010B400  C0 02 93 2C */	lfs f0, lit_7624(r2)
/* 8010B404  EF E1 00 28 */	fsubs f31, f1, f0
/* 8010B408  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 8010B40C  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 8010B410  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 8010B414  EF C2 00 28 */	fsubs f30, f2, f0
/* 8010B418  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 8010B41C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8010B420  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010B424  40 81 01 3C */	ble lbl_8010B560
/* 8010B428  A8 7E 2F E0 */	lha r3, 0x2fe0(r30)
/* 8010B42C  4B FA 80 69 */	bl getDirectionFromAngle__9daAlink_cFs
/* 8010B430  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 8010B434  C0 02 95 2C */	lfs f0, lit_21680(r2)
/* 8010B438  EC 00 00 72 */	fmuls f0, f0, f1
/* 8010B43C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8010B440  FC 00 00 1E */	fctiwz f0, f0
/* 8010B444  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8010B448  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8010B44C  2C 03 00 02 */	cmpwi r3, 2
/* 8010B450  40 82 00 14 */	bne lbl_8010B464
/* 8010B454  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010B458  7C 00 22 14 */	add r0, r0, r4
/* 8010B45C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8010B460  48 00 00 18 */	b lbl_8010B478
lbl_8010B464:
/* 8010B464  2C 03 00 03 */	cmpwi r3, 3
/* 8010B468  40 82 00 10 */	bne lbl_8010B478
/* 8010B46C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010B470  7C 04 00 50 */	subf r0, r4, r0
/* 8010B474  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_8010B478:
/* 8010B478  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010B47C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8010B480  2C 03 00 00 */	cmpwi r3, 0
/* 8010B484  40 82 00 5C */	bne lbl_8010B4E0
/* 8010B488  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8010B48C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 8010B490  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 8010B494  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 8010B498  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 8010B49C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8010B4A0  EC 02 00 2A */	fadds f0, f2, f0
/* 8010B4A4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8010B4A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8010B4AC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8010B4B0  40 81 00 0C */	ble lbl_8010B4BC
/* 8010B4B4  D3 FE 04 D4 */	stfs f31, 0x4d4(r30)
/* 8010B4B8  48 00 00 A8 */	b lbl_8010B560
lbl_8010B4BC:
/* 8010B4BC  7F C3 F3 78 */	mr r3, r30
/* 8010B4C0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020036@ha */
/* 8010B4C4  38 84 00 36 */	addi r4, r4, 0x0036 /* 0x00020036@l */
/* 8010B4C8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8010B4CC  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8010B4D0  7D 89 03 A6 */	mtctr r12
/* 8010B4D4  4E 80 04 21 */	bctrl 
/* 8010B4D8  3B E0 00 01 */	li r31, 1
/* 8010B4DC  48 00 00 84 */	b lbl_8010B560
lbl_8010B4E0:
/* 8010B4E0  2C 03 00 01 */	cmpwi r3, 1
/* 8010B4E4  40 82 00 7C */	bne lbl_8010B560
/* 8010B4E8  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 8010B4EC  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 8010B4F0  C0 23 00 5C */	lfs f1, 0x5c(r3)
/* 8010B4F4  C0 1E 33 AC */	lfs f0, 0x33ac(r30)
/* 8010B4F8  EF A1 00 32 */	fmuls f29, f1, f0
/* 8010B4FC  7F C3 F3 78 */	mr r3, r30
/* 8010B500  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8010B504  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 8010B508  7D 89 03 A6 */	mtctr r12
/* 8010B50C  4E 80 04 21 */	bctrl 
/* 8010B510  2C 03 00 00 */	cmpwi r3, 0
/* 8010B514  41 82 00 0C */	beq lbl_8010B520
/* 8010B518  C0 02 93 2C */	lfs f0, lit_7624(r2)
/* 8010B51C  EF BD 00 32 */	fmuls f29, f29, f0
lbl_8010B520:
/* 8010B520  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8010B524  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8010B528  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8010B52C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8010B530  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8010B534  40 81 00 0C */	ble lbl_8010B540
/* 8010B538  D3 DE 04 D4 */	stfs f30, 0x4d4(r30)
/* 8010B53C  48 00 00 24 */	b lbl_8010B560
lbl_8010B540:
/* 8010B540  7F C3 F3 78 */	mr r3, r30
/* 8010B544  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020037@ha */
/* 8010B548  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x00020037@l */
/* 8010B54C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8010B550  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8010B554  7D 89 03 A6 */	mtctr r12
/* 8010B558  4E 80 04 21 */	bctrl 
/* 8010B55C  3B E0 00 01 */	li r31, 1
lbl_8010B560:
/* 8010B560  3B A0 00 00 */	li r29, 0
/* 8010B564  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8010B568  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8010B56C  40 80 00 0C */	bge lbl_8010B578
/* 8010B570  63 A0 00 08 */	ori r0, r29, 8
/* 8010B574  54 1D 06 3E */	clrlwi r29, r0, 0x18
lbl_8010B578:
/* 8010B578  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8010B57C  40 81 00 0C */	ble lbl_8010B588
/* 8010B580  63 A0 00 02 */	ori r0, r29, 2
/* 8010B584  54 1D 06 3E */	clrlwi r29, r0, 0x18
lbl_8010B588:
/* 8010B588  7F C3 F3 78 */	mr r3, r30
/* 8010B58C  48 00 A6 95 */	bl checkEventRun__9daAlink_cCFv
/* 8010B590  2C 03 00 00 */	cmpwi r3, 0
/* 8010B594  40 82 00 20 */	bne lbl_8010B5B4
/* 8010B598  38 00 00 78 */	li r0, 0x78
/* 8010B59C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010B5A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B5A4  98 03 5E 3E */	stb r0, 0x5e3e(r3)
/* 8010B5A8  9B A3 5E 2E */	stb r29, 0x5e2e(r3)
/* 8010B5AC  38 00 00 00 */	li r0, 0
/* 8010B5B0  98 03 5E 58 */	stb r0, 0x5e58(r3)
lbl_8010B5B4:
/* 8010B5B4  2C 1F 00 00 */	cmpwi r31, 0
/* 8010B5B8  41 82 00 50 */	beq lbl_8010B608
/* 8010B5BC  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 8010B5C0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8010B5C4  40 82 00 50 */	bne lbl_8010B614
/* 8010B5C8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010B5CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8010B5D0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010B5D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8010B5D8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8010B5DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010B5E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B5E4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8010B5E8  38 80 00 01 */	li r4, 1
/* 8010B5EC  38 A0 00 01 */	li r5, 1
/* 8010B5F0  38 C1 00 08 */	addi r6, r1, 8
/* 8010B5F4  4B F6 45 1D */	bl StartQuake__12dVibration_cFii4cXyz
/* 8010B5F8  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 8010B5FC  60 00 00 04 */	ori r0, r0, 4
/* 8010B600  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 8010B604  48 00 00 10 */	b lbl_8010B614
lbl_8010B608:
/* 8010B608  7F C3 F3 78 */	mr r3, r30
/* 8010B60C  38 80 00 00 */	li r4, 0
/* 8010B610  4B FA BB 81 */	bl cancelItemUseQuake__9daAlink_cFi
lbl_8010B614:
/* 8010B614  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8010B618  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8010B61C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8010B620  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8010B624  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 8010B628  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8010B62C  39 61 00 30 */	addi r11, r1, 0x30
/* 8010B630  48 25 6B F9 */	bl _restgpr_29
/* 8010B634  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8010B638  7C 08 03 A6 */	mtlr r0
/* 8010B63C  38 21 00 60 */	addi r1, r1, 0x60
/* 8010B640  4E 80 00 20 */	blr 
