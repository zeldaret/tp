lbl_80100EEC:
/* 80100EEC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80100EF0  7C 08 02 A6 */	mflr r0
/* 80100EF4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80100EF8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80100EFC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80100F00  39 61 00 50 */	addi r11, r1, 0x50
/* 80100F04  48 26 12 D5 */	bl _savegpr_28
/* 80100F08  7C 7E 1B 78 */	mr r30, r3
/* 80100F0C  4B FF F8 65 */	bl commonRoofHangProc__9daAlink_cFv
/* 80100F10  2C 03 00 00 */	cmpwi r3, 0
/* 80100F14  41 82 00 0C */	beq lbl_80100F20
/* 80100F18  38 60 00 01 */	li r3, 1
/* 80100F1C  48 00 02 E0 */	b lbl_801011FC
lbl_80100F20:
/* 80100F20  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80100F24  7F E3 FB 78 */	mr r3, r31
/* 80100F28  C0 22 94 94 */	lfs f1, lit_16210(r2)
/* 80100F2C  48 22 75 01 */	bl checkPass__12J3DFrameCtrlFf
/* 80100F30  2C 03 00 00 */	cmpwi r3, 0
/* 80100F34  40 82 00 18 */	bne lbl_80100F4C
/* 80100F38  7F E3 FB 78 */	mr r3, r31
/* 80100F3C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80100F40  48 22 74 ED */	bl checkPass__12J3DFrameCtrlFf
/* 80100F44  2C 03 00 00 */	cmpwi r3, 0
/* 80100F48  41 82 00 10 */	beq lbl_80100F58
lbl_80100F4C:
/* 80100F4C  7F C3 F3 78 */	mr r3, r30
/* 80100F50  4B FF F9 9D */	bl checkNextActionRoofHang__9daAlink_cFv
/* 80100F54  48 00 02 A4 */	b lbl_801011F8
lbl_80100F58:
/* 80100F58  83 BE 27 E0 */	lwz r29, 0x27e0(r30)
/* 80100F5C  3B 80 00 01 */	li r28, 1
/* 80100F60  7F A3 EB 78 */	mr r3, r29
/* 80100F64  4B F7 28 81 */	bl LockonTruth__12dAttention_cFv
/* 80100F68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80100F6C  40 82 00 14 */	bne lbl_80100F80
/* 80100F70  80 1D 03 34 */	lwz r0, 0x334(r29)
/* 80100F74  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80100F78  40 82 00 08 */	bne lbl_80100F80
/* 80100F7C  3B 80 00 00 */	li r28, 0
lbl_80100F80:
/* 80100F80  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80100F84  40 82 00 4C */	bne lbl_80100FD0
/* 80100F88  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80100F8C  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 80100F90  3C A0 80 39 */	lis r5, m__22daAlinkHIO_roofHang_c0@ha
/* 80100F94  38 E5 EB FC */	addi r7, r5, m__22daAlinkHIO_roofHang_c0@l
/* 80100F98  A8 A7 00 14 */	lha r5, 0x14(r7)
/* 80100F9C  A8 C7 00 16 */	lha r6, 0x16(r7)
/* 80100FA0  A8 E7 00 18 */	lha r7, 0x18(r7)
/* 80100FA4  48 16 F5 9D */	bl cLib_addCalcAngleS__FPsssss
/* 80100FA8  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 80100FAC  28 00 00 00 */	cmplwi r0, 0
/* 80100FB0  40 82 00 10 */	bne lbl_80100FC0
/* 80100FB4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80100FB8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80100FBC  48 00 00 14 */	b lbl_80100FD0
lbl_80100FC0:
/* 80100FC0  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80100FC4  3C 63 00 01 */	addis r3, r3, 1
/* 80100FC8  38 03 80 00 */	addi r0, r3, -32768
/* 80100FCC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80100FD0:
/* 80100FD0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80100FD4  C0 02 94 94 */	lfs f0, lit_16210(r2)
/* 80100FD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80100FDC  4C 41 13 82 */	cror 2, 1, 2
/* 80100FE0  40 82 00 0C */	bne lbl_80100FEC
/* 80100FE4  EC 41 00 28 */	fsubs f2, f1, f0
/* 80100FE8  48 00 00 08 */	b lbl_80100FF0
lbl_80100FEC:
/* 80100FEC  FC 40 08 90 */	fmr f2, f1
lbl_80100FF0:
/* 80100FF0  C0 22 95 B0 */	lfs f1, lit_26233(r2)
/* 80100FF4  C0 02 93 AC */	lfs f0, lit_9828(r2)
/* 80100FF8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80100FFC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80101000  48 16 65 E5 */	bl cM_rad2s__Ff
/* 80101004  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80101008  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8010100C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80101010  7C 63 04 2E */	lfsx f3, r3, r0
/* 80101014  3C 60 80 39 */	lis r3, m__22daAlinkHIO_roofHang_c0@ha
/* 80101018  38 63 EB FC */	addi r3, r3, m__22daAlinkHIO_roofHang_c0@l
/* 8010101C  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 80101020  C0 3E 33 A8 */	lfs f1, 0x33a8(r30)
/* 80101024  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80101028  EC 00 10 28 */	fsubs f0, f0, f2
/* 8010102C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80101030  EC 02 00 2A */	fadds f0, f2, f0
/* 80101034  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80101038  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8010103C  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 80101040  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80101044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80101048  40 80 00 08 */	bge lbl_80101050
/* 8010104C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_80101050:
/* 80101050  7F C3 F3 78 */	mr r3, r30
/* 80101054  4B FF F5 79 */	bl getRoofHangFMoveAnmSpeed__9daAlink_cCFv
/* 80101058  FF E0 08 90 */	fmr f31, f1
/* 8010105C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80101060  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80101064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80101068  40 80 00 0C */	bge lbl_80101074
/* 8010106C  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80101070  EF FF 00 32 */	fmuls f31, f31, f0
lbl_80101074:
/* 80101074  7F C3 F3 78 */	mr r3, r30
/* 80101078  7F E4 FB 78 */	mr r4, r31
/* 8010107C  FC 20 F8 90 */	fmr f1, f31
/* 80101080  48 00 0C 75 */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
/* 80101084  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80101088  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8010108C  40 81 01 44 */	ble lbl_801011D0
/* 80101090  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 80101094  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80101098  41 82 01 38 */	beq lbl_801011D0
/* 8010109C  C0 9E 04 D8 */	lfs f4, 0x4d8(r30)
/* 801010A0  C0 42 95 A4 */	lfs f2, lit_25916(r2)
/* 801010A4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 801010A8  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 801010AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801010B0  EC 62 00 2A */	fadds f3, f2, f0
/* 801010B4  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 801010B8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801010BC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801010C0  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 801010C4  C0 22 92 9C */	lfs f1, lit_5944(r2)
/* 801010C8  C0 1E 18 E4 */	lfs f0, 0x18e4(r30)
/* 801010CC  EC A1 00 2A */	fadds f5, f1, f0
/* 801010D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801010D4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 801010D8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 801010DC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801010E0  7C 64 02 14 */	add r3, r4, r0
/* 801010E4  C0 23 00 04 */	lfs f1, 4(r3)
/* 801010E8  7C 04 04 2E */	lfsx f0, r4, r0
/* 801010EC  EC 05 00 32 */	fmuls f0, f5, f0
/* 801010F0  EC 02 00 2A */	fadds f0, f2, f0
/* 801010F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 801010F8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801010FC  EC 05 00 72 */	fmuls f0, f5, f1
/* 80101100  EC 04 00 2A */	fadds f0, f4, f0
/* 80101104  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80101108  7F C3 F3 78 */	mr r3, r30
/* 8010110C  38 81 00 14 */	addi r4, r1, 0x14
/* 80101110  38 A1 00 08 */	addi r5, r1, 8
/* 80101114  4B FA 10 85 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 80101118  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010111C  41 82 00 B4 */	beq lbl_801011D0
/* 80101120  7F C3 F3 78 */	mr r3, r30
/* 80101124  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 80101128  4B FF CF 31 */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 8010112C  2C 03 00 00 */	cmpwi r3, 0
/* 80101130  41 82 00 A0 */	beq lbl_801011D0
/* 80101134  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80101138  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8010113C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80101140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80101144  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80101148  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8010114C  38 9E 1B 5C */	addi r4, r30, 0x1b5c
/* 80101150  38 A1 00 20 */	addi r5, r1, 0x20
/* 80101154  4B F7 35 F1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80101158  38 61 00 20 */	addi r3, r1, 0x20
/* 8010115C  48 16 5F CD */	bl atan2sX_Z__4cXyzCFv
/* 80101160  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80101164  48 16 FC C1 */	bl cLib_distanceAngleS__Fss
/* 80101168  2C 03 60 00 */	cmpwi r3, 0x6000
/* 8010116C  40 81 00 58 */	ble lbl_801011C4
/* 80101170  C0 42 94 64 */	lfs f2, lit_14954(r2)
/* 80101174  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80101178  EC 22 00 32 */	fmuls f1, f2, f0
/* 8010117C  C0 1E 1B 78 */	lfs f0, 0x1b78(r30)
/* 80101180  EC 01 00 2A */	fadds f0, f1, f0
/* 80101184  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80101188  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8010118C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80101190  C0 1E 1B 80 */	lfs f0, 0x1b80(r30)
/* 80101194  EC 01 00 2A */	fadds f0, f1, f0
/* 80101198  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8010119C  7F C3 F3 78 */	mr r3, r30
/* 801011A0  38 80 00 01 */	li r4, 1
/* 801011A4  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 801011A8  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 801011AC  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 801011B0  4B FC 58 99 */	bl procFallInit__9daAlink_cFif
/* 801011B4  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 801011B8  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 801011BC  90 01 00 30 */	stw r0, 0x30(r1)
/* 801011C0  48 00 00 3C */	b lbl_801011FC
lbl_801011C4:
/* 801011C4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 801011C8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 801011CC  90 01 00 30 */	stw r0, 0x30(r1)
lbl_801011D0:
/* 801011D0  7F C3 F3 78 */	mr r3, r30
/* 801011D4  38 9E 1E 2C */	addi r4, r30, 0x1e2c
/* 801011D8  4B FF F4 3D */	bl setRoofHangHandOnSE__9daAlink_cFP13cBgS_PolyInfo
/* 801011DC  7F C3 F3 78 */	mr r3, r30
/* 801011E0  4B FF F4 89 */	bl checkRoofHangMovePos__9daAlink_cFv
/* 801011E4  2C 03 00 00 */	cmpwi r3, 0
/* 801011E8  40 82 00 10 */	bne lbl_801011F8
/* 801011EC  7F C3 F3 78 */	mr r3, r30
/* 801011F0  38 80 00 00 */	li r4, 0
/* 801011F4  4B FF F9 C1 */	bl procRoofHangWaitInit__9daAlink_cFi
lbl_801011F8:
/* 801011F8  38 60 00 01 */	li r3, 1
lbl_801011FC:
/* 801011FC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80101200  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80101204  39 61 00 50 */	addi r11, r1, 0x50
/* 80101208  48 26 10 1D */	bl _restgpr_28
/* 8010120C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80101210  7C 08 03 A6 */	mtlr r0
/* 80101214  38 21 00 60 */	addi r1, r1, 0x60
/* 80101218  4E 80 00 20 */	blr 
