lbl_80D2B3BC:
/* 80D2B3BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D2B3C0  7C 08 02 A6 */	mflr r0
/* 80D2B3C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D2B3C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D2B3CC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D2B3D0  7C 7E 1B 78 */	mr r30, r3
/* 80D2B3D4  3C 60 80 D3 */	lis r3, l_bmd_idx@ha /* 0x80D2B7F8@ha */
/* 80D2B3D8  3B E3 B7 F8 */	addi r31, r3, l_bmd_idx@l /* 0x80D2B7F8@l */
/* 80D2B3DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D2B3E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D2B3E4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D2B3E8  C0 5E 06 28 */	lfs f2, 0x628(r30)
/* 80D2B3EC  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 80D2B3F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D2B3F4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D2B3F8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D2B3FC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80D2B400  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80D2B404  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D2B408  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D2B40C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D2B410  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80D2B414  38 61 00 0C */	addi r3, r1, 0xc
/* 80D2B418  38 81 00 18 */	addi r4, r1, 0x18
/* 80D2B41C  4B 61 BF 81 */	bl PSVECSquareDistance
/* 80D2B420  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D2B424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2B428  40 81 00 58 */	ble lbl_80D2B480
/* 80D2B42C  FC 00 08 34 */	frsqrte f0, f1
/* 80D2B430  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80D2B434  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2B438  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80D2B43C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2B440  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2B444  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2B448  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2B44C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2B450  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2B454  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2B458  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2B45C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2B460  FC 44 00 32 */	fmul f2, f4, f0
/* 80D2B464  FC 00 00 32 */	fmul f0, f0, f0
/* 80D2B468  FC 01 00 32 */	fmul f0, f1, f0
/* 80D2B46C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D2B470  FC 02 00 32 */	fmul f0, f2, f0
/* 80D2B474  FC 21 00 32 */	fmul f1, f1, f0
/* 80D2B478  FC 20 08 18 */	frsp f1, f1
/* 80D2B47C  48 00 00 88 */	b lbl_80D2B504
lbl_80D2B480:
/* 80D2B480  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80D2B484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2B488  40 80 00 10 */	bge lbl_80D2B498
/* 80D2B48C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D2B490  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D2B494  48 00 00 70 */	b lbl_80D2B504
lbl_80D2B498:
/* 80D2B498  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D2B49C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D2B4A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D2B4A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D2B4A8  7C 03 00 00 */	cmpw r3, r0
/* 80D2B4AC  41 82 00 14 */	beq lbl_80D2B4C0
/* 80D2B4B0  40 80 00 40 */	bge lbl_80D2B4F0
/* 80D2B4B4  2C 03 00 00 */	cmpwi r3, 0
/* 80D2B4B8  41 82 00 20 */	beq lbl_80D2B4D8
/* 80D2B4BC  48 00 00 34 */	b lbl_80D2B4F0
lbl_80D2B4C0:
/* 80D2B4C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D2B4C4  41 82 00 0C */	beq lbl_80D2B4D0
/* 80D2B4C8  38 00 00 01 */	li r0, 1
/* 80D2B4CC  48 00 00 28 */	b lbl_80D2B4F4
lbl_80D2B4D0:
/* 80D2B4D0  38 00 00 02 */	li r0, 2
/* 80D2B4D4  48 00 00 20 */	b lbl_80D2B4F4
lbl_80D2B4D8:
/* 80D2B4D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D2B4DC  41 82 00 0C */	beq lbl_80D2B4E8
/* 80D2B4E0  38 00 00 05 */	li r0, 5
/* 80D2B4E4  48 00 00 10 */	b lbl_80D2B4F4
lbl_80D2B4E8:
/* 80D2B4E8  38 00 00 03 */	li r0, 3
/* 80D2B4EC  48 00 00 08 */	b lbl_80D2B4F4
lbl_80D2B4F0:
/* 80D2B4F0  38 00 00 04 */	li r0, 4
lbl_80D2B4F4:
/* 80D2B4F4  2C 00 00 01 */	cmpwi r0, 1
/* 80D2B4F8  40 82 00 0C */	bne lbl_80D2B504
/* 80D2B4FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D2B500  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D2B504:
/* 80D2B504  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80D2B508  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 80D2B50C  C0 1E 06 2C */	lfs f0, 0x62c(r30)
/* 80D2B510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D2B514  7C 00 00 26 */	mfcr r0
/* 80D2B518  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80D2B51C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D2B520  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D2B524  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D2B528  7C 08 03 A6 */	mtlr r0
/* 80D2B52C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D2B530  4E 80 00 20 */	blr 
