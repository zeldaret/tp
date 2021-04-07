lbl_8005B2F8:
/* 8005B2F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8005B2FC  7C 08 02 A6 */	mflr r0
/* 8005B300  90 01 00 74 */	stw r0, 0x74(r1)
/* 8005B304  39 61 00 70 */	addi r11, r1, 0x70
/* 8005B308  48 30 6E D5 */	bl _savegpr_29
/* 8005B30C  7C 9F 23 78 */	mr r31, r4
/* 8005B310  7C BD 2B 78 */	mr r29, r5
/* 8005B314  3C C0 80 43 */	lis r6, g_env_light@ha /* 0x8042CA54@ha */
/* 8005B318  3B C6 CA 54 */	addi r30, r6, g_env_light@l /* 0x8042CA54@l */
/* 8005B31C  4B FF FF 21 */	bl dKyw_pntwind_get_info__FP4cXyzP4cXyzPf
/* 8005B320  38 61 00 30 */	addi r3, r1, 0x30
/* 8005B324  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8005B328  38 A4 CA 54 */	addi r5, r4, g_env_light@l /* 0x8042CA54@l */
/* 8005B32C  38 85 0E 48 */	addi r4, r5, 0xe48
/* 8005B330  C0 45 0E 58 */	lfs f2, 0xe58(r5)
/* 8005B334  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005B338  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8005B33C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005B340  EC 22 00 32 */	fmuls f1, f2, f0
/* 8005B344  48 20 B8 41 */	bl __ml__4cXyzCFf
/* 8005B348  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8005B34C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8005B350  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8005B354  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8005B358  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8005B35C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8005B360  38 61 00 24 */	addi r3, r1, 0x24
/* 8005B364  7F E4 FB 78 */	mr r4, r31
/* 8005B368  C0 22 87 A8 */	lfs f1, lit_5855(r2)
/* 8005B36C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8005B370  EC 21 00 32 */	fmuls f1, f1, f0
/* 8005B374  48 20 B8 11 */	bl __ml__4cXyzCFf
/* 8005B378  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8005B37C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8005B380  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8005B384  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8005B388  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8005B38C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8005B390  38 61 00 18 */	addi r3, r1, 0x18
/* 8005B394  38 81 00 48 */	addi r4, r1, 0x48
/* 8005B398  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8005B39C  48 20 B7 49 */	bl __pl__4cXyzCFRC3Vec
/* 8005B3A0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8005B3A4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8005B3A8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8005B3AC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8005B3B0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8005B3B4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8005B3B8  38 61 00 54 */	addi r3, r1, 0x54
/* 8005B3BC  48 2E BD 7D */	bl PSVECSquareMag
/* 8005B3C0  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 8005B3C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005B3C8  40 81 00 58 */	ble lbl_8005B420
/* 8005B3CC  FC 00 08 34 */	frsqrte f0, f1
/* 8005B3D0  C8 82 87 78 */	lfd f4, lit_5524(r2)
/* 8005B3D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8005B3D8  C8 62 87 80 */	lfd f3, lit_5525(r2)
/* 8005B3DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8005B3E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8005B3E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8005B3E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8005B3EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8005B3F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005B3F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005B3F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005B3FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005B400  FC 44 00 32 */	fmul f2, f4, f0
/* 8005B404  FC 00 00 32 */	fmul f0, f0, f0
/* 8005B408  FC 01 00 32 */	fmul f0, f1, f0
/* 8005B40C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005B410  FC 02 00 32 */	fmul f0, f2, f0
/* 8005B414  FC 21 00 32 */	fmul f1, f1, f0
/* 8005B418  FC 20 08 18 */	frsp f1, f1
/* 8005B41C  48 00 00 88 */	b lbl_8005B4A4
lbl_8005B420:
/* 8005B420  C8 02 87 88 */	lfd f0, lit_5526(r2)
/* 8005B424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005B428  40 80 00 10 */	bge lbl_8005B438
/* 8005B42C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005B430  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005B434  48 00 00 70 */	b lbl_8005B4A4
lbl_8005B438:
/* 8005B438  D0 21 00 08 */	stfs f1, 8(r1)
/* 8005B43C  80 81 00 08 */	lwz r4, 8(r1)
/* 8005B440  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005B444  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005B448  7C 03 00 00 */	cmpw r3, r0
/* 8005B44C  41 82 00 14 */	beq lbl_8005B460
/* 8005B450  40 80 00 40 */	bge lbl_8005B490
/* 8005B454  2C 03 00 00 */	cmpwi r3, 0
/* 8005B458  41 82 00 20 */	beq lbl_8005B478
/* 8005B45C  48 00 00 34 */	b lbl_8005B490
lbl_8005B460:
/* 8005B460  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005B464  41 82 00 0C */	beq lbl_8005B470
/* 8005B468  38 00 00 01 */	li r0, 1
/* 8005B46C  48 00 00 28 */	b lbl_8005B494
lbl_8005B470:
/* 8005B470  38 00 00 02 */	li r0, 2
/* 8005B474  48 00 00 20 */	b lbl_8005B494
lbl_8005B478:
/* 8005B478  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005B47C  41 82 00 0C */	beq lbl_8005B488
/* 8005B480  38 00 00 05 */	li r0, 5
/* 8005B484  48 00 00 10 */	b lbl_8005B494
lbl_8005B488:
/* 8005B488  38 00 00 03 */	li r0, 3
/* 8005B48C  48 00 00 08 */	b lbl_8005B494
lbl_8005B490:
/* 8005B490  38 00 00 04 */	li r0, 4
lbl_8005B494:
/* 8005B494  2C 00 00 01 */	cmpwi r0, 1
/* 8005B498  40 82 00 0C */	bne lbl_8005B4A4
/* 8005B49C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005B4A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005B4A4:
/* 8005B4A4  D0 3D 00 00 */	stfs f1, 0(r29)
/* 8005B4A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8005B4AC  38 81 00 54 */	addi r4, r1, 0x54
/* 8005B4B0  48 20 B8 81 */	bl normZP__4cXyzCFv
/* 8005B4B4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8005B4B8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8005B4BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8005B4C0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8005B4C4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8005B4C8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8005B4CC  38 61 00 54 */	addi r3, r1, 0x54
/* 8005B4D0  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8005B4D4  38 84 0C F4 */	addi r4, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8005B4D8  48 20 BB 95 */	bl __ne__4cXyzCFRC3Vec
/* 8005B4DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8005B4E0  41 82 00 20 */	beq lbl_8005B500
/* 8005B4E4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8005B4E8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8005B4EC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8005B4F0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8005B4F4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8005B4F8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8005B4FC  48 00 00 1C */	b lbl_8005B518
lbl_8005B500:
/* 8005B500  C0 1E 0E 48 */	lfs f0, 0xe48(r30)
/* 8005B504  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8005B508  C0 1E 0E 4C */	lfs f0, 0xe4c(r30)
/* 8005B50C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8005B510  C0 1E 0E 50 */	lfs f0, 0xe50(r30)
/* 8005B514  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8005B518:
/* 8005B518  39 61 00 70 */	addi r11, r1, 0x70
/* 8005B51C  48 30 6D 0D */	bl _restgpr_29
/* 8005B520  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8005B524  7C 08 03 A6 */	mtlr r0
/* 8005B528  38 21 00 70 */	addi r1, r1, 0x70
/* 8005B52C  4E 80 00 20 */	blr 
