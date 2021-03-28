lbl_80135CD8:
/* 80135CD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80135CDC  7C 08 02 A6 */	mflr r0
/* 80135CE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80135CE4  39 61 00 40 */	addi r11, r1, 0x40
/* 80135CE8  48 22 C4 F5 */	bl _savegpr_29
/* 80135CEC  7C 7F 1B 78 */	mr r31, r3
/* 80135CF0  7C 9D 23 78 */	mr r29, r4
/* 80135CF4  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 80135CF8  28 00 01 05 */	cmplwi r0, 0x105
/* 80135CFC  41 82 00 10 */	beq lbl_80135D0C
/* 80135D00  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80135D04  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80135D08  41 82 00 0C */	beq lbl_80135D14
lbl_80135D0C:
/* 80135D0C  38 60 00 00 */	li r3, 0
/* 80135D10  48 00 01 D8 */	b lbl_80135EE8
lbl_80135D14:
/* 80135D14  7F A3 EB 78 */	mr r3, r29
/* 80135D18  48 13 14 11 */	bl atan2sX_Z__4cXyzCFv
/* 80135D1C  7C 7E 1B 78 */	mr r30, r3
/* 80135D20  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80135D24  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 80135D28  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80135D2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80135D30  EC 01 00 28 */	fsubs f0, f1, f0
/* 80135D34  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80135D38  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80135D3C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80135D40  EC 02 00 32 */	fmuls f0, f2, f0
/* 80135D44  EC 01 00 28 */	fsubs f0, f1, f0
/* 80135D48  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80135D4C  7F E3 FB 78 */	mr r3, r31
/* 80135D50  7F C4 F3 78 */	mr r4, r30
/* 80135D54  4B FC 4B 09 */	bl checkHangStartSideWall__9daAlink_cFs
/* 80135D58  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80135D5C  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 80135D60  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80135D64  EC 21 00 2A */	fadds f1, f1, f0
/* 80135D68  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80135D6C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80135D70  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80135D74  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80135D78  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 80135D7C  38 81 00 20 */	addi r4, r1, 0x20
/* 80135D80  48 13 1F A9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80135D84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80135D88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80135D8C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80135D90  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 80135D94  4B F3 E7 0D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80135D98  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80135D9C  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 80135DA0  FC 40 08 18 */	frsp f2, f1
/* 80135DA4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80135DA8  41 82 00 24 */	beq lbl_80135DCC
/* 80135DAC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80135DB0  C0 0D 81 14 */	lfs f0, l_autoDownHeight(r13)
/* 80135DB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80135DB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80135DBC  40 80 00 0C */	bge lbl_80135DC8
/* 80135DC0  38 60 00 00 */	li r3, 0
/* 80135DC4  48 00 01 24 */	b lbl_80135EE8
lbl_80135DC8:
/* 80135DC8  D0 5F 04 D4 */	stfs f2, 0x4d4(r31)
lbl_80135DCC:
/* 80135DCC  7F E3 FB 78 */	mr r3, r31
/* 80135DD0  38 80 01 06 */	li r4, 0x106
/* 80135DD4  4B F8 C1 99 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80135DD8  7F E3 FB 78 */	mr r3, r31
/* 80135DDC  38 80 00 00 */	li r4, 0
/* 80135DE0  7F C5 07 34 */	extsh r5, r30
/* 80135DE4  3F C5 00 01 */	addis r30, r5, 1
/* 80135DE8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80135DEC  3B DE 80 00 */	addi r30, r30, -32768
/* 80135DF0  7C 1E 00 50 */	subf r0, r30, r0
/* 80135DF4  7C 05 07 34 */	extsh r5, r0
/* 80135DF8  38 C0 00 00 */	li r6, 0
/* 80135DFC  4B F7 7D 7D */	bl setOldRootQuaternion__9daAlink_cFsss
/* 80135E00  B3 DF 04 E6 */	sth r30, 0x4e6(r31)
/* 80135E04  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80135E08  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80135E0C  7F E3 FB 78 */	mr r3, r31
/* 80135E10  38 80 00 19 */	li r4, 0x19
/* 80135E14  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlWallHang_c0@ha
/* 80135E18  38 A5 F1 A0 */	addi r5, r5, m__24daAlinkHIO_wlWallHang_c0@l
/* 80135E1C  38 A5 00 28 */	addi r5, r5, 0x28
/* 80135E20  4B FF 3A 29 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80135E24  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80135E28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80135E2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80135E30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80135E34  7C C3 04 2E */	lfsx f6, r3, r0
/* 80135E38  7C 63 02 14 */	add r3, r3, r0
/* 80135E3C  C0 E3 00 04 */	lfs f7, 4(r3)
/* 80135E40  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80135E44  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 80135E48  EC 02 01 F2 */	fmuls f0, f2, f7
/* 80135E4C  EC A3 00 28 */	fsubs f5, f3, f0
/* 80135E50  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80135E54  C0 02 95 50 */	lfs f0, lit_23595(r2)
/* 80135E58  EC 81 00 28 */	fsubs f4, f1, f0
/* 80135E5C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80135E60  EC 02 01 B2 */	fmuls f0, f2, f6
/* 80135E64  EC 01 00 28 */	fsubs f0, f1, f0
/* 80135E68  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80135E6C  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80135E70  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 80135E74  EC 43 38 2A */	fadds f2, f3, f7
/* 80135E78  EC 01 30 2A */	fadds f0, f1, f6
/* 80135E7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80135E80  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80135E84  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80135E88  7F E3 FB 78 */	mr r3, r31
/* 80135E8C  38 81 00 14 */	addi r4, r1, 0x14
/* 80135E90  38 A1 00 08 */	addi r5, r1, 8
/* 80135E94  4B F6 C3 05 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 80135E98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80135E9C  41 82 00 10 */	beq lbl_80135EAC
/* 80135EA0  38 00 00 01 */	li r0, 1
/* 80135EA4  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80135EA8  48 00 00 0C */	b lbl_80135EB4
lbl_80135EAC:
/* 80135EAC  38 00 00 00 */	li r0, 0
/* 80135EB0  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_80135EB4:
/* 80135EB4  38 00 00 00 */	li r0, 0
/* 80135EB8  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 80135EBC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80135EC0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80135EC4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80135EC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80135ECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80135ED0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80135ED4  60 00 01 00 */	ori r0, r0, 0x100
/* 80135ED8  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80135EDC  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 80135EE0  D0 1F 33 D8 */	stfs f0, 0x33d8(r31)
/* 80135EE4  38 60 00 01 */	li r3, 1
lbl_80135EE8:
/* 80135EE8  39 61 00 40 */	addi r11, r1, 0x40
/* 80135EEC  48 22 C3 3D */	bl _restgpr_29
/* 80135EF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80135EF4  7C 08 03 A6 */	mtlr r0
/* 80135EF8  38 21 00 40 */	addi r1, r1, 0x40
/* 80135EFC  4E 80 00 20 */	blr 
