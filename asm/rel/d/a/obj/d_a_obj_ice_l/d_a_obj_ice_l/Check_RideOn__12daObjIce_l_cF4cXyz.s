lbl_80C1FA60:
/* 80C1FA60  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C1FA64  7C 08 02 A6 */	mflr r0
/* 80C1FA68  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C1FA6C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C1FA70  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C1FA74  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C1FA78  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C1FA7C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C1FA80  4B 74 27 51 */	bl _savegpr_26
/* 80C1FA84  7C 7C 1B 78 */	mr r28, r3
/* 80C1FA88  7C 9A 23 78 */	mr r26, r4
/* 80C1FA8C  3C 60 80 C2 */	lis r3, lit_3675@ha /* 0x80C2078C@ha */
/* 80C1FA90  3B E3 07 8C */	addi r31, r3, lit_3675@l /* 0x80C2078C@l */
/* 80C1FA94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1FA98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1FA9C  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C1FAA0  3B A0 00 00 */	li r29, 0
/* 80C1FAA4  38 00 00 01 */	li r0, 1
/* 80C1FAA8  98 1C 05 E6 */	stb r0, 0x5e6(r28)
/* 80C1FAAC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C1FAB0  4B 65 11 55 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C1FAB4  7C 7B 1B 78 */	mr r27, r3
/* 80C1FAB8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C1FABC  7F 44 D3 78 */	mr r4, r26
/* 80C1FAC0  4B 72 78 DD */	bl PSVECSquareDistance
/* 80C1FAC4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C1FAC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1FACC  40 81 00 58 */	ble lbl_80C1FB24
/* 80C1FAD0  FC 00 08 34 */	frsqrte f0, f1
/* 80C1FAD4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80C1FAD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1FADC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80C1FAE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1FAE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1FAE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1FAEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1FAF0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1FAF4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1FAF8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1FAFC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1FB00  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1FB04  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1FB08  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1FB0C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1FB10  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1FB14  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1FB18  FC 21 00 32 */	fmul f1, f1, f0
/* 80C1FB1C  FC 20 08 18 */	frsp f1, f1
/* 80C1FB20  48 00 00 88 */	b lbl_80C1FBA8
lbl_80C1FB24:
/* 80C1FB24  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80C1FB28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1FB2C  40 80 00 10 */	bge lbl_80C1FB3C
/* 80C1FB30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C1FB34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C1FB38  48 00 00 70 */	b lbl_80C1FBA8
lbl_80C1FB3C:
/* 80C1FB3C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C1FB40  80 81 00 08 */	lwz r4, 8(r1)
/* 80C1FB44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C1FB48  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C1FB4C  7C 03 00 00 */	cmpw r3, r0
/* 80C1FB50  41 82 00 14 */	beq lbl_80C1FB64
/* 80C1FB54  40 80 00 40 */	bge lbl_80C1FB94
/* 80C1FB58  2C 03 00 00 */	cmpwi r3, 0
/* 80C1FB5C  41 82 00 20 */	beq lbl_80C1FB7C
/* 80C1FB60  48 00 00 34 */	b lbl_80C1FB94
lbl_80C1FB64:
/* 80C1FB64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C1FB68  41 82 00 0C */	beq lbl_80C1FB74
/* 80C1FB6C  38 00 00 01 */	li r0, 1
/* 80C1FB70  48 00 00 28 */	b lbl_80C1FB98
lbl_80C1FB74:
/* 80C1FB74  38 00 00 02 */	li r0, 2
/* 80C1FB78  48 00 00 20 */	b lbl_80C1FB98
lbl_80C1FB7C:
/* 80C1FB7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C1FB80  41 82 00 0C */	beq lbl_80C1FB8C
/* 80C1FB84  38 00 00 05 */	li r0, 5
/* 80C1FB88  48 00 00 10 */	b lbl_80C1FB98
lbl_80C1FB8C:
/* 80C1FB8C  38 00 00 03 */	li r0, 3
/* 80C1FB90  48 00 00 08 */	b lbl_80C1FB98
lbl_80C1FB94:
/* 80C1FB94  38 00 00 04 */	li r0, 4
lbl_80C1FB98:
/* 80C1FB98  2C 00 00 01 */	cmpwi r0, 1
/* 80C1FB9C  40 82 00 0C */	bne lbl_80C1FBA8
/* 80C1FBA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C1FBA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C1FBA8:
/* 80C1FBA8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C1FBAC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C1FBB0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80C1FBB4  7C 00 D8 50 */	subf r0, r0, r27
/* 80C1FBB8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1FBBC  7C 64 02 14 */	add r3, r4, r0
/* 80C1FBC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C1FBC4  EF E1 00 32 */	fmuls f31, f1, f0
/* 80C1FBC8  7C 44 04 2E */	lfsx f2, r4, r0
/* 80C1FBCC  FC 00 08 50 */	fneg f0, f1
/* 80C1FBD0  EF C0 00 B2 */	fmuls f30, f0, f2
/* 80C1FBD4  C0 5C 05 B4 */	lfs f2, 0x5b4(r28)
/* 80C1FBD8  7F 83 E3 78 */	mr r3, r28
/* 80C1FBDC  38 9C 05 D8 */	addi r4, r28, 0x5d8
/* 80C1FBE0  FC 20 F8 90 */	fmr f1, f31
/* 80C1FBE4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C1FBE8  EC 00 10 24 */	fdivs f0, f0, f2
/* 80C1FBEC  FC 00 00 1E */	fctiwz f0, f0
/* 80C1FBF0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C1FBF4  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80C1FBF8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C1FBFC  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80C1FC00  4B FF FD F9 */	bl RideOn_Angle__12daObjIce_l_cFRsfsf
/* 80C1FC04  C0 5C 05 B4 */	lfs f2, 0x5b4(r28)
/* 80C1FC08  7F 83 E3 78 */	mr r3, r28
/* 80C1FC0C  38 9C 05 DC */	addi r4, r28, 0x5dc
/* 80C1FC10  FC 20 F0 90 */	fmr f1, f30
/* 80C1FC14  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C1FC18  EC 00 10 24 */	fdivs f0, f0, f2
/* 80C1FC1C  FC 00 00 1E */	fctiwz f0, f0
/* 80C1FC20  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C1FC24  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80C1FC28  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C1FC2C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80C1FC30  4B FF FD C9 */	bl RideOn_Angle__12daObjIce_l_cFRsfsf
/* 80C1FC34  38 00 00 01 */	li r0, 1
/* 80C1FC38  98 1C 05 E6 */	stb r0, 0x5e6(r28)
/* 80C1FC3C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C1FC40  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C1FC44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1FC48  40 81 00 20 */	ble lbl_80C1FC68
/* 80C1FC4C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C1FC50  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1FC54  FC 00 00 1E */	fctiwz f0, f0
/* 80C1FC58  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C1FC5C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80C1FC60  38 00 01 50 */	li r0, 0x150
/* 80C1FC64  B0 1C 05 AC */	sth r0, 0x5ac(r28)
lbl_80C1FC68:
/* 80C1FC68  C0 9F 00 00 */	lfs f4, 0(r31)
/* 80C1FC6C  D0 9C 05 E0 */	stfs f4, 0x5e0(r28)
/* 80C1FC70  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 80C1FC74  7F A0 07 34 */	extsh r0, r29
/* 80C1FC78  C8 3F 00 08 */	lfd f1, 8(r31)
/* 80C1FC7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C1FC80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C1FC84  3C 00 43 30 */	lis r0, 0x4330
/* 80C1FC88  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C1FC8C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C1FC90  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C1FC94  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80C1FC98  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80C1FC9C  4B 64 FC E1 */	bl cLib_addCalc__FPfffff
/* 80C1FCA0  38 60 00 00 */	li r3, 0
/* 80C1FCA4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C1FCA8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C1FCAC  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C1FCB0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C1FCB4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C1FCB8  4B 74 25 65 */	bl _restgpr_26
/* 80C1FCBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C1FCC0  7C 08 03 A6 */	mtlr r0
/* 80C1FCC4  38 21 00 60 */	addi r1, r1, 0x60
/* 80C1FCC8  4E 80 00 20 */	blr 
