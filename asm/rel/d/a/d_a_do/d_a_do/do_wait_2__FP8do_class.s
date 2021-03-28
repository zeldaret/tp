lbl_8066A1C4:
/* 8066A1C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8066A1C8  7C 08 02 A6 */	mflr r0
/* 8066A1CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8066A1D0  39 61 00 40 */	addi r11, r1, 0x40
/* 8066A1D4  4B CF 80 08 */	b _savegpr_29
/* 8066A1D8  7C 7F 1B 78 */	mr r31, r3
/* 8066A1DC  3C 60 80 67 */	lis r3, lit_3662@ha
/* 8066A1E0  3B C3 ED E8 */	addi r30, r3, lit_3662@l
/* 8066A1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066A1E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066A1EC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8066A1F0  38 00 00 01 */	li r0, 1
/* 8066A1F4  98 1F 06 16 */	stb r0, 0x616(r31)
/* 8066A1F8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8066A1FC  D0 1F 06 48 */	stfs f0, 0x648(r31)
/* 8066A200  A8 7F 05 F6 */	lha r3, 0x5f6(r31)
/* 8066A204  2C 03 00 01 */	cmpwi r3, 1
/* 8066A208  41 82 00 1C */	beq lbl_8066A224
/* 8066A20C  40 80 01 10 */	bge lbl_8066A31C
/* 8066A210  2C 03 00 00 */	cmpwi r3, 0
/* 8066A214  40 80 00 08 */	bge lbl_8066A21C
/* 8066A218  48 00 01 04 */	b lbl_8066A31C
lbl_8066A21C:
/* 8066A21C  38 03 00 01 */	addi r0, r3, 1
/* 8066A220  B0 1F 05 F6 */	sth r0, 0x5f6(r31)
lbl_8066A224:
/* 8066A224  A8 1F 05 FC */	lha r0, 0x5fc(r31)
/* 8066A228  2C 00 00 00 */	cmpwi r0, 0
/* 8066A22C  40 82 00 F0 */	bne lbl_8066A31C
/* 8066A230  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8066A234  4B BF D7 20 */	b cM_rndF__Ff
/* 8066A238  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8066A23C  EC 00 08 2A */	fadds f0, f0, f1
/* 8066A240  FC 00 00 1E */	fctiwz f0, f0
/* 8066A244  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8066A248  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8066A24C  B0 1F 05 FC */	sth r0, 0x5fc(r31)
/* 8066A250  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 8066A254  4B BF D7 38 */	b cM_rndFX__Ff
/* 8066A258  FC 00 08 1E */	fctiwz f0, f1
/* 8066A25C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8066A260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8066A264  B0 1F 06 56 */	sth r0, 0x656(r31)
/* 8066A268  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8066A26C  4B BF D6 E8 */	b cM_rndF__Ff
/* 8066A270  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 8066A274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066A278  40 80 00 1C */	bge lbl_8066A294
/* 8066A27C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8066A280  4B BF D6 D4 */	b cM_rndF__Ff
/* 8066A284  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8066A288  EC 00 08 2A */	fadds f0, f0, f1
/* 8066A28C  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 8066A290  48 00 00 1C */	b lbl_8066A2AC
lbl_8066A294:
/* 8066A294  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 8066A298  4B BF D6 BC */	b cM_rndF__Ff
/* 8066A29C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8066A2A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8066A2A4  FC 00 00 50 */	fneg f0, f0
/* 8066A2A8  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
lbl_8066A2AC:
/* 8066A2AC  7F E3 FB 78 */	mr r3, r31
/* 8066A2B0  38 80 00 11 */	li r4, 0x11
/* 8066A2B4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 8066A2B8  38 A0 00 02 */	li r5, 2
/* 8066A2BC  C0 5F 05 E8 */	lfs f2, 0x5e8(r31)
/* 8066A2C0  4B FF DA E9 */	bl anm_init__FP8do_classifUcf
/* 8066A2C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8066A2C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8066A2CC  80 63 00 00 */	lwz r3, 0(r3)
/* 8066A2D0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8066A2D4  4B 9A 21 08 */	b mDoMtx_YrotS__FPA4_fs
/* 8066A2D8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8066A2DC  4B BF D6 B0 */	b cM_rndFX__Ff
/* 8066A2E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8066A2E4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8066A2E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8066A2EC  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 8066A2F0  4B BF D6 64 */	b cM_rndF__Ff
/* 8066A2F4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8066A2F8  EC 00 08 2A */	fadds f0, f0, f1
/* 8066A2FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8066A300  38 61 00 08 */	addi r3, r1, 8
/* 8066A304  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 8066A308  4B C0 6B E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8066A30C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 8066A310  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8066A314  7C 65 1B 78 */	mr r5, r3
/* 8066A318  4B CD CD 78 */	b PSVECAdd
lbl_8066A31C:
/* 8066A31C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8066A320  C0 3F 05 B8 */	lfs f1, 0x5b8(r31)
/* 8066A324  C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 8066A328  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 8066A32C  4B C0 57 10 */	b cLib_addCalc2__FPffff
/* 8066A330  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 8066A334  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 8066A338  C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 8066A33C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 8066A340  4B C0 56 FC */	b cLib_addCalc2__FPffff
/* 8066A344  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8066A348  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8066A34C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8066A350  4B C0 57 30 */	b cLib_addCalc0__FPfff
/* 8066A354  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8066A358  A8 9F 05 CC */	lha r4, 0x5cc(r31)
/* 8066A35C  A8 1F 06 54 */	lha r0, 0x654(r31)
/* 8066A360  7C 04 02 14 */	add r0, r4, r0
/* 8066A364  7C 04 07 34 */	extsh r4, r0
/* 8066A368  38 A0 00 04 */	li r5, 4
/* 8066A36C  38 C0 08 00 */	li r6, 0x800
/* 8066A370  4B C0 62 98 */	b cLib_addCalcAngleS2__FPssss
/* 8066A374  38 7F 06 54 */	addi r3, r31, 0x654
/* 8066A378  A8 9F 06 56 */	lha r4, 0x656(r31)
/* 8066A37C  38 A0 00 04 */	li r5, 4
/* 8066A380  38 C0 10 00 */	li r6, 0x1000
/* 8066A384  4B C0 62 84 */	b cLib_addCalcAngleS2__FPssss
/* 8066A388  C0 5F 05 C8 */	lfs f2, 0x5c8(r31)
/* 8066A38C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8066A390  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 8066A394  EC 01 00 32 */	fmuls f0, f1, f0
/* 8066A398  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066A39C  40 81 00 14 */	ble lbl_8066A3B0
/* 8066A3A0  38 00 00 03 */	li r0, 3
/* 8066A3A4  B0 1F 05 F2 */	sth r0, 0x5f2(r31)
/* 8066A3A8  38 00 00 00 */	li r0, 0
/* 8066A3AC  B0 1F 05 F6 */	sth r0, 0x5f6(r31)
lbl_8066A3B0:
/* 8066A3B0  7F E3 FB 78 */	mr r3, r31
/* 8066A3B4  4B FF E7 ED */	bl area_check__FP8do_class
/* 8066A3B8  39 61 00 40 */	addi r11, r1, 0x40
/* 8066A3BC  4B CF 7E 6C */	b _restgpr_29
/* 8066A3C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8066A3C4  7C 08 03 A6 */	mtlr r0
/* 8066A3C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8066A3CC  4E 80 00 20 */	blr 
