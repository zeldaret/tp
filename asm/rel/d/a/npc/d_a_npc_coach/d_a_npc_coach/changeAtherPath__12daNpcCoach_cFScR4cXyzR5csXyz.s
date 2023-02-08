lbl_8099E138:
/* 8099E138  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8099E13C  7C 08 02 A6 */	mflr r0
/* 8099E140  90 01 00 54 */	stw r0, 0x54(r1)
/* 8099E144  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8099E148  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8099E14C  39 61 00 40 */	addi r11, r1, 0x40
/* 8099E150  4B 9C 40 81 */	bl _savegpr_26
/* 8099E154  7C 7B 1B 78 */	mr r27, r3
/* 8099E158  7C BC 2B 78 */	mr r28, r5
/* 8099E15C  7C DD 33 78 */	mr r29, r6
/* 8099E160  3C 60 80 9A */	lis r3, M_attr__12daNpcCoach_c@ha /* 0x809A4ED0@ha */
/* 8099E164  3B E3 4E D0 */	addi r31, r3, M_attr__12daNpcCoach_c@l /* 0x809A4ED0@l */
/* 8099E168  7C 9E 07 74 */	extsb r30, r4
/* 8099E16C  7F C3 F3 78 */	mr r3, r30
/* 8099E170  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 8099E174  7C 04 07 74 */	extsb r4, r0
/* 8099E178  4B 6B 36 75 */	bl dPath_GetRoomPath__Fii
/* 8099E17C  90 7B 24 68 */	stw r3, 0x2468(r27)
/* 8099E180  80 1B 24 68 */	lwz r0, 0x2468(r27)
/* 8099E184  28 00 00 00 */	cmplwi r0, 0
/* 8099E188  41 82 01 D0 */	beq lbl_8099E358
/* 8099E18C  93 DB 24 74 */	stw r30, 0x2474(r27)
/* 8099E190  3B 40 00 00 */	li r26, 0
/* 8099E194  93 5B 24 78 */	stw r26, 0x2478(r27)
/* 8099E198  28 1C 00 00 */	cmplwi r28, 0
/* 8099E19C  41 82 00 88 */	beq lbl_8099E224
/* 8099E1A0  C3 FF 01 2C */	lfs f31, 0x12c(r31)
/* 8099E1A4  48 00 00 30 */	b lbl_8099E1D4
lbl_8099E1A8:
/* 8099E1A8  7F 44 D3 78 */	mr r4, r26
/* 8099E1AC  4B 6B 36 05 */	bl dPath_GetPnt__FPC5dPathi
/* 8099E1B0  7C 64 1B 78 */	mr r4, r3
/* 8099E1B4  7F 83 E3 78 */	mr r3, r28
/* 8099E1B8  38 84 00 04 */	addi r4, r4, 4
/* 8099E1BC  4B 9A 91 E1 */	bl PSVECSquareDistance
/* 8099E1C0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8099E1C4  40 80 00 0C */	bge lbl_8099E1D0
/* 8099E1C8  FF E0 08 90 */	fmr f31, f1
/* 8099E1CC  93 5B 24 78 */	stw r26, 0x2478(r27)
lbl_8099E1D0:
/* 8099E1D0  3B 5A 00 01 */	addi r26, r26, 1
lbl_8099E1D4:
/* 8099E1D4  80 7B 24 68 */	lwz r3, 0x2468(r27)
/* 8099E1D8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8099E1DC  7C 1A 00 00 */	cmpw r26, r0
/* 8099E1E0  41 80 FF C8 */	blt lbl_8099E1A8
/* 8099E1E4  80 7B 24 78 */	lwz r3, 0x2478(r27)
/* 8099E1E8  38 03 00 01 */	addi r0, r3, 1
/* 8099E1EC  90 1B 24 78 */	stw r0, 0x2478(r27)
/* 8099E1F0  80 7B 24 78 */	lwz r3, 0x2478(r27)
/* 8099E1F4  80 9B 24 68 */	lwz r4, 0x2468(r27)
/* 8099E1F8  A0 04 00 00 */	lhz r0, 0(r4)
/* 8099E1FC  7C 03 00 00 */	cmpw r3, r0
/* 8099E200  41 80 00 24 */	blt lbl_8099E224
/* 8099E204  88 04 00 05 */	lbz r0, 5(r4)
/* 8099E208  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8099E20C  41 82 00 10 */	beq lbl_8099E21C
/* 8099E210  38 00 00 00 */	li r0, 0
/* 8099E214  90 1B 24 78 */	stw r0, 0x2478(r27)
/* 8099E218  48 00 00 0C */	b lbl_8099E224
lbl_8099E21C:
/* 8099E21C  38 03 FF FF */	addi r0, r3, -1
/* 8099E220  90 1B 24 78 */	stw r0, 0x2478(r27)
lbl_8099E224:
/* 8099E224  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 8099E228  D0 1B 24 70 */	stfs f0, 0x2470(r27)
/* 8099E22C  28 1C 00 00 */	cmplwi r28, 0
/* 8099E230  41 82 01 28 */	beq lbl_8099E358
/* 8099E234  93 9B 24 6C */	stw r28, 0x246c(r27)
/* 8099E238  80 7B 24 68 */	lwz r3, 0x2468(r27)
/* 8099E23C  28 03 00 00 */	cmplwi r3, 0
/* 8099E240  41 82 00 24 */	beq lbl_8099E264
/* 8099E244  80 9B 24 78 */	lwz r4, 0x2478(r27)
/* 8099E248  4B 6B 35 69 */	bl dPath_GetPnt__FPC5dPathi
/* 8099E24C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8099E250  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8099E254  C0 03 00 08 */	lfs f0, 8(r3)
/* 8099E258  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099E25C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8099E260  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_8099E264:
/* 8099E264  80 7B 24 6C */	lwz r3, 0x246c(r27)
/* 8099E268  38 81 00 0C */	addi r4, r1, 0xc
/* 8099E26C  4B 9A 91 31 */	bl PSVECSquareDistance
/* 8099E270  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8099E274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8099E278  40 81 00 58 */	ble lbl_8099E2D0
/* 8099E27C  FC 00 08 34 */	frsqrte f0, f1
/* 8099E280  C8 9F 01 30 */	lfd f4, 0x130(r31)
/* 8099E284  FC 44 00 32 */	fmul f2, f4, f0
/* 8099E288  C8 7F 01 38 */	lfd f3, 0x138(r31)
/* 8099E28C  FC 00 00 32 */	fmul f0, f0, f0
/* 8099E290  FC 01 00 32 */	fmul f0, f1, f0
/* 8099E294  FC 03 00 28 */	fsub f0, f3, f0
/* 8099E298  FC 02 00 32 */	fmul f0, f2, f0
/* 8099E29C  FC 44 00 32 */	fmul f2, f4, f0
/* 8099E2A0  FC 00 00 32 */	fmul f0, f0, f0
/* 8099E2A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8099E2A8  FC 03 00 28 */	fsub f0, f3, f0
/* 8099E2AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8099E2B0  FC 44 00 32 */	fmul f2, f4, f0
/* 8099E2B4  FC 00 00 32 */	fmul f0, f0, f0
/* 8099E2B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8099E2BC  FC 03 00 28 */	fsub f0, f3, f0
/* 8099E2C0  FC 02 00 32 */	fmul f0, f2, f0
/* 8099E2C4  FC 21 00 32 */	fmul f1, f1, f0
/* 8099E2C8  FC 20 08 18 */	frsp f1, f1
/* 8099E2CC  48 00 00 88 */	b lbl_8099E354
lbl_8099E2D0:
/* 8099E2D0  C8 1F 01 40 */	lfd f0, 0x140(r31)
/* 8099E2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8099E2D8  40 80 00 10 */	bge lbl_8099E2E8
/* 8099E2DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8099E2E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8099E2E4  48 00 00 70 */	b lbl_8099E354
lbl_8099E2E8:
/* 8099E2E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8099E2EC  80 81 00 08 */	lwz r4, 8(r1)
/* 8099E2F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8099E2F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8099E2F8  7C 03 00 00 */	cmpw r3, r0
/* 8099E2FC  41 82 00 14 */	beq lbl_8099E310
/* 8099E300  40 80 00 40 */	bge lbl_8099E340
/* 8099E304  2C 03 00 00 */	cmpwi r3, 0
/* 8099E308  41 82 00 20 */	beq lbl_8099E328
/* 8099E30C  48 00 00 34 */	b lbl_8099E340
lbl_8099E310:
/* 8099E310  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8099E314  41 82 00 0C */	beq lbl_8099E320
/* 8099E318  38 00 00 01 */	li r0, 1
/* 8099E31C  48 00 00 28 */	b lbl_8099E344
lbl_8099E320:
/* 8099E320  38 00 00 02 */	li r0, 2
/* 8099E324  48 00 00 20 */	b lbl_8099E344
lbl_8099E328:
/* 8099E328  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8099E32C  41 82 00 0C */	beq lbl_8099E338
/* 8099E330  38 00 00 05 */	li r0, 5
/* 8099E334  48 00 00 10 */	b lbl_8099E344
lbl_8099E338:
/* 8099E338  38 00 00 03 */	li r0, 3
/* 8099E33C  48 00 00 08 */	b lbl_8099E344
lbl_8099E340:
/* 8099E340  38 00 00 04 */	li r0, 4
lbl_8099E344:
/* 8099E344  2C 00 00 01 */	cmpwi r0, 1
/* 8099E348  40 82 00 0C */	bne lbl_8099E354
/* 8099E34C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8099E350  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8099E354:
/* 8099E354  D0 3B 24 70 */	stfs f1, 0x2470(r27)
lbl_8099E358:
/* 8099E358  80 1B 24 68 */	lwz r0, 0x2468(r27)
/* 8099E35C  28 00 00 00 */	cmplwi r0, 0
/* 8099E360  41 82 01 20 */	beq lbl_8099E480
/* 8099E364  93 DB 25 68 */	stw r30, 0x2568(r27)
/* 8099E368  80 7B 24 68 */	lwz r3, 0x2468(r27)
/* 8099E36C  28 03 00 00 */	cmplwi r3, 0
/* 8099E370  41 82 00 24 */	beq lbl_8099E394
/* 8099E374  80 9B 24 78 */	lwz r4, 0x2478(r27)
/* 8099E378  4B 6B 34 39 */	bl dPath_GetPnt__FPC5dPathi
/* 8099E37C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8099E380  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8099E384  C0 03 00 08 */	lfs f0, 8(r3)
/* 8099E388  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8099E38C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8099E390  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8099E394:
/* 8099E394  7F 83 E3 78 */	mr r3, r28
/* 8099E398  38 81 00 18 */	addi r4, r1, 0x18
/* 8099E39C  4B 8D 28 69 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8099E3A0  7C 64 1B 78 */	mr r4, r3
/* 8099E3A4  A8 7D 00 02 */	lha r3, 2(r29)
/* 8099E3A8  4B 8D 2A 7D */	bl cLib_distanceAngleS__Fss
/* 8099E3AC  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8099E3B0  41 80 00 D0 */	blt lbl_8099E480
/* 8099E3B4  80 7B 24 78 */	lwz r3, 0x2478(r27)
/* 8099E3B8  38 03 00 01 */	addi r0, r3, 1
/* 8099E3BC  90 1B 24 78 */	stw r0, 0x2478(r27)
/* 8099E3C0  80 7B 24 78 */	lwz r3, 0x2478(r27)
/* 8099E3C4  80 9B 24 68 */	lwz r4, 0x2468(r27)
/* 8099E3C8  A0 04 00 00 */	lhz r0, 0(r4)
/* 8099E3CC  7C 03 00 00 */	cmpw r3, r0
/* 8099E3D0  41 80 00 24 */	blt lbl_8099E3F4
/* 8099E3D4  88 04 00 05 */	lbz r0, 5(r4)
/* 8099E3D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8099E3DC  41 82 00 10 */	beq lbl_8099E3EC
/* 8099E3E0  38 00 00 00 */	li r0, 0
/* 8099E3E4  90 1B 24 78 */	stw r0, 0x2478(r27)
/* 8099E3E8  48 00 00 0C */	b lbl_8099E3F4
lbl_8099E3EC:
/* 8099E3EC  38 03 FF FF */	addi r0, r3, -1
/* 8099E3F0  90 1B 24 78 */	stw r0, 0x2478(r27)
lbl_8099E3F4:
/* 8099E3F4  80 7B 24 68 */	lwz r3, 0x2468(r27)
/* 8099E3F8  28 03 00 00 */	cmplwi r3, 0
/* 8099E3FC  41 82 00 24 */	beq lbl_8099E420
/* 8099E400  80 9B 24 78 */	lwz r4, 0x2478(r27)
/* 8099E404  4B 6B 33 AD */	bl dPath_GetPnt__FPC5dPathi
/* 8099E408  C0 03 00 04 */	lfs f0, 4(r3)
/* 8099E40C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8099E410  C0 03 00 08 */	lfs f0, 8(r3)
/* 8099E414  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8099E418  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8099E41C  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8099E420:
/* 8099E420  7F 83 E3 78 */	mr r3, r28
/* 8099E424  38 81 00 18 */	addi r4, r1, 0x18
/* 8099E428  4B 8D 27 DD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8099E42C  7C 64 1B 78 */	mr r4, r3
/* 8099E430  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 8099E434  4B 8D 29 F1 */	bl cLib_distanceAngleS__Fss
/* 8099E438  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8099E43C  41 80 00 44 */	blt lbl_8099E480
/* 8099E440  80 7B 24 78 */	lwz r3, 0x2478(r27)
/* 8099E444  38 03 FF FF */	addi r0, r3, -1
/* 8099E448  90 1B 24 78 */	stw r0, 0x2478(r27)
/* 8099E44C  80 7B 24 78 */	lwz r3, 0x2478(r27)
/* 8099E450  2C 03 00 00 */	cmpwi r3, 0
/* 8099E454  40 80 00 2C */	bge lbl_8099E480
/* 8099E458  80 9B 24 68 */	lwz r4, 0x2468(r27)
/* 8099E45C  88 04 00 05 */	lbz r0, 5(r4)
/* 8099E460  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8099E464  41 82 00 14 */	beq lbl_8099E478
/* 8099E468  A0 64 00 00 */	lhz r3, 0(r4)
/* 8099E46C  38 03 FF FF */	addi r0, r3, -1
/* 8099E470  90 1B 24 78 */	stw r0, 0x2478(r27)
/* 8099E474  48 00 00 0C */	b lbl_8099E480
lbl_8099E478:
/* 8099E478  38 03 00 01 */	addi r0, r3, 1
/* 8099E47C  90 1B 24 78 */	stw r0, 0x2478(r27)
lbl_8099E480:
/* 8099E480  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8099E484  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8099E488  39 61 00 40 */	addi r11, r1, 0x40
/* 8099E48C  4B 9C 3D 91 */	bl _restgpr_26
/* 8099E490  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8099E494  7C 08 03 A6 */	mtlr r0
/* 8099E498  38 21 00 50 */	addi r1, r1, 0x50
/* 8099E49C  4E 80 00 20 */	blr 
