lbl_800EF95C:
/* 800EF95C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800EF960  7C 08 02 A6 */	mflr r0
/* 800EF964  90 01 00 84 */	stw r0, 0x84(r1)
/* 800EF968  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800EF96C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800EF970  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 800EF974  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 800EF978  39 61 00 60 */	addi r11, r1, 0x60
/* 800EF97C  48 27 28 51 */	bl _savegpr_25
/* 800EF980  7C 7A 1B 78 */	mr r26, r3
/* 800EF984  3C 60 80 42 */	lis r3, lit_4409@ha
/* 800EF988  3B 63 55 08 */	addi r27, r3, lit_4409@l
/* 800EF98C  3B E0 00 00 */	li r31, 0
/* 800EF990  A0 1A 2F DC */	lhz r0, 0x2fdc(r26)
/* 800EF994  28 00 00 FF */	cmplwi r0, 0xff
/* 800EF998  41 82 00 20 */	beq lbl_800EF9B8
/* 800EF99C  28 00 01 03 */	cmplwi r0, 0x103
/* 800EF9A0  40 82 00 08 */	bne lbl_800EF9A8
/* 800EF9A4  3B E0 00 01 */	li r31, 1
lbl_800EF9A8:
/* 800EF9A8  7F 43 D3 78 */	mr r3, r26
/* 800EF9AC  38 80 00 01 */	li r4, 1
/* 800EF9B0  38 A0 00 01 */	li r5, 1
/* 800EF9B4  4B FD 19 29 */	bl deleteEquipItem__9daAlink_cFii
lbl_800EF9B8:
/* 800EF9B8  38 7A 28 14 */	addi r3, r26, 0x2814
/* 800EF9BC  80 9A 27 F4 */	lwz r4, 0x27f4(r26)
/* 800EF9C0  48 06 F2 F9 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800EF9C4  83 DA 27 F4 */	lwz r30, 0x27f4(r26)
/* 800EF9C8  A8 1E 00 08 */	lha r0, 8(r30)
/* 800EF9CC  2C 00 00 EE */	cmpwi r0, 0xee
/* 800EF9D0  40 82 00 48 */	bne lbl_800EFA18
/* 800EF9D4  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 800EF9D8  60 00 00 40 */	ori r0, r0, 0x40
/* 800EF9DC  90 1E 17 44 */	stw r0, 0x1744(r30)
/* 800EF9E0  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 800EF9E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800EF9E8  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 800EF9EC  38 00 00 01 */	li r0, 1
/* 800EF9F0  98 1A 2F AA */	stb r0, 0x2faa(r26)
/* 800EF9F4  3B 9B 00 B4 */	addi r28, r27, 0xb4
/* 800EF9F8  38 1B 00 84 */	addi r0, r27, 0x84
/* 800EF9FC  90 1A 38 4C */	stw r0, 0x384c(r26)
/* 800EFA00  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 800EFA04  54 19 00 00 */	rlwinm r25, r0, 0, 0, 0
/* 800EFA08  38 7A 2C A8 */	addi r3, r26, 0x2ca8
/* 800EFA0C  38 80 00 01 */	li r4, 1
/* 800EFA10  48 1D 40 5D */	bl setRiding__14Z2CreatureLinkFb
/* 800EFA14  48 00 00 3C */	b lbl_800EFA50
lbl_800EFA18:
/* 800EFA18  7F C3 F3 78 */	mr r3, r30
/* 800EFA1C  4B F4 82 75 */	bl setPlayerRideNow__10e_wb_classFv
/* 800EFA20  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 800EFA24  80 63 00 04 */	lwz r3, 4(r3)
/* 800EFA28  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800EFA2C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800EFA30  38 03 02 D0 */	addi r0, r3, 0x2d0
/* 800EFA34  7C 1D 03 78 */	mr r29, r0
/* 800EFA38  38 00 00 02 */	li r0, 2
/* 800EFA3C  98 1A 2F AA */	stb r0, 0x2faa(r26)
/* 800EFA40  3B 9B 00 CC */	addi r28, r27, 0xcc
/* 800EFA44  38 1B 00 9C */	addi r0, r27, 0x9c
/* 800EFA48  90 1A 38 4C */	stw r0, 0x384c(r26)
/* 800EFA4C  3B 20 00 00 */	li r25, 0
lbl_800EFA50:
/* 800EFA50  7F 43 D3 78 */	mr r3, r26
/* 800EFA54  38 80 00 3A */	li r4, 0x3a
/* 800EFA58  4B FD 25 15 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800EFA5C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 800EFA60  D0 1A 35 88 */	stfs f0, 0x3588(r26)
/* 800EFA64  38 7B 00 0C */	addi r3, r27, 0xc
/* 800EFA68  C0 03 00 04 */	lfs f0, 4(r3)
/* 800EFA6C  D0 1A 35 8C */	stfs f0, 0x358c(r26)
/* 800EFA70  C0 03 00 08 */	lfs f0, 8(r3)
/* 800EFA74  D0 1A 35 90 */	stfs f0, 0x3590(r26)
/* 800EFA78  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
/* 800EFA7C  3B 60 FF FF */	li r27, -1
/* 800EFA80  38 00 00 00 */	li r0, 0
/* 800EFA84  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800EFA88  7F 43 D3 78 */	mr r3, r26
/* 800EFA8C  38 80 00 00 */	li r4, 0
/* 800EFA90  4B FF 2A F1 */	bl setHeavyBoots__9daAlink_cFi
/* 800EFA94  7F 43 D3 78 */	mr r3, r26
/* 800EFA98  4B FF CD E5 */	bl getReinRideDirection__9daAlink_cFv
/* 800EFA9C  7C 7E 1B 78 */	mr r30, r3
/* 800EFAA0  28 19 00 00 */	cmplwi r25, 0
/* 800EFAA4  40 82 00 0C */	bne lbl_800EFAB0
/* 800EFAA8  2C 1E 00 01 */	cmpwi r30, 1
/* 800EFAAC  40 82 00 1C */	bne lbl_800EFAC8
lbl_800EFAB0:
/* 800EFAB0  3B C0 00 3F */	li r30, 0x3f
/* 800EFAB4  38 00 00 02 */	li r0, 2
/* 800EFAB8  98 1A 2F C0 */	stb r0, 0x2fc0(r26)
/* 800EFABC  38 00 00 01 */	li r0, 1
/* 800EFAC0  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800EFAC4  48 00 00 E0 */	b lbl_800EFBA4
lbl_800EFAC8:
/* 800EFAC8  7F 43 D3 78 */	mr r3, r26
/* 800EFACC  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 800EFAD0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EFAD4  7D 89 03 A6 */	mtctr r12
/* 800EFAD8  4E 80 04 21 */	bctrl 
/* 800EFADC  28 03 00 00 */	cmplwi r3, 0
/* 800EFAE0  41 82 00 28 */	beq lbl_800EFB08
/* 800EFAE4  80 7A 27 F4 */	lwz r3, 0x27f4(r26)
/* 800EFAE8  80 03 17 48 */	lwz r0, 0x1748(r3)
/* 800EFAEC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800EFAF0  41 82 00 18 */	beq lbl_800EFB08
/* 800EFAF4  C0 02 94 DC */	lfs f0, lit_19240(r2)
/* 800EFAF8  EF FF 00 32 */	fmuls f31, f31, f0
/* 800EFAFC  38 00 00 01 */	li r0, 1
/* 800EFB00  B0 1A 30 0C */	sth r0, 0x300c(r26)
/* 800EFB04  3B 60 00 30 */	li r27, 0x30
lbl_800EFB08:
/* 800EFB08  2C 1E 00 02 */	cmpwi r30, 2
/* 800EFB0C  40 82 00 38 */	bne lbl_800EFB44
/* 800EFB10  7F 43 D3 78 */	mr r3, r26
/* 800EFB14  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 800EFB18  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EFB1C  7D 89 03 A6 */	mtctr r12
/* 800EFB20  4E 80 04 21 */	bctrl 
/* 800EFB24  28 03 00 00 */	cmplwi r3, 0
/* 800EFB28  38 00 00 5C */	li r0, 0x5c
/* 800EFB2C  41 82 00 08 */	beq lbl_800EFB34
/* 800EFB30  38 00 00 3D */	li r0, 0x3d
lbl_800EFB34:
/* 800EFB34  7C 1E 03 78 */	mr r30, r0
/* 800EFB38  38 00 00 00 */	li r0, 0
/* 800EFB3C  98 1A 2F C0 */	stb r0, 0x2fc0(r26)
/* 800EFB40  48 00 00 34 */	b lbl_800EFB74
lbl_800EFB44:
/* 800EFB44  7F 43 D3 78 */	mr r3, r26
/* 800EFB48  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 800EFB4C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EFB50  7D 89 03 A6 */	mtctr r12
/* 800EFB54  4E 80 04 21 */	bctrl 
/* 800EFB58  28 03 00 00 */	cmplwi r3, 0
/* 800EFB5C  38 00 00 5D */	li r0, 0x5d
/* 800EFB60  41 82 00 08 */	beq lbl_800EFB68
/* 800EFB64  38 00 00 3E */	li r0, 0x3e
lbl_800EFB68:
/* 800EFB68  7C 1E 03 78 */	mr r30, r0
/* 800EFB6C  38 00 00 01 */	li r0, 1
/* 800EFB70  98 1A 2F C0 */	stb r0, 0x2fc0(r26)
lbl_800EFB74:
/* 800EFB74  80 1A 06 14 */	lwz r0, 0x614(r26)
/* 800EFB78  28 00 00 07 */	cmplwi r0, 7
/* 800EFB7C  41 82 00 28 */	beq lbl_800EFBA4
/* 800EFB80  7F 43 D3 78 */	mr r3, r26
/* 800EFB84  38 80 00 00 */	li r4, 0
/* 800EFB88  80 BA 27 F4 */	lwz r5, 0x27f4(r26)
/* 800EFB8C  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 800EFB90  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 800EFB94  7C 05 00 50 */	subf r0, r5, r0
/* 800EFB98  7C 05 07 34 */	extsh r5, r0
/* 800EFB9C  38 C0 00 00 */	li r6, 0
/* 800EFBA0  4B FB DF D9 */	bl setOldRootQuaternion__9daAlink_cFsss
lbl_800EFBA4:
/* 800EFBA4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EFBA8  D0 1A 33 98 */	stfs f0, 0x3398(r26)
/* 800EFBAC  7F A3 EB 78 */	mr r3, r29
/* 800EFBB0  7F 84 E3 78 */	mr r4, r28
/* 800EFBB4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800EFBB8  48 25 71 B5 */	bl PSMTXMultVec
/* 800EFBBC  80 7A 27 F4 */	lwz r3, 0x27f4(r26)
/* 800EFBC0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 800EFBC4  4B F1 D1 A1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800EFBC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800EFBCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800EFBD0  80 9A 27 F4 */	lwz r4, 0x27f4(r26)
/* 800EFBD4  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 800EFBD8  4B F1 C8 5D */	bl mDoMtx_YrotM__FPA4_fs
/* 800EFBDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800EFBE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800EFBE4  80 9A 27 F4 */	lwz r4, 0x27f4(r26)
/* 800EFBE8  A8 04 04 E4 */	lha r0, 0x4e4(r4)
/* 800EFBEC  7C 00 00 D0 */	neg r0, r0
/* 800EFBF0  7C 04 07 34 */	extsh r4, r0
/* 800EFBF4  4B F1 C7 A9 */	bl mDoMtx_XrotM__FPA4_fs
/* 800EFBF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800EFBFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800EFC00  80 9A 27 F4 */	lwz r4, 0x27f4(r26)
/* 800EFC04  A8 04 04 E6 */	lha r0, 0x4e6(r4)
/* 800EFC08  7C 00 00 D0 */	neg r0, r0
/* 800EFC0C  7C 04 07 34 */	extsh r4, r0
/* 800EFC10  4B F1 C8 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 800EFC14  80 7A 27 F4 */	lwz r3, 0x27f4(r26)
/* 800EFC18  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800EFC1C  FC 20 00 50 */	fneg f1, f0
/* 800EFC20  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 800EFC24  FC 40 00 50 */	fneg f2, f0
/* 800EFC28  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 800EFC2C  FC 60 00 50 */	fneg f3, f0
/* 800EFC30  4B F1 D1 6D */	bl transM__14mDoMtx_stack_cFfff
/* 800EFC34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800EFC38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800EFC3C  7F A4 EB 78 */	mr r4, r29
/* 800EFC40  7C 65 1B 78 */	mr r5, r3
/* 800EFC44  48 25 68 A1 */	bl PSMTXConcat
/* 800EFC48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800EFC4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800EFC50  7F 84 E3 78 */	mr r4, r28
/* 800EFC54  38 A1 00 20 */	addi r5, r1, 0x20
/* 800EFC58  48 25 71 15 */	bl PSMTXMultVec
/* 800EFC5C  C3 DA 04 D4 */	lfs f30, 0x4d4(r26)
/* 800EFC60  38 61 00 14 */	addi r3, r1, 0x14
/* 800EFC64  38 81 00 2C */	addi r4, r1, 0x2c
/* 800EFC68  38 A1 00 20 */	addi r5, r1, 0x20
/* 800EFC6C  48 17 6E C9 */	bl __mi__4cXyzCFRC3Vec
/* 800EFC70  38 61 00 08 */	addi r3, r1, 8
/* 800EFC74  80 9A 27 F4 */	lwz r4, 0x27f4(r26)
/* 800EFC78  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 800EFC7C  38 A1 00 14 */	addi r5, r1, 0x14
/* 800EFC80  48 17 6E 65 */	bl __pl__4cXyzCFRC3Vec
/* 800EFC84  C0 01 00 08 */	lfs f0, 8(r1)
/* 800EFC88  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 800EFC8C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800EFC90  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 800EFC94  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800EFC98  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 800EFC9C  80 BA 27 F4 */	lwz r5, 0x27f4(r26)
/* 800EFCA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800EFCA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800EFCA8  A8 85 04 E4 */	lha r4, 0x4e4(r5)
/* 800EFCAC  A8 A5 04 E6 */	lha r5, 0x4e6(r5)
/* 800EFCB0  38 C0 00 00 */	li r6, 0
/* 800EFCB4  4B F1 C5 55 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 800EFCB8  7F 43 D3 78 */	mr r3, r26
/* 800EFCBC  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 800EFCC0  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800EFCC4  7D 89 03 A6 */	mtctr r12
/* 800EFCC8  4E 80 04 21 */	bctrl 
/* 800EFCCC  28 03 00 00 */	cmplwi r3, 0
/* 800EFCD0  41 82 00 40 */	beq lbl_800EFD10
/* 800EFCD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800EFCD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800EFCDC  3C 80 80 39 */	lis r4, boarRideOffset@ha
/* 800EFCE0  38 84 19 84 */	addi r4, r4, boarRideOffset@l
/* 800EFCE4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800EFCE8  48 25 70 85 */	bl PSMTXMultVec
/* 800EFCEC  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 800EFCF0  38 81 00 2C */	addi r4, r1, 0x2c
/* 800EFCF4  7C 65 1B 78 */	mr r5, r3
/* 800EFCF8  48 25 73 99 */	bl PSVECAdd
/* 800EFCFC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800EFD00  EF DE 00 2A */	fadds f30, f30, f0
/* 800EFD04  38 00 00 00 */	li r0, 0
/* 800EFD08  B0 1A 30 0E */	sth r0, 0x300e(r26)
/* 800EFD0C  48 00 00 08 */	b lbl_800EFD14
lbl_800EFD10:
/* 800EFD10  B3 FA 30 0E */	sth r31, 0x300e(r26)
lbl_800EFD14:
/* 800EFD14  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 800EFD18  EC 1E 00 28 */	fsubs f0, f30, f0
/* 800EFD1C  D0 1A 34 78 */	stfs f0, 0x3478(r26)
/* 800EFD20  D3 DA 04 D4 */	stfs f30, 0x4d4(r26)
/* 800EFD24  80 7A 27 F4 */	lwz r3, 0x27f4(r26)
/* 800EFD28  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800EFD2C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 800EFD30  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 800EFD34  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 800EFD38  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800EFD3C  D0 5A 04 FC */	stfs f2, 0x4fc(r26)
/* 800EFD40  7F 43 D3 78 */	mr r3, r26
/* 800EFD44  7F C4 F3 78 */	mr r4, r30
/* 800EFD48  FC 20 F8 90 */	fmr f1, f31
/* 800EFD4C  7F 65 DB 78 */	mr r5, r27
/* 800EFD50  C0 62 93 24 */	lfs f3, lit_7450(r2)
/* 800EFD54  4B FB D2 B9 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800EFD58  38 00 00 10 */	li r0, 0x10
/* 800EFD5C  98 1A 2F 99 */	stb r0, 0x2f99(r26)
/* 800EFD60  38 00 00 00 */	li r0, 0
/* 800EFD64  98 1A 2F AB */	stb r0, 0x2fab(r26)
/* 800EFD68  B0 1A 30 04 */	sth r0, 0x3004(r26)
/* 800EFD6C  B0 1A 30 02 */	sth r0, 0x3002(r26)
/* 800EFD70  B0 1A 30 A6 */	sth r0, 0x30a6(r26)
/* 800EFD74  38 00 00 46 */	li r0, 0x46
/* 800EFD78  B0 1A 05 4E */	sth r0, 0x54e(r26)
/* 800EFD7C  80 7A 27 F4 */	lwz r3, 0x27f4(r26)
/* 800EFD80  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 800EFD84  D0 1A 37 C8 */	stfs f0, 0x37c8(r26)
/* 800EFD88  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 800EFD8C  D0 1A 37 CC */	stfs f0, 0x37cc(r26)
/* 800EFD90  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 800EFD94  D0 1A 37 D0 */	stfs f0, 0x37d0(r26)
/* 800EFD98  38 60 00 01 */	li r3, 1
/* 800EFD9C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 800EFDA0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800EFDA4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 800EFDA8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 800EFDAC  39 61 00 60 */	addi r11, r1, 0x60
/* 800EFDB0  48 27 24 69 */	bl _restgpr_25
/* 800EFDB4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800EFDB8  7C 08 03 A6 */	mtlr r0
/* 800EFDBC  38 21 00 80 */	addi r1, r1, 0x80
/* 800EFDC0  4E 80 00 20 */	blr 
