lbl_8078B114:
/* 8078B114  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8078B118  7C 08 02 A6 */	mflr r0
/* 8078B11C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8078B120  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8078B124  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8078B128  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8078B12C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8078B130  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8078B134  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8078B138  39 61 00 60 */	addi r11, r1, 0x60
/* 8078B13C  4B BD 70 95 */	bl _savegpr_26
/* 8078B140  7C 7D 1B 78 */	mr r29, r3
/* 8078B144  3C 60 80 79 */	lis r3, lit_3767@ha /* 0x8078DDA4@ha */
/* 8078B148  3B C3 DD A4 */	addi r30, r3, lit_3767@l /* 0x8078DDA4@l */
/* 8078B14C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078B150  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078B154  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 8078B158  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 8078B15C  2C 00 00 00 */	cmpwi r0, 0
/* 8078B160  41 82 00 08 */	beq lbl_8078B168
/* 8078B164  48 00 00 10 */	b lbl_8078B174
lbl_8078B168:
/* 8078B168  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8078B16C  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 8078B170  C3 FE 00 48 */	lfs f31, 0x48(r30)
lbl_8078B174:
/* 8078B174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078B178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078B17C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8078B180  3C 80 80 79 */	lis r4, stick_d@ha /* 0x8078DF34@ha */
/* 8078B184  38 84 DF 34 */	addi r4, r4, stick_d@l /* 0x8078DF34@l */
/* 8078B188  88 1D 06 C4 */	lbz r0, 0x6c4(r29)
/* 8078B18C  7C 00 07 74 */	extsb r0, r0
/* 8078B190  1C 00 00 03 */	mulli r0, r0, 3
/* 8078B194  7C 84 02 14 */	add r4, r4, r0
/* 8078B198  88 84 FF FD */	lbz r4, -3(r4)
/* 8078B19C  7C 84 07 74 */	extsb r4, r4
/* 8078B1A0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8078B1A4  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8078B1A8  7D 89 03 A6 */	mtctr r12
/* 8078B1AC  4E 80 04 21 */	bctrl 
/* 8078B1B0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8078B1B4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8078B1B8  80 84 00 00 */	lwz r4, 0(r4)
/* 8078B1BC  4B BB B2 F5 */	bl PSMTXCopy
/* 8078B1C0  3C 60 80 79 */	lis r3, stick_d@ha /* 0x8078DF34@ha */
/* 8078B1C4  38 63 DF 34 */	addi r3, r3, stick_d@l /* 0x8078DF34@l */
/* 8078B1C8  88 1D 06 C4 */	lbz r0, 0x6c4(r29)
/* 8078B1CC  7C 00 07 74 */	extsb r0, r0
/* 8078B1D0  1C 00 00 03 */	mulli r0, r0, 3
/* 8078B1D4  7C 83 02 14 */	add r4, r3, r0
/* 8078B1D8  88 04 FF FF */	lbz r0, -1(r4)
/* 8078B1DC  7C 00 07 74 */	extsb r0, r0
/* 8078B1E0  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 8078B1E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078B1E8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8078B1EC  3C 60 43 30 */	lis r3, 0x4330
/* 8078B1F0  90 61 00 28 */	stw r3, 0x28(r1)
/* 8078B1F4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8078B1F8  EC 40 08 28 */	fsubs f2, f0, f1
/* 8078B1FC  88 04 FF FE */	lbz r0, -2(r4)
/* 8078B200  7C 00 07 74 */	extsb r0, r0
/* 8078B204  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078B208  90 01 00 34 */	stw r0, 0x34(r1)
/* 8078B20C  90 61 00 30 */	stw r3, 0x30(r1)
/* 8078B210  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8078B214  EC 20 08 28 */	fsubs f1, f0, f1
/* 8078B218  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078B21C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8078B220  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8078B224  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8078B228  38 61 00 18 */	addi r3, r1, 0x18
/* 8078B22C  38 9D 06 78 */	addi r4, r29, 0x678
/* 8078B230  4B AE 5C BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8078B234  38 61 00 0C */	addi r3, r1, 0xc
/* 8078B238  38 9D 06 78 */	addi r4, r29, 0x678
/* 8078B23C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8078B240  4B AD B8 F5 */	bl __mi__4cXyzCFRC3Vec
/* 8078B244  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8078B248  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8078B24C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8078B250  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8078B254  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8078B258  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8078B25C  AB 7D 04 DE */	lha r27, 0x4de(r29)
/* 8078B260  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8078B264  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8078B268  EF A1 00 32 */	fmuls f29, f1, f0
/* 8078B26C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8078B270  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8078B274  40 81 00 08 */	ble lbl_8078B27C
/* 8078B278  FF A0 00 90 */	fmr f29, f0
lbl_8078B27C:
/* 8078B27C  A8 9D 06 6A */	lha r4, 0x66a(r29)
/* 8078B280  1C 04 04 B0 */	mulli r0, r4, 0x4b0
/* 8078B284  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078B288  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8078B28C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8078B290  7F C3 04 2E */	lfsx f30, r3, r0
/* 8078B294  1C 04 03 84 */	mulli r0, r4, 0x384
/* 8078B298  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078B29C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8078B2A0  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 8078B2A4  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8078B2A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078B2AC  FC 00 00 1E */	fctiwz f0, f0
/* 8078B2B0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078B2B4  83 41 00 3C */	lwz r26, 0x3c(r1)
/* 8078B2B8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8078B2BC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8078B2C0  4B AD C3 B5 */	bl cM_atan2s__Fff
/* 8078B2C4  EC 1D 07 B2 */	fmuls f0, f29, f30
/* 8078B2C8  FC 00 00 1E */	fctiwz f0, f0
/* 8078B2CC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8078B2D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078B2D4  7C 00 1A 14 */	add r0, r0, r3
/* 8078B2D8  7C 04 07 34 */	extsh r4, r0
/* 8078B2DC  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8078B2E0  38 A0 00 04 */	li r5, 4
/* 8078B2E4  38 C0 06 00 */	li r6, 0x600
/* 8078B2E8  4B AE 53 21 */	bl cLib_addCalcAngleS2__FPssss
/* 8078B2EC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8078B2F0  EC 20 00 32 */	fmuls f1, f0, f0
/* 8078B2F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8078B2F8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8078B2FC  EC 41 00 2A */	fadds f2, f1, f0
/* 8078B300  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078B304  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078B308  40 81 00 0C */	ble lbl_8078B314
/* 8078B30C  FC 00 10 34 */	frsqrte f0, f2
/* 8078B310  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8078B314:
/* 8078B314  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8078B318  4B AD C3 5D */	bl cM_atan2s__Fff
/* 8078B31C  7C 1A 1A 14 */	add r0, r26, r3
/* 8078B320  7C 00 00 D0 */	neg r0, r0
/* 8078B324  7C 04 07 34 */	extsh r4, r0
/* 8078B328  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8078B32C  38 A0 00 04 */	li r5, 4
/* 8078B330  38 C0 06 00 */	li r6, 0x600
/* 8078B334  4B AE 52 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 8078B338  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8078B33C  7F 60 D8 50 */	subf r27, r0, r27
/* 8078B340  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8078B344  7F 60 07 34 */	extsh r0, r27
/* 8078B348  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 8078B34C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078B350  90 01 00 44 */	stw r0, 0x44(r1)
/* 8078B354  3C 00 43 30 */	lis r0, 0x4330
/* 8078B358  90 01 00 40 */	stw r0, 0x40(r1)
/* 8078B35C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8078B360  EC 00 08 28 */	fsubs f0, f0, f1
/* 8078B364  EC 22 00 32 */	fmuls f1, f2, f0
/* 8078B368  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8078B36C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B370  40 81 00 0C */	ble lbl_8078B37C
/* 8078B374  FC 20 00 90 */	fmr f1, f0
/* 8078B378  48 00 00 14 */	b lbl_8078B38C
lbl_8078B37C:
/* 8078B37C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8078B380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B384  40 80 00 08 */	bge lbl_8078B38C
/* 8078B388  FC 20 00 90 */	fmr f1, f0
lbl_8078B38C:
/* 8078B38C  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 8078B390  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 8078B394  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 8078B398  4B AE 46 A5 */	bl cLib_addCalc2__FPffff
/* 8078B39C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8078B3A0  C0 3D 06 94 */	lfs f1, 0x694(r29)
/* 8078B3A4  3C 80 80 79 */	lis r4, l_HIO@ha /* 0x8078E0EC@ha */
/* 8078B3A8  38 84 E0 EC */	addi r4, r4, l_HIO@l /* 0x8078E0EC@l */
/* 8078B3AC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8078B3B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8078B3B4  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8078B3B8  FC 60 F8 90 */	fmr f3, f31
/* 8078B3BC  4B AE 46 81 */	bl cLib_addCalc2__FPffff
/* 8078B3C0  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 8078B3C4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8078B3C8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8078B3CC  C0 3D 06 B8 */	lfs f1, 0x6b8(r29)
/* 8078B3D0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8078B3D4  41 81 00 44 */	bgt lbl_8078B418
/* 8078B3D8  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078E0EC@ha */
/* 8078B3DC  38 63 E0 EC */	addi r3, r3, l_HIO@l /* 0x8078E0EC@l */
/* 8078B3E0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8078B3E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078B3E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078B3EC  41 80 00 2C */	blt lbl_8078B418
/* 8078B3F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078B3F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078B3F8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8078B3FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8078B400  40 82 00 18 */	bne lbl_8078B418
/* 8078B404  7F A3 EB 78 */	mr r3, r29
/* 8078B408  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8078B40C  4B 89 19 F1 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8078B410  2C 03 00 00 */	cmpwi r3, 0
/* 8078B414  41 82 00 98 */	beq lbl_8078B4AC
lbl_8078B418:
/* 8078B418  38 00 00 00 */	li r0, 0
/* 8078B41C  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8078B420  38 00 00 0A */	li r0, 0xa
/* 8078B424  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 8078B428  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8078B42C  4B AD C5 29 */	bl cM_rndF__Ff
/* 8078B430  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 8078B434  EC 02 08 2A */	fadds f0, f2, f1
/* 8078B438  FC 00 00 1E */	fctiwz f0, f0
/* 8078B43C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8078B440  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078B444  B0 1D 06 60 */	sth r0, 0x660(r29)
/* 8078B448  FC 20 10 90 */	fmr f1, f2
/* 8078B44C  4B AD C5 09 */	bl cM_rndF__Ff
/* 8078B450  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 8078B454  EC 00 08 2A */	fadds f0, f0, f1
/* 8078B458  FC 00 00 1E */	fctiwz f0, f0
/* 8078B45C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078B460  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078B464  B0 1D 06 62 */	sth r0, 0x662(r29)
/* 8078B468  88 DD 06 C4 */	lbz r6, 0x6c4(r29)
/* 8078B46C  7C C0 07 75 */	extsb. r0, r6
/* 8078B470  41 82 01 5C */	beq lbl_8078B5CC
/* 8078B474  3C 60 80 79 */	lis r3, stick_pt@ha /* 0x8078E104@ha */
/* 8078B478  38 A3 E1 04 */	addi r5, r3, stick_pt@l /* 0x8078E104@l */
/* 8078B47C  80 85 00 00 */	lwz r4, 0(r5)
/* 8078B480  3C 60 80 79 */	lis r3, stick_bit@ha /* 0x8078DEB4@ha */
/* 8078B484  38 63 DE B4 */	addi r3, r3, stick_bit@l /* 0x8078DEB4@l */
/* 8078B488  7C C0 07 74 */	extsb r0, r6
/* 8078B48C  54 00 10 3A */	slwi r0, r0, 2
/* 8078B490  7C 63 02 14 */	add r3, r3, r0
/* 8078B494  80 03 FF FC */	lwz r0, -4(r3)
/* 8078B498  7C 80 00 78 */	andc r0, r4, r0
/* 8078B49C  90 05 00 00 */	stw r0, 0(r5)
/* 8078B4A0  38 00 00 00 */	li r0, 0
/* 8078B4A4  98 1D 06 C4 */	stb r0, 0x6c4(r29)
/* 8078B4A8  48 00 01 24 */	b lbl_8078B5CC
lbl_8078B4AC:
/* 8078B4AC  38 61 00 18 */	addi r3, r1, 0x18
/* 8078B4B0  4B BB BC 89 */	bl PSVECSquareMag
/* 8078B4B4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8078B4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B4BC  40 81 00 58 */	ble lbl_8078B514
/* 8078B4C0  FC 00 08 34 */	frsqrte f0, f1
/* 8078B4C4  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 8078B4C8  FC 44 00 32 */	fmul f2, f4, f0
/* 8078B4CC  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 8078B4D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8078B4D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8078B4D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8078B4DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8078B4E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8078B4E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8078B4E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8078B4EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8078B4F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8078B4F4  FC 44 00 32 */	fmul f2, f4, f0
/* 8078B4F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8078B4FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8078B500  FC 03 00 28 */	fsub f0, f3, f0
/* 8078B504  FC 02 00 32 */	fmul f0, f2, f0
/* 8078B508  FC 21 00 32 */	fmul f1, f1, f0
/* 8078B50C  FC 20 08 18 */	frsp f1, f1
/* 8078B510  48 00 00 88 */	b lbl_8078B598
lbl_8078B514:
/* 8078B514  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 8078B518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B51C  40 80 00 10 */	bge lbl_8078B52C
/* 8078B520  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8078B524  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8078B528  48 00 00 70 */	b lbl_8078B598
lbl_8078B52C:
/* 8078B52C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8078B530  80 81 00 08 */	lwz r4, 8(r1)
/* 8078B534  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8078B538  3C 00 7F 80 */	lis r0, 0x7f80
/* 8078B53C  7C 03 00 00 */	cmpw r3, r0
/* 8078B540  41 82 00 14 */	beq lbl_8078B554
/* 8078B544  40 80 00 40 */	bge lbl_8078B584
/* 8078B548  2C 03 00 00 */	cmpwi r3, 0
/* 8078B54C  41 82 00 20 */	beq lbl_8078B56C
/* 8078B550  48 00 00 34 */	b lbl_8078B584
lbl_8078B554:
/* 8078B554  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078B558  41 82 00 0C */	beq lbl_8078B564
/* 8078B55C  38 00 00 01 */	li r0, 1
/* 8078B560  48 00 00 28 */	b lbl_8078B588
lbl_8078B564:
/* 8078B564  38 00 00 02 */	li r0, 2
/* 8078B568  48 00 00 20 */	b lbl_8078B588
lbl_8078B56C:
/* 8078B56C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8078B570  41 82 00 0C */	beq lbl_8078B57C
/* 8078B574  38 00 00 05 */	li r0, 5
/* 8078B578  48 00 00 10 */	b lbl_8078B588
lbl_8078B57C:
/* 8078B57C  38 00 00 03 */	li r0, 3
/* 8078B580  48 00 00 08 */	b lbl_8078B588
lbl_8078B584:
/* 8078B584  38 00 00 04 */	li r0, 4
lbl_8078B588:
/* 8078B588  2C 00 00 01 */	cmpwi r0, 1
/* 8078B58C  40 82 00 0C */	bne lbl_8078B598
/* 8078B590  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8078B594  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8078B598:
/* 8078B598  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8078B59C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078B5A0  40 80 00 2C */	bge lbl_8078B5CC
/* 8078B5A4  88 1D 06 C4 */	lbz r0, 0x6c4(r29)
/* 8078B5A8  7C 00 07 75 */	extsb. r0, r0
/* 8078B5AC  40 81 00 20 */	ble lbl_8078B5CC
/* 8078B5B0  38 00 00 02 */	li r0, 2
/* 8078B5B4  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8078B5B8  38 00 00 00 */	li r0, 0
/* 8078B5BC  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 8078B5C0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8078B5C4  D0 1D 06 BC */	stfs f0, 0x6bc(r29)
/* 8078B5C8  98 1D 06 C5 */	stb r0, 0x6c5(r29)
lbl_8078B5CC:
/* 8078B5CC  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 8078B5D0  38 80 13 88 */	li r4, 0x1388
/* 8078B5D4  38 A0 00 02 */	li r5, 2
/* 8078B5D8  38 C0 07 D0 */	li r6, 0x7d0
/* 8078B5DC  4B AE 50 2D */	bl cLib_addCalcAngleS2__FPssss
/* 8078B5E0  38 00 00 01 */	li r0, 1
/* 8078B5E4  98 1D 0A 90 */	stb r0, 0xa90(r29)
/* 8078B5E8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8078B5EC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8078B5F0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8078B5F4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8078B5F8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8078B5FC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8078B600  39 61 00 60 */	addi r11, r1, 0x60
/* 8078B604  4B BD 6C 19 */	bl _restgpr_26
/* 8078B608  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8078B60C  7C 08 03 A6 */	mtlr r0
/* 8078B610  38 21 00 90 */	addi r1, r1, 0x90
/* 8078B614  4E 80 00 20 */	blr 
