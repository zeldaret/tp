lbl_8013E80C:
/* 8013E80C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8013E810  7C 08 02 A6 */	mflr r0
/* 8013E814  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8013E818  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8013E81C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8013E820  39 61 00 90 */	addi r11, r1, 0x90
/* 8013E824  48 22 39 B9 */	bl _savegpr_29
/* 8013E828  7C 7D 1B 78 */	mr r29, r3
/* 8013E82C  83 E3 28 10 */	lwz r31, 0x2810(r3)
/* 8013E830  28 1F 00 00 */	cmplwi r31, 0
/* 8013E834  41 82 00 20 */	beq lbl_8013E854
/* 8013E838  A8 9D 30 08 */	lha r4, 0x3008(r29)
/* 8013E83C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlChain_c0@ha
/* 8013E840  38 63 F8 58 */	addi r3, r3, m__21daAlinkHIO_wlChain_c0@l
/* 8013E844  A8 03 00 3E */	lha r0, 0x3e(r3)
/* 8013E848  7C 00 00 D0 */	neg r0, r0
/* 8013E84C  7C 04 00 00 */	cmpw r4, r0
/* 8013E850  41 81 01 40 */	bgt lbl_8013E990
lbl_8013E854:
/* 8013E854  C0 3D 37 D0 */	lfs f1, 0x37d0(r29)
/* 8013E858  C0 1D 37 C8 */	lfs f0, 0x37c8(r29)
/* 8013E85C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8013E860  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013E864  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8013E868  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8013E86C  38 61 00 0C */	addi r3, r1, 0xc
/* 8013E870  48 20 88 C9 */	bl PSVECSquareMag
/* 8013E874  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013E878  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E87C  40 81 00 58 */	ble lbl_8013E8D4
/* 8013E880  FC 00 08 34 */	frsqrte f0, f1
/* 8013E884  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013E888  FC 44 00 32 */	fmul f2, f4, f0
/* 8013E88C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013E890  FC 00 00 32 */	fmul f0, f0, f0
/* 8013E894  FC 01 00 32 */	fmul f0, f1, f0
/* 8013E898  FC 03 00 28 */	fsub f0, f3, f0
/* 8013E89C  FC 02 00 32 */	fmul f0, f2, f0
/* 8013E8A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8013E8A4  FC 00 00 32 */	fmul f0, f0, f0
/* 8013E8A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8013E8AC  FC 03 00 28 */	fsub f0, f3, f0
/* 8013E8B0  FC 02 00 32 */	fmul f0, f2, f0
/* 8013E8B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8013E8B8  FC 00 00 32 */	fmul f0, f0, f0
/* 8013E8BC  FC 01 00 32 */	fmul f0, f1, f0
/* 8013E8C0  FC 03 00 28 */	fsub f0, f3, f0
/* 8013E8C4  FC 02 00 32 */	fmul f0, f2, f0
/* 8013E8C8  FC 21 00 32 */	fmul f1, f1, f0
/* 8013E8CC  FC 20 08 18 */	frsp f1, f1
/* 8013E8D0  48 00 00 88 */	b lbl_8013E958
lbl_8013E8D4:
/* 8013E8D4  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013E8D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E8DC  40 80 00 10 */	bge lbl_8013E8EC
/* 8013E8E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8013E8E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8013E8E8  48 00 00 70 */	b lbl_8013E958
lbl_8013E8EC:
/* 8013E8EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013E8F0  80 81 00 08 */	lwz r4, 8(r1)
/* 8013E8F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013E8F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013E8FC  7C 03 00 00 */	cmpw r3, r0
/* 8013E900  41 82 00 14 */	beq lbl_8013E914
/* 8013E904  40 80 00 40 */	bge lbl_8013E944
/* 8013E908  2C 03 00 00 */	cmpwi r3, 0
/* 8013E90C  41 82 00 20 */	beq lbl_8013E92C
/* 8013E910  48 00 00 34 */	b lbl_8013E944
lbl_8013E914:
/* 8013E914  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013E918  41 82 00 0C */	beq lbl_8013E924
/* 8013E91C  38 00 00 01 */	li r0, 1
/* 8013E920  48 00 00 28 */	b lbl_8013E948
lbl_8013E924:
/* 8013E924  38 00 00 02 */	li r0, 2
/* 8013E928  48 00 00 20 */	b lbl_8013E948
lbl_8013E92C:
/* 8013E92C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013E930  41 82 00 0C */	beq lbl_8013E93C
/* 8013E934  38 00 00 05 */	li r0, 5
/* 8013E938  48 00 00 10 */	b lbl_8013E948
lbl_8013E93C:
/* 8013E93C  38 00 00 03 */	li r0, 3
/* 8013E940  48 00 00 08 */	b lbl_8013E948
lbl_8013E944:
/* 8013E944  38 00 00 04 */	li r0, 4
lbl_8013E948:
/* 8013E948  2C 00 00 01 */	cmpwi r0, 1
/* 8013E94C  40 82 00 0C */	bne lbl_8013E958
/* 8013E950  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8013E954  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8013E958:
/* 8013E958  D0 3D 33 98 */	stfs f1, 0x3398(r29)
/* 8013E95C  38 7D 37 C8 */	addi r3, r29, 0x37c8
/* 8013E960  48 12 87 C9 */	bl atan2sX_Z__4cXyzCFv
/* 8013E964  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8013E968  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8013E96C  60 00 02 00 */	ori r0, r0, 0x200
/* 8013E970  90 1D 05 78 */	stw r0, 0x578(r29)
/* 8013E974  7F A3 EB 78 */	mr r3, r29
/* 8013E978  38 80 00 02 */	li r4, 2
/* 8013E97C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlWallHang_c0@ha
/* 8013E980  38 A5 F1 A0 */	addi r5, r5, m__24daAlinkHIO_wlWallHang_c0@l
/* 8013E984  C0 25 00 98 */	lfs f1, 0x98(r5)
/* 8013E988  4B FF 04 49 */	bl procWolfFallInit__9daAlink_cFif
/* 8013E98C  48 00 03 98 */	b lbl_8013ED24
lbl_8013E990:
/* 8013E990  A8 1D 30 10 */	lha r0, 0x3010(r29)
/* 8013E994  2C 00 00 00 */	cmpwi r0, 0
/* 8013E998  40 82 00 7C */	bne lbl_8013EA14
/* 8013E99C  2C 04 00 14 */	cmpwi r4, 0x14
/* 8013E9A0  40 81 00 10 */	ble lbl_8013E9B0
/* 8013E9A4  38 04 FF FF */	addi r0, r4, -1
/* 8013E9A8  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 8013E9AC  48 00 00 FC */	b lbl_8013EAA8
lbl_8013E9B0:
/* 8013E9B0  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 8013E9B4  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8013E9B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8013E9BC  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8013E9C0  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 8013E9C4  C0 02 97 C8 */	lfs f0, lit_52882(r2)
/* 8013E9C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013E9CC  40 81 00 DC */	ble lbl_8013EAA8
/* 8013E9D0  38 00 00 01 */	li r0, 1
/* 8013E9D4  98 1F 07 75 */	stb r0, 0x775(r31)
/* 8013E9D8  98 1F 07 7B */	stb r0, 0x77b(r31)
/* 8013E9DC  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 8013E9E0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013E9E4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8013E9E8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8013E9EC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8013E9F0  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8013E9F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013E9F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013E9FC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8013EA00  38 80 00 07 */	li r4, 7
/* 8013EA04  38 A0 00 03 */	li r5, 3
/* 8013EA08  38 C1 00 60 */	addi r6, r1, 0x60
/* 8013EA0C  4B F3 10 19 */	bl StartShock__12dVibration_cFii4cXyz
/* 8013EA10  48 00 00 98 */	b lbl_8013EAA8
lbl_8013EA14:
/* 8013EA14  38 04 FF FF */	addi r0, r4, -1
/* 8013EA18  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 8013EA1C  A8 9D 30 08 */	lha r4, 0x3008(r29)
/* 8013EA20  7C 80 07 35 */	extsh. r0, r4
/* 8013EA24  40 80 00 10 */	bge lbl_8013EA34
/* 8013EA28  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 8013EA2C  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8013EA30  48 00 00 78 */	b lbl_8013EAA8
lbl_8013EA34:
/* 8013EA34  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8013EA38  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8013EA3C  1C 04 30 00 */	mulli r0, r4, 0x3000
/* 8013EA40  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013EA44  7C 63 02 14 */	add r3, r3, r0
/* 8013EA48  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8013EA4C  C0 82 97 CC */	lfs f4, lit_52883(r2)
/* 8013EA50  C0 62 92 98 */	lfs f3, lit_5943(r2)
/* 8013EA54  C0 42 92 A4 */	lfs f2, lit_6021(r2)
/* 8013EA58  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8013EA5C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8013EA60  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8013EA64  3C 00 43 30 */	lis r0, 0x4330
/* 8013EA68  90 01 00 78 */	stw r0, 0x78(r1)
/* 8013EA6C  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8013EA70  EC 00 08 28 */	fsubs f0, f0, f1
/* 8013EA74  EC 03 00 32 */	fmuls f0, f3, f0
/* 8013EA78  EC 02 00 32 */	fmuls f0, f2, f0
/* 8013EA7C  EC 23 00 2A */	fadds f1, f3, f0
/* 8013EA80  C0 02 93 44 */	lfs f0, lit_7977(r2)
/* 8013EA84  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013EA88  EC 00 01 72 */	fmuls f0, f0, f5
/* 8013EA8C  EC 04 00 2A */	fadds f0, f4, f0
/* 8013EA90  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 8013EA94  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 8013EA98  2C 00 00 00 */	cmpwi r0, 0
/* 8013EA9C  40 82 00 0C */	bne lbl_8013EAA8
/* 8013EAA0  38 00 00 01 */	li r0, 1
/* 8013EAA4  98 1F 07 76 */	stb r0, 0x776(r31)
lbl_8013EAA8:
/* 8013EAA8  38 61 00 54 */	addi r3, r1, 0x54
/* 8013EAAC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8013EAB0  38 BF 07 B0 */	addi r5, r31, 0x7b0
/* 8013EAB4  48 12 80 81 */	bl __mi__4cXyzCFRC3Vec
/* 8013EAB8  C0 61 00 54 */	lfs f3, 0x54(r1)
/* 8013EABC  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 8013EAC0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8013EAC4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8013EAC8  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 8013EACC  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 8013EAD0  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 8013EAD4  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8013EAD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013EADC  40 81 00 3C */	ble lbl_8013EB18
/* 8013EAE0  A8 1D 2F E2 */	lha r0, 0x2fe2(r29)
/* 8013EAE4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013EAE8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8013EAEC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8013EAF0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8013EAF4  C0 3D 33 A8 */	lfs f1, 0x33a8(r29)
/* 8013EAF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013EAFC  EC 03 00 2A */	fadds f0, f3, f0
/* 8013EB00  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8013EB04  7C 63 02 14 */	add r3, r3, r0
/* 8013EB08  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013EB0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013EB10  EC 02 00 2A */	fadds f0, f2, f0
/* 8013EB14  D0 01 00 74 */	stfs f0, 0x74(r1)
lbl_8013EB18:
/* 8013EB18  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8013EB1C  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 8013EB20  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013EB24  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8013EB28  38 61 00 6C */	addi r3, r1, 0x6c
/* 8013EB2C  38 9D 37 C8 */	addi r4, r29, 0x37c8
/* 8013EB30  7C 65 1B 78 */	mr r5, r3
/* 8013EB34  48 20 85 5D */	bl PSVECAdd
/* 8013EB38  38 61 00 48 */	addi r3, r1, 0x48
/* 8013EB3C  38 81 00 6C */	addi r4, r1, 0x6c
/* 8013EB40  48 12 84 09 */	bl normalizeZP__4cXyzFv
/* 8013EB44  38 61 00 3C */	addi r3, r1, 0x3c
/* 8013EB48  38 81 00 6C */	addi r4, r1, 0x6c
/* 8013EB4C  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 8013EB50  C0 1F 07 A4 */	lfs f0, 0x7a4(r31)
/* 8013EB54  EC 21 00 2A */	fadds f1, f1, f0
/* 8013EB58  48 12 80 2D */	bl __ml__4cXyzCFf
/* 8013EB5C  38 61 00 30 */	addi r3, r1, 0x30
/* 8013EB60  38 9F 07 B0 */	addi r4, r31, 0x7b0
/* 8013EB64  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8013EB68  48 12 7F 7D */	bl __pl__4cXyzCFRC3Vec
/* 8013EB6C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8013EB70  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8013EB74  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8013EB78  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8013EB7C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8013EB80  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8013EB84  38 61 00 24 */	addi r3, r1, 0x24
/* 8013EB88  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8013EB8C  38 BD 37 98 */	addi r5, r29, 0x3798
/* 8013EB90  48 12 7F A5 */	bl __mi__4cXyzCFRC3Vec
/* 8013EB94  38 61 00 18 */	addi r3, r1, 0x18
/* 8013EB98  38 81 00 24 */	addi r4, r1, 0x24
/* 8013EB9C  C0 22 97 D0 */	lfs f1, lit_52884(r2)
/* 8013EBA0  48 12 7F E5 */	bl __ml__4cXyzCFf
/* 8013EBA4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8013EBA8  D0 1D 37 C8 */	stfs f0, 0x37c8(r29)
/* 8013EBAC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8013EBB0  D0 1D 37 CC */	stfs f0, 0x37cc(r29)
/* 8013EBB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8013EBB8  D0 1D 37 D0 */	stfs f0, 0x37d0(r29)
/* 8013EBBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8013EBC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8013EBC4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8013EBC8  7C 00 00 D0 */	neg r0, r0
/* 8013EBCC  7C 04 07 34 */	extsh r4, r0
/* 8013EBD0  4B EC D8 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 8013EBD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8013EBD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8013EBDC  38 81 00 6C */	addi r4, r1, 0x6c
/* 8013EBE0  7C 85 23 78 */	mr r5, r4
/* 8013EBE4  48 20 81 89 */	bl PSMTXMultVec
/* 8013EBE8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8013EBEC  FC 20 00 50 */	fneg f1, f0
/* 8013EBF0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8013EBF4  FC 40 00 50 */	fneg f2, f0
/* 8013EBF8  48 12 8A 7D */	bl cM_atan2s__Fff
/* 8013EBFC  B0 7D 04 E4 */	sth r3, 0x4e4(r29)
/* 8013EC00  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8013EC04  EC 20 00 32 */	fmuls f1, f0, f0
/* 8013EC08  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8013EC0C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8013EC10  EC 41 00 2A */	fadds f2, f1, f0
/* 8013EC14  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013EC18  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8013EC1C  40 81 00 0C */	ble lbl_8013EC28
/* 8013EC20  FC 00 10 34 */	frsqrte f0, f2
/* 8013EC24  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8013EC28:
/* 8013EC28  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8013EC2C  48 12 8A 49 */	bl cM_atan2s__Fff
/* 8013EC30  B0 7D 04 E8 */	sth r3, 0x4e8(r29)
/* 8013EC34  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 8013EC38  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8013EC3C  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 8013EC40  A8 1D 30 0A */	lha r0, 0x300a(r29)
/* 8013EC44  2C 00 00 00 */	cmpwi r0, 0
/* 8013EC48  40 82 00 14 */	bne lbl_8013EC5C
/* 8013EC4C  7F C3 F3 78 */	mr r3, r30
/* 8013EC50  48 01 F8 7D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013EC54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013EC58  41 82 00 C0 */	beq lbl_8013ED18
lbl_8013EC5C:
/* 8013EC5C  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 8013EC60  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8013EC64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013EC68  40 81 00 1C */	ble lbl_8013EC84
/* 8013EC6C  38 80 00 59 */	li r4, 0x59
/* 8013EC70  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlChain_c0@ha
/* 8013EC74  38 63 F8 58 */	addi r3, r3, m__21daAlinkHIO_wlChain_c0@l
/* 8013EC78  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8013EC7C  C0 43 00 44 */	lfs f2, 0x44(r3)
/* 8013EC80  48 00 00 18 */	b lbl_8013EC98
lbl_8013EC84:
/* 8013EC84  38 80 00 58 */	li r4, 0x58
/* 8013EC88  3C 60 80 39 */	lis r3, m__21daAlinkHIO_wlChain_c0@ha
/* 8013EC8C  38 63 F8 58 */	addi r3, r3, m__21daAlinkHIO_wlChain_c0@l
/* 8013EC90  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8013EC94  C0 43 00 4C */	lfs f2, 0x4c(r3)
lbl_8013EC98:
/* 8013EC98  A0 1D 1F 58 */	lhz r0, 0x1f58(r29)
/* 8013EC9C  7C 04 00 00 */	cmpw r4, r0
/* 8013ECA0  41 82 00 78 */	beq lbl_8013ED18
/* 8013ECA4  A8 1D 30 0A */	lha r0, 0x300a(r29)
/* 8013ECA8  2C 00 00 00 */	cmpwi r0, 0
/* 8013ECAC  40 82 00 14 */	bne lbl_8013ECC0
/* 8013ECB0  38 00 00 01 */	li r0, 1
/* 8013ECB4  B0 1D 30 0A */	sth r0, 0x300a(r29)
/* 8013ECB8  C3 E2 92 C0 */	lfs f31, lit_6108(r2)
/* 8013ECBC  48 00 00 2C */	b lbl_8013ECE8
lbl_8013ECC0:
/* 8013ECC0  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 8013ECC4  A8 1E 00 08 */	lha r0, 8(r30)
/* 8013ECC8  C8 62 92 B0 */	lfd f3, lit_6025(r2)
/* 8013ECCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8013ECD0  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8013ECD4  3C 00 43 30 */	lis r0, 0x4330
/* 8013ECD8  90 01 00 78 */	stw r0, 0x78(r1)
/* 8013ECDC  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8013ECE0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8013ECE4  EF E4 00 24 */	fdivs f31, f4, f0
lbl_8013ECE8:
/* 8013ECE8  7F A3 EB 78 */	mr r3, r29
/* 8013ECEC  4B FE A9 ED */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 8013ECF0  A8 1E 00 08 */	lha r0, 8(r30)
/* 8013ECF4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8013ECF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8013ECFC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8013ED00  3C 00 43 30 */	lis r0, 0x4330
/* 8013ED04  90 01 00 78 */	stw r0, 0x78(r1)
/* 8013ED08  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8013ED0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8013ED10  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8013ED14  D0 1E 00 10 */	stfs f0, 0x10(r30)
lbl_8013ED18:
/* 8013ED18  C0 1D 34 78 */	lfs f0, 0x3478(r29)
/* 8013ED1C  D0 1F 07 A0 */	stfs f0, 0x7a0(r31)
/* 8013ED20  38 60 00 01 */	li r3, 1
lbl_8013ED24:
/* 8013ED24  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8013ED28  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8013ED2C  39 61 00 90 */	addi r11, r1, 0x90
/* 8013ED30  48 22 34 F9 */	bl _restgpr_29
/* 8013ED34  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8013ED38  7C 08 03 A6 */	mtlr r0
/* 8013ED3C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8013ED40  4E 80 00 20 */	blr 
