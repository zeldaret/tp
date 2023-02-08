lbl_8023B228:
/* 8023B228  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8023B22C  7C 08 02 A6 */	mflr r0
/* 8023B230  90 01 00 34 */	stw r0, 0x34(r1)
/* 8023B234  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8023B238  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8023B23C  39 61 00 20 */	addi r11, r1, 0x20
/* 8023B240  48 12 6F 99 */	bl _savegpr_28
/* 8023B244  7C 7E 1B 78 */	mr r30, r3
/* 8023B248  C3 E2 B1 60 */	lfs f31, lit_3911(r2)
/* 8023B24C  C0 03 01 04 */	lfs f0, 0x104(r3)
/* 8023B250  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8023B254  41 82 02 38 */	beq lbl_8023B48C
/* 8023B258  3B E0 00 00 */	li r31, 0
/* 8023B25C  3B A0 00 00 */	li r29, 0
lbl_8023B260:
/* 8023B260  7F 9E EA 14 */	add r28, r30, r29
/* 8023B264  80 7C 00 AC */	lwz r3, 0xac(r28)
/* 8023B268  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 8023B26C  C0 42 B1 60 */	lfs f2, lit_3911(r2)
/* 8023B270  48 01 93 C9 */	bl paneScale__8CPaneMgrFff
/* 8023B274  80 7C 00 B8 */	lwz r3, 0xb8(r28)
/* 8023B278  80 83 00 04 */	lwz r4, 4(r3)
/* 8023B27C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8023B280  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8023B284  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B288  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8023B28C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8023B290  EC 00 00 72 */	fmuls f0, f0, f1
/* 8023B294  EC 20 10 24 */	fdivs f1, f0, f2
/* 8023B298  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8023B29C  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8023B2A0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B2A4  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8023B2A8  EC 40 10 24 */	fdivs f2, f0, f2
/* 8023B2AC  48 01 93 8D */	bl paneScale__8CPaneMgrFff
/* 8023B2B0  80 7C 00 7C */	lwz r3, 0x7c(r28)
/* 8023B2B4  80 83 00 04 */	lwz r4, 4(r3)
/* 8023B2B8  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8023B2BC  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8023B2C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B2C4  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8023B2C8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8023B2CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8023B2D0  EC 20 10 24 */	fdivs f1, f0, f2
/* 8023B2D4  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8023B2D8  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8023B2DC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B2E0  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8023B2E4  EC 40 10 24 */	fdivs f2, f0, f2
/* 8023B2E8  48 01 93 51 */	bl paneScale__8CPaneMgrFff
/* 8023B2EC  80 7C 00 70 */	lwz r3, 0x70(r28)
/* 8023B2F0  C0 63 00 34 */	lfs f3, 0x34(r3)
/* 8023B2F4  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 8023B2F8  C0 83 00 34 */	lfs f4, 0x34(r3)
/* 8023B2FC  80 7C 00 88 */	lwz r3, 0x88(r28)
/* 8023B300  80 83 00 04 */	lwz r4, 4(r3)
/* 8023B304  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8023B308  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8023B30C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8023B310  C0 A3 00 34 */	lfs f5, 0x34(r3)
/* 8023B314  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 8023B318  EC 41 00 32 */	fmuls f2, f1, f0
/* 8023B31C  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8023B320  EC 04 18 2A */	fadds f0, f4, f3
/* 8023B324  EC 01 00 32 */	fmuls f0, f1, f0
/* 8023B328  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B32C  EC 20 28 24 */	fdivs f1, f0, f5
/* 8023B330  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8023B334  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8023B338  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B33C  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8023B340  EC 40 10 24 */	fdivs f2, f0, f2
/* 8023B344  48 01 92 F5 */	bl paneScale__8CPaneMgrFff
/* 8023B348  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 8023B34C  80 83 00 04 */	lwz r4, 4(r3)
/* 8023B350  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8023B354  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8023B358  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B35C  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8023B360  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8023B364  EC 00 00 72 */	fmuls f0, f0, f1
/* 8023B368  EC 20 10 24 */	fdivs f1, f0, f2
/* 8023B36C  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8023B370  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8023B374  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B378  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8023B37C  EC 40 10 24 */	fdivs f2, f0, f2
/* 8023B380  48 01 92 B9 */	bl paneScale__8CPaneMgrFff
/* 8023B384  80 7C 00 4C */	lwz r3, 0x4c(r28)
/* 8023B388  80 83 00 04 */	lwz r4, 4(r3)
/* 8023B38C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8023B390  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8023B394  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B398  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8023B39C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8023B3A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8023B3A4  EC 20 10 24 */	fdivs f1, f0, f2
/* 8023B3A8  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8023B3AC  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8023B3B0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B3B4  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8023B3B8  EC 40 10 24 */	fdivs f2, f0, f2
/* 8023B3BC  48 01 92 7D */	bl paneScale__8CPaneMgrFff
/* 8023B3C0  80 7C 00 58 */	lwz r3, 0x58(r28)
/* 8023B3C4  80 83 00 04 */	lwz r4, 4(r3)
/* 8023B3C8  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8023B3CC  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8023B3D0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B3D4  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8023B3D8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8023B3DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8023B3E0  EC 20 10 24 */	fdivs f1, f0, f2
/* 8023B3E4  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8023B3E8  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8023B3EC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B3F0  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8023B3F4  EC 40 10 24 */	fdivs f2, f0, f2
/* 8023B3F8  48 01 92 41 */	bl paneScale__8CPaneMgrFff
/* 8023B3FC  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 8023B400  80 83 00 04 */	lwz r4, 4(r3)
/* 8023B404  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8023B408  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8023B40C  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B410  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8023B414  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8023B418  EC 00 00 72 */	fmuls f0, f0, f1
/* 8023B41C  EC 20 10 24 */	fdivs f1, f0, f2
/* 8023B420  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8023B424  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8023B428  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B42C  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8023B430  EC 40 10 24 */	fdivs f2, f0, f2
/* 8023B434  48 01 92 05 */	bl paneScale__8CPaneMgrFff
/* 8023B438  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8023B43C  28 03 00 00 */	cmplwi r3, 0
/* 8023B440  41 82 00 3C */	beq lbl_8023B47C
/* 8023B444  80 83 00 04 */	lwz r4, 4(r3)
/* 8023B448  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8023B44C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 8023B450  EC 21 00 28 */	fsubs f1, f1, f0
/* 8023B454  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 8023B458  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8023B45C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8023B460  EC 20 10 24 */	fdivs f1, f0, f2
/* 8023B464  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 8023B468  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 8023B46C  EC 02 00 28 */	fsubs f0, f2, f0
/* 8023B470  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8023B474  EC 40 10 24 */	fdivs f2, f0, f2
/* 8023B478  48 01 91 C1 */	bl paneScale__8CPaneMgrFff
lbl_8023B47C:
/* 8023B47C  3B FF 00 01 */	addi r31, r31, 1
/* 8023B480  2C 1F 00 03 */	cmpwi r31, 3
/* 8023B484  3B BD 00 04 */	addi r29, r29, 4
/* 8023B488  41 80 FD D8 */	blt lbl_8023B260
lbl_8023B48C:
/* 8023B48C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8023B490  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8023B494  39 61 00 20 */	addi r11, r1, 0x20
/* 8023B498  48 12 6D 8D */	bl _restgpr_28
/* 8023B49C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8023B4A0  7C 08 03 A6 */	mtlr r0
/* 8023B4A4  38 21 00 30 */	addi r1, r1, 0x30
/* 8023B4A8  4E 80 00 20 */	blr 
