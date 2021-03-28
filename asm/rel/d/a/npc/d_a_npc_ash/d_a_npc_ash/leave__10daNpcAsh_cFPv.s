lbl_8095B164:
/* 8095B164  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8095B168  7C 08 02 A6 */	mflr r0
/* 8095B16C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8095B170  39 61 00 40 */	addi r11, r1, 0x40
/* 8095B174  4B A0 70 68 */	b _savegpr_29
/* 8095B178  7C 7E 1B 78 */	mr r30, r3
/* 8095B17C  3C 80 80 96 */	lis r4, m__16daNpcAsh_Param_c@ha
/* 8095B180  3B E4 D6 40 */	addi r31, r4, m__16daNpcAsh_Param_c@l
/* 8095B184  C0 1F 02 60 */	lfs f0, 0x260(r31)
/* 8095B188  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8095B18C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8095B190  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8095B194  C0 1F 02 64 */	lfs f0, 0x264(r31)
/* 8095B198  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8095B19C  A0 03 0F 5C */	lhz r0, 0xf5c(r3)
/* 8095B1A0  2C 00 00 02 */	cmpwi r0, 2
/* 8095B1A4  41 82 00 6C */	beq lbl_8095B210
/* 8095B1A8  40 80 02 C8 */	bge lbl_8095B470
/* 8095B1AC  2C 00 00 00 */	cmpwi r0, 0
/* 8095B1B0  41 82 00 0C */	beq lbl_8095B1BC
/* 8095B1B4  48 00 02 BC */	b lbl_8095B470
/* 8095B1B8  48 00 02 B8 */	b lbl_8095B470
lbl_8095B1BC:
/* 8095B1BC  38 80 00 07 */	li r4, 7
/* 8095B1C0  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095B1C4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8095B1C8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095B1CC  7D 89 03 A6 */	mtctr r12
/* 8095B1D0  4E 80 04 21 */	bctrl 
/* 8095B1D4  7F C3 F3 78 */	mr r3, r30
/* 8095B1D8  38 80 00 08 */	li r4, 8
/* 8095B1DC  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095B1E0  38 A0 00 00 */	li r5, 0
/* 8095B1E4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095B1E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095B1EC  7D 89 03 A6 */	mtctr r12
/* 8095B1F0  4E 80 04 21 */	bctrl 
/* 8095B1F4  38 00 00 00 */	li r0, 0
/* 8095B1F8  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 8095B1FC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8095B200  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8095B204  38 00 00 02 */	li r0, 2
/* 8095B208  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 8095B20C  48 00 02 64 */	b lbl_8095B470
lbl_8095B210:
/* 8095B210  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8095B214  38 81 00 0C */	addi r4, r1, 0xc
/* 8095B218  4B 91 59 EC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8095B21C  7C 7D 1B 78 */	mr r29, r3
/* 8095B220  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 8095B224  2C 00 00 00 */	cmpwi r0, 0
/* 8095B228  40 82 00 D4 */	bne lbl_8095B2FC
/* 8095B22C  C0 5F 02 48 */	lfs f2, 0x248(r31)
/* 8095B230  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 8095B234  7C 00 E8 50 */	subf r0, r0, r29
/* 8095B238  7C 00 07 34 */	extsh r0, r0
/* 8095B23C  C8 3F 02 50 */	lfd f1, 0x250(r31)
/* 8095B240  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8095B244  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095B248  3C 00 43 30 */	lis r0, 0x4330
/* 8095B24C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8095B250  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8095B254  EC 00 08 28 */	fsubs f0, f0, f1
/* 8095B258  EC 02 00 32 */	fmuls f0, f2, f0
/* 8095B25C  FC 00 02 10 */	fabs f0, f0
/* 8095B260  FC 00 00 18 */	frsp f0, f0
/* 8095B264  FC 00 00 1E */	fctiwz f0, f0
/* 8095B268  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8095B26C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095B270  2C 00 00 28 */	cmpwi r0, 0x28
/* 8095B274  40 81 00 40 */	ble lbl_8095B2B4
/* 8095B278  7F C3 F3 78 */	mr r3, r30
/* 8095B27C  38 80 00 07 */	li r4, 7
/* 8095B280  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095B284  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095B288  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095B28C  7D 89 03 A6 */	mtctr r12
/* 8095B290  4E 80 04 21 */	bctrl 
/* 8095B294  7F C3 F3 78 */	mr r3, r30
/* 8095B298  38 80 00 09 */	li r4, 9
/* 8095B29C  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8095B2A0  38 A0 00 00 */	li r5, 0
/* 8095B2A4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8095B2A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095B2AC  7D 89 03 A6 */	mtctr r12
/* 8095B2B0  4E 80 04 21 */	bctrl 
lbl_8095B2B4:
/* 8095B2B4  B3 BE 09 96 */	sth r29, 0x996(r30)
/* 8095B2B8  38 00 00 00 */	li r0, 0
/* 8095B2BC  90 1E 09 68 */	stw r0, 0x968(r30)
/* 8095B2C0  A8 7E 08 F2 */	lha r3, 0x8f2(r30)
/* 8095B2C4  A8 1E 09 96 */	lha r0, 0x996(r30)
/* 8095B2C8  7C 03 00 00 */	cmpw r3, r0
/* 8095B2CC  40 82 00 10 */	bne lbl_8095B2DC
/* 8095B2D0  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 8095B2D4  38 03 00 01 */	addi r0, r3, 1
/* 8095B2D8  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_8095B2DC:
/* 8095B2DC  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 8095B2E0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8095B2E4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8095B2E8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8095B2EC  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 8095B2F0  38 03 00 01 */	addi r0, r3, 1
/* 8095B2F4  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 8095B2F8  48 00 00 60 */	b lbl_8095B358
lbl_8095B2FC:
/* 8095B2FC  2C 00 00 01 */	cmpwi r0, 1
/* 8095B300  40 82 00 58 */	bne lbl_8095B358
/* 8095B304  7F C3 F3 78 */	mr r3, r30
/* 8095B308  A8 9E 09 96 */	lha r4, 0x996(r30)
/* 8095B30C  C0 3F 02 4C */	lfs f1, 0x24c(r31)
/* 8095B310  38 A0 00 00 */	li r5, 0
/* 8095B314  4B 7F 8B E0 */	b turn__8daNpcF_cFsfi
/* 8095B318  2C 03 00 00 */	cmpwi r3, 0
/* 8095B31C  41 82 00 2C */	beq lbl_8095B348
/* 8095B320  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8095B324  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8095B328  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8095B32C  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 8095B330  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8095B334  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 8095B338  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 8095B33C  38 03 00 01 */	addi r0, r3, 1
/* 8095B340  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 8095B344  48 00 00 14 */	b lbl_8095B358
lbl_8095B348:
/* 8095B348  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8095B34C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8095B350  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8095B354  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
lbl_8095B358:
/* 8095B358  C0 1F 02 4C */	lfs f0, 0x24c(r31)
/* 8095B35C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8095B360  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 8095B364  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8095B368  40 82 01 00 */	bne lbl_8095B468
/* 8095B36C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8095B370  38 81 00 0C */	addi r4, r1, 0xc
/* 8095B374  4B 9E C0 28 */	b PSVECSquareDistance
/* 8095B378  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8095B37C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8095B380  40 81 00 58 */	ble lbl_8095B3D8
/* 8095B384  FC 00 08 34 */	frsqrte f0, f1
/* 8095B388  C8 9F 02 68 */	lfd f4, 0x268(r31)
/* 8095B38C  FC 44 00 32 */	fmul f2, f4, f0
/* 8095B390  C8 7F 02 70 */	lfd f3, 0x270(r31)
/* 8095B394  FC 00 00 32 */	fmul f0, f0, f0
/* 8095B398  FC 01 00 32 */	fmul f0, f1, f0
/* 8095B39C  FC 03 00 28 */	fsub f0, f3, f0
/* 8095B3A0  FC 02 00 32 */	fmul f0, f2, f0
/* 8095B3A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8095B3A8  FC 00 00 32 */	fmul f0, f0, f0
/* 8095B3AC  FC 01 00 32 */	fmul f0, f1, f0
/* 8095B3B0  FC 03 00 28 */	fsub f0, f3, f0
/* 8095B3B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8095B3B8  FC 44 00 32 */	fmul f2, f4, f0
/* 8095B3BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8095B3C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8095B3C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8095B3C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8095B3CC  FC 21 00 32 */	fmul f1, f1, f0
/* 8095B3D0  FC 20 08 18 */	frsp f1, f1
/* 8095B3D4  48 00 00 88 */	b lbl_8095B45C
lbl_8095B3D8:
/* 8095B3D8  C8 1F 02 78 */	lfd f0, 0x278(r31)
/* 8095B3DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8095B3E0  40 80 00 10 */	bge lbl_8095B3F0
/* 8095B3E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8095B3E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8095B3EC  48 00 00 70 */	b lbl_8095B45C
lbl_8095B3F0:
/* 8095B3F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8095B3F4  80 81 00 08 */	lwz r4, 8(r1)
/* 8095B3F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8095B3FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8095B400  7C 03 00 00 */	cmpw r3, r0
/* 8095B404  41 82 00 14 */	beq lbl_8095B418
/* 8095B408  40 80 00 40 */	bge lbl_8095B448
/* 8095B40C  2C 03 00 00 */	cmpwi r3, 0
/* 8095B410  41 82 00 20 */	beq lbl_8095B430
/* 8095B414  48 00 00 34 */	b lbl_8095B448
lbl_8095B418:
/* 8095B418  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8095B41C  41 82 00 0C */	beq lbl_8095B428
/* 8095B420  38 00 00 01 */	li r0, 1
/* 8095B424  48 00 00 28 */	b lbl_8095B44C
lbl_8095B428:
/* 8095B428  38 00 00 02 */	li r0, 2
/* 8095B42C  48 00 00 20 */	b lbl_8095B44C
lbl_8095B430:
/* 8095B430  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8095B434  41 82 00 0C */	beq lbl_8095B440
/* 8095B438  38 00 00 05 */	li r0, 5
/* 8095B43C  48 00 00 10 */	b lbl_8095B44C
lbl_8095B440:
/* 8095B440  38 00 00 03 */	li r0, 3
/* 8095B444  48 00 00 08 */	b lbl_8095B44C
lbl_8095B448:
/* 8095B448  38 00 00 04 */	li r0, 4
lbl_8095B44C:
/* 8095B44C  2C 00 00 01 */	cmpwi r0, 1
/* 8095B450  40 82 00 0C */	bne lbl_8095B45C
/* 8095B454  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8095B458  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8095B45C:
/* 8095B45C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8095B460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8095B464  40 80 00 0C */	bge lbl_8095B470
lbl_8095B468:
/* 8095B468  7F C3 F3 78 */	mr r3, r30
/* 8095B46C  4B 6B E8 10 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8095B470:
/* 8095B470  38 60 00 01 */	li r3, 1
/* 8095B474  39 61 00 40 */	addi r11, r1, 0x40
/* 8095B478  4B A0 6D B0 */	b _restgpr_29
/* 8095B47C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8095B480  7C 08 03 A6 */	mtlr r0
/* 8095B484  38 21 00 40 */	addi r1, r1, 0x40
/* 8095B488  4E 80 00 20 */	blr 
