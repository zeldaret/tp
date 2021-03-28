lbl_800FB790:
/* 800FB790  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800FB794  7C 08 02 A6 */	mflr r0
/* 800FB798  90 01 00 74 */	stw r0, 0x74(r1)
/* 800FB79C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800FB7A0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 800FB7A4  39 61 00 60 */	addi r11, r1, 0x60
/* 800FB7A8  48 26 6A 35 */	bl _savegpr_29
/* 800FB7AC  7C 7E 1B 78 */	mr r30, r3
/* 800FB7B0  4B FF E8 4D */	bl getHangDirectionFromAngle__9daAlink_cFv
/* 800FB7B4  7C 7D 1B 78 */	mr r29, r3
/* 800FB7B8  38 00 00 01 */	li r0, 1
/* 800FB7BC  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FB7C0  7F C3 F3 78 */	mr r3, r30
/* 800FB7C4  4B FF EF C9 */	bl changeHangEndProc__9daAlink_cFv
/* 800FB7C8  2C 03 00 00 */	cmpwi r3, 0
/* 800FB7CC  40 82 03 D8 */	bne lbl_800FBBA4
/* 800FB7D0  2C 1D 00 00 */	cmpwi r29, 0
/* 800FB7D4  40 82 00 2C */	bne lbl_800FB800
/* 800FB7D8  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800FB7DC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800FB7E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FB7E4  40 81 00 1C */	ble lbl_800FB800
/* 800FB7E8  7F C3 F3 78 */	mr r3, r30
/* 800FB7EC  3C 80 80 39 */	lis r4, m__23daAlinkHIO_wallCatch_c0@ha
/* 800FB7F0  38 84 E1 64 */	addi r4, r4, m__23daAlinkHIO_wallCatch_c0@l
/* 800FB7F4  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 800FB7F8  48 00 03 D1 */	bl procHangClimbInit__9daAlink_cFf
/* 800FB7FC  48 00 03 A8 */	b lbl_800FBBA4
lbl_800FB800:
/* 800FB800  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800FB804  7F E3 FB 78 */	mr r3, r31
/* 800FB808  48 06 2C C5 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800FB80C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB810  41 82 00 54 */	beq lbl_800FB864
/* 800FB814  AB FE 30 8C */	lha r31, 0x308c(r30)
/* 800FB818  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800FB81C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800FB820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FB824  40 81 00 30 */	ble lbl_800FB854
/* 800FB828  2C 1D 00 01 */	cmpwi r29, 1
/* 800FB82C  41 82 00 28 */	beq lbl_800FB854
/* 800FB830  7F C3 F3 78 */	mr r3, r30
/* 800FB834  7F A4 EB 78 */	mr r4, r29
/* 800FB838  4B FF EB 01 */	bl changeHangMoveProc__9daAlink_cFi
/* 800FB83C  2C 03 00 00 */	cmpwi r3, 0
/* 800FB840  41 82 00 14 */	beq lbl_800FB854
/* 800FB844  7F C3 F3 78 */	mr r3, r30
/* 800FB848  7F A4 EB 78 */	mr r4, r29
/* 800FB84C  4B FF FE 05 */	bl procHangMoveInit__9daAlink_cFi
/* 800FB850  48 00 00 0C */	b lbl_800FB85C
lbl_800FB854:
/* 800FB854  7F C3 F3 78 */	mr r3, r30
/* 800FB858  4B FF FB E5 */	bl procHangWaitInit__9daAlink_cFv
lbl_800FB85C:
/* 800FB85C  B3 FE 30 8C */	sth r31, 0x308c(r30)
/* 800FB860  48 00 03 30 */	b lbl_800FBB90
lbl_800FB864:
/* 800FB864  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 800FB868  FC 00 02 10 */	fabs f0, f0
/* 800FB86C  FC 20 00 18 */	frsp f1, f0
/* 800FB870  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 800FB874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FB878  40 81 00 3C */	ble lbl_800FB8B4
/* 800FB87C  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800FB880  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800FB884  41 82 00 1C */	beq lbl_800FB8A0
/* 800FB888  7F C3 F3 78 */	mr r3, r30
/* 800FB88C  48 00 27 A9 */	bl getClimbMoveSideAnmSpeed__9daAlink_cFv
/* 800FB890  7F C3 F3 78 */	mr r3, r30
/* 800FB894  7F E4 FB 78 */	mr r4, r31
/* 800FB898  48 00 64 5D */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 800FB89C  48 00 00 18 */	b lbl_800FB8B4
lbl_800FB8A0:
/* 800FB8A0  7F C3 F3 78 */	mr r3, r30
/* 800FB8A4  4B FF E7 39 */	bl getHangMoveAnmSpeed__9daAlink_cFv
/* 800FB8A8  7F C3 F3 78 */	mr r3, r30
/* 800FB8AC  7F E4 FB 78 */	mr r4, r31
/* 800FB8B0  48 00 64 45 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
lbl_800FB8B4:
/* 800FB8B4  7F C3 F3 78 */	mr r3, r30
/* 800FB8B8  38 80 00 04 */	li r4, 4
/* 800FB8BC  4B FF EA 7D */	bl changeHangMoveProc__9daAlink_cFi
/* 800FB8C0  2C 03 00 00 */	cmpwi r3, 0
/* 800FB8C4  41 82 02 C4 */	beq lbl_800FBB88
/* 800FB8C8  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800FB8CC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800FB8D0  41 82 00 BC */	beq lbl_800FB98C
/* 800FB8D4  7F C3 F3 78 */	mr r3, r30
/* 800FB8D8  4B FF EC F1 */	bl checkHangFootWall__9daAlink_cFv
/* 800FB8DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FB8E0  40 82 00 AC */	bne lbl_800FB98C
/* 800FB8E4  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 800FB8E8  A8 1F 00 08 */	lha r0, 8(r31)
/* 800FB8EC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800FB8F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800FB8F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800FB8F8  3C 00 43 30 */	lis r0, 0x4330
/* 800FB8FC  90 01 00 40 */	stw r0, 0x40(r1)
/* 800FB900  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 800FB904  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FB908  EF E2 00 24 */	fdivs f31, f2, f0
/* 800FB90C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800FB910  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 800FB914  7C 03 00 50 */	subf r0, r3, r0
/* 800FB918  7C 00 07 35 */	extsh. r0, r0
/* 800FB91C  3B A0 00 98 */	li r29, 0x98
/* 800FB920  40 81 00 08 */	ble lbl_800FB928
/* 800FB924  3B A0 00 97 */	li r29, 0x97
lbl_800FB928:
/* 800FB928  7F C3 F3 78 */	mr r3, r30
/* 800FB92C  4B FF E6 B1 */	bl getHangMoveAnmSpeed__9daAlink_cFv
/* 800FB930  7F C3 F3 78 */	mr r3, r30
/* 800FB934  7F A4 EB 78 */	mr r4, r29
/* 800FB938  C0 42 93 30 */	lfs f2, lit_7625(r2)
/* 800FB93C  4B FB 16 A5 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800FB940  38 00 00 0D */	li r0, 0xd
/* 800FB944  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FB948  A8 1F 00 08 */	lha r0, 8(r31)
/* 800FB94C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800FB950  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800FB954  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800FB958  3C 00 43 30 */	lis r0, 0x4330
/* 800FB95C  90 01 00 48 */	stw r0, 0x48(r1)
/* 800FB960  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 800FB964  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FB968  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800FB96C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 800FB970  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 800FB974  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 800FB978  D0 03 00 08 */	stfs f0, 8(r3)
/* 800FB97C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FB980  D0 1E 33 F0 */	stfs f0, 0x33f0(r30)
/* 800FB984  38 00 00 00 */	li r0, 0
/* 800FB988  B0 1E 30 A2 */	sth r0, 0x30a2(r30)
lbl_800FB98C:
/* 800FB98C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FB990  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FB994  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800FB998  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800FB99C  7C C3 04 2E */	lfsx f6, r3, r0
/* 800FB9A0  38 83 00 04 */	addi r4, r3, 4
/* 800FB9A4  7C E4 04 2E */	lfsx f7, r4, r0
/* 800FB9A8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 800FB9AC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FB9B0  7D 03 04 2E */	lfsx f8, r3, r0
/* 800FB9B4  7C 04 04 2E */	lfsx f0, r4, r0
/* 800FB9B8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800FB9BC  C0 62 92 9C */	lfs f3, lit_5944(r2)
/* 800FB9C0  EC 03 00 32 */	fmuls f0, f3, f0
/* 800FB9C4  EC 21 00 2A */	fadds f1, f1, f0
/* 800FB9C8  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 800FB9CC  EC 02 01 F2 */	fmuls f0, f2, f7
/* 800FB9D0  EC A1 00 28 */	fsubs f5, f1, f0
/* 800FB9D4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 800FB9D8  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800FB9DC  EC 81 00 28 */	fsubs f4, f1, f0
/* 800FB9E0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800FB9E4  EC 03 02 32 */	fmuls f0, f3, f8
/* 800FB9E8  EC 21 00 2A */	fadds f1, f1, f0
/* 800FB9EC  EC 02 01 B2 */	fmuls f0, f2, f6
/* 800FB9F0  EC 41 00 28 */	fsubs f2, f1, f0
/* 800FB9F4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 800FB9F8  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 800FB9FC  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 800FBA00  C0 22 93 B4 */	lfs f1, lit_10040(r2)
/* 800FBA04  EC 01 01 B2 */	fmuls f0, f1, f6
/* 800FBA08  EC 02 00 2A */	fadds f0, f2, f0
/* 800FBA0C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800FBA10  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 800FBA14  EC 01 01 F2 */	fmuls f0, f1, f7
/* 800FBA18  EC 05 00 2A */	fadds f0, f5, f0
/* 800FBA1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800FBA20  7F C3 F3 78 */	mr r3, r30
/* 800FBA24  38 81 00 20 */	addi r4, r1, 0x20
/* 800FBA28  38 A1 00 14 */	addi r5, r1, 0x14
/* 800FBA2C  4B FA 67 6D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FBA30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FBA34  41 82 01 5C */	beq lbl_800FBB90
/* 800FBA38  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800FBA3C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800FBA40  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800FBA44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FBA48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FBA4C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 800FBA50  7F A3 EB 78 */	mr r3, r29
/* 800FBA54  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 800FBA58  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800FBA5C  4B F7 8C E9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FBA60  38 61 00 2C */	addi r3, r1, 0x2c
/* 800FBA64  48 16 B6 C5 */	bl atan2sX_Z__4cXyzCFv
/* 800FBA68  3C 63 00 01 */	addis r3, r3, 1
/* 800FBA6C  38 03 80 00 */	addi r0, r3, -32768
/* 800FBA70  7C 04 07 34 */	extsh r4, r0
/* 800FBA74  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800FBA78  7C 04 18 00 */	cmpw r4, r3
/* 800FBA7C  41 82 00 FC */	beq lbl_800FBB78
/* 800FBA80  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 800FBA84  7C 03 00 50 */	subf r0, r3, r0
/* 800FBA88  7C 00 07 35 */	extsh. r0, r0
/* 800FBA8C  40 81 00 10 */	ble lbl_800FBA9C
/* 800FBA90  38 04 40 00 */	addi r0, r4, 0x4000
/* 800FBA94  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800FBA98  48 00 00 0C */	b lbl_800FBAA4
lbl_800FBA9C:
/* 800FBA9C  38 04 C0 00 */	addi r0, r4, -16384
/* 800FBAA0  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_800FBAA4:
/* 800FBAA4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FBAA8  7C 04 00 50 */	subf r0, r4, r0
/* 800FBAAC  7C 03 07 34 */	extsh r3, r0
/* 800FBAB0  A8 1E 30 8C */	lha r0, 0x308c(r30)
/* 800FBAB4  7C 00 1A 14 */	add r0, r0, r3
/* 800FBAB8  B0 1E 30 8C */	sth r0, 0x308c(r30)
/* 800FBABC  B0 9E 04 E6 */	sth r4, 0x4e6(r30)
/* 800FBAC0  48 26 96 11 */	bl abs
/* 800FBAC4  2C 03 00 64 */	cmpwi r3, 0x64
/* 800FBAC8  40 80 00 10 */	bge lbl_800FBAD8
/* 800FBACC  38 00 00 00 */	li r0, 0
/* 800FBAD0  B0 1E 30 8C */	sth r0, 0x308c(r30)
/* 800FBAD4  48 00 00 A4 */	b lbl_800FBB78
lbl_800FBAD8:
/* 800FBAD8  C0 9E 1B 78 */	lfs f4, 0x1b78(r30)
/* 800FBADC  D0 81 00 08 */	stfs f4, 8(r1)
/* 800FBAE0  C0 7E 1B 7C */	lfs f3, 0x1b7c(r30)
/* 800FBAE4  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 800FBAE8  C0 5E 1B 80 */	lfs f2, 0x1b80(r30)
/* 800FBAEC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800FBAF0  C0 22 93 2C */	lfs f1, lit_7624(r2)
/* 800FBAF4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800FBAF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FBAFC  EC 04 00 28 */	fsubs f0, f4, f0
/* 800FBB00  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FBB04  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 800FBB08  EC 03 00 2A */	fadds f0, f3, f0
/* 800FBB0C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FBB10  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800FBB14  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FBB18  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FBB1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800FBB20  38 7E 1D 08 */	addi r3, r30, 0x1d08
/* 800FBB24  38 81 00 08 */	addi r4, r1, 8
/* 800FBB28  48 16 C2 01 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800FBB2C  7F A3 EB 78 */	mr r3, r29
/* 800FBB30  38 9E 1D 08 */	addi r4, r30, 0x1d08
/* 800FBB34  4B F7 89 6D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800FBB38  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800FBB3C  FC 20 08 18 */	frsp f1, f1
/* 800FBB40  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800FBB44  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FBB48  FC 00 02 10 */	fabs f0, f0
/* 800FBB4C  FC 20 00 18 */	frsp f1, f0
/* 800FBB50  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800FBB54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FBB58  4C 40 13 82 */	cror 2, 0, 2
/* 800FBB5C  40 82 00 1C */	bne lbl_800FBB78
/* 800FBB60  C0 01 00 08 */	lfs f0, 8(r1)
/* 800FBB64  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800FBB68  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800FBB6C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800FBB70  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800FBB74  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_800FBB78:
/* 800FBB78  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800FBB7C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800FBB80  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800FBB84  48 00 00 0C */	b lbl_800FBB90
lbl_800FBB88:
/* 800FBB88  7F C3 F3 78 */	mr r3, r30
/* 800FBB8C  4B FF F8 B1 */	bl procHangWaitInit__9daAlink_cFv
lbl_800FBB90:
/* 800FBB90  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800FBB94  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800FBB98  41 82 00 0C */	beq lbl_800FBBA4
/* 800FBB9C  7F C3 F3 78 */	mr r3, r30
/* 800FBBA0  48 00 25 D5 */	bl setClimbShapeOffset__9daAlink_cFv
lbl_800FBBA4:
/* 800FBBA4  38 60 00 01 */	li r3, 1
/* 800FBBA8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 800FBBAC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800FBBB0  39 61 00 60 */	addi r11, r1, 0x60
/* 800FBBB4  48 26 66 75 */	bl _restgpr_29
/* 800FBBB8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800FBBBC  7C 08 03 A6 */	mtlr r0
/* 800FBBC0  38 21 00 70 */	addi r1, r1, 0x70
/* 800FBBC4  4E 80 00 20 */	blr 
