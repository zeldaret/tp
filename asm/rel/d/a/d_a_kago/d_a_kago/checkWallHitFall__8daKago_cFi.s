lbl_8084B1E0:
/* 8084B1E0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8084B1E4  7C 08 02 A6 */	mflr r0
/* 8084B1E8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8084B1EC  39 61 00 90 */	addi r11, r1, 0x90
/* 8084B1F0  4B B1 6F E8 */	b _savegpr_28
/* 8084B1F4  7C 7D 1B 78 */	mr r29, r3
/* 8084B1F8  7C 9E 23 78 */	mr r30, r4
/* 8084B1FC  3C 80 80 85 */	lis r4, lit_3929@ha
/* 8084B200  3B E4 4B 04 */	addi r31, r4, lit_3929@l
/* 8084B204  88 03 06 E5 */	lbz r0, 0x6e5(r3)
/* 8084B208  28 00 00 00 */	cmplwi r0, 0
/* 8084B20C  41 82 00 88 */	beq lbl_8084B294
/* 8084B210  38 80 00 01 */	li r4, 1
/* 8084B214  38 A0 00 03 */	li r5, 3
/* 8084B218  4B FF F8 81 */	bl setActionMode__8daKago_cFii
/* 8084B21C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084B220  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8084B224  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084B228  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084B22C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8084B230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084B234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084B238  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084B23C  38 80 00 08 */	li r4, 8
/* 8084B240  38 A0 00 1F */	li r5, 0x1f
/* 8084B244  38 C1 00 5C */	addi r6, r1, 0x5c
/* 8084B248  4B 82 47 DC */	b StartShock__12dVibration_cFii4cXyz
/* 8084B24C  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 8084B250  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 8084B254  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8084B258  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8084B25C  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8084B260  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8084B264  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8084B268  EC 02 00 2A */	fadds f0, f2, f0
/* 8084B26C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8084B270  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 8084B274  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8084B278  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8084B27C  7F A3 EB 78 */	mr r3, r29
/* 8084B280  38 81 00 50 */	addi r4, r1, 0x50
/* 8084B284  38 A0 00 00 */	li r5, 0
/* 8084B288  48 00 81 D9 */	bl setWallHitEffect__8daKago_cF4cXyzi
/* 8084B28C  38 60 00 01 */	li r3, 1
/* 8084B290  48 00 02 C4 */	b lbl_8084B554
lbl_8084B294:
/* 8084B294  80 1D 07 E4 */	lwz r0, 0x7e4(r29)
/* 8084B298  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8084B29C  41 82 01 64 */	beq lbl_8084B400
/* 8084B2A0  A8 1D 07 B4 */	lha r0, 0x7b4(r29)
/* 8084B2A4  B0 1D 06 DA */	sth r0, 0x6da(r29)
/* 8084B2A8  A8 9D 06 DA */	lha r4, 0x6da(r29)
/* 8084B2AC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8084B2B0  7C 04 00 50 */	subf r0, r4, r0
/* 8084B2B4  7C 1C 07 34 */	extsh r28, r0
/* 8084B2B8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8084B2BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8084B2C0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8084B2C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8084B2C8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8084B2CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8084B2D0  38 81 00 44 */	addi r4, r1, 0x44
/* 8084B2D4  4B FF FE 61 */	bl checkYaguraPos__8daKago_cF4cXyz
/* 8084B2D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084B2DC  40 82 00 68 */	bne lbl_8084B344
/* 8084B2E0  7F 83 E3 78 */	mr r3, r28
/* 8084B2E4  4B B1 9D EC */	b abs
/* 8084B2E8  2C 03 70 00 */	cmpwi r3, 0x7000
/* 8084B2EC  40 81 00 58 */	ble lbl_8084B344
/* 8084B2F0  88 1D 06 D9 */	lbz r0, 0x6d9(r29)
/* 8084B2F4  60 00 00 04 */	ori r0, r0, 4
/* 8084B2F8  98 1D 06 D9 */	stb r0, 0x6d9(r29)
/* 8084B2FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084B300  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084B304  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8084B308  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084B30C  7C 64 02 14 */	add r3, r4, r0
/* 8084B310  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084B314  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8084B318  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8084B31C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8084B320  EC 81 00 2A */	fadds f4, f1, f0
/* 8084B324  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8084B328  7C 04 04 2E */	lfsx f0, r4, r0
/* 8084B32C  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8084B330  EC 02 00 32 */	fmuls f0, f2, f0
/* 8084B334  EC 01 00 2A */	fadds f0, f1, f0
/* 8084B338  D0 1D 06 68 */	stfs f0, 0x668(r29)
/* 8084B33C  D0 7D 06 6C */	stfs f3, 0x66c(r29)
/* 8084B340  D0 9D 06 70 */	stfs f4, 0x670(r29)
lbl_8084B344:
/* 8084B344  7F 80 07 35 */	extsh. r0, r28
/* 8084B348  40 81 00 60 */	ble lbl_8084B3A8
/* 8084B34C  88 1D 06 D9 */	lbz r0, 0x6d9(r29)
/* 8084B350  60 00 00 01 */	ori r0, r0, 1
/* 8084B354  98 1D 06 D9 */	stb r0, 0x6d9(r29)
/* 8084B358  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084B35C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084B360  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8084B364  38 03 40 00 */	addi r0, r3, 0x4000
/* 8084B368  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084B36C  7C 64 02 14 */	add r3, r4, r0
/* 8084B370  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084B374  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8084B378  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8084B37C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8084B380  EC 81 00 2A */	fadds f4, f1, f0
/* 8084B384  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8084B388  7C 04 04 2E */	lfsx f0, r4, r0
/* 8084B38C  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8084B390  EC 02 00 32 */	fmuls f0, f2, f0
/* 8084B394  EC 01 00 2A */	fadds f0, f1, f0
/* 8084B398  D0 1D 06 50 */	stfs f0, 0x650(r29)
/* 8084B39C  D0 7D 06 54 */	stfs f3, 0x654(r29)
/* 8084B3A0  D0 9D 06 58 */	stfs f4, 0x658(r29)
/* 8084B3A4  48 00 00 5C */	b lbl_8084B400
lbl_8084B3A8:
/* 8084B3A8  88 1D 06 D9 */	lbz r0, 0x6d9(r29)
/* 8084B3AC  60 00 00 02 */	ori r0, r0, 2
/* 8084B3B0  98 1D 06 D9 */	stb r0, 0x6d9(r29)
/* 8084B3B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8084B3B8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8084B3BC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8084B3C0  38 03 C0 00 */	addi r0, r3, -16384
/* 8084B3C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8084B3C8  7C 64 02 14 */	add r3, r4, r0
/* 8084B3CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084B3D0  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8084B3D4  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8084B3D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8084B3DC  EC 81 00 2A */	fadds f4, f1, f0
/* 8084B3E0  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8084B3E4  7C 04 04 2E */	lfsx f0, r4, r0
/* 8084B3E8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8084B3EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8084B3F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8084B3F4  D0 1D 06 5C */	stfs f0, 0x65c(r29)
/* 8084B3F8  D0 7D 06 60 */	stfs f3, 0x660(r29)
/* 8084B3FC  D0 9D 06 64 */	stfs f4, 0x664(r29)
lbl_8084B400:
/* 8084B400  88 7D 06 D9 */	lbz r3, 0x6d9(r29)
/* 8084B404  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8084B408  41 82 00 74 */	beq lbl_8084B47C
/* 8084B40C  7F A3 EB 78 */	mr r3, r29
/* 8084B410  38 80 00 01 */	li r4, 1
/* 8084B414  38 A0 00 00 */	li r5, 0
/* 8084B418  4B FF F6 81 */	bl setActionMode__8daKago_cFii
/* 8084B41C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084B420  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8084B424  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084B428  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8084B42C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8084B430  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084B434  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084B438  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084B43C  38 80 00 08 */	li r4, 8
/* 8084B440  38 A0 00 1F */	li r5, 0x1f
/* 8084B444  38 C1 00 38 */	addi r6, r1, 0x38
/* 8084B448  4B 82 45 DC */	b StartShock__12dVibration_cFii4cXyz
/* 8084B44C  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 8084B450  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8084B454  C0 1D 06 6C */	lfs f0, 0x66c(r29)
/* 8084B458  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8084B45C  C0 1D 06 70 */	lfs f0, 0x670(r29)
/* 8084B460  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8084B464  7F A3 EB 78 */	mr r3, r29
/* 8084B468  38 81 00 2C */	addi r4, r1, 0x2c
/* 8084B46C  38 A0 00 00 */	li r5, 0
/* 8084B470  48 00 7F F1 */	bl setWallHitEffect__8daKago_cF4cXyzi
/* 8084B474  38 60 00 01 */	li r3, 1
/* 8084B478  48 00 00 DC */	b lbl_8084B554
lbl_8084B47C:
/* 8084B47C  2C 1E 00 00 */	cmpwi r30, 0
/* 8084B480  41 82 00 D0 */	beq lbl_8084B550
/* 8084B484  80 1D 07 20 */	lwz r0, 0x720(r29)
/* 8084B488  2C 00 00 00 */	cmpwi r0, 0
/* 8084B48C  40 82 00 C4 */	bne lbl_8084B550
/* 8084B490  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8084B494  41 82 00 BC */	beq lbl_8084B550
/* 8084B498  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084B49C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8084B4A0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084B4A4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8084B4A8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8084B4AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084B4B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084B4B4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084B4B8  38 80 00 02 */	li r4, 2
/* 8084B4BC  38 A0 00 1F */	li r5, 0x1f
/* 8084B4C0  38 C1 00 20 */	addi r6, r1, 0x20
/* 8084B4C4  4B 82 45 60 */	b StartShock__12dVibration_cFii4cXyz
/* 8084B4C8  88 1D 06 D9 */	lbz r0, 0x6d9(r29)
/* 8084B4CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8084B4D0  41 82 00 40 */	beq lbl_8084B510
/* 8084B4D4  7F A3 EB 78 */	mr r3, r29
/* 8084B4D8  38 80 00 01 */	li r4, 1
/* 8084B4DC  38 A0 00 01 */	li r5, 1
/* 8084B4E0  4B FF F5 B9 */	bl setActionMode__8daKago_cFii
/* 8084B4E4  C0 1D 06 50 */	lfs f0, 0x650(r29)
/* 8084B4E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084B4EC  C0 1D 06 54 */	lfs f0, 0x654(r29)
/* 8084B4F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8084B4F4  C0 1D 06 58 */	lfs f0, 0x658(r29)
/* 8084B4F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8084B4FC  7F A3 EB 78 */	mr r3, r29
/* 8084B500  38 81 00 14 */	addi r4, r1, 0x14
/* 8084B504  38 A0 00 01 */	li r5, 1
/* 8084B508  48 00 7F 59 */	bl setWallHitEffect__8daKago_cF4cXyzi
/* 8084B50C  48 00 00 3C */	b lbl_8084B548
lbl_8084B510:
/* 8084B510  7F A3 EB 78 */	mr r3, r29
/* 8084B514  38 80 00 01 */	li r4, 1
/* 8084B518  38 A0 00 02 */	li r5, 2
/* 8084B51C  4B FF F5 7D */	bl setActionMode__8daKago_cFii
/* 8084B520  C0 1D 06 5C */	lfs f0, 0x65c(r29)
/* 8084B524  D0 01 00 08 */	stfs f0, 8(r1)
/* 8084B528  C0 1D 06 60 */	lfs f0, 0x660(r29)
/* 8084B52C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8084B530  C0 1D 06 64 */	lfs f0, 0x664(r29)
/* 8084B534  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8084B538  7F A3 EB 78 */	mr r3, r29
/* 8084B53C  38 81 00 08 */	addi r4, r1, 8
/* 8084B540  38 A0 00 01 */	li r5, 1
/* 8084B544  48 00 7F 1D */	bl setWallHitEffect__8daKago_cF4cXyzi
lbl_8084B548:
/* 8084B548  38 60 00 01 */	li r3, 1
/* 8084B54C  48 00 00 08 */	b lbl_8084B554
lbl_8084B550:
/* 8084B550  38 60 00 00 */	li r3, 0
lbl_8084B554:
/* 8084B554  39 61 00 90 */	addi r11, r1, 0x90
/* 8084B558  4B B1 6C CC */	b _restgpr_28
/* 8084B55C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8084B560  7C 08 03 A6 */	mtlr r0
/* 8084B564  38 21 00 90 */	addi r1, r1, 0x90
/* 8084B568  4E 80 00 20 */	blr 
