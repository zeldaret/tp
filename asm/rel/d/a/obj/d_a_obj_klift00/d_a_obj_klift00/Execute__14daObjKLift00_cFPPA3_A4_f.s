lbl_8058B97C:
/* 8058B97C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8058B980  7C 08 02 A6 */	mflr r0
/* 8058B984  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8058B988  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8058B98C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8058B990  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8058B994  4B DD 68 2C */	b _savegpr_22
/* 8058B998  7C 7A 1B 78 */	mr r26, r3
/* 8058B99C  7C 9B 23 78 */	mr r27, r4
/* 8058B9A0  3C 60 80 59 */	lis r3, l_bmdidx@ha
/* 8058B9A4  3B E3 C3 80 */	addi r31, r3, l_bmdidx@l
/* 8058B9A8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8058B9AC  4B CD BF A8 */	b cM_rndF__Ff
/* 8058B9B0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8058B9B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058B9B8  40 80 00 A4 */	bge lbl_8058BA5C
/* 8058B9BC  3A C0 00 01 */	li r22, 1
/* 8058B9C0  3B 00 00 24 */	li r24, 0x24
/* 8058B9C4  48 00 00 8C */	b lbl_8058BA50
lbl_8058B9C8:
/* 8058B9C8  38 61 00 78 */	addi r3, r1, 0x78
/* 8058B9CC  4B AC F1 34 */	b dKyw_get_wind_vecpow__Fv
/* 8058B9D0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8058B9D4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8058B9D8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8058B9DC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8058B9E0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8058B9E4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8058B9E8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8058B9EC  4B CD BF 68 */	b cM_rndF__Ff
/* 8058B9F0  38 61 00 9C */	addi r3, r1, 0x9c
/* 8058B9F4  7C 64 1B 78 */	mr r4, r3
/* 8058B9F8  4B DB B6 E0 */	b PSVECScale
/* 8058B9FC  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BA00  7C 60 C2 14 */	add r3, r0, r24
/* 8058BA04  38 81 00 9C */	addi r4, r1, 0x9c
/* 8058BA08  7C 65 1B 78 */	mr r5, r3
/* 8058BA0C  4B DB B6 84 */	b PSVECAdd
/* 8058BA10  80 7A 06 14 */	lwz r3, 0x614(r26)
/* 8058BA14  38 03 FF FF */	addi r0, r3, -1
/* 8058BA18  7C 16 00 00 */	cmpw r22, r0
/* 8058BA1C  40 82 00 2C */	bne lbl_8058BA48
/* 8058BA20  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8058BA24  4B CD BF 30 */	b cM_rndF__Ff
/* 8058BA28  38 61 00 9C */	addi r3, r1, 0x9c
/* 8058BA2C  7C 64 1B 78 */	mr r4, r3
/* 8058BA30  4B DB B6 A8 */	b PSVECScale
/* 8058BA34  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BA38  7C 60 C2 14 */	add r3, r0, r24
/* 8058BA3C  38 81 00 9C */	addi r4, r1, 0x9c
/* 8058BA40  7C 65 1B 78 */	mr r5, r3
/* 8058BA44  4B DB B6 4C */	b PSVECAdd
lbl_8058BA48:
/* 8058BA48  3A D6 00 01 */	addi r22, r22, 1
/* 8058BA4C  3B 18 00 24 */	addi r24, r24, 0x24
lbl_8058BA50:
/* 8058BA50  80 1A 06 14 */	lwz r0, 0x614(r26)
/* 8058BA54  7C 16 00 00 */	cmpw r22, r0
/* 8058BA58  41 80 FF 70 */	blt lbl_8058B9C8
lbl_8058BA5C:
/* 8058BA5C  3B A0 00 00 */	li r29, 0
/* 8058BA60  3B 80 00 00 */	li r28, 0
/* 8058BA64  3B 20 00 00 */	li r25, 0
/* 8058BA68  3B 00 00 00 */	li r24, 0
lbl_8058BA6C:
/* 8058BA6C  80 7A 06 14 */	lwz r3, 0x614(r26)
/* 8058BA70  38 03 FF FF */	addi r0, r3, -1
/* 8058BA74  7E D8 00 51 */	subf. r22, r24, r0
/* 8058BA78  41 80 01 04 */	blt lbl_8058BB7C
/* 8058BA7C  7F DA CA 14 */	add r30, r26, r25
/* 8058BA80  3A FE 06 60 */	addi r23, r30, 0x660
/* 8058BA84  7E E3 BB 78 */	mr r3, r23
/* 8058BA88  4B AF 89 D8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8058BA8C  28 03 00 00 */	cmplwi r3, 0
/* 8058BA90  41 82 00 EC */	beq lbl_8058BB7C
/* 8058BA94  7E E3 BB 78 */	mr r3, r23
/* 8058BA98  4B AF 8A 60 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8058BA9C  7C 77 1B 78 */	mr r23, r3
/* 8058BAA0  4B CD 7F A8 */	b GetAc__8cCcD_ObjFv
/* 8058BAA4  7C 65 1B 78 */	mr r5, r3
/* 8058BAA8  38 61 00 6C */	addi r3, r1, 0x6c
/* 8058BAAC  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BAB0  1E D6 00 24 */	mulli r22, r22, 0x24
/* 8058BAB4  38 96 00 0C */	addi r4, r22, 0xc
/* 8058BAB8  7C 80 22 14 */	add r4, r0, r4
/* 8058BABC  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 8058BAC0  4B CD B0 74 */	b __mi__4cXyzCFRC3Vec
/* 8058BAC4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8058BAC8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8058BACC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8058BAD0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8058BAD4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8058BAD8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8058BADC  38 61 00 90 */	addi r3, r1, 0x90
/* 8058BAE0  4B DB B6 58 */	b PSVECSquareMag
/* 8058BAE4  FC 00 0A 10 */	fabs f0, f1
/* 8058BAE8  FC 20 00 18 */	frsp f1, f0
/* 8058BAEC  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 8058BAF0  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 8058BAF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058BAF8  41 80 00 34 */	blt lbl_8058BB2C
/* 8058BAFC  38 61 00 60 */	addi r3, r1, 0x60
/* 8058BB00  38 81 00 90 */	addi r4, r1, 0x90
/* 8058BB04  4B CD B3 F0 */	b normalize__4cXyzFv
/* 8058BB08  38 61 00 90 */	addi r3, r1, 0x90
/* 8058BB0C  7C 64 1B 78 */	mr r4, r3
/* 8058BB10  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8058BB14  4B DB B5 C4 */	b PSVECScale
/* 8058BB18  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BB1C  7C 60 B2 14 */	add r3, r0, r22
/* 8058BB20  38 81 00 90 */	addi r4, r1, 0x90
/* 8058BB24  7C 65 1B 78 */	mr r5, r3
/* 8058BB28  4B DB B5 68 */	b PSVECAdd
lbl_8058BB2C:
/* 8058BB2C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8058BB30  40 82 00 4C */	bne lbl_8058BB7C
/* 8058BB34  3B A0 00 01 */	li r29, 1
/* 8058BB38  88 77 00 74 */	lbz r3, 0x74(r23)
/* 8058BB3C  38 80 00 00 */	li r4, 0
/* 8058BB40  4B AF 8A 70 */	b getHitSeID__12dCcD_GObjInfFUci
/* 8058BB44  90 61 00 08 */	stw r3, 8(r1)
/* 8058BB48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058BB4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058BB50  80 63 00 00 */	lwz r3, 0(r3)
/* 8058BB54  38 81 00 08 */	addi r4, r1, 8
/* 8058BB58  38 BE 07 84 */	addi r5, r30, 0x784
/* 8058BB5C  38 C0 00 35 */	li r6, 0x35
/* 8058BB60  38 E0 00 00 */	li r7, 0
/* 8058BB64  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8058BB68  FC 40 08 90 */	fmr f2, f1
/* 8058BB6C  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 8058BB70  FC 80 18 90 */	fmr f4, f3
/* 8058BB74  39 00 00 00 */	li r8, 0
/* 8058BB78  4B D1 FE 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8058BB7C:
/* 8058BB7C  3B 9C 00 01 */	addi r28, r28, 1
/* 8058BB80  2C 1C 00 08 */	cmpwi r28, 8
/* 8058BB84  3B 39 01 38 */	addi r25, r25, 0x138
/* 8058BB88  3B 18 00 02 */	addi r24, r24, 2
/* 8058BB8C  41 80 FE E0 */	blt lbl_8058BA6C
/* 8058BB90  80 9A 06 18 */	lwz r4, 0x618(r26)
/* 8058BB94  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8058BB98  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 8058BB9C  D0 04 00 00 */	stfs f0, 0(r4)
/* 8058BBA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8058BBA4  D0 04 00 04 */	stfs f0, 4(r4)
/* 8058BBA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8058BBAC  D0 04 00 08 */	stfs f0, 8(r4)
/* 8058BBB0  80 7A 06 18 */	lwz r3, 0x618(r26)
/* 8058BBB4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 8058BBB8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8058BBBC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8058BBC0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8058BBC4  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 8058BBC8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8058BBCC  3A C0 00 01 */	li r22, 1
/* 8058BBD0  3B 80 00 24 */	li r28, 0x24
/* 8058BBD4  C3 FF 00 5C */	lfs f31, 0x5c(r31)
/* 8058BBD8  48 00 00 54 */	b lbl_8058BC2C
lbl_8058BBDC:
/* 8058BBDC  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BBE0  7C 60 E2 14 */	add r3, r0, r28
/* 8058BBE4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8058BBE8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8058BBEC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8058BBF0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8058BBF4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8058BBF8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8058BBFC  80 7A 06 18 */	lwz r3, 0x618(r26)
/* 8058BC00  38 1C 00 04 */	addi r0, r28, 4
/* 8058BC04  7C 03 04 2E */	lfsx f0, r3, r0
/* 8058BC08  EC 00 F8 2A */	fadds f0, f0, f31
/* 8058BC0C  7C 03 05 2E */	stfsx f0, r3, r0
/* 8058BC10  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BC14  7C 80 E2 14 */	add r4, r0, r28
/* 8058BC18  38 64 00 0C */	addi r3, r4, 0xc
/* 8058BC1C  7C 65 1B 78 */	mr r5, r3
/* 8058BC20  4B DB B4 70 */	b PSVECAdd
/* 8058BC24  3A D6 00 01 */	addi r22, r22, 1
/* 8058BC28  3B 9C 00 24 */	addi r28, r28, 0x24
lbl_8058BC2C:
/* 8058BC2C  80 1A 06 14 */	lwz r0, 0x614(r26)
/* 8058BC30  7C 16 00 00 */	cmpw r22, r0
/* 8058BC34  41 80 FF A8 */	blt lbl_8058BBDC
/* 8058BC38  3A C0 00 01 */	li r22, 1
/* 8058BC3C  3B 80 00 24 */	li r28, 0x24
/* 8058BC40  48 00 00 8C */	b lbl_8058BCCC
lbl_8058BC44:
/* 8058BC44  7C 16 00 00 */	cmpw r22, r0
/* 8058BC48  41 82 00 7C */	beq lbl_8058BCC4
/* 8058BC4C  80 DA 06 18 */	lwz r6, 0x618(r26)
/* 8058BC50  38 61 00 54 */	addi r3, r1, 0x54
/* 8058BC54  38 16 FF FF */	addi r0, r22, -1
/* 8058BC58  1C 80 00 24 */	mulli r4, r0, 0x24
/* 8058BC5C  38 84 00 0C */	addi r4, r4, 0xc
/* 8058BC60  7C 86 22 14 */	add r4, r6, r4
/* 8058BC64  38 BC 00 0C */	addi r5, r28, 0xc
/* 8058BC68  7C A6 2A 14 */	add r5, r6, r5
/* 8058BC6C  4B CD AE 78 */	b __pl__4cXyzCFRC3Vec
/* 8058BC70  38 61 00 48 */	addi r3, r1, 0x48
/* 8058BC74  38 81 00 54 */	addi r4, r1, 0x54
/* 8058BC78  80 DA 06 18 */	lwz r6, 0x618(r26)
/* 8058BC7C  38 16 00 01 */	addi r0, r22, 1
/* 8058BC80  1C A0 00 24 */	mulli r5, r0, 0x24
/* 8058BC84  38 A5 00 0C */	addi r5, r5, 0xc
/* 8058BC88  7C A6 2A 14 */	add r5, r6, r5
/* 8058BC8C  4B CD AE 58 */	b __pl__4cXyzCFRC3Vec
/* 8058BC90  38 61 00 3C */	addi r3, r1, 0x3c
/* 8058BC94  38 81 00 48 */	addi r4, r1, 0x48
/* 8058BC98  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8058BC9C  4B CD AE E8 */	b __ml__4cXyzCFf
/* 8058BCA0  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BCA4  38 7C 00 0C */	addi r3, r28, 0xc
/* 8058BCA8  7C 60 1A 14 */	add r3, r0, r3
/* 8058BCAC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8058BCB0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8058BCB4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8058BCB8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8058BCBC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8058BCC0  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8058BCC4:
/* 8058BCC4  3A D6 00 01 */	addi r22, r22, 1
/* 8058BCC8  3B 9C 00 24 */	addi r28, r28, 0x24
lbl_8058BCCC:
/* 8058BCCC  80 7A 06 14 */	lwz r3, 0x614(r26)
/* 8058BCD0  38 03 FF FF */	addi r0, r3, -1
/* 8058BCD4  7C 16 00 00 */	cmpw r22, r0
/* 8058BCD8  41 80 FF 6C */	blt lbl_8058BC44
/* 8058BCDC  3B 80 00 01 */	li r28, 1
/* 8058BCE0  3B A0 00 24 */	li r29, 0x24
/* 8058BCE4  48 00 01 34 */	b lbl_8058BE18
lbl_8058BCE8:
/* 8058BCE8  80 DA 06 18 */	lwz r6, 0x618(r26)
/* 8058BCEC  38 61 00 30 */	addi r3, r1, 0x30
/* 8058BCF0  38 9D 00 0C */	addi r4, r29, 0xc
/* 8058BCF4  7C 86 22 14 */	add r4, r6, r4
/* 8058BCF8  38 1C FF FF */	addi r0, r28, -1
/* 8058BCFC  1E C0 00 24 */	mulli r22, r0, 0x24
/* 8058BD00  38 B6 00 0C */	addi r5, r22, 0xc
/* 8058BD04  7C A6 2A 14 */	add r5, r6, r5
/* 8058BD08  4B CD AE 2C */	b __mi__4cXyzCFRC3Vec
/* 8058BD0C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8058BD10  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8058BD14  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8058BD18  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8058BD1C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8058BD20  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8058BD24  80 1A 11 5C */	lwz r0, 0x115c(r26)
/* 8058BD28  2C 00 00 00 */	cmpwi r0, 0
/* 8058BD2C  40 81 00 1C */	ble lbl_8058BD48
/* 8058BD30  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8058BD34  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8058BD38  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8058BD3C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8058BD40  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8058BD44  48 00 00 48 */	b lbl_8058BD8C
lbl_8058BD48:
/* 8058BD48  38 61 00 84 */	addi r3, r1, 0x84
/* 8058BD4C  4B DB B3 EC */	b PSVECSquareMag
/* 8058BD50  FC 00 0A 10 */	fabs f0, f1
/* 8058BD54  FC 20 00 18 */	frsp f1, f0
/* 8058BD58  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 8058BD5C  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 8058BD60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058BD64  41 80 00 14 */	blt lbl_8058BD78
/* 8058BD68  38 61 00 24 */	addi r3, r1, 0x24
/* 8058BD6C  38 81 00 84 */	addi r4, r1, 0x84
/* 8058BD70  4B CD B1 84 */	b normalize__4cXyzFv
/* 8058BD74  48 00 00 18 */	b lbl_8058BD8C
lbl_8058BD78:
/* 8058BD78  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8058BD7C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8058BD80  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8058BD84  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8058BD88  D0 21 00 8C */	stfs f1, 0x8c(r1)
lbl_8058BD8C:
/* 8058BD8C  38 61 00 84 */	addi r3, r1, 0x84
/* 8058BD90  7C 64 1B 78 */	mr r4, r3
/* 8058BD94  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8058BD98  4B DB B3 40 */	b PSVECScale
/* 8058BD9C  38 61 00 18 */	addi r3, r1, 0x18
/* 8058BDA0  38 81 00 84 */	addi r4, r1, 0x84
/* 8058BDA4  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BDA8  38 B6 00 0C */	addi r5, r22, 0xc
/* 8058BDAC  7C A0 2A 14 */	add r5, r0, r5
/* 8058BDB0  4B CD AD 34 */	b __pl__4cXyzCFRC3Vec
/* 8058BDB4  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BDB8  38 7D 00 0C */	addi r3, r29, 0xc
/* 8058BDBC  7C 60 1A 14 */	add r3, r0, r3
/* 8058BDC0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8058BDC4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8058BDC8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8058BDCC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8058BDD0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8058BDD4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8058BDD8  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BDDC  7C A0 EA 14 */	add r5, r0, r29
/* 8058BDE0  38 61 00 0C */	addi r3, r1, 0xc
/* 8058BDE4  38 85 00 0C */	addi r4, r5, 0xc
/* 8058BDE8  38 A5 00 18 */	addi r5, r5, 0x18
/* 8058BDEC  4B CD AD 48 */	b __mi__4cXyzCFRC3Vec
/* 8058BDF0  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BDF4  7C 60 EA 14 */	add r3, r0, r29
/* 8058BDF8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8058BDFC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8058BE00  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8058BE04  D0 03 00 04 */	stfs f0, 4(r3)
/* 8058BE08  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8058BE0C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8058BE10  3B 9C 00 01 */	addi r28, r28, 1
/* 8058BE14  3B BD 00 24 */	addi r29, r29, 0x24
lbl_8058BE18:
/* 8058BE18  80 1A 06 14 */	lwz r0, 0x614(r26)
/* 8058BE1C  7C 1C 00 00 */	cmpw r28, r0
/* 8058BE20  41 80 FE C8 */	blt lbl_8058BCE8
/* 8058BE24  80 7A 11 5C */	lwz r3, 0x115c(r26)
/* 8058BE28  2C 03 00 00 */	cmpwi r3, 0
/* 8058BE2C  40 81 00 20 */	ble lbl_8058BE4C
/* 8058BE30  38 03 FF FF */	addi r0, r3, -1
/* 8058BE34  90 1A 11 5C */	stw r0, 0x115c(r26)
/* 8058BE38  80 1A 11 5C */	lwz r0, 0x115c(r26)
/* 8058BE3C  2C 00 00 00 */	cmpwi r0, 0
/* 8058BE40  40 80 00 0C */	bge lbl_8058BE4C
/* 8058BE44  38 00 00 00 */	li r0, 0
/* 8058BE48  90 1A 11 5C */	stw r0, 0x115c(r26)
lbl_8058BE4C:
/* 8058BE4C  3B 00 00 00 */	li r24, 0
/* 8058BE50  3B 80 00 00 */	li r28, 0
/* 8058BE54  3B A0 00 00 */	li r29, 0
/* 8058BE58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058BE5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058BE60  3A E3 23 3C */	addi r23, r3, 0x233c
lbl_8058BE64:
/* 8058BE64  80 7A 06 14 */	lwz r3, 0x614(r26)
/* 8058BE68  38 03 FF FF */	addi r0, r3, -1
/* 8058BE6C  7C 9D 00 51 */	subf. r4, r29, r0
/* 8058BE70  41 80 00 2C */	blt lbl_8058BE9C
/* 8058BE74  7E DA E2 14 */	add r22, r26, r28
/* 8058BE78  38 76 07 84 */	addi r3, r22, 0x784
/* 8058BE7C  80 1A 06 18 */	lwz r0, 0x618(r26)
/* 8058BE80  1C 84 00 24 */	mulli r4, r4, 0x24
/* 8058BE84  38 84 00 0C */	addi r4, r4, 0xc
/* 8058BE88  7C 80 22 14 */	add r4, r0, r4
/* 8058BE8C  4B CE 37 BC */	b SetC__8cM3dGSphFRC4cXyz
/* 8058BE90  7E E3 BB 78 */	mr r3, r23
/* 8058BE94  38 96 06 60 */	addi r4, r22, 0x660
/* 8058BE98  4B CD 8D 10 */	b Set__4cCcSFP8cCcD_Obj
lbl_8058BE9C:
/* 8058BE9C  3B 18 00 01 */	addi r24, r24, 1
/* 8058BEA0  2C 18 00 08 */	cmpwi r24, 8
/* 8058BEA4  3B 9C 01 38 */	addi r28, r28, 0x138
/* 8058BEA8  3B BD 00 02 */	addi r29, r29, 2
/* 8058BEAC  41 80 FF B8 */	blt lbl_8058BE64
/* 8058BEB0  38 7A 06 40 */	addi r3, r26, 0x640
/* 8058BEB4  4B AF 79 7C */	b Move__10dCcD_GSttsFv
/* 8058BEB8  7F 43 D3 78 */	mr r3, r26
/* 8058BEBC  4B FF F2 15 */	bl setMtx__14daObjKLift00_cFv
/* 8058BEC0  38 1A 05 A8 */	addi r0, r26, 0x5a8
/* 8058BEC4  90 1B 00 00 */	stw r0, 0(r27)
/* 8058BEC8  38 60 00 01 */	li r3, 1
/* 8058BECC  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8058BED0  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8058BED4  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8058BED8  4B DD 63 34 */	b _restgpr_22
/* 8058BEDC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8058BEE0  7C 08 03 A6 */	mtlr r0
/* 8058BEE4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8058BEE8  4E 80 00 20 */	blr 
