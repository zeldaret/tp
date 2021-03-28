lbl_8057E768:
/* 8057E768  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8057E76C  7C 08 02 A6 */	mflr r0
/* 8057E770  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8057E774  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8057E778  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 8057E77C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8057E780  4B DE 3A 50 */	b _savegpr_26
/* 8057E784  7C 7B 1B 78 */	mr r27, r3
/* 8057E788  3C 80 80 58 */	lis r4, lit_3656@ha
/* 8057E78C  3B E4 F5 70 */	addi r31, r4, lit_3656@l
/* 8057E790  38 9B 07 BC */	addi r4, r27, 0x7bc
/* 8057E794  4B A9 BF 38 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8057E798  3B 41 00 68 */	addi r26, r1, 0x68
/* 8057E79C  7F 43 D3 78 */	mr r3, r26
/* 8057E7A0  4B AF 8D DC */	b __ct__11dBgS_GndChkFv
/* 8057E7A4  3C 60 80 58 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 8057E7A8  38 63 F7 F4 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 8057E7AC  90 61 00 78 */	stw r3, 0x78(r1)
/* 8057E7B0  3B C3 00 0C */	addi r30, r3, 0xc
/* 8057E7B4  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8057E7B8  3B A3 00 18 */	addi r29, r3, 0x18
/* 8057E7BC  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8057E7C0  3B 83 00 24 */	addi r28, r3, 0x24
/* 8057E7C4  93 81 00 B4 */	stw r28, 0xb4(r1)
/* 8057E7C8  38 7A 00 3C */	addi r3, r26, 0x3c
/* 8057E7CC  4B AF A6 9C */	b SetObj__16dBgS_PolyPassChkFv
/* 8057E7D0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8057E7D4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8057E7D8  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 8057E7DC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8057E7E0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8057E7E4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8057E7E8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 8057E7EC  EC 01 00 2A */	fadds f0, f1, f0
/* 8057E7F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8057E7F4  7F 43 D3 78 */	mr r3, r26
/* 8057E7F8  38 81 00 48 */	addi r4, r1, 0x48
/* 8057E7FC  4B CE 95 2C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8057E800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057E804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057E808  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 8057E80C  7F 43 D3 78 */	mr r3, r26
/* 8057E810  38 81 00 68 */	addi r4, r1, 0x68
/* 8057E814  4B AF 5C 8C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8057E818  FF E0 08 90 */	fmr f31, f1
/* 8057E81C  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha
/* 8057E820  38 03 F8 24 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8057E824  90 01 00 64 */	stw r0, 0x64(r1)
/* 8057E828  38 61 00 48 */	addi r3, r1, 0x48
/* 8057E82C  4B A9 F4 90 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8057E830  7F 43 D3 78 */	mr r3, r26
/* 8057E834  3C 80 80 3F */	lis r4, mGndCheck__11fopAcM_gc_c@ha
/* 8057E838  38 84 1C C4 */	addi r4, r4, mGndCheck__11fopAcM_gc_c@l
/* 8057E83C  38 84 00 14 */	addi r4, r4, 0x14
/* 8057E840  38 A1 00 54 */	addi r5, r1, 0x54
/* 8057E844  4B AF 5F 00 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8057E848  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8057E84C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8057E850  41 82 02 0C */	beq lbl_8057EA5C
/* 8057E854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057E858  41 82 02 04 */	beq lbl_8057EA5C
/* 8057E85C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8057E860  FC 00 00 1E */	fctiwz f0, f0
/* 8057E864  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 8057E868  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8057E86C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8057E870  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8057E874  3B 43 00 04 */	addi r26, r3, 4
/* 8057E878  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8057E87C  7C 7A 04 2E */	lfsx f3, r26, r0
/* 8057E880  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8057E884  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8057E888  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8057E88C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8057E890  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8057E894  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8057E898  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8057E89C  40 80 01 C0 */	bge lbl_8057EA5C
/* 8057E8A0  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8057E8A4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8057E8A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8057E8AC  FC 20 10 18 */	frsp f1, f2
/* 8057E8B0  FC 40 00 18 */	frsp f2, f0
/* 8057E8B4  4B CE 8D C0 */	b cM_atan2s__Fff
/* 8057E8B8  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 8057E8BC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8057E8C0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8057E8C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8057E8C8  EC 63 00 32 */	fmuls f3, f3, f0
/* 8057E8CC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8057E8D0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8057E8D4  40 80 00 0C */	bge lbl_8057E8E0
/* 8057E8D8  FC 60 00 90 */	fmr f3, f0
/* 8057E8DC  48 00 00 10 */	b lbl_8057E8EC
lbl_8057E8E0:
/* 8057E8E0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8057E8E4  40 81 00 08 */	ble lbl_8057E8EC
/* 8057E8E8  FC 60 08 90 */	fmr f3, f1
lbl_8057E8EC:
/* 8057E8EC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8057E8F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8057E8F4  7C 1A 04 2E */	lfsx f0, r26, r0
/* 8057E8F8  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8057E8FC  EC 41 00 32 */	fmuls f2, f1, f0
/* 8057E900  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8057E904  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 8057E908  7C 04 04 2E */	lfsx f0, r4, r0
/* 8057E90C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8057E910  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8057E914  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8057E918  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8057E91C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8057E920  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8057E924  7C 04 04 2E */	lfsx f0, r4, r0
/* 8057E928  EC 03 00 32 */	fmuls f0, f3, f0
/* 8057E92C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8057E930  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8057E934  7C 1A 04 2E */	lfsx f0, r26, r0
/* 8057E938  EC 03 00 32 */	fmuls f0, f3, f0
/* 8057E93C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8057E940  38 61 00 24 */	addi r3, r1, 0x24
/* 8057E944  38 81 00 18 */	addi r4, r1, 0x18
/* 8057E948  7C 65 1B 78 */	mr r5, r3
/* 8057E94C  4B DC 87 44 */	b PSVECAdd
/* 8057E950  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8057E954  EC 20 00 32 */	fmuls f1, f0, f0
/* 8057E958  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8057E95C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8057E960  EC 81 00 2A */	fadds f4, f1, f0
/* 8057E964  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8057E968  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8057E96C  40 81 00 58 */	ble lbl_8057E9C4
/* 8057E970  FC 00 20 34 */	frsqrte f0, f4
/* 8057E974  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 8057E978  FC 23 00 32 */	fmul f1, f3, f0
/* 8057E97C  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 8057E980  FC 00 00 32 */	fmul f0, f0, f0
/* 8057E984  FC 04 00 32 */	fmul f0, f4, f0
/* 8057E988  FC 02 00 28 */	fsub f0, f2, f0
/* 8057E98C  FC 01 00 32 */	fmul f0, f1, f0
/* 8057E990  FC 23 00 32 */	fmul f1, f3, f0
/* 8057E994  FC 00 00 32 */	fmul f0, f0, f0
/* 8057E998  FC 04 00 32 */	fmul f0, f4, f0
/* 8057E99C  FC 02 00 28 */	fsub f0, f2, f0
/* 8057E9A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8057E9A4  FC 23 00 32 */	fmul f1, f3, f0
/* 8057E9A8  FC 00 00 32 */	fmul f0, f0, f0
/* 8057E9AC  FC 04 00 32 */	fmul f0, f4, f0
/* 8057E9B0  FC 02 00 28 */	fsub f0, f2, f0
/* 8057E9B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8057E9B8  FC 84 00 32 */	fmul f4, f4, f0
/* 8057E9BC  FC 80 20 18 */	frsp f4, f4
/* 8057E9C0  48 00 00 88 */	b lbl_8057EA48
lbl_8057E9C4:
/* 8057E9C4  C8 1F 00 68 */	lfd f0, 0x68(r31)
/* 8057E9C8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8057E9CC  40 80 00 10 */	bge lbl_8057E9DC
/* 8057E9D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057E9D4  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
/* 8057E9D8  48 00 00 70 */	b lbl_8057EA48
lbl_8057E9DC:
/* 8057E9DC  D0 81 00 08 */	stfs f4, 8(r1)
/* 8057E9E0  80 81 00 08 */	lwz r4, 8(r1)
/* 8057E9E4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8057E9E8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8057E9EC  7C 03 00 00 */	cmpw r3, r0
/* 8057E9F0  41 82 00 14 */	beq lbl_8057EA04
/* 8057E9F4  40 80 00 40 */	bge lbl_8057EA34
/* 8057E9F8  2C 03 00 00 */	cmpwi r3, 0
/* 8057E9FC  41 82 00 20 */	beq lbl_8057EA1C
/* 8057EA00  48 00 00 34 */	b lbl_8057EA34
lbl_8057EA04:
/* 8057EA04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057EA08  41 82 00 0C */	beq lbl_8057EA14
/* 8057EA0C  38 00 00 01 */	li r0, 1
/* 8057EA10  48 00 00 28 */	b lbl_8057EA38
lbl_8057EA14:
/* 8057EA14  38 00 00 02 */	li r0, 2
/* 8057EA18  48 00 00 20 */	b lbl_8057EA38
lbl_8057EA1C:
/* 8057EA1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8057EA20  41 82 00 0C */	beq lbl_8057EA2C
/* 8057EA24  38 00 00 05 */	li r0, 5
/* 8057EA28  48 00 00 10 */	b lbl_8057EA38
lbl_8057EA2C:
/* 8057EA2C  38 00 00 03 */	li r0, 3
/* 8057EA30  48 00 00 08 */	b lbl_8057EA38
lbl_8057EA34:
/* 8057EA34  38 00 00 04 */	li r0, 4
lbl_8057EA38:
/* 8057EA38  2C 00 00 01 */	cmpwi r0, 1
/* 8057EA3C  40 82 00 0C */	bne lbl_8057EA48
/* 8057EA40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8057EA44  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)
lbl_8057EA48:
/* 8057EA48  D0 9B 05 2C */	stfs f4, 0x52c(r27)
/* 8057EA4C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8057EA50  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8057EA54  4B CE 8C 20 */	b cM_atan2s__Fff
/* 8057EA58  B0 7B 04 DE */	sth r3, 0x4de(r27)
lbl_8057EA5C:
/* 8057EA5C  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8057EA60  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8057EA64  EC 01 00 32 */	fmuls f0, f1, f0
/* 8057EA68  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 8057EA6C  C0 3B 07 C4 */	lfs f1, 0x7c4(r27)
/* 8057EA70  C0 1B 07 BC */	lfs f0, 0x7bc(r27)
/* 8057EA74  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8057EA78  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8057EA7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8057EA80  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8057EA84  38 61 00 0C */	addi r3, r1, 0xc
/* 8057EA88  4B DC 86 B0 */	b PSVECSquareMag
/* 8057EA8C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8057EA90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057EA94  40 81 00 14 */	ble lbl_8057EAA8
/* 8057EA98  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8057EA9C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8057EAA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8057EAA4  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_8057EAA8:
/* 8057EAA8  80 1B 05 D0 */	lwz r0, 0x5d0(r27)
/* 8057EAAC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8057EAB0  41 82 00 20 */	beq lbl_8057EAD0
/* 8057EAB4  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8057EAB8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8057EABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057EAC0  40 80 00 1C */	bge lbl_8057EADC
/* 8057EAC4  7F 63 DB 78 */	mr r3, r27
/* 8057EAC8  4B FF FB 15 */	bl mode_init_wait__10daGpTaru_cFv
/* 8057EACC  48 00 00 10 */	b lbl_8057EADC
lbl_8057EAD0:
/* 8057EAD0  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 8057EAD4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8057EAD8  90 1B 05 5C */	stw r0, 0x55c(r27)
lbl_8057EADC:
/* 8057EADC  3C 60 80 58 */	lis r3, __vt__8cM3dGPla@ha
/* 8057EAE0  38 03 F8 24 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8057EAE4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8057EAE8  3C 60 80 58 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 8057EAEC  38 03 F7 F4 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 8057EAF0  90 01 00 78 */	stw r0, 0x78(r1)
/* 8057EAF4  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8057EAF8  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8057EAFC  93 81 00 B4 */	stw r28, 0xb4(r1)
/* 8057EB00  38 61 00 68 */	addi r3, r1, 0x68
/* 8057EB04  38 80 00 00 */	li r4, 0
/* 8057EB08  4B AF 8A E8 */	b __dt__11dBgS_GndChkFv
/* 8057EB0C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8057EB10  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8057EB14  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8057EB18  4B DE 37 04 */	b _restgpr_26
/* 8057EB1C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8057EB20  7C 08 03 A6 */	mtlr r0
/* 8057EB24  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8057EB28  4E 80 00 20 */	blr 
