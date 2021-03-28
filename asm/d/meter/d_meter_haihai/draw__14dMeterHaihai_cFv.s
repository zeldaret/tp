lbl_8020B140:
/* 8020B140  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8020B144  7C 08 02 A6 */	mflr r0
/* 8020B148  90 01 00 34 */	stw r0, 0x34(r1)
/* 8020B14C  39 61 00 30 */	addi r11, r1, 0x30
/* 8020B150  48 15 70 8D */	bl _savegpr_29
/* 8020B154  7C 7D 1B 78 */	mr r29, r3
/* 8020B158  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8020B15C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8020B160  40 82 03 A0 */	bne lbl_8020B500
/* 8020B164  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8020B168  40 82 03 98 */	bne lbl_8020B500
/* 8020B16C  54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 8020B170  40 82 03 90 */	bne lbl_8020B500
/* 8020B174  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 8020B178  40 82 03 88 */	bne lbl_8020B500
/* 8020B17C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8020B180  40 82 03 80 */	bne lbl_8020B500
/* 8020B184  54 60 01 4B */	rlwinm. r0, r3, 0, 5, 5
/* 8020B188  41 82 00 08 */	beq lbl_8020B190
/* 8020B18C  48 00 03 74 */	b lbl_8020B500
lbl_8020B190:
/* 8020B190  88 1D 00 28 */	lbz r0, 0x28(r29)
/* 8020B194  28 00 00 04 */	cmplwi r0, 4
/* 8020B198  40 82 00 50 */	bne lbl_8020B1E8
/* 8020B19C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020B1A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020B1A4  89 03 5E 81 */	lbz r8, 0x5e81(r3)
/* 8020B1A8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020B1AC  38 C3 EB C8 */	addi r6, r3, g_drawHIO@l
/* 8020B1B0  8B C6 05 50 */	lbz r30, 0x550(r6)
/* 8020B1B4  38 60 00 00 */	li r3, 0
/* 8020B1B8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8020B1BC  38 81 00 08 */	addi r4, r1, 8
/* 8020B1C0  38 00 00 02 */	li r0, 2
/* 8020B1C4  7C 09 03 A6 */	mtctr r0
lbl_8020B1C8:
/* 8020B1C8  7C E6 1A 14 */	add r7, r6, r3
/* 8020B1CC  C0 07 05 3C */	lfs f0, 0x53c(r7)
/* 8020B1D0  7C 05 1D 2E */	stfsx f0, r5, r3
/* 8020B1D4  C0 07 05 44 */	lfs f0, 0x544(r7)
/* 8020B1D8  7C 04 1D 2E */	stfsx f0, r4, r3
/* 8020B1DC  38 63 00 04 */	addi r3, r3, 4
/* 8020B1E0  42 00 FF E8 */	bdnz lbl_8020B1C8
/* 8020B1E4  48 00 00 A8 */	b lbl_8020B28C
lbl_8020B1E8:
/* 8020B1E8  28 00 00 01 */	cmplwi r0, 1
/* 8020B1EC  40 82 00 58 */	bne lbl_8020B244
/* 8020B1F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020B1F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020B1F8  89 03 5E 81 */	lbz r8, 0x5e81(r3)
/* 8020B1FC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020B200  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8020B204  8B C3 05 24 */	lbz r30, 0x524(r3)
/* 8020B208  C0 23 05 0C */	lfs f1, 0x50c(r3)
/* 8020B20C  C0 02 AD B4 */	lfs f0, lit_3890(r2)
/* 8020B210  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B214  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8020B218  C0 23 05 14 */	lfs f1, 0x514(r3)
/* 8020B21C  C0 02 AD B8 */	lfs f0, lit_3891(r2)
/* 8020B220  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B224  D0 01 00 08 */	stfs f0, 8(r1)
/* 8020B228  C0 23 05 10 */	lfs f1, 0x510(r3)
/* 8020B22C  C0 02 AD BC */	lfs f0, lit_3892(r2)
/* 8020B230  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B234  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8020B238  C0 03 05 18 */	lfs f0, 0x518(r3)
/* 8020B23C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8020B240  48 00 00 4C */	b lbl_8020B28C
lbl_8020B244:
/* 8020B244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020B248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020B24C  89 03 5E 81 */	lbz r8, 0x5e81(r3)
/* 8020B250  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8020B254  38 C3 EB C8 */	addi r6, r3, g_drawHIO@l
/* 8020B258  8B C6 05 24 */	lbz r30, 0x524(r6)
/* 8020B25C  38 60 00 00 */	li r3, 0
/* 8020B260  38 A1 00 10 */	addi r5, r1, 0x10
/* 8020B264  38 81 00 08 */	addi r4, r1, 8
/* 8020B268  38 00 00 02 */	li r0, 2
/* 8020B26C  7C 09 03 A6 */	mtctr r0
lbl_8020B270:
/* 8020B270  7C E6 1A 14 */	add r7, r6, r3
/* 8020B274  C0 07 05 0C */	lfs f0, 0x50c(r7)
/* 8020B278  7C 05 1D 2E */	stfsx f0, r5, r3
/* 8020B27C  C0 07 05 14 */	lfs f0, 0x514(r7)
/* 8020B280  7C 04 1D 2E */	stfsx f0, r4, r3
/* 8020B284  38 63 00 04 */	addi r3, r3, 4
/* 8020B288  42 00 FF E8 */	bdnz lbl_8020B270
lbl_8020B28C:
/* 8020B28C  55 1F 06 3E */	clrlwi r31, r8, 0x18
/* 8020B290  55 00 07 BD */	rlwinm. r0, r8, 0, 0x1e, 0x1e
/* 8020B294  40 82 00 0C */	bne lbl_8020B2A0
/* 8020B298  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8020B29C  41 82 00 90 */	beq lbl_8020B32C
lbl_8020B2A0:
/* 8020B2A0  80 7D 00 08 */	lwz r3, 8(r29)
/* 8020B2A4  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B2A8  C0 22 AD C0 */	lfs f1, lit_3893(r2)
/* 8020B2AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8020B2B0  EC 01 00 2A */	fadds f0, f1, f0
/* 8020B2B4  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8020B2B8  C0 22 AD C4 */	lfs f1, lit_3894(r2)
/* 8020B2BC  C0 01 00 08 */	lfs f0, 8(r1)
/* 8020B2C0  EC 01 00 2A */	fadds f0, f1, f0
/* 8020B2C4  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 8020B2C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020B2CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020B2D0  7D 89 03 A6 */	mtctr r12
/* 8020B2D4  4E 80 04 21 */	bctrl 
/* 8020B2D8  80 7D 00 08 */	lwz r3, 8(r29)
/* 8020B2DC  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B2E0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8020B2E4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8020B2E8  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020B2EC  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020B2F0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020B2F4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020B2F8  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020B2FC  EC 21 00 32 */	fmuls f1, f1, f0
/* 8020B300  EC 42 00 32 */	fmuls f2, f2, f0
/* 8020B304  38 80 00 7A */	li r4, 0x7a
/* 8020B308  C0 62 AD B0 */	lfs f3, lit_3742(r2)
/* 8020B30C  48 0E BE D1 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 8020B310  80 7D 00 04 */	lwz r3, 4(r29)
/* 8020B314  C0 22 AD B0 */	lfs f1, lit_3742(r2)
/* 8020B318  FC 40 08 90 */	fmr f2, f1
/* 8020B31C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8020B320  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8020B324  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8020B328  48 0E DB AD */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_8020B32C:
/* 8020B32C  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 8020B330  40 82 00 0C */	bne lbl_8020B33C
/* 8020B334  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8020B338  41 82 00 90 */	beq lbl_8020B3C8
lbl_8020B33C:
/* 8020B33C  80 7D 00 08 */	lwz r3, 8(r29)
/* 8020B340  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B344  C0 22 AD C0 */	lfs f1, lit_3893(r2)
/* 8020B348  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8020B34C  EC 01 00 2A */	fadds f0, f1, f0
/* 8020B350  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8020B354  C0 22 AD C4 */	lfs f1, lit_3894(r2)
/* 8020B358  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8020B35C  EC 01 00 2A */	fadds f0, f1, f0
/* 8020B360  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 8020B364  81 83 00 00 */	lwz r12, 0(r3)
/* 8020B368  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020B36C  7D 89 03 A6 */	mtctr r12
/* 8020B370  4E 80 04 21 */	bctrl 
/* 8020B374  80 7D 00 08 */	lwz r3, 8(r29)
/* 8020B378  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B37C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8020B380  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8020B384  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020B388  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020B38C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020B390  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020B394  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020B398  EC 21 00 32 */	fmuls f1, f1, f0
/* 8020B39C  EC 42 00 32 */	fmuls f2, f2, f0
/* 8020B3A0  38 80 00 7A */	li r4, 0x7a
/* 8020B3A4  C0 62 AD CC */	lfs f3, lit_3896(r2)
/* 8020B3A8  48 0E BE 35 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 8020B3AC  80 7D 00 04 */	lwz r3, 4(r29)
/* 8020B3B0  C0 22 AD B0 */	lfs f1, lit_3742(r2)
/* 8020B3B4  FC 40 08 90 */	fmr f2, f1
/* 8020B3B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8020B3BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8020B3C0  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8020B3C4  48 0E DB 11 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_8020B3C8:
/* 8020B3C8  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 8020B3CC  40 82 00 0C */	bne lbl_8020B3D8
/* 8020B3D0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8020B3D4  41 82 00 90 */	beq lbl_8020B464
lbl_8020B3D8:
/* 8020B3D8  80 7D 00 08 */	lwz r3, 8(r29)
/* 8020B3DC  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B3E0  C0 22 AD C0 */	lfs f1, lit_3893(r2)
/* 8020B3E4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8020B3E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8020B3EC  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8020B3F0  C0 22 AD C4 */	lfs f1, lit_3894(r2)
/* 8020B3F4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8020B3F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B3FC  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 8020B400  81 83 00 00 */	lwz r12, 0(r3)
/* 8020B404  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020B408  7D 89 03 A6 */	mtctr r12
/* 8020B40C  4E 80 04 21 */	bctrl 
/* 8020B410  80 7D 00 08 */	lwz r3, 8(r29)
/* 8020B414  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B418  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8020B41C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8020B420  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020B424  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020B428  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020B42C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020B430  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020B434  EC 21 00 32 */	fmuls f1, f1, f0
/* 8020B438  EC 42 00 32 */	fmuls f2, f2, f0
/* 8020B43C  38 80 00 7A */	li r4, 0x7a
/* 8020B440  C0 62 AD D0 */	lfs f3, lit_3897(r2)
/* 8020B444  48 0E BD 99 */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 8020B448  80 7D 00 04 */	lwz r3, 4(r29)
/* 8020B44C  C0 22 AD B0 */	lfs f1, lit_3742(r2)
/* 8020B450  FC 40 08 90 */	fmr f2, f1
/* 8020B454  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8020B458  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8020B45C  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8020B460  48 0E DA 75 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_8020B464:
/* 8020B464  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8020B468  40 82 00 0C */	bne lbl_8020B474
/* 8020B46C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8020B470  41 82 00 90 */	beq lbl_8020B500
lbl_8020B474:
/* 8020B474  80 7D 00 08 */	lwz r3, 8(r29)
/* 8020B478  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B47C  C0 22 AD C0 */	lfs f1, lit_3893(r2)
/* 8020B480  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8020B484  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020B488  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8020B48C  C0 22 AD C4 */	lfs f1, lit_3894(r2)
/* 8020B490  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8020B494  EC 01 00 2A */	fadds f0, f1, f0
/* 8020B498  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 8020B49C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020B4A0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020B4A4  7D 89 03 A6 */	mtctr r12
/* 8020B4A8  4E 80 04 21 */	bctrl 
/* 8020B4AC  80 7D 00 08 */	lwz r3, 8(r29)
/* 8020B4B0  80 63 00 04 */	lwz r3, 4(r3)
/* 8020B4B4  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8020B4B8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8020B4BC  EC 41 00 28 */	fsubs f2, f1, f0
/* 8020B4C0  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8020B4C4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8020B4C8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8020B4CC  C0 02 AD C8 */	lfs f0, lit_3895(r2)
/* 8020B4D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8020B4D4  EC 42 00 32 */	fmuls f2, f2, f0
/* 8020B4D8  38 80 00 7A */	li r4, 0x7a
/* 8020B4DC  C0 62 AD D4 */	lfs f3, lit_3898(r2)
/* 8020B4E0  48 0E BC FD */	bl rotate__7J2DPaneFff13J2DRotateAxisf
/* 8020B4E4  80 7D 00 04 */	lwz r3, 4(r29)
/* 8020B4E8  C0 22 AD B0 */	lfs f1, lit_3742(r2)
/* 8020B4EC  FC 40 08 90 */	fmr f2, f1
/* 8020B4F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8020B4F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8020B4F8  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 8020B4FC  48 0E D9 D9 */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_8020B500:
/* 8020B500  39 61 00 30 */	addi r11, r1, 0x30
/* 8020B504  48 15 6D 25 */	bl _restgpr_29
/* 8020B508  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8020B50C  7C 08 03 A6 */	mtlr r0
/* 8020B510  38 21 00 30 */	addi r1, r1, 0x30
/* 8020B514  4E 80 00 20 */	blr 
