lbl_80B8B1FC:
/* 80B8B1FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B8B200  7C 08 02 A6 */	mflr r0
/* 80B8B204  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B8B208  39 61 00 40 */	addi r11, r1, 0x40
/* 80B8B20C  4B 7D 6F C8 */	b _savegpr_27
/* 80B8B210  7C 7D 1B 78 */	mr r29, r3
/* 80B8B214  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B8B218  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l
/* 80B8B21C  38 7F 00 00 */	addi r3, r31, 0
/* 80B8B220  AB C3 00 74 */	lha r30, 0x74(r3)
/* 80B8B224  A0 1D 14 E6 */	lhz r0, 0x14e6(r29)
/* 80B8B228  2C 00 00 02 */	cmpwi r0, 2
/* 80B8B22C  41 82 00 28 */	beq lbl_80B8B254
/* 80B8B230  40 80 01 54 */	bge lbl_80B8B384
/* 80B8B234  2C 00 00 00 */	cmpwi r0, 0
/* 80B8B238  41 82 00 0C */	beq lbl_80B8B244
/* 80B8B23C  48 00 01 48 */	b lbl_80B8B384
/* 80B8B240  48 00 01 44 */	b lbl_80B8B384
lbl_80B8B244:
/* 80B8B244  38 00 00 06 */	li r0, 6
/* 80B8B248  98 1D 15 94 */	stb r0, 0x1594(r29)
/* 80B8B24C  38 00 00 02 */	li r0, 2
/* 80B8B250  B0 1D 14 E6 */	sth r0, 0x14e6(r29)
lbl_80B8B254:
/* 80B8B254  7F A3 EB 78 */	mr r3, r29
/* 80B8B258  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B8B25C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B8B260  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B8B264  4B 49 1B 98 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B8B268  2C 03 00 00 */	cmpwi r3, 0
/* 80B8B26C  40 82 00 10 */	bne lbl_80B8B27C
/* 80B8B270  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80B8B274  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80B8B278  41 82 00 14 */	beq lbl_80B8B28C
lbl_80B8B27C:
/* 80B8B27C  7F A3 EB 78 */	mr r3, r29
/* 80B8B280  4B 48 E9 FC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80B8B284  38 60 00 01 */	li r3, 1
/* 80B8B288  48 00 01 00 */	b lbl_80B8B388
lbl_80B8B28C:
/* 80B8B28C  38 00 30 00 */	li r0, 0x3000
/* 80B8B290  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B8B294  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B8B298  3B 61 00 0E */	addi r27, r1, 0xe
/* 80B8B29C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80B8B2A0  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B8B2A4  3B 81 00 10 */	addi r28, r1, 0x10
/* 80B8B2A8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80B8B2AC  7F A3 EB 78 */	mr r3, r29
/* 80B8B2B0  38 81 00 0C */	addi r4, r1, 0xc
/* 80B8B2B4  38 BD 15 36 */	addi r5, r29, 0x1536
/* 80B8B2B8  38 C0 00 08 */	li r6, 8
/* 80B8B2BC  7F C7 F3 78 */	mr r7, r30
/* 80B8B2C0  4B FF 72 35 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B8B2C4  38 7F 00 00 */	addi r3, r31, 0
/* 80B8B2C8  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 80B8B2CC  38 7D 15 24 */	addi r3, r29, 0x1524
/* 80B8B2D0  C0 1F 07 CC */	lfs f0, 0x7cc(r31)
/* 80B8B2D4  EC 41 00 24 */	fdivs f2, f1, f0
/* 80B8B2D8  4B 6E 54 68 */	b cLib_chaseF__FPfff
/* 80B8B2DC  C0 3D 15 24 */	lfs f1, 0x1524(r29)
/* 80B8B2E0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8B2E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B8B2E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B8B2EC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B8B2F0  7F A3 EB 78 */	mr r3, r29
/* 80B8B2F4  38 81 00 14 */	addi r4, r1, 0x14
/* 80B8B2F8  4B FF 72 8D */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B8B2FC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B8B300  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B8B304  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B8B308  38 61 00 08 */	addi r3, r1, 8
/* 80B8B30C  C0 3D 15 24 */	lfs f1, 0x1524(r29)
/* 80B8B310  38 9F 00 00 */	addi r4, r31, 0
/* 80B8B314  C0 04 00 78 */	lfs f0, 0x78(r4)
/* 80B8B318  EC 21 00 24 */	fdivs f1, f1, f0
/* 80B8B31C  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B8B320  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80B8B324  4B 6E 47 18 */	b cLib_addCalc2__FPffff
/* 80B8B328  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B8B32C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B8B330  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B8B334  7F A3 EB 78 */	mr r3, r29
/* 80B8B338  7F C4 F3 78 */	mr r4, r30
/* 80B8B33C  38 A0 00 08 */	li r5, 8
/* 80B8B340  7F 66 DB 78 */	mr r6, r27
/* 80B8B344  7F 87 E3 78 */	mr r7, r28
/* 80B8B348  4B FF 6C 71 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B8B34C  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80B8B350  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80B8B354  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B8B358  B0 1D 08 F0 */	sth r0, 0x8f0(r29)
/* 80B8B35C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B8B360  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B8B364  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B8B368  B0 1D 08 F4 */	sth r0, 0x8f4(r29)
/* 80B8B36C  A8 1D 08 F0 */	lha r0, 0x8f0(r29)
/* 80B8B370  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B8B374  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B8B378  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B8B37C  A8 1D 08 F4 */	lha r0, 0x8f4(r29)
/* 80B8B380  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
lbl_80B8B384:
/* 80B8B384  38 60 00 01 */	li r3, 1
lbl_80B8B388:
/* 80B8B388  39 61 00 40 */	addi r11, r1, 0x40
/* 80B8B38C  4B 7D 6E 94 */	b _restgpr_27
/* 80B8B390  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B8B394  7C 08 03 A6 */	mtlr r0
/* 80B8B398  38 21 00 40 */	addi r1, r1, 0x40
/* 80B8B39C  4E 80 00 20 */	blr 
