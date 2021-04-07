lbl_8049B764:
/* 8049B764  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8049B768  7C 08 02 A6 */	mflr r0
/* 8049B76C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8049B770  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8049B774  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 8049B778  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8049B77C  4B EC 6A 51 */	bl _savegpr_25
/* 8049B780  7C 7A 1B 78 */	mr r26, r3
/* 8049B784  3C 80 80 4A */	lis r4, cNullVec__6Z2Calc@ha /* 0x8049DE0C@ha */
/* 8049B788  3B C4 DE 0C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x8049DE0C@l */
/* 8049B78C  3C 80 80 4A */	lis r4, lit_3768@ha /* 0x8049DC84@ha */
/* 8049B790  3B E4 DC 84 */	addi r31, r4, lit_3768@l /* 0x8049DC84@l */
/* 8049B794  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8049B798  28 00 00 06 */	cmplwi r0, 6
/* 8049B79C  40 82 00 38 */	bne lbl_8049B7D4
/* 8049B7A0  4B FF E8 AD */	bl setBlur__9daArrow_cFv
/* 8049B7A4  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8049B7A8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8049B7AC  90 7A 0A 28 */	stw r3, 0xa28(r26)
/* 8049B7B0  90 1A 0A 2C */	stw r0, 0xa2c(r26)
/* 8049B7B4  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 8049B7B8  90 1A 0A 30 */	stw r0, 0xa30(r26)
/* 8049B7BC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049B7C0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8049B7C4  7F 43 D3 78 */	mr r3, r26
/* 8049B7C8  48 00 15 05 */	bl procActorControllStop__9daArrow_cFv
/* 8049B7CC  38 60 00 01 */	li r3, 1
/* 8049B7D0  48 00 0E C8 */	b lbl_8049C698
lbl_8049B7D4:
/* 8049B7D4  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8049B7D8  38 9A 04 F8 */	addi r4, r26, 0x4f8
/* 8049B7DC  7C 65 1B 78 */	mr r5, r3
/* 8049B7E0  4B EA B8 B1 */	bl PSVECAdd
/* 8049B7E4  38 61 00 80 */	addi r3, r1, 0x80
/* 8049B7E8  38 9A 04 F8 */	addi r4, r26, 0x4f8
/* 8049B7EC  C0 3A 09 A0 */	lfs f1, 0x9a0(r26)
/* 8049B7F0  4B DC B3 95 */	bl __ml__4cXyzCFf
/* 8049B7F4  38 61 00 74 */	addi r3, r1, 0x74
/* 8049B7F8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 8049B7FC  38 A1 00 80 */	addi r5, r1, 0x80
/* 8049B800  4B DC B2 E5 */	bl __pl__4cXyzCFRC3Vec
/* 8049B804  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8049B808  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8049B80C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8049B810  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8049B814  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8049B818  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8049B81C  3B 80 00 00 */	li r28, 0
/* 8049B820  88 1A 09 45 */	lbz r0, 0x945(r26)
/* 8049B824  28 00 00 00 */	cmplwi r0, 0
/* 8049B828  40 82 01 C0 */	bne lbl_8049B9E8
/* 8049B82C  38 7A 05 6C */	addi r3, r26, 0x56c
/* 8049B830  38 9A 04 BC */	addi r4, r26, 0x4bc
/* 8049B834  38 A1 00 98 */	addi r5, r1, 0x98
/* 8049B838  7F 46 D3 78 */	mr r6, r26
/* 8049B83C  4B BD C5 29 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8049B840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049B844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049B848  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8049B84C  38 9A 05 6C */	addi r4, r26, 0x56c
/* 8049B850  4B BD 8B 65 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8049B854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049B858  41 82 00 20 */	beq lbl_8049B878
/* 8049B85C  C0 1A 05 9C */	lfs f0, 0x59c(r26)
/* 8049B860  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8049B864  C0 1A 05 A0 */	lfs f0, 0x5a0(r26)
/* 8049B868  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8049B86C  C0 1A 05 A4 */	lfs f0, 0x5a4(r26)
/* 8049B870  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8049B874  48 00 00 1C */	b lbl_8049B890
lbl_8049B878:
/* 8049B878  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8049B87C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8049B880  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8049B884  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8049B888  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8049B88C  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_8049B890:
/* 8049B890  7F 43 D3 78 */	mr r3, r26
/* 8049B894  38 9A 04 BC */	addi r4, r26, 0x4bc
/* 8049B898  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8049B89C  4B FF EA D5 */	bl setArrowWaterNextPos__9daArrow_cFP4cXyzP4cXyz
/* 8049B8A0  7C 7B 1B 79 */	or. r27, r3, r3
/* 8049B8A4  41 82 01 44 */	beq lbl_8049B9E8
/* 8049B8A8  2C 1B 00 02 */	cmpwi r27, 2
/* 8049B8AC  41 82 00 0C */	beq lbl_8049B8B8
/* 8049B8B0  2C 1B 00 04 */	cmpwi r27, 4
/* 8049B8B4  40 82 00 0C */	bne lbl_8049B8C0
lbl_8049B8B8:
/* 8049B8B8  3B 80 00 01 */	li r28, 1
/* 8049B8BC  48 00 00 60 */	b lbl_8049B91C
lbl_8049B8C0:
/* 8049B8C0  2C 1B 00 01 */	cmpwi r27, 1
/* 8049B8C4  40 82 00 58 */	bne lbl_8049B91C
/* 8049B8C8  3B BA 06 0C */	addi r29, r26, 0x60c
/* 8049B8CC  7F A3 EB 78 */	mr r3, r29
/* 8049B8D0  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 8049B8D4  38 80 00 00 */	li r4, 0
/* 8049B8D8  4B B8 3F A5 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 8049B8DC  88 FA 09 48 */	lbz r7, 0x948(r26)
/* 8049B8E0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8049B8E4  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 8049B8E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049B8EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8049B8F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8049B8F4  80 63 00 00 */	lwz r3, 0(r3)
/* 8049B8F8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8049B8FC  7F A5 EB 78 */	mr r5, r29
/* 8049B900  38 C0 00 00 */	li r6, 0
/* 8049B904  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8049B908  FC 40 08 90 */	fmr f2, f1
/* 8049B90C  C0 7F 01 34 */	lfs f3, 0x134(r31)
/* 8049B910  FC 80 18 90 */	fmr f4, f3
/* 8049B914  39 00 00 00 */	li r8, 0
/* 8049B918  4B E1 00 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8049B91C:
/* 8049B91C  38 00 00 01 */	li r0, 1
/* 8049B920  98 1A 09 45 */	stb r0, 0x945(r26)
/* 8049B924  2C 1B 00 04 */	cmpwi r27, 4
/* 8049B928  41 82 00 0C */	beq lbl_8049B934
/* 8049B92C  2C 1B 00 03 */	cmpwi r27, 3
/* 8049B930  40 82 00 20 */	bne lbl_8049B950
lbl_8049B934:
/* 8049B934  C0 1A 04 BC */	lfs f0, 0x4bc(r26)
/* 8049B938  D0 1A 09 FC */	stfs f0, 0x9fc(r26)
/* 8049B93C  C0 1A 04 C0 */	lfs f0, 0x4c0(r26)
/* 8049B940  D0 1A 0A 00 */	stfs f0, 0xa00(r26)
/* 8049B944  C0 1A 04 C4 */	lfs f0, 0x4c4(r26)
/* 8049B948  D0 1A 0A 04 */	stfs f0, 0xa04(r26)
/* 8049B94C  48 00 00 1C */	b lbl_8049B968
lbl_8049B950:
/* 8049B950  C0 1A 06 0C */	lfs f0, 0x60c(r26)
/* 8049B954  D0 1A 09 FC */	stfs f0, 0x9fc(r26)
/* 8049B958  C0 1A 06 10 */	lfs f0, 0x610(r26)
/* 8049B95C  D0 1A 0A 00 */	stfs f0, 0xa00(r26)
/* 8049B960  C0 1A 06 14 */	lfs f0, 0x614(r26)
/* 8049B964  D0 1A 0A 04 */	stfs f0, 0xa04(r26)
lbl_8049B968:
/* 8049B968  38 61 00 68 */	addi r3, r1, 0x68
/* 8049B96C  38 9A 04 F8 */	addi r4, r26, 0x4f8
/* 8049B970  4B DC B5 D9 */	bl normalizeZP__4cXyzFv
/* 8049B974  38 61 00 5C */	addi r3, r1, 0x5c
/* 8049B978  38 9A 04 F8 */	addi r4, r26, 0x4f8
/* 8049B97C  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 8049B980  4B DC B2 05 */	bl __ml__4cXyzCFf
/* 8049B984  38 61 00 50 */	addi r3, r1, 0x50
/* 8049B988  38 81 00 8C */	addi r4, r1, 0x8c
/* 8049B98C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8049B990  4B DC B1 A5 */	bl __mi__4cXyzCFRC3Vec
/* 8049B994  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8049B998  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 8049B99C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8049B9A0  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 8049B9A4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8049B9A8  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 8049B9AC  38 7A 04 F8 */	addi r3, r26, 0x4f8
/* 8049B9B0  7C 64 1B 78 */	mr r4, r3
/* 8049B9B4  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8049B9B8  4B EA B7 21 */	bl PSVECScale
/* 8049B9BC  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 8049B9C0  28 00 00 04 */	cmplwi r0, 4
/* 8049B9C4  41 82 00 0C */	beq lbl_8049B9D0
/* 8049B9C8  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8049B9CC  D0 1A 09 A0 */	stfs f0, 0x9a0(r26)
lbl_8049B9D0:
/* 8049B9D0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8049B9D4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8049B9D8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8049B9DC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8049B9E0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8049B9E4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
lbl_8049B9E8:
/* 8049B9E8  38 7A 05 6C */	addi r3, r26, 0x56c
/* 8049B9EC  38 9A 04 BC */	addi r4, r26, 0x4bc
/* 8049B9F0  38 A1 00 98 */	addi r5, r1, 0x98
/* 8049B9F4  7F 46 D3 78 */	mr r6, r26
/* 8049B9F8  4B BD C3 6D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8049B9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049BA00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049BA04  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8049BA08  7F A3 EB 78 */	mr r3, r29
/* 8049BA0C  38 9A 05 6C */	addi r4, r26, 0x56c
/* 8049BA10  4B BD 89 A5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8049BA14  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 8049BA18  38 7A 06 88 */	addi r3, r26, 0x688
/* 8049BA1C  4B BE 8A 45 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8049BA20  28 03 00 00 */	cmplwi r3, 0
/* 8049BA24  41 82 00 24 */	beq lbl_8049BA48
/* 8049BA28  38 7A 06 88 */	addi r3, r26, 0x688
/* 8049BA2C  4B BE 8B 1D */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 8049BA30  28 03 00 00 */	cmplwi r3, 0
/* 8049BA34  41 82 00 14 */	beq lbl_8049BA48
/* 8049BA38  38 7A 06 88 */	addi r3, r26, 0x688
/* 8049BA3C  4B BE 8B 0D */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 8049BA40  8B 23 00 75 */	lbz r25, 0x75(r3)
/* 8049BA44  48 00 00 08 */	b lbl_8049BA4C
lbl_8049BA48:
/* 8049BA48  3B 20 00 00 */	li r25, 0
lbl_8049BA4C:
/* 8049BA4C  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 8049BA50  28 00 00 02 */	cmplwi r0, 2
/* 8049BA54  41 82 00 1C */	beq lbl_8049BA70
/* 8049BA58  2C 1B 00 00 */	cmpwi r27, 0
/* 8049BA5C  41 82 00 20 */	beq lbl_8049BA7C
/* 8049BA60  38 7A 05 80 */	addi r3, r26, 0x580
/* 8049BA64  4B C3 BD 05 */	bl checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo
/* 8049BA68  2C 03 00 00 */	cmpwi r3, 0
/* 8049BA6C  41 82 00 10 */	beq lbl_8049BA7C
lbl_8049BA70:
/* 8049BA70  38 00 00 01 */	li r0, 1
/* 8049BA74  98 1A 09 43 */	stb r0, 0x943(r26)
/* 8049BA78  48 00 00 CC */	b lbl_8049BB44
lbl_8049BA7C:
/* 8049BA7C  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 8049BA80  28 00 00 03 */	cmplwi r0, 3
/* 8049BA84  40 82 00 C0 */	bne lbl_8049BB44
/* 8049BA88  3B 7A 07 24 */	addi r27, r26, 0x724
/* 8049BA8C  C0 1A 07 5C */	lfs f0, 0x75c(r26)
/* 8049BA90  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 8049BA94  C0 1A 07 60 */	lfs f0, 0x760(r26)
/* 8049BA98  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 8049BA9C  C0 1A 07 64 */	lfs f0, 0x764(r26)
/* 8049BAA0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 8049BAA4  C0 3A 07 58 */	lfs f1, 0x758(r26)
/* 8049BAA8  C0 1A 07 50 */	lfs f0, 0x750(r26)
/* 8049BAAC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8049BAB0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049BAB4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8049BAB8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8049BABC  38 61 00 38 */	addi r3, r1, 0x38
/* 8049BAC0  4B EA B6 79 */	bl PSVECSquareMag
/* 8049BAC4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8049BAC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049BACC  40 80 00 44 */	bge lbl_8049BB10
/* 8049BAD0  7F 63 DB 78 */	mr r3, r27
/* 8049BAD4  4B BE 7B B5 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8049BAD8  28 03 00 00 */	cmplwi r3, 0
/* 8049BADC  41 82 00 20 */	beq lbl_8049BAFC
/* 8049BAE0  7F 63 DB 78 */	mr r3, r27
/* 8049BAE4  4B BE 7B A5 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8049BAE8  7C 64 1B 78 */	mr r4, r3
/* 8049BAEC  7F 43 D3 78 */	mr r3, r26
/* 8049BAF0  4B B7 EC 21 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8049BAF4  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 8049BAF8  48 00 00 30 */	b lbl_8049BB28
lbl_8049BAFC:
/* 8049BAFC  38 7A 04 BC */	addi r3, r26, 0x4bc
/* 8049BB00  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 8049BB04  4B DD 51 01 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8049BB08  B0 7A 04 DE */	sth r3, 0x4de(r26)
/* 8049BB0C  48 00 00 1C */	b lbl_8049BB28
lbl_8049BB10:
/* 8049BB10  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 8049BB14  FC 20 00 50 */	fneg f1, f0
/* 8049BB18  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 8049BB1C  FC 40 00 50 */	fneg f2, f0
/* 8049BB20  4B DC BB 55 */	bl cM_atan2s__Fff
/* 8049BB24  B0 7A 04 DE */	sth r3, 0x4de(r26)
lbl_8049BB28:
/* 8049BB28  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 8049BB2C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 8049BB30  7F 43 D3 78 */	mr r3, r26
/* 8049BB34  38 80 00 01 */	li r4, 1
/* 8049BB38  48 00 0B C9 */	bl procReturnInit__9daArrow_cFi
/* 8049BB3C  38 60 00 01 */	li r3, 1
/* 8049BB40  48 00 0B 58 */	b lbl_8049C698
lbl_8049BB44:
/* 8049BB44  38 7A 06 88 */	addi r3, r26, 0x688
/* 8049BB48  4B BE 87 79 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8049BB4C  28 03 00 00 */	cmplwi r3, 0
/* 8049BB50  41 82 01 5C */	beq lbl_8049BCAC
/* 8049BB54  88 9A 09 3C */	lbz r4, 0x93c(r26)
/* 8049BB58  28 04 00 01 */	cmplwi r4, 1
/* 8049BB5C  40 82 00 50 */	bne lbl_8049BBAC
/* 8049BB60  88 1A 09 43 */	lbz r0, 0x943(r26)
/* 8049BB64  28 00 00 00 */	cmplwi r0, 0
/* 8049BB68  40 82 00 44 */	bne lbl_8049BBAC
/* 8049BB6C  88 1A 09 45 */	lbz r0, 0x945(r26)
/* 8049BB70  28 00 00 00 */	cmplwi r0, 0
/* 8049BB74  41 82 00 14 */	beq lbl_8049BB88
/* 8049BB78  38 00 00 01 */	li r0, 1
/* 8049BB7C  98 1A 09 3F */	stb r0, 0x93f(r26)
/* 8049BB80  38 60 00 01 */	li r3, 1
/* 8049BB84  48 00 0B 14 */	b lbl_8049C698
lbl_8049BB88:
/* 8049BB88  80 7A 09 94 */	lwz r3, 0x994(r26)
/* 8049BB8C  3C 03 00 01 */	addis r0, r3, 1
/* 8049BB90  28 00 FF FF */	cmplwi r0, 0xffff
/* 8049BB94  41 82 00 18 */	beq lbl_8049BBAC
/* 8049BB98  7F 43 D3 78 */	mr r3, r26
/* 8049BB9C  38 9A 09 A8 */	addi r4, r26, 0x9a8
/* 8049BBA0  4B FF F0 E5 */	bl setBombArrowExplode__9daArrow_cFP4cXyz
/* 8049BBA4  38 60 00 01 */	li r3, 1
/* 8049BBA8  48 00 0A F0 */	b lbl_8049C698
lbl_8049BBAC:
/* 8049BBAC  28 04 00 04 */	cmplwi r4, 4
/* 8049BBB0  40 82 00 4C */	bne lbl_8049BBFC
/* 8049BBB4  3B 3A 06 E0 */	addi r25, r26, 0x6e0
/* 8049BBB8  7F 23 CB 78 */	mr r3, r25
/* 8049BBBC  4B BE 7A CD */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8049BBC0  28 03 00 00 */	cmplwi r3, 0
/* 8049BBC4  41 82 00 20 */	beq lbl_8049BBE4
/* 8049BBC8  7F 23 CB 78 */	mr r3, r25
/* 8049BBCC  4B BE 7A BD */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8049BBD0  A8 03 00 08 */	lha r0, 8(r3)
/* 8049BBD4  2C 00 01 E4 */	cmpwi r0, 0x1e4
/* 8049BBD8  40 82 00 0C */	bne lbl_8049BBE4
/* 8049BBDC  3B 20 00 00 */	li r25, 0
/* 8049BBE0  48 00 00 B8 */	b lbl_8049BC98
lbl_8049BBE4:
/* 8049BBE4  7F 43 D3 78 */	mr r3, r26
/* 8049BBE8  38 99 00 20 */	addi r4, r25, 0x20
/* 8049BBEC  38 BA 06 88 */	addi r5, r26, 0x688
/* 8049BBF0  48 00 11 01 */	bl procSlingHitInit__9daArrow_cFP4cXyzP12dCcD_GObjInf
/* 8049BBF4  38 60 00 01 */	li r3, 1
/* 8049BBF8  48 00 0A A0 */	b lbl_8049C698
lbl_8049BBFC:
/* 8049BBFC  88 1A 09 43 */	lbz r0, 0x943(r26)
/* 8049BC00  28 00 00 00 */	cmplwi r0, 0
/* 8049BC04  41 82 00 0C */	beq lbl_8049BC10
/* 8049BC08  3B 20 00 02 */	li r25, 2
/* 8049BC0C  48 00 00 8C */	b lbl_8049BC98
lbl_8049BC10:
/* 8049BC10  80 7A 09 94 */	lwz r3, 0x994(r26)
/* 8049BC14  3C 03 00 01 */	addis r0, r3, 1
/* 8049BC18  28 00 FF FF */	cmplwi r0, 0xffff
/* 8049BC1C  40 82 00 0C */	bne lbl_8049BC28
/* 8049BC20  3B 20 00 00 */	li r25, 0
/* 8049BC24  48 00 00 74 */	b lbl_8049BC98
lbl_8049BC28:
/* 8049BC28  3B 20 00 01 */	li r25, 1
/* 8049BC2C  90 61 00 18 */	stw r3, 0x18(r1)
/* 8049BC30  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8049BC34  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8049BC38  38 81 00 18 */	addi r4, r1, 0x18
/* 8049BC3C  4B B7 DB BD */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8049BC40  88 1A 09 3E */	lbz r0, 0x93e(r26)
/* 8049BC44  7C 00 07 75 */	extsb. r0, r0
/* 8049BC48  41 82 00 0C */	beq lbl_8049BC54
/* 8049BC4C  3B 20 00 02 */	li r25, 2
/* 8049BC50  48 00 00 48 */	b lbl_8049BC98
lbl_8049BC54:
/* 8049BC54  28 03 00 00 */	cmplwi r3, 0
/* 8049BC58  41 82 00 40 */	beq lbl_8049BC98
/* 8049BC5C  80 03 05 28 */	lwz r0, 0x528(r3)
/* 8049BC60  28 00 00 00 */	cmplwi r0, 0
/* 8049BC64  41 82 00 34 */	beq lbl_8049BC98
/* 8049BC68  80 1A 09 60 */	lwz r0, 0x960(r26)
/* 8049BC6C  2C 00 00 00 */	cmpwi r0, 0
/* 8049BC70  41 80 00 0C */	blt lbl_8049BC7C
/* 8049BC74  3B 20 00 04 */	li r25, 4
/* 8049BC78  48 00 00 20 */	b lbl_8049BC98
lbl_8049BC7C:
/* 8049BC7C  2C 00 FF FF */	cmpwi r0, -1
/* 8049BC80  40 82 00 0C */	bne lbl_8049BC8C
/* 8049BC84  3B 20 00 03 */	li r25, 3
/* 8049BC88  48 00 00 10 */	b lbl_8049BC98
lbl_8049BC8C:
/* 8049BC8C  2C 00 FF FE */	cmpwi r0, -2
/* 8049BC90  40 82 00 08 */	bne lbl_8049BC98
/* 8049BC94  3B 20 00 02 */	li r25, 2
lbl_8049BC98:
/* 8049BC98  2C 19 00 04 */	cmpwi r25, 4
/* 8049BC9C  41 82 00 30 */	beq lbl_8049BCCC
/* 8049BCA0  7F 43 D3 78 */	mr r3, r26
/* 8049BCA4  4B FF F0 D1 */	bl clearNearActorData__9daArrow_cFv
/* 8049BCA8  48 00 00 24 */	b lbl_8049BCCC
lbl_8049BCAC:
/* 8049BCAC  2C 1B 00 00 */	cmpwi r27, 0
/* 8049BCB0  41 82 00 18 */	beq lbl_8049BCC8
/* 8049BCB4  88 1A 09 43 */	lbz r0, 0x943(r26)
/* 8049BCB8  28 00 00 00 */	cmplwi r0, 0
/* 8049BCBC  41 82 00 0C */	beq lbl_8049BCC8
/* 8049BCC0  3B 20 00 02 */	li r25, 2
/* 8049BCC4  48 00 00 08 */	b lbl_8049BCCC
lbl_8049BCC8:
/* 8049BCC8  3B 20 00 00 */	li r25, 0
lbl_8049BCCC:
/* 8049BCCC  2C 19 00 00 */	cmpwi r25, 0
/* 8049BCD0  41 82 01 2C */	beq lbl_8049BDFC
/* 8049BCD4  2C 19 00 03 */	cmpwi r25, 3
/* 8049BCD8  41 82 01 24 */	beq lbl_8049BDFC
/* 8049BCDC  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 8049BCE0  28 00 00 02 */	cmplwi r0, 2
/* 8049BCE4  40 82 00 1C */	bne lbl_8049BD00
/* 8049BCE8  7F 43 D3 78 */	mr r3, r26
/* 8049BCEC  38 9A 07 00 */	addi r4, r26, 0x700
/* 8049BCF0  4B FF E4 21 */	bl setLightArrowHitMark__9daArrow_cFPC4cXyz
/* 8049BCF4  7F 43 D3 78 */	mr r3, r26
/* 8049BCF8  4B FF E3 55 */	bl setBlur__9daArrow_cFv
/* 8049BCFC  48 00 00 F8 */	b lbl_8049BDF4
lbl_8049BD00:
/* 8049BD00  28 00 00 04 */	cmplwi r0, 4
/* 8049BD04  40 82 00 18 */	bne lbl_8049BD1C
/* 8049BD08  7F 43 D3 78 */	mr r3, r26
/* 8049BD0C  38 9A 05 9C */	addi r4, r26, 0x59c
/* 8049BD10  38 A0 00 00 */	li r5, 0
/* 8049BD14  48 00 0F DD */	bl procSlingHitInit__9daArrow_cFP4cXyzP12dCcD_GObjInf
/* 8049BD18  48 00 00 DC */	b lbl_8049BDF4
lbl_8049BD1C:
/* 8049BD1C  2C 19 00 02 */	cmpwi r25, 2
/* 8049BD20  40 82 00 4C */	bne lbl_8049BD6C
/* 8049BD24  88 1A 09 45 */	lbz r0, 0x945(r26)
/* 8049BD28  28 00 00 00 */	cmplwi r0, 0
/* 8049BD2C  41 82 00 10 */	beq lbl_8049BD3C
/* 8049BD30  38 00 00 01 */	li r0, 1
/* 8049BD34  98 1A 09 3F */	stb r0, 0x93f(r26)
/* 8049BD38  48 00 00 BC */	b lbl_8049BDF4
lbl_8049BD3C:
/* 8049BD3C  7F 43 D3 78 */	mr r3, r26
/* 8049BD40  38 80 00 00 */	li r4, 0
/* 8049BD44  48 00 09 BD */	bl procReturnInit__9daArrow_cFi
/* 8049BD48  C0 1A 04 BC */	lfs f0, 0x4bc(r26)
/* 8049BD4C  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 8049BD50  C0 1A 04 C0 */	lfs f0, 0x4c0(r26)
/* 8049BD54  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 8049BD58  C0 1A 04 C4 */	lfs f0, 0x4c4(r26)
/* 8049BD5C  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 8049BD60  7F 43 D3 78 */	mr r3, r26
/* 8049BD64  4B FF F1 01 */	bl setNormalMatrix__9daArrow_cFv
/* 8049BD68  48 00 00 8C */	b lbl_8049BDF4
lbl_8049BD6C:
/* 8049BD6C  2C 19 00 04 */	cmpwi r25, 4
/* 8049BD70  40 82 00 40 */	bne lbl_8049BDB0
/* 8049BD74  7F 43 D3 78 */	mr r3, r26
/* 8049BD78  4B FF E2 D5 */	bl setBlur__9daArrow_cFv
/* 8049BD7C  38 00 00 03 */	li r0, 3
/* 8049BD80  90 1A 00 B0 */	stw r0, 0xb0(r26)
/* 8049BD84  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8049BD88  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 8049BD8C  90 7A 0A 28 */	stw r3, 0xa28(r26)
/* 8049BD90  90 1A 0A 2C */	stw r0, 0xa2c(r26)
/* 8049BD94  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 8049BD98  90 1A 0A 30 */	stw r0, 0xa30(r26)
/* 8049BD9C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049BDA0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8049BDA4  7F 43 D3 78 */	mr r3, r26
/* 8049BDA8  4B FF F3 79 */	bl setStopActorMatrix__9daArrow_cFv
/* 8049BDAC  48 00 00 48 */	b lbl_8049BDF4
lbl_8049BDB0:
/* 8049BDB0  38 00 00 01 */	li r0, 1
/* 8049BDB4  98 1A 09 3F */	stb r0, 0x93f(r26)
/* 8049BDB8  88 1A 09 45 */	lbz r0, 0x945(r26)
/* 8049BDBC  28 00 00 00 */	cmplwi r0, 0
/* 8049BDC0  40 82 00 34 */	bne lbl_8049BDF4
/* 8049BDC4  38 7A 06 88 */	addi r3, r26, 0x688
/* 8049BDC8  4B BE 84 F9 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8049BDCC  28 03 00 00 */	cmplwi r3, 0
/* 8049BDD0  41 82 00 24 */	beq lbl_8049BDF4
/* 8049BDD4  C0 1A 07 00 */	lfs f0, 0x700(r26)
/* 8049BDD8  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 8049BDDC  C0 1A 07 04 */	lfs f0, 0x704(r26)
/* 8049BDE0  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 8049BDE4  C0 1A 07 08 */	lfs f0, 0x708(r26)
/* 8049BDE8  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 8049BDEC  7F 43 D3 78 */	mr r3, r26
/* 8049BDF0  4B FF E2 5D */	bl setBlur__9daArrow_cFv
lbl_8049BDF4:
/* 8049BDF4  38 60 00 01 */	li r3, 1
/* 8049BDF8  48 00 08 A0 */	b lbl_8049C698
lbl_8049BDFC:
/* 8049BDFC  2C 1B 00 00 */	cmpwi r27, 0
/* 8049BE00  41 82 03 A0 */	beq lbl_8049C1A0
/* 8049BE04  3B 3A 05 9C */	addi r25, r26, 0x59c
/* 8049BE08  C0 1A 05 9C */	lfs f0, 0x59c(r26)
/* 8049BE0C  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 8049BE10  C0 1A 05 A0 */	lfs f0, 0x5a0(r26)
/* 8049BE14  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 8049BE18  C0 1A 05 A4 */	lfs f0, 0x5a4(r26)
/* 8049BE1C  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 8049BE20  88 1A 09 45 */	lbz r0, 0x945(r26)
/* 8049BE24  28 00 00 00 */	cmplwi r0, 0
/* 8049BE28  41 82 00 38 */	beq lbl_8049BE60
/* 8049BE2C  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 8049BE30  28 00 00 01 */	cmplwi r0, 1
/* 8049BE34  41 82 00 1C */	beq lbl_8049BE50
/* 8049BE38  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 8049BE3C  C0 1A 0A 00 */	lfs f0, 0xa00(r26)
/* 8049BE40  EC 21 00 28 */	fsubs f1, f1, f0
/* 8049BE44  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8049BE48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049BE4C  40 80 00 14 */	bge lbl_8049BE60
lbl_8049BE50:
/* 8049BE50  38 00 00 01 */	li r0, 1
/* 8049BE54  98 1A 09 3F */	stb r0, 0x93f(r26)
/* 8049BE58  38 60 00 01 */	li r3, 1
/* 8049BE5C  48 00 08 3C */	b lbl_8049C698
lbl_8049BE60:
/* 8049BE60  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 8049BE64  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8049BE68  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8049BE6C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8049BE70  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 8049BE74  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8049BE78  38 61 00 44 */	addi r3, r1, 0x44
/* 8049BE7C  38 80 00 03 */	li r4, 3
/* 8049BE80  28 1A 00 00 */	cmplwi r26, 0
/* 8049BE84  41 82 00 0C */	beq lbl_8049BE90
/* 8049BE88  80 BA 00 04 */	lwz r5, 4(r26)
/* 8049BE8C  48 00 00 08 */	b lbl_8049BE94
lbl_8049BE90:
/* 8049BE90  38 A0 FF FF */	li r5, -1
lbl_8049BE94:
/* 8049BE94  38 C0 00 0A */	li r6, 0xa
/* 8049BE98  4B D0 C3 29 */	bl dKy_Sound_set__F4cXyziUii
/* 8049BE9C  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 8049BEA0  28 00 00 01 */	cmplwi r0, 1
/* 8049BEA4  40 82 00 18 */	bne lbl_8049BEBC
/* 8049BEA8  7F 43 D3 78 */	mr r3, r26
/* 8049BEAC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 8049BEB0  4B FF ED D5 */	bl setBombArrowExplode__9daArrow_cFP4cXyz
/* 8049BEB4  38 60 00 01 */	li r3, 1
/* 8049BEB8  48 00 07 E0 */	b lbl_8049C698
lbl_8049BEBC:
/* 8049BEBC  28 00 00 02 */	cmplwi r0, 2
/* 8049BEC0  40 82 00 10 */	bne lbl_8049BED0
/* 8049BEC4  7F 43 D3 78 */	mr r3, r26
/* 8049BEC8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 8049BECC  4B FF E2 45 */	bl setLightArrowHitMark__9daArrow_cFPC4cXyz
lbl_8049BED0:
/* 8049BED0  3C 60 80 4A */	lis r3, __vt__8cM3dGPla@ha /* 0x8049DF4C@ha */
/* 8049BED4  38 03 DF 4C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8049DF4C@l */
/* 8049BED8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8049BEDC  7F A3 EB 78 */	mr r3, r29
/* 8049BEE0  38 9A 05 80 */	addi r4, r26, 0x580
/* 8049BEE4  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8049BEE8  4B BD 88 5D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8049BEEC  7F A3 EB 78 */	mr r3, r29
/* 8049BEF0  38 9A 05 80 */	addi r4, r26, 0x580
/* 8049BEF4  4B BD 8F 5D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8049BEF8  2C 03 00 02 */	cmpwi r3, 2
/* 8049BEFC  41 82 00 28 */	beq lbl_8049BF24
/* 8049BF00  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 8049BF04  28 00 00 04 */	cmplwi r0, 4
/* 8049BF08  41 82 00 1C */	beq lbl_8049BF24
/* 8049BF0C  2C 03 00 0E */	cmpwi r3, 0xe
/* 8049BF10  41 82 00 14 */	beq lbl_8049BF24
/* 8049BF14  2C 03 00 0A */	cmpwi r3, 0xa
/* 8049BF18  41 82 00 0C */	beq lbl_8049BF24
/* 8049BF1C  2C 03 00 08 */	cmpwi r3, 8
/* 8049BF20  40 82 01 F0 */	bne lbl_8049C110
lbl_8049BF24:
/* 8049BF24  88 1A 09 45 */	lbz r0, 0x945(r26)
/* 8049BF28  28 00 00 00 */	cmplwi r0, 0
/* 8049BF2C  41 82 00 20 */	beq lbl_8049BF4C
/* 8049BF30  38 00 00 01 */	li r0, 1
/* 8049BF34  98 1A 09 3F */	stb r0, 0x93f(r26)
/* 8049BF38  3C 60 80 4A */	lis r3, __vt__8cM3dGPla@ha /* 0x8049DF4C@ha */
/* 8049BF3C  38 03 DF 4C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8049DF4C@l */
/* 8049BF40  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8049BF44  38 60 00 01 */	li r3, 1
/* 8049BF48  48 00 07 50 */	b lbl_8049C698
lbl_8049BF4C:
/* 8049BF4C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8049BF50  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8049BF54  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049BF58  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8049BF5C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8049BF60  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8049BF64  38 61 00 2C */	addi r3, r1, 0x2c
/* 8049BF68  4B EA B1 D1 */	bl PSVECSquareMag
/* 8049BF6C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049BF70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049BF74  40 81 00 58 */	ble lbl_8049BFCC
/* 8049BF78  FC 00 08 34 */	frsqrte f0, f1
/* 8049BF7C  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 8049BF80  FC 44 00 32 */	fmul f2, f4, f0
/* 8049BF84  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 8049BF88  FC 00 00 32 */	fmul f0, f0, f0
/* 8049BF8C  FC 01 00 32 */	fmul f0, f1, f0
/* 8049BF90  FC 03 00 28 */	fsub f0, f3, f0
/* 8049BF94  FC 02 00 32 */	fmul f0, f2, f0
/* 8049BF98  FC 44 00 32 */	fmul f2, f4, f0
/* 8049BF9C  FC 00 00 32 */	fmul f0, f0, f0
/* 8049BFA0  FC 01 00 32 */	fmul f0, f1, f0
/* 8049BFA4  FC 03 00 28 */	fsub f0, f3, f0
/* 8049BFA8  FC 02 00 32 */	fmul f0, f2, f0
/* 8049BFAC  FC 44 00 32 */	fmul f2, f4, f0
/* 8049BFB0  FC 00 00 32 */	fmul f0, f0, f0
/* 8049BFB4  FC 01 00 32 */	fmul f0, f1, f0
/* 8049BFB8  FC 03 00 28 */	fsub f0, f3, f0
/* 8049BFBC  FC 02 00 32 */	fmul f0, f2, f0
/* 8049BFC0  FF E1 00 32 */	fmul f31, f1, f0
/* 8049BFC4  FF E0 F8 18 */	frsp f31, f31
/* 8049BFC8  48 00 00 90 */	b lbl_8049C058
lbl_8049BFCC:
/* 8049BFCC  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 8049BFD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049BFD4  40 80 00 10 */	bge lbl_8049BFE4
/* 8049BFD8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049BFDC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8049BFE0  48 00 00 78 */	b lbl_8049C058
lbl_8049BFE4:
/* 8049BFE4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8049BFE8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8049BFEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8049BFF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8049BFF4  7C 03 00 00 */	cmpw r3, r0
/* 8049BFF8  41 82 00 14 */	beq lbl_8049C00C
/* 8049BFFC  40 80 00 40 */	bge lbl_8049C03C
/* 8049C000  2C 03 00 00 */	cmpwi r3, 0
/* 8049C004  41 82 00 20 */	beq lbl_8049C024
/* 8049C008  48 00 00 34 */	b lbl_8049C03C
lbl_8049C00C:
/* 8049C00C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049C010  41 82 00 0C */	beq lbl_8049C01C
/* 8049C014  38 00 00 01 */	li r0, 1
/* 8049C018  48 00 00 28 */	b lbl_8049C040
lbl_8049C01C:
/* 8049C01C  38 00 00 02 */	li r0, 2
/* 8049C020  48 00 00 20 */	b lbl_8049C040
lbl_8049C024:
/* 8049C024  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049C028  41 82 00 0C */	beq lbl_8049C034
/* 8049C02C  38 00 00 05 */	li r0, 5
/* 8049C030  48 00 00 10 */	b lbl_8049C040
lbl_8049C034:
/* 8049C034  38 00 00 03 */	li r0, 3
/* 8049C038  48 00 00 08 */	b lbl_8049C040
lbl_8049C03C:
/* 8049C03C  38 00 00 04 */	li r0, 4
lbl_8049C040:
/* 8049C040  2C 00 00 01 */	cmpwi r0, 1
/* 8049C044  40 82 00 10 */	bne lbl_8049C054
/* 8049C048  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049C04C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8049C050  48 00 00 08 */	b lbl_8049C058
lbl_8049C054:
/* 8049C054  FF E0 08 90 */	fmr f31, f1
lbl_8049C058:
/* 8049C058  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8049C05C  FC 20 00 50 */	fneg f1, f0
/* 8049C060  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8049C064  FC 40 00 50 */	fneg f2, f0
/* 8049C068  4B DC B6 0D */	bl cM_atan2s__Fff
/* 8049C06C  7C 7B 1B 78 */	mr r27, r3
/* 8049C070  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 8049C074  FC 40 F8 90 */	fmr f2, f31
/* 8049C078  4B DC B5 FD */	bl cM_atan2s__Fff
/* 8049C07C  7C 64 1B 78 */	mr r4, r3
/* 8049C080  38 61 00 24 */	addi r3, r1, 0x24
/* 8049C084  7F 65 DB 78 */	mr r5, r27
/* 8049C088  38 C0 00 00 */	li r6, 0
/* 8049C08C  4B DC B3 69 */	bl __ct__5csXyzFsss
/* 8049C090  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 8049C094  28 00 00 04 */	cmplwi r0, 4
/* 8049C098  40 82 00 38 */	bne lbl_8049C0D0
/* 8049C09C  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040018@ha */
/* 8049C0A0  3B 63 00 18 */	addi r27, r3, 0x0018 /* 0x00040018@l */
/* 8049C0A4  A8 01 00 24 */	lha r0, 0x24(r1)
/* 8049C0A8  B0 1A 04 DC */	sth r0, 0x4dc(r26)
/* 8049C0AC  A8 01 00 26 */	lha r0, 0x26(r1)
/* 8049C0B0  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 8049C0B4  A8 01 00 28 */	lha r0, 0x28(r1)
/* 8049C0B8  B0 1A 04 E0 */	sth r0, 0x4e0(r26)
/* 8049C0BC  7F 43 D3 78 */	mr r3, r26
/* 8049C0C0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 8049C0C4  38 A0 00 00 */	li r5, 0
/* 8049C0C8  48 00 0C 29 */	bl procSlingHitInit__9daArrow_cFP4cXyzP12dCcD_GObjInf
/* 8049C0CC  48 00 00 98 */	b lbl_8049C164
lbl_8049C0D0:
/* 8049C0D0  7F 43 D3 78 */	mr r3, r26
/* 8049C0D4  38 80 00 00 */	li r4, 0
/* 8049C0D8  48 00 06 29 */	bl procReturnInit__9daArrow_cFi
/* 8049C0DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049C0E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049C0E4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8049C0E8  38 80 00 09 */	li r4, 9
/* 8049C0EC  7F 45 D3 78 */	mr r5, r26
/* 8049C0F0  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 8049C0F4  38 E1 00 24 */	addi r7, r1, 0x24
/* 8049C0F8  39 00 00 00 */	li r8, 0
/* 8049C0FC  39 20 00 00 */	li r9, 0
/* 8049C100  4B BB 01 19 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 8049C104  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040017@ha */
/* 8049C108  3B 63 00 17 */	addi r27, r3, 0x0017 /* 0x00040017@l */
/* 8049C10C  48 00 00 58 */	b lbl_8049C164
lbl_8049C110:
/* 8049C110  7F 43 D3 78 */	mr r3, r26
/* 8049C114  4B FF DF 39 */	bl setBlur__9daArrow_cFv
/* 8049C118  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8049C11C  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 8049C120  90 7A 0A 28 */	stw r3, 0xa28(r26)
/* 8049C124  90 1A 0A 2C */	stw r0, 0xa2c(r26)
/* 8049C128  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 8049C12C  90 1A 0A 30 */	stw r0, 0xa30(r26)
/* 8049C130  38 00 00 04 */	li r0, 4
/* 8049C134  90 1A 00 B0 */	stw r0, 0xb0(r26)
/* 8049C138  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049C13C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8049C140  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040016@ha */
/* 8049C144  3B 63 00 16 */	addi r27, r3, 0x0016 /* 0x00040016@l */
/* 8049C148  A8 1A 04 E4 */	lha r0, 0x4e4(r26)
/* 8049C14C  B0 1A 04 DC */	sth r0, 0x4dc(r26)
/* 8049C150  7F A3 EB 78 */	mr r3, r29
/* 8049C154  38 9A 05 80 */	addi r4, r26, 0x580
/* 8049C158  7F 45 D3 78 */	mr r5, r26
/* 8049C15C  7F 26 CB 78 */	mr r6, r25
/* 8049C160  4B BD 9A 95 */	bl ArrowStickCallBack__4dBgSFRC13cBgS_PolyInfoP10fopAc_ac_cR4cXyz
lbl_8049C164:
/* 8049C164  38 7A 05 80 */	addi r3, r26, 0x580
/* 8049C168  4B D0 F3 59 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8049C16C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8049C170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049C174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049C178  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8049C17C  38 63 2C A8 */	addi r3, r3, 0x2ca8
/* 8049C180  7F 64 DB 78 */	mr r4, r27
/* 8049C184  38 DA 09 04 */	addi r6, r26, 0x904
/* 8049C188  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 8049C18C  4B E2 86 89 */	bl startHitItemSE__14Z2CreatureLinkFUlUlP14Z2SoundObjBasef
/* 8049C190  3C 60 80 4A */	lis r3, __vt__8cM3dGPla@ha /* 0x8049DF4C@ha */
/* 8049C194  38 03 DF 4C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x8049DF4C@l */
/* 8049C198  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8049C19C  48 00 04 E8 */	b lbl_8049C684
lbl_8049C1A0:
/* 8049C1A0  88 1A 09 45 */	lbz r0, 0x945(r26)
/* 8049C1A4  28 00 00 00 */	cmplwi r0, 0
/* 8049C1A8  41 82 01 B4 */	beq lbl_8049C35C
/* 8049C1AC  2C 1C 00 00 */	cmpwi r28, 0
/* 8049C1B0  41 82 00 14 */	beq lbl_8049C1C4
/* 8049C1B4  38 00 00 01 */	li r0, 1
/* 8049C1B8  98 1A 09 3F */	stb r0, 0x93f(r26)
/* 8049C1BC  38 60 00 01 */	li r3, 1
/* 8049C1C0  48 00 04 D8 */	b lbl_8049C698
lbl_8049C1C4:
/* 8049C1C4  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 8049C1C8  C0 1A 0A 00 */	lfs f0, 0xa00(r26)
/* 8049C1CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8049C1D0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8049C1D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C1D8  40 80 00 6C */	bge lbl_8049C244
/* 8049C1DC  80 1A 06 88 */	lwz r0, 0x688(r26)
/* 8049C1E0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8049C1E4  90 1A 06 88 */	stw r0, 0x688(r26)
/* 8049C1E8  38 7A 06 88 */	addi r3, r26, 0x688
/* 8049C1EC  4B BE 81 2D */	bl ResetAtHit__12dCcD_GObjInfFv
/* 8049C1F0  38 7A 04 EC */	addi r3, r26, 0x4ec
/* 8049C1F4  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8049C1F8  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 8049C1FC  4B DD 45 45 */	bl cLib_chaseF__FPfff
/* 8049C200  2C 03 00 00 */	cmpwi r3, 0
/* 8049C204  41 82 00 14 */	beq lbl_8049C218
/* 8049C208  38 00 00 01 */	li r0, 1
/* 8049C20C  98 1A 09 3F */	stb r0, 0x93f(r26)
/* 8049C210  38 60 00 01 */	li r3, 1
/* 8049C214  48 00 04 84 */	b lbl_8049C698
lbl_8049C218:
/* 8049C218  C0 1A 04 EC */	lfs f0, 0x4ec(r26)
/* 8049C21C  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 8049C220  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 8049C224  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 8049C228  C0 1A 04 EC */	lfs f0, 0x4ec(r26)
/* 8049C22C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8049C230  C0 1A 04 F0 */	lfs f0, 0x4f0(r26)
/* 8049C234  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8049C238  C0 1A 04 F4 */	lfs f0, 0x4f4(r26)
/* 8049C23C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8049C240  48 00 04 44 */	b lbl_8049C684
lbl_8049C244:
/* 8049C244  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 8049C248  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C24C  40 81 00 14 */	ble lbl_8049C260
/* 8049C250  38 00 00 01 */	li r0, 1
/* 8049C254  98 1A 09 3F */	stb r0, 0x93f(r26)
/* 8049C258  38 60 00 01 */	li r3, 1
/* 8049C25C  48 00 04 3C */	b lbl_8049C698
lbl_8049C260:
/* 8049C260  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8049C264  38 9A 09 C0 */	addi r4, r26, 0x9c0
/* 8049C268  4B EA B1 35 */	bl PSVECSquareDistance
/* 8049C26C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049C270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C274  40 81 00 58 */	ble lbl_8049C2CC
/* 8049C278  FC 00 08 34 */	frsqrte f0, f1
/* 8049C27C  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 8049C280  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C284  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 8049C288  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C28C  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C290  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C294  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C298  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C29C  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C2A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C2A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C2A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C2AC  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C2B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C2B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C2B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C2BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C2C0  FC 21 00 32 */	fmul f1, f1, f0
/* 8049C2C4  FC 20 08 18 */	frsp f1, f1
/* 8049C2C8  48 00 00 88 */	b lbl_8049C350
lbl_8049C2CC:
/* 8049C2CC  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 8049C2D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C2D4  40 80 00 10 */	bge lbl_8049C2E4
/* 8049C2D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049C2DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8049C2E0  48 00 00 70 */	b lbl_8049C350
lbl_8049C2E4:
/* 8049C2E4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8049C2E8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8049C2EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8049C2F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8049C2F4  7C 03 00 00 */	cmpw r3, r0
/* 8049C2F8  41 82 00 14 */	beq lbl_8049C30C
/* 8049C2FC  40 80 00 40 */	bge lbl_8049C33C
/* 8049C300  2C 03 00 00 */	cmpwi r3, 0
/* 8049C304  41 82 00 20 */	beq lbl_8049C324
/* 8049C308  48 00 00 34 */	b lbl_8049C33C
lbl_8049C30C:
/* 8049C30C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049C310  41 82 00 0C */	beq lbl_8049C31C
/* 8049C314  38 00 00 01 */	li r0, 1
/* 8049C318  48 00 00 28 */	b lbl_8049C340
lbl_8049C31C:
/* 8049C31C  38 00 00 02 */	li r0, 2
/* 8049C320  48 00 00 20 */	b lbl_8049C340
lbl_8049C324:
/* 8049C324  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049C328  41 82 00 0C */	beq lbl_8049C334
/* 8049C32C  38 00 00 05 */	li r0, 5
/* 8049C330  48 00 00 10 */	b lbl_8049C340
lbl_8049C334:
/* 8049C334  38 00 00 03 */	li r0, 3
/* 8049C338  48 00 00 08 */	b lbl_8049C340
lbl_8049C33C:
/* 8049C33C  38 00 00 04 */	li r0, 4
lbl_8049C340:
/* 8049C340  2C 00 00 01 */	cmpwi r0, 1
/* 8049C344  40 82 00 0C */	bne lbl_8049C350
/* 8049C348  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049C34C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8049C350:
/* 8049C350  7F 43 D3 78 */	mr r3, r26
/* 8049C354  4B FF E4 19 */	bl setArrowAt__9daArrow_cFf
/* 8049C358  48 00 03 2C */	b lbl_8049C684
lbl_8049C35C:
/* 8049C35C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 8049C360  38 9A 09 C0 */	addi r4, r26, 0x9c0
/* 8049C364  4B EA B0 39 */	bl PSVECSquareDistance
/* 8049C368  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049C36C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C370  40 81 00 58 */	ble lbl_8049C3C8
/* 8049C374  FC 00 08 34 */	frsqrte f0, f1
/* 8049C378  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 8049C37C  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C380  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 8049C384  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C388  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C38C  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C390  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C394  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C398  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C39C  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C3A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C3A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C3A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C3AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C3B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C3B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C3B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C3BC  FF E1 00 32 */	fmul f31, f1, f0
/* 8049C3C0  FF E0 F8 18 */	frsp f31, f31
/* 8049C3C4  48 00 00 90 */	b lbl_8049C454
lbl_8049C3C8:
/* 8049C3C8  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 8049C3CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C3D0  40 80 00 10 */	bge lbl_8049C3E0
/* 8049C3D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049C3D8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8049C3DC  48 00 00 78 */	b lbl_8049C454
lbl_8049C3E0:
/* 8049C3E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8049C3E4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8049C3E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8049C3EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8049C3F0  7C 03 00 00 */	cmpw r3, r0
/* 8049C3F4  41 82 00 14 */	beq lbl_8049C408
/* 8049C3F8  40 80 00 40 */	bge lbl_8049C438
/* 8049C3FC  2C 03 00 00 */	cmpwi r3, 0
/* 8049C400  41 82 00 20 */	beq lbl_8049C420
/* 8049C404  48 00 00 34 */	b lbl_8049C438
lbl_8049C408:
/* 8049C408  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049C40C  41 82 00 0C */	beq lbl_8049C418
/* 8049C410  38 00 00 01 */	li r0, 1
/* 8049C414  48 00 00 28 */	b lbl_8049C43C
lbl_8049C418:
/* 8049C418  38 00 00 02 */	li r0, 2
/* 8049C41C  48 00 00 20 */	b lbl_8049C43C
lbl_8049C420:
/* 8049C420  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049C424  41 82 00 0C */	beq lbl_8049C430
/* 8049C428  38 00 00 05 */	li r0, 5
/* 8049C42C  48 00 00 10 */	b lbl_8049C43C
lbl_8049C430:
/* 8049C430  38 00 00 03 */	li r0, 3
/* 8049C434  48 00 00 08 */	b lbl_8049C43C
lbl_8049C438:
/* 8049C438  38 00 00 04 */	li r0, 4
lbl_8049C43C:
/* 8049C43C  2C 00 00 01 */	cmpwi r0, 1
/* 8049C440  40 82 00 10 */	bne lbl_8049C450
/* 8049C444  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049C448  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8049C44C  48 00 00 08 */	b lbl_8049C454
lbl_8049C450:
/* 8049C450  FF E0 08 90 */	fmr f31, f1
lbl_8049C454:
/* 8049C454  C0 1A 09 A4 */	lfs f0, 0x9a4(r26)
/* 8049C458  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8049C45C  41 81 00 14 */	bgt lbl_8049C470
/* 8049C460  C0 3A 05 30 */	lfs f1, 0x530(r26)
/* 8049C464  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049C468  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C46C  40 80 01 78 */	bge lbl_8049C5E4
lbl_8049C470:
/* 8049C470  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 8049C474  28 00 00 04 */	cmplwi r0, 4
/* 8049C478  40 82 00 10 */	bne lbl_8049C488
/* 8049C47C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8049C480  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 8049C484  48 00 00 0C */	b lbl_8049C490
lbl_8049C488:
/* 8049C488  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 8049C48C  D0 1A 05 30 */	stfs f0, 0x530(r26)
lbl_8049C490:
/* 8049C490  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 8049C494  C0 1A 05 30 */	lfs f0, 0x530(r26)
/* 8049C498  EC 01 00 2A */	fadds f0, f1, f0
/* 8049C49C  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 8049C4A0  A8 7A 09 56 */	lha r3, 0x956(r26)
/* 8049C4A4  2C 03 00 00 */	cmpwi r3, 0
/* 8049C4A8  41 82 00 10 */	beq lbl_8049C4B8
/* 8049C4AC  38 03 FF FF */	addi r0, r3, -1
/* 8049C4B0  B0 1A 09 56 */	sth r0, 0x956(r26)
/* 8049C4B4  48 00 00 14 */	b lbl_8049C4C8
lbl_8049C4B8:
/* 8049C4B8  38 00 00 01 */	li r0, 1
/* 8049C4BC  98 1A 09 3F */	stb r0, 0x93f(r26)
/* 8049C4C0  38 60 00 01 */	li r3, 1
/* 8049C4C4  48 00 01 D4 */	b lbl_8049C698
lbl_8049C4C8:
/* 8049C4C8  38 7A 04 F8 */	addi r3, r26, 0x4f8
/* 8049C4CC  4B DC AC 85 */	bl atan2sY_XZ__4cXyzCFv
/* 8049C4D0  B0 7A 04 E4 */	sth r3, 0x4e4(r26)
/* 8049C4D4  A8 1A 04 E4 */	lha r0, 0x4e4(r26)
/* 8049C4D8  7C 00 00 D0 */	neg r0, r0
/* 8049C4DC  B0 1A 04 DC */	sth r0, 0x4dc(r26)
/* 8049C4E0  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 8049C4E4  28 00 00 04 */	cmplwi r0, 4
/* 8049C4E8  41 82 00 FC */	beq lbl_8049C5E4
/* 8049C4EC  38 7A 04 F8 */	addi r3, r26, 0x4f8
/* 8049C4F0  4B EA AC 49 */	bl PSVECSquareMag
/* 8049C4F4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8049C4F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C4FC  40 81 00 58 */	ble lbl_8049C554
/* 8049C500  FC 00 08 34 */	frsqrte f0, f1
/* 8049C504  C8 9F 00 A0 */	lfd f4, 0xa0(r31)
/* 8049C508  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C50C  C8 7F 00 A8 */	lfd f3, 0xa8(r31)
/* 8049C510  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C514  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C518  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C51C  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C520  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C524  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C528  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C52C  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C530  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C534  FC 44 00 32 */	fmul f2, f4, f0
/* 8049C538  FC 00 00 32 */	fmul f0, f0, f0
/* 8049C53C  FC 01 00 32 */	fmul f0, f1, f0
/* 8049C540  FC 03 00 28 */	fsub f0, f3, f0
/* 8049C544  FC 02 00 32 */	fmul f0, f2, f0
/* 8049C548  FC 21 00 32 */	fmul f1, f1, f0
/* 8049C54C  FC 20 08 18 */	frsp f1, f1
/* 8049C550  48 00 00 88 */	b lbl_8049C5D8
lbl_8049C554:
/* 8049C554  C8 1F 00 B0 */	lfd f0, 0xb0(r31)
/* 8049C558  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049C55C  40 80 00 10 */	bge lbl_8049C56C
/* 8049C560  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049C564  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8049C568  48 00 00 70 */	b lbl_8049C5D8
lbl_8049C56C:
/* 8049C56C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8049C570  80 81 00 08 */	lwz r4, 8(r1)
/* 8049C574  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8049C578  3C 00 7F 80 */	lis r0, 0x7f80
/* 8049C57C  7C 03 00 00 */	cmpw r3, r0
/* 8049C580  41 82 00 14 */	beq lbl_8049C594
/* 8049C584  40 80 00 40 */	bge lbl_8049C5C4
/* 8049C588  2C 03 00 00 */	cmpwi r3, 0
/* 8049C58C  41 82 00 20 */	beq lbl_8049C5AC
/* 8049C590  48 00 00 34 */	b lbl_8049C5C4
lbl_8049C594:
/* 8049C594  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049C598  41 82 00 0C */	beq lbl_8049C5A4
/* 8049C59C  38 00 00 01 */	li r0, 1
/* 8049C5A0  48 00 00 28 */	b lbl_8049C5C8
lbl_8049C5A4:
/* 8049C5A4  38 00 00 02 */	li r0, 2
/* 8049C5A8  48 00 00 20 */	b lbl_8049C5C8
lbl_8049C5AC:
/* 8049C5AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8049C5B0  41 82 00 0C */	beq lbl_8049C5BC
/* 8049C5B4  38 00 00 05 */	li r0, 5
/* 8049C5B8  48 00 00 10 */	b lbl_8049C5C8
lbl_8049C5BC:
/* 8049C5BC  38 00 00 03 */	li r0, 3
/* 8049C5C0  48 00 00 08 */	b lbl_8049C5C8
lbl_8049C5C4:
/* 8049C5C4  38 00 00 04 */	li r0, 4
lbl_8049C5C8:
/* 8049C5C8  2C 00 00 01 */	cmpwi r0, 1
/* 8049C5CC  40 82 00 0C */	bne lbl_8049C5D8
/* 8049C5D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049C5D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8049C5D8:
/* 8049C5D8  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 8049C5DC  EC 00 08 24 */	fdivs f0, f0, f1
/* 8049C5E0  D0 1A 09 A0 */	stfs f0, 0x9a0(r26)
lbl_8049C5E4:
/* 8049C5E4  88 9A 09 3C */	lbz r4, 0x93c(r26)
/* 8049C5E8  28 04 00 02 */	cmplwi r4, 2
/* 8049C5EC  40 82 00 10 */	bne lbl_8049C5FC
/* 8049C5F0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006001C@ha */
/* 8049C5F4  38 03 00 1C */	addi r0, r3, 0x001C /* 0x0006001C@l */
/* 8049C5F8  48 00 00 4C */	b lbl_8049C644
lbl_8049C5FC:
/* 8049C5FC  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 8049C600  28 00 00 02 */	cmplwi r0, 2
/* 8049C604  40 82 00 24 */	bne lbl_8049C628
/* 8049C608  28 04 00 01 */	cmplwi r4, 1
/* 8049C60C  40 82 00 10 */	bne lbl_8049C61C
/* 8049C610  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000F@ha */
/* 8049C614  38 03 00 0F */	addi r0, r3, 0x000F /* 0x0008000F@l */
/* 8049C618  48 00 00 2C */	b lbl_8049C644
lbl_8049C61C:
/* 8049C61C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080005@ha */
/* 8049C620  38 03 00 05 */	addi r0, r3, 0x0005 /* 0x00080005@l */
/* 8049C624  48 00 00 20 */	b lbl_8049C644
lbl_8049C628:
/* 8049C628  28 04 00 01 */	cmplwi r4, 1
/* 8049C62C  40 82 00 10 */	bne lbl_8049C63C
/* 8049C630  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000E@ha */
/* 8049C634  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0008000E@l */
/* 8049C638  48 00 00 0C */	b lbl_8049C644
lbl_8049C63C:
/* 8049C63C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080004@ha */
/* 8049C640  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00080004@l */
lbl_8049C644:
/* 8049C644  28 04 00 04 */	cmplwi r4, 4
/* 8049C648  41 82 00 28 */	beq lbl_8049C670
/* 8049C64C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8049C650  38 7A 09 04 */	addi r3, r26, 0x904
/* 8049C654  38 81 00 20 */	addi r4, r1, 0x20
/* 8049C658  38 A0 00 00 */	li r5, 0
/* 8049C65C  88 DA 09 48 */	lbz r6, 0x948(r26)
/* 8049C660  81 9A 09 14 */	lwz r12, 0x914(r26)
/* 8049C664  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8049C668  7D 89 03 A6 */	mtctr r12
/* 8049C66C  4E 80 04 21 */	bctrl 
lbl_8049C670:
/* 8049C670  7F 43 D3 78 */	mr r3, r26
/* 8049C674  FC 20 F8 90 */	fmr f1, f31
/* 8049C678  4B FF E0 F5 */	bl setArrowAt__9daArrow_cFf
/* 8049C67C  7F 43 D3 78 */	mr r3, r26
/* 8049C680  4B FF D9 CD */	bl setBlur__9daArrow_cFv
lbl_8049C684:
/* 8049C684  7F 43 D3 78 */	mr r3, r26
/* 8049C688  4B FF E7 DD */	bl setNormalMatrix__9daArrow_cFv
/* 8049C68C  7F 43 D3 78 */	mr r3, r26
/* 8049C690  4B FF EB 85 */	bl setBombMoveEffect__9daArrow_cFv
/* 8049C694  38 60 00 01 */	li r3, 1
lbl_8049C698:
/* 8049C698  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 8049C69C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8049C6A0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8049C6A4  4B EC 5B 75 */	bl _restgpr_25
/* 8049C6A8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8049C6AC  7C 08 03 A6 */	mtlr r0
/* 8049C6B0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8049C6B4  4E 80 00 20 */	blr 
