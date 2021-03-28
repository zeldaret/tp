lbl_8011F0F4:
/* 8011F0F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011F0F8  7C 08 02 A6 */	mflr r0
/* 8011F0FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011F100  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8011F104  7C 7F 1B 78 */	mr r31, r3
/* 8011F108  A8 63 30 0C */	lha r3, 0x300c(r3)
/* 8011F10C  38 03 02 00 */	addi r0, r3, 0x200
/* 8011F110  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011F114  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011F118  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8011F11C  40 81 00 10 */	ble lbl_8011F12C
/* 8011F120  38 00 40 00 */	li r0, 0x4000
/* 8011F124  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8011F128  48 00 00 14 */	b lbl_8011F13C
lbl_8011F12C:
/* 8011F12C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8011F130  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8011F134  EC 01 00 2A */	fadds f0, f1, f0
/* 8011F138  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_8011F13C:
/* 8011F13C  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011F140  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8011F144  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8011F148  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8011F14C  7C 23 04 2E */	lfsx f1, r3, r0
/* 8011F150  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8011F154  C0 02 96 2C */	lfs f0, lit_34190(r2)
/* 8011F158  EC 00 00 72 */	fmuls f0, f0, f1
/* 8011F15C  FC 00 00 1E */	fctiwz f0, f0
/* 8011F160  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8011F164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8011F168  7C 03 02 14 */	add r0, r3, r0
/* 8011F16C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8011F170  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 8011F174  EC 60 00 72 */	fmuls f3, f0, f1
/* 8011F178  C0 42 93 20 */	lfs f2, lit_7449(r2)
/* 8011F17C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011F180  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8011F184  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011F188  EC 02 00 32 */	fmuls f0, f2, f0
/* 8011F18C  EC 03 00 2A */	fadds f0, f3, f0
/* 8011F190  FC 00 00 1E */	fctiwz f0, f0
/* 8011F194  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8011F198  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8011F19C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8011F1A0  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8011F1A4  2C 00 00 00 */	cmpwi r0, 0
/* 8011F1A8  41 82 00 0C */	beq lbl_8011F1B4
/* 8011F1AC  38 60 00 01 */	li r3, 1
/* 8011F1B0  48 00 01 9C */	b lbl_8011F34C
lbl_8011F1B4:
/* 8011F1B4  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8011F1B8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8011F1BC  40 82 01 50 */	bne lbl_8011F30C
/* 8011F1C0  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8011F1C4  2C 00 00 00 */	cmpwi r0, 0
/* 8011F1C8  40 82 00 54 */	bne lbl_8011F21C
/* 8011F1CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011F1D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011F1D4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8011F1D8  38 80 00 00 */	li r4, 0
/* 8011F1DC  90 81 00 08 */	stw r4, 8(r1)
/* 8011F1E0  38 00 FF FF */	li r0, -1
/* 8011F1E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011F1E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8011F1EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8011F1F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8011F1F4  38 80 00 00 */	li r4, 0
/* 8011F1F8  38 A0 0A 61 */	li r5, 0xa61
/* 8011F1FC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8011F200  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8011F204  39 00 00 00 */	li r8, 0
/* 8011F208  39 20 00 00 */	li r9, 0
/* 8011F20C  39 40 00 FF */	li r10, 0xff
/* 8011F210  4B F2 D8 81 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8011F214  38 00 00 01 */	li r0, 1
/* 8011F218  B0 1F 30 10 */	sth r0, 0x3010(r31)
lbl_8011F21C:
/* 8011F21C  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 8011F220  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011F224  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 8011F228  C0 62 93 FC */	lfs f3, lit_13701(r2)
/* 8011F22C  C0 82 94 78 */	lfs f4, lit_15460(r2)
/* 8011F230  48 15 07 4D */	bl cLib_addCalc__FPfffff
/* 8011F234  38 7F 04 F0 */	addi r3, r31, 0x4f0
/* 8011F238  C0 22 93 D8 */	lfs f1, lit_11470(r2)
/* 8011F23C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 8011F240  FC 60 10 90 */	fmr f3, f2
/* 8011F244  C0 82 93 A0 */	lfs f4, lit_9054(r2)
/* 8011F248  48 15 07 35 */	bl cLib_addCalc__FPfffff
/* 8011F24C  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 8011F250  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 8011F254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011F258  40 80 00 88 */	bge lbl_8011F2E0
/* 8011F25C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8011F260  64 00 08 00 */	oris r0, r0, 0x800
/* 8011F264  90 1F 05 70 */	stw r0, 0x570(r31)
/* 8011F268  38 60 00 25 */	li r3, 0x25
/* 8011F26C  38 80 00 01 */	li r4, 1
/* 8011F270  4B F7 8C 71 */	bl checkItemGet__FUci
/* 8011F274  2C 03 00 00 */	cmpwi r3, 0
/* 8011F278  41 82 00 4C */	beq lbl_8011F2C4
/* 8011F27C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8011F280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8011F284  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8011F288  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8011F28C  7D 89 03 A6 */	mtctr r12
/* 8011F290  4E 80 04 21 */	bctrl 
/* 8011F294  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8011F298  54 03 46 3E */	srwi r3, r0, 0x18
/* 8011F29C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011F2A0  38 80 00 0C */	li r4, 0xc
/* 8011F2A4  38 A0 FF FF */	li r5, -1
/* 8011F2A8  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 8011F2AC  38 E0 FF FF */	li r7, -1
/* 8011F2B0  4B F0 7E C1 */	bl dStage_changeScene__FifUlScsi
/* 8011F2B4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8011F2B8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8011F2BC  48 0F D7 B5 */	bl warpOutProc__13dMeter2Info_cFv
/* 8011F2C0  48 00 00 18 */	b lbl_8011F2D8
lbl_8011F2C4:
/* 8011F2C4  7F E3 FB 78 */	mr r3, r31
/* 8011F2C8  48 00 05 11 */	bl dungeonReturnWarp__9daAlink_cFv
/* 8011F2CC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8011F2D0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8011F2D4  48 0F D7 31 */	bl warpInProc__13dMeter2Info_cFv
lbl_8011F2D8:
/* 8011F2D8  38 00 00 01 */	li r0, 1
/* 8011F2DC  B0 1F 30 12 */	sth r0, 0x3012(r31)
lbl_8011F2E0:
/* 8011F2E0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8011F2E4  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8011F2E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8011F2EC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8011F2F0  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 8011F2F4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8011F2F8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8011F2FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011F300  EC 02 00 32 */	fmuls f0, f2, f0
/* 8011F304  D0 1F 2B 98 */	stfs f0, 0x2b98(r31)
/* 8011F308  48 00 00 1C */	b lbl_8011F324
lbl_8011F30C:
/* 8011F30C  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8011F310  41 80 00 14 */	blt lbl_8011F324
/* 8011F314  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 8011F318  C0 22 94 08 */	lfs f1, lit_14064(r2)
/* 8011F31C  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 8011F320  48 15 14 21 */	bl cLib_chaseF__FPfff
lbl_8011F324:
/* 8011F324  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8011F328  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8011F32C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8011F330  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8011F334  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8011F338  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8011F33C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8011F340  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8011F344  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8011F348  38 60 00 01 */	li r3, 1
lbl_8011F34C:
/* 8011F34C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8011F350  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011F354  7C 08 03 A6 */	mtlr r0
/* 8011F358  38 21 00 40 */	addi r1, r1, 0x40
/* 8011F35C  4E 80 00 20 */	blr 
