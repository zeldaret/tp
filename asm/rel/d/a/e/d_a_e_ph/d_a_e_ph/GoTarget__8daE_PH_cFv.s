lbl_8073E22C:
/* 8073E22C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8073E230  7C 08 02 A6 */	mflr r0
/* 8073E234  90 01 00 64 */	stw r0, 0x64(r1)
/* 8073E238  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8073E23C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8073E240  7C 7E 1B 78 */	mr r30, r3
/* 8073E244  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 8073E248  3B E3 1B F4 */	addi r31, r3, lit_3767@l /* 0x80741BF4@l */
/* 8073E24C  C0 5E 06 50 */	lfs f2, 0x650(r30)
/* 8073E250  C0 3E 06 4C */	lfs f1, 0x64c(r30)
/* 8073E254  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 8073E258  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8073E25C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8073E260  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8073E264  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8073E268  C0 3E 06 34 */	lfs f1, 0x634(r30)
/* 8073E26C  3C 80 80 74 */	lis r4, l_HIO@ha /* 0x80741DD0@ha */
/* 8073E270  38 84 1D D0 */	addi r4, r4, l_HIO@l /* 0x80741DD0@l */
/* 8073E274  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 8073E278  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 8073E27C  4B B3 17 C1 */	bl cLib_addCalc2__FPffff
/* 8073E280  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8073E284  C0 3E 06 38 */	lfs f1, 0x638(r30)
/* 8073E288  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8073E28C  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 8073E290  4B B3 17 AD */	bl cLib_addCalc2__FPffff
/* 8073E294  7F C3 F3 78 */	mr r3, r30
/* 8073E298  4B FF FD D1 */	bl SetShapeAngle__8daE_PH_cFv
/* 8073E29C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8073E2A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8073E2A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073E2A8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8073E2AC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8073E2B0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8073E2B4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8073E2B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073E2BC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8073E2C0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8073E2C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8073E2C8  38 61 00 0C */	addi r3, r1, 0xc
/* 8073E2CC  38 81 00 18 */	addi r4, r1, 0x18
/* 8073E2D0  4B C0 90 CD */	bl PSVECSquareDistance
/* 8073E2D4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8073E2D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073E2DC  40 81 00 58 */	ble lbl_8073E334
/* 8073E2E0  FC 00 08 34 */	frsqrte f0, f1
/* 8073E2E4  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8073E2E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8073E2EC  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8073E2F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8073E2F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8073E2F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8073E2FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8073E300  FC 44 00 32 */	fmul f2, f4, f0
/* 8073E304  FC 00 00 32 */	fmul f0, f0, f0
/* 8073E308  FC 01 00 32 */	fmul f0, f1, f0
/* 8073E30C  FC 03 00 28 */	fsub f0, f3, f0
/* 8073E310  FC 02 00 32 */	fmul f0, f2, f0
/* 8073E314  FC 44 00 32 */	fmul f2, f4, f0
/* 8073E318  FC 00 00 32 */	fmul f0, f0, f0
/* 8073E31C  FC 01 00 32 */	fmul f0, f1, f0
/* 8073E320  FC 03 00 28 */	fsub f0, f3, f0
/* 8073E324  FC 02 00 32 */	fmul f0, f2, f0
/* 8073E328  FC 21 00 32 */	fmul f1, f1, f0
/* 8073E32C  FC 20 08 18 */	frsp f1, f1
/* 8073E330  48 00 00 88 */	b lbl_8073E3B8
lbl_8073E334:
/* 8073E334  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8073E338  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073E33C  40 80 00 10 */	bge lbl_8073E34C
/* 8073E340  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073E344  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8073E348  48 00 00 70 */	b lbl_8073E3B8
lbl_8073E34C:
/* 8073E34C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8073E350  80 81 00 08 */	lwz r4, 8(r1)
/* 8073E354  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8073E358  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073E35C  7C 03 00 00 */	cmpw r3, r0
/* 8073E360  41 82 00 14 */	beq lbl_8073E374
/* 8073E364  40 80 00 40 */	bge lbl_8073E3A4
/* 8073E368  2C 03 00 00 */	cmpwi r3, 0
/* 8073E36C  41 82 00 20 */	beq lbl_8073E38C
/* 8073E370  48 00 00 34 */	b lbl_8073E3A4
lbl_8073E374:
/* 8073E374  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073E378  41 82 00 0C */	beq lbl_8073E384
/* 8073E37C  38 00 00 01 */	li r0, 1
/* 8073E380  48 00 00 28 */	b lbl_8073E3A8
lbl_8073E384:
/* 8073E384  38 00 00 02 */	li r0, 2
/* 8073E388  48 00 00 20 */	b lbl_8073E3A8
lbl_8073E38C:
/* 8073E38C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8073E390  41 82 00 0C */	beq lbl_8073E39C
/* 8073E394  38 00 00 05 */	li r0, 5
/* 8073E398  48 00 00 10 */	b lbl_8073E3A8
lbl_8073E39C:
/* 8073E39C  38 00 00 03 */	li r0, 3
/* 8073E3A0  48 00 00 08 */	b lbl_8073E3A8
lbl_8073E3A4:
/* 8073E3A4  38 00 00 04 */	li r0, 4
lbl_8073E3A8:
/* 8073E3A8  2C 00 00 01 */	cmpwi r0, 1
/* 8073E3AC  40 82 00 0C */	bne lbl_8073E3B8
/* 8073E3B0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8073E3B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8073E3B8:
/* 8073E3B8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8073E3BC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8073E3C0  FC 00 00 1E */	fctiwz f0, f0
/* 8073E3C4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8073E3C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073E3CC  2C 00 00 00 */	cmpwi r0, 0
/* 8073E3D0  40 82 00 08 */	bne lbl_8073E3D8
/* 8073E3D4  38 00 00 01 */	li r0, 1
lbl_8073E3D8:
/* 8073E3D8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8073E3DC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8073E3E0  EC 41 00 28 */	fsubs f2, f1, f0
/* 8073E3E4  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 8073E3E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073E3EC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8073E3F0  3C 00 43 30 */	lis r0, 0x4330
/* 8073E3F4  90 01 00 38 */	stw r0, 0x38(r1)
/* 8073E3F8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8073E3FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8073E400  EC 02 00 24 */	fdivs f0, f2, f0
/* 8073E404  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 8073E408  38 7E 06 24 */	addi r3, r30, 0x624
/* 8073E40C  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 8073E410  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 8073E414  4B B3 23 2D */	bl cLib_chaseF__FPfff
/* 8073E418  38 7E 06 12 */	addi r3, r30, 0x612
/* 8073E41C  A8 1E 06 10 */	lha r0, 0x610(r30)
/* 8073E420  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 8073E424  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073E428  90 01 00 44 */	stw r0, 0x44(r1)
/* 8073E42C  3C 00 43 30 */	lis r0, 0x4330
/* 8073E430  90 01 00 40 */	stw r0, 0x40(r1)
/* 8073E434  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8073E438  EC 20 08 28 */	fsubs f1, f0, f1
/* 8073E43C  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 8073E440  EC 01 00 32 */	fmuls f0, f1, f0
/* 8073E444  FC 00 00 1E */	fctiwz f0, f0
/* 8073E448  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8073E44C  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8073E450  38 A0 00 10 */	li r5, 0x10
/* 8073E454  4B B3 27 3D */	bl cLib_chaseAngleS__FPsss
/* 8073E458  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 8073E45C  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 8073E460  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8073E464  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8073E468  C0 5E 07 F8 */	lfs f2, 0x7f8(r30)
/* 8073E46C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8073E470  41 82 00 1C */	beq lbl_8073E48C
/* 8073E474  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8073E478  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8073E47C  EC 00 10 2A */	fadds f0, f0, f2
/* 8073E480  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073E484  40 80 00 08 */	bge lbl_8073E48C
/* 8073E488  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_8073E48C:
/* 8073E48C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8073E490  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8073E494  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8073E498  7C 08 03 A6 */	mtlr r0
/* 8073E49C  38 21 00 60 */	addi r1, r1, 0x60
/* 8073E4A0  4E 80 00 20 */	blr 
