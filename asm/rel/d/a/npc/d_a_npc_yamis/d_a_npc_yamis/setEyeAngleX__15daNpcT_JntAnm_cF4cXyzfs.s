lbl_80B49174:
/* 80B49174  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B49178  7C 08 02 A6 */	mflr r0
/* 80B4917C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B49180  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B49184  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B49188  39 61 00 60 */	addi r11, r1, 0x60
/* 80B4918C  4B 81 90 51 */	bl _savegpr_29
/* 80B49190  7C 7F 1B 78 */	mr r31, r3
/* 80B49194  7C 80 23 78 */	mr r0, r4
/* 80B49198  FF E0 08 90 */	fmr f31, f1
/* 80B4919C  7C BD 2B 78 */	mr r29, r5
/* 80B491A0  3C 60 80 B5 */	lis r3, m__19daNpc_yamiS_Param_c@ha /* 0x80B496B0@ha */
/* 80B491A4  3B C3 96 B0 */	addi r30, r3, m__19daNpc_yamiS_Param_c@l /* 0x80B496B0@l */
/* 80B491A8  38 A0 00 00 */	li r5, 0
/* 80B491AC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80B491B0  28 04 00 00 */	cmplwi r4, 0
/* 80B491B4  41 82 01 40 */	beq lbl_80B492F4
/* 80B491B8  38 61 00 18 */	addi r3, r1, 0x18
/* 80B491BC  7C 05 03 78 */	mr r5, r0
/* 80B491C0  4B 71 D9 75 */	bl __mi__4cXyzCFRC3Vec
/* 80B491C4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80B491C8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80B491CC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B491D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B491D4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80B491D8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B491DC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80B491E0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B491E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B491E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B491EC  38 61 00 0C */	addi r3, r1, 0xc
/* 80B491F0  4B 7F DF 49 */	bl PSVECSquareMag
/* 80B491F4  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B491F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B491FC  40 81 00 58 */	ble lbl_80B49254
/* 80B49200  FC 00 08 34 */	frsqrte f0, f1
/* 80B49204  C8 9E 00 C8 */	lfd f4, 0xc8(r30)
/* 80B49208  FC 44 00 32 */	fmul f2, f4, f0
/* 80B4920C  C8 7E 00 D0 */	lfd f3, 0xd0(r30)
/* 80B49210  FC 00 00 32 */	fmul f0, f0, f0
/* 80B49214  FC 01 00 32 */	fmul f0, f1, f0
/* 80B49218  FC 03 00 28 */	fsub f0, f3, f0
/* 80B4921C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B49220  FC 44 00 32 */	fmul f2, f4, f0
/* 80B49224  FC 00 00 32 */	fmul f0, f0, f0
/* 80B49228  FC 01 00 32 */	fmul f0, f1, f0
/* 80B4922C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B49230  FC 02 00 32 */	fmul f0, f2, f0
/* 80B49234  FC 44 00 32 */	fmul f2, f4, f0
/* 80B49238  FC 00 00 32 */	fmul f0, f0, f0
/* 80B4923C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B49240  FC 03 00 28 */	fsub f0, f3, f0
/* 80B49244  FC 02 00 32 */	fmul f0, f2, f0
/* 80B49248  FC 41 00 32 */	fmul f2, f1, f0
/* 80B4924C  FC 40 10 18 */	frsp f2, f2
/* 80B49250  48 00 00 90 */	b lbl_80B492E0
lbl_80B49254:
/* 80B49254  C8 1E 00 D8 */	lfd f0, 0xd8(r30)
/* 80B49258  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B4925C  40 80 00 10 */	bge lbl_80B4926C
/* 80B49260  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B49264  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B49268  48 00 00 78 */	b lbl_80B492E0
lbl_80B4926C:
/* 80B4926C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B49270  80 81 00 08 */	lwz r4, 8(r1)
/* 80B49274  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B49278  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B4927C  7C 03 00 00 */	cmpw r3, r0
/* 80B49280  41 82 00 14 */	beq lbl_80B49294
/* 80B49284  40 80 00 40 */	bge lbl_80B492C4
/* 80B49288  2C 03 00 00 */	cmpwi r3, 0
/* 80B4928C  41 82 00 20 */	beq lbl_80B492AC
/* 80B49290  48 00 00 34 */	b lbl_80B492C4
lbl_80B49294:
/* 80B49294  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B49298  41 82 00 0C */	beq lbl_80B492A4
/* 80B4929C  38 00 00 01 */	li r0, 1
/* 80B492A0  48 00 00 28 */	b lbl_80B492C8
lbl_80B492A4:
/* 80B492A4  38 00 00 02 */	li r0, 2
/* 80B492A8  48 00 00 20 */	b lbl_80B492C8
lbl_80B492AC:
/* 80B492AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B492B0  41 82 00 0C */	beq lbl_80B492BC
/* 80B492B4  38 00 00 05 */	li r0, 5
/* 80B492B8  48 00 00 10 */	b lbl_80B492C8
lbl_80B492BC:
/* 80B492BC  38 00 00 03 */	li r0, 3
/* 80B492C0  48 00 00 08 */	b lbl_80B492C8
lbl_80B492C4:
/* 80B492C4  38 00 00 04 */	li r0, 4
lbl_80B492C8:
/* 80B492C8  2C 00 00 01 */	cmpwi r0, 1
/* 80B492CC  40 82 00 10 */	bne lbl_80B492DC
/* 80B492D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B492D4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B492D8  48 00 00 08 */	b lbl_80B492E0
lbl_80B492DC:
/* 80B492DC  FC 40 08 90 */	fmr f2, f1
lbl_80B492E0:
/* 80B492E0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80B492E4  4B 71 E3 91 */	bl cM_atan2s__Fff
/* 80B492E8  7C 03 00 D0 */	neg r0, r3
/* 80B492EC  7C 05 07 34 */	extsh r5, r0
/* 80B492F0  7C A5 EA 14 */	add r5, r5, r29
lbl_80B492F4:
/* 80B492F4  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80B492F8  7C A5 02 14 */	add r5, r5, r0
/* 80B492FC  C0 7E 00 B0 */	lfs f3, 0xb0(r30)
/* 80B49300  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80B49304  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80B49308  C8 5E 00 C0 */	lfd f2, 0xc0(r30)
/* 80B4930C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B49310  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B49314  3C 60 43 30 */	lis r3, 0x4330
/* 80B49318  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B4931C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B49320  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B49324  EC 03 20 28 */	fsubs f0, f3, f4
/* 80B49328  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B4932C  7C A0 07 34 */	extsh r0, r5
/* 80B49330  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B49334  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B49338  90 61 00 38 */	stw r3, 0x38(r1)
/* 80B4933C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B49340  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B49344  EC 00 01 32 */	fmuls f0, f0, f4
/* 80B49348  EC 01 00 2A */	fadds f0, f1, f0
/* 80B4934C  FC 00 00 1E */	fctiwz f0, f0
/* 80B49350  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B49354  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B49358  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80B4935C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B49360  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B49364  39 61 00 60 */	addi r11, r1, 0x60
/* 80B49368  4B 81 8E C1 */	bl _restgpr_29
/* 80B4936C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B49370  7C 08 03 A6 */	mtlr r0
/* 80B49374  38 21 00 70 */	addi r1, r1, 0x70
/* 80B49378  4E 80 00 20 */	blr 
