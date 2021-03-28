lbl_8075B970:
/* 8075B970  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8075B974  7C 08 02 A6 */	mflr r0
/* 8075B978  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8075B97C  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8075B980  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8075B984  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8075B988  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 8075B98C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8075B990  4B C0 68 34 */	b _savegpr_23
/* 8075B994  7C 78 1B 78 */	mr r24, r3
/* 8075B998  3C 80 80 76 */	lis r4, lit_3906@ha
/* 8075B99C  3B C4 14 FC */	addi r30, r4, lit_3906@l
/* 8075B9A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8075B9A4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 8075B9A8  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 8075B9AC  38 A0 00 00 */	li r5, 0
/* 8075B9B0  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8075B9B4  88 03 07 D3 */	lbz r0, 0x7d3(r3)
/* 8075B9B8  28 00 00 00 */	cmplwi r0, 0
/* 8075B9BC  40 82 0C C8 */	bne lbl_8075C684
/* 8075B9C0  80 18 06 84 */	lwz r0, 0x684(r24)
/* 8075B9C4  28 00 00 20 */	cmplwi r0, 0x20
/* 8075B9C8  41 81 0C 44 */	bgt lbl_8075C60C
/* 8075B9CC  3C 80 80 76 */	lis r4, lit_5481@ha
/* 8075B9D0  38 84 1B 6C */	addi r4, r4, lit_5481@l
/* 8075B9D4  54 00 10 3A */	slwi r0, r0, 2
/* 8075B9D8  7C 04 00 2E */	lwzx r0, r4, r0
/* 8075B9DC  7C 09 03 A6 */	mtctr r0
/* 8075B9E0  4E 80 04 20 */	bctr 
lbl_8075B9E4:
/* 8075B9E4  98 B8 08 47 */	stb r5, 0x847(r24)
/* 8075B9E8  98 B8 08 48 */	stb r5, 0x848(r24)
/* 8075B9EC  4B FF FD F5 */	bl mPointerSet__8daE_PZ_cFv
/* 8075B9F0  88 18 07 8B */	lbz r0, 0x78b(r24)
/* 8075B9F4  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8075B9F8  38 63 06 90 */	addi r3, r3, 0x690
/* 8075B9FC  7C 78 1A 14 */	add r3, r24, r3
/* 8075BA00  C0 03 00 00 */	lfs f0, 0(r3)
/* 8075BA04  D0 18 04 D0 */	stfs f0, 0x4d0(r24)
/* 8075BA08  C0 03 00 04 */	lfs f0, 4(r3)
/* 8075BA0C  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
/* 8075BA10  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075BA14  D0 18 04 D8 */	stfs f0, 0x4d8(r24)
/* 8075BA18  7F 03 C3 78 */	mr r3, r24
/* 8075BA1C  38 80 00 01 */	li r4, 1
/* 8075BA20  4B FF CE 99 */	bl mEntrySUB__8daE_PZ_cFb
/* 8075BA24  7F 03 C3 78 */	mr r3, r24
/* 8075BA28  38 80 00 08 */	li r4, 8
/* 8075BA2C  38 A0 00 00 */	li r5, 0
/* 8075BA30  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075BA34  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 8075BA38  4B FF CD C9 */	bl setBck__8daE_PZ_cFiUcff
/* 8075BA3C  C0 38 07 CC */	lfs f1, 0x7cc(r24)
/* 8075BA40  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075BA44  D0 18 07 9C */	stfs f0, 0x79c(r24)
/* 8075BA48  D0 38 07 A0 */	stfs f1, 0x7a0(r24)
/* 8075BA4C  D0 18 07 A4 */	stfs f0, 0x7a4(r24)
/* 8075BA50  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 8075BA54  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8075BA58  80 78 06 84 */	lwz r3, 0x684(r24)
/* 8075BA5C  38 03 00 01 */	addi r0, r3, 1
/* 8075BA60  90 18 06 84 */	stw r0, 0x684(r24)
/* 8075BA64  48 00 0B A8 */	b lbl_8075C60C
lbl_8075BA68:
/* 8075BA68  7F A4 EB 78 */	mr r4, r29
/* 8075BA6C  4B 8B EC A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8075BA70  B0 78 04 DE */	sth r3, 0x4de(r24)
/* 8075BA74  7F 03 C3 78 */	mr r3, r24
/* 8075BA78  38 80 00 01 */	li r4, 1
/* 8075BA7C  4B FF CE 3D */	bl mEntrySUB__8daE_PZ_cFb
lbl_8075BA80:
/* 8075BA80  80 18 0B 28 */	lwz r0, 0xb28(r24)
/* 8075BA84  60 00 00 01 */	ori r0, r0, 1
/* 8075BA88  90 18 0B 28 */	stw r0, 0xb28(r24)
/* 8075BA8C  7F 03 C3 78 */	mr r3, r24
/* 8075BA90  38 80 00 00 */	li r4, 0
/* 8075BA94  4B FF D0 01 */	bl mPzScaleSet__8daE_PZ_cFb
/* 8075BA98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8075BA9C  41 82 0B 70 */	beq lbl_8075C60C
/* 8075BAA0  3B 60 00 00 */	li r27, 0
/* 8075BAA4  3A E0 00 00 */	li r23, 0
/* 8075BAA8  3B 80 00 00 */	li r28, 0
/* 8075BAAC  7E F9 BB 78 */	mr r25, r23
lbl_8075BAB0:
/* 8075BAB0  3B 57 07 DC */	addi r26, r23, 0x7dc
/* 8075BAB4  7C 78 D0 2E */	lwzx r3, r24, r26
/* 8075BAB8  28 03 00 00 */	cmplwi r3, 0
/* 8075BABC  40 82 00 0C */	bne lbl_8075BAC8
/* 8075BAC0  3B 9C 00 01 */	addi r28, r28, 1
/* 8075BAC4  48 00 00 28 */	b lbl_8075BAEC
lbl_8075BAC8:
/* 8075BAC8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8075BACC  4B 8B DE F0 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075BAD0  2C 03 00 00 */	cmpwi r3, 0
/* 8075BAD4  41 82 00 10 */	beq lbl_8075BAE4
/* 8075BAD8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8075BADC  28 00 00 00 */	cmplwi r0, 0
/* 8075BAE0  40 82 00 0C */	bne lbl_8075BAEC
lbl_8075BAE4:
/* 8075BAE4  7F 38 D1 2E */	stwx r25, r24, r26
/* 8075BAE8  3B 9C 00 01 */	addi r28, r28, 1
lbl_8075BAEC:
/* 8075BAEC  3B 7B 00 01 */	addi r27, r27, 1
/* 8075BAF0  2C 1B 00 19 */	cmpwi r27, 0x19
/* 8075BAF4  3A F7 00 04 */	addi r23, r23, 4
/* 8075BAF8  41 80 FF B8 */	blt lbl_8075BAB0
/* 8075BAFC  7C 1C D8 00 */	cmpw r28, r27
/* 8075BB00  40 82 00 14 */	bne lbl_8075BB14
/* 8075BB04  38 00 00 00 */	li r0, 0
/* 8075BB08  90 18 08 4C */	stw r0, 0x84c(r24)
/* 8075BB0C  98 18 08 43 */	stb r0, 0x843(r24)
/* 8075BB10  48 00 00 24 */	b lbl_8075BB34
lbl_8075BB14:
/* 8075BB14  80 78 08 4C */	lwz r3, 0x84c(r24)
/* 8075BB18  38 03 00 01 */	addi r0, r3, 1
/* 8075BB1C  90 18 08 4C */	stw r0, 0x84c(r24)
/* 8075BB20  80 18 08 4C */	lwz r0, 0x84c(r24)
/* 8075BB24  2C 00 00 0A */	cmpwi r0, 0xa
/* 8075BB28  40 81 00 0C */	ble lbl_8075BB34
/* 8075BB2C  38 00 00 0A */	li r0, 0xa
/* 8075BB30  90 18 08 4C */	stw r0, 0x84c(r24)
lbl_8075BB34:
/* 8075BB34  80 18 0B 3C */	lwz r0, 0xb3c(r24)
/* 8075BB38  60 00 00 01 */	ori r0, r0, 1
/* 8075BB3C  90 18 0B 3C */	stw r0, 0xb3c(r24)
/* 8075BB40  7F 03 C3 78 */	mr r3, r24
/* 8075BB44  38 80 00 08 */	li r4, 8
/* 8075BB48  38 A0 00 00 */	li r5, 0
/* 8075BB4C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075BB50  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075BB54  4B FF CC AD */	bl setBck__8daE_PZ_cFiUcff
/* 8075BB58  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha
/* 8075BB5C  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l
/* 8075BB60  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075BB64  D0 18 07 9C */	stfs f0, 0x79c(r24)
/* 8075BB68  D0 18 07 A0 */	stfs f0, 0x7a0(r24)
/* 8075BB6C  D0 18 07 A4 */	stfs f0, 0x7a4(r24)
/* 8075BB70  80 78 06 84 */	lwz r3, 0x684(r24)
/* 8075BB74  38 03 00 01 */	addi r0, r3, 1
/* 8075BB78  90 18 06 84 */	stw r0, 0x684(r24)
/* 8075BB7C  48 00 0A 90 */	b lbl_8075C60C
lbl_8075BB80:
/* 8075BB80  7F A3 EB 78 */	mr r3, r29
/* 8075BB84  7F 04 C3 78 */	mr r4, r24
/* 8075BB88  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8075BB8C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8075BB90  7D 89 03 A6 */	mtctr r12
/* 8075BB94  4E 80 04 21 */	bctrl 
/* 8075BB98  2C 03 00 00 */	cmpwi r3, 0
/* 8075BB9C  41 82 00 38 */	beq lbl_8075BBD4
/* 8075BBA0  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha
/* 8075BBA4  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l
/* 8075BBA8  A8 03 00 18 */	lha r0, 0x18(r3)
/* 8075BBAC  98 18 07 D3 */	stb r0, 0x7d3(r24)
/* 8075BBB0  7F 03 C3 78 */	mr r3, r24
/* 8075BBB4  38 80 00 15 */	li r4, 0x15
/* 8075BBB8  38 A0 00 02 */	li r5, 2
/* 8075BBBC  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075BBC0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075BBC4  4B FF CC 3D */	bl setBck__8daE_PZ_cFiUcff
/* 8075BBC8  38 00 00 0A */	li r0, 0xa
/* 8075BBCC  90 18 06 84 */	stw r0, 0x684(r24)
/* 8075BBD0  48 00 0A 3C */	b lbl_8075C60C
lbl_8075BBD4:
/* 8075BBD4  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 8075BBD8  38 80 00 01 */	li r4, 1
/* 8075BBDC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8075BBE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8075BBE4  40 82 00 18 */	bne lbl_8075BBFC
/* 8075BBE8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075BBEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8075BBF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075BBF4  41 82 00 08 */	beq lbl_8075BBFC
/* 8075BBF8  38 80 00 00 */	li r4, 0
lbl_8075BBFC:
/* 8075BBFC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8075BC00  41 82 0A 0C */	beq lbl_8075C60C
/* 8075BC04  80 18 06 84 */	lwz r0, 0x684(r24)
/* 8075BC08  2C 00 00 16 */	cmpwi r0, 0x16
/* 8075BC0C  40 82 00 10 */	bne lbl_8075BC1C
/* 8075BC10  38 00 00 1E */	li r0, 0x1e
/* 8075BC14  90 18 06 84 */	stw r0, 0x684(r24)
/* 8075BC18  48 00 09 F4 */	b lbl_8075C60C
lbl_8075BC1C:
/* 8075BC1C  80 18 08 4C */	lwz r0, 0x84c(r24)
/* 8075BC20  2C 00 00 00 */	cmpwi r0, 0
/* 8075BC24  40 82 00 48 */	bne lbl_8075BC6C
/* 8075BC28  80 78 04 A4 */	lwz r3, 0x4a4(r24)
/* 8075BC2C  28 03 00 00 */	cmplwi r3, 0
/* 8075BC30  41 82 00 20 */	beq lbl_8075BC50
/* 8075BC34  38 81 00 1C */	addi r4, r1, 0x1c
/* 8075BC38  4B 8B DD 84 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8075BC3C  2C 03 00 00 */	cmpwi r3, 0
/* 8075BC40  41 82 00 10 */	beq lbl_8075BC50
/* 8075BC44  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8075BC48  28 00 00 00 */	cmplwi r0, 0
/* 8075BC4C  40 82 00 20 */	bne lbl_8075BC6C
lbl_8075BC50:
/* 8075BC50  38 00 00 00 */	li r0, 0
/* 8075BC54  90 18 04 A4 */	stw r0, 0x4a4(r24)
/* 8075BC58  7F 03 C3 78 */	mr r3, r24
/* 8075BC5C  38 80 00 03 */	li r4, 3
/* 8075BC60  38 A0 00 00 */	li r5, 0
/* 8075BC64  4B FF CC 49 */	bl setActionMode__8daE_PZ_cFii
/* 8075BC68  48 00 09 A4 */	b lbl_8075C60C
lbl_8075BC6C:
/* 8075BC6C  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha
/* 8075BC70  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l
/* 8075BC74  A8 03 00 18 */	lha r0, 0x18(r3)
/* 8075BC78  98 18 07 D3 */	stb r0, 0x7d3(r24)
/* 8075BC7C  7F 03 C3 78 */	mr r3, r24
/* 8075BC80  38 80 00 15 */	li r4, 0x15
/* 8075BC84  38 A0 00 02 */	li r5, 2
/* 8075BC88  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075BC8C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075BC90  4B FF CB 71 */	bl setBck__8daE_PZ_cFiUcff
/* 8075BC94  38 00 00 0A */	li r0, 0xa
/* 8075BC98  90 18 06 84 */	stw r0, 0x684(r24)
/* 8075BC9C  48 00 09 70 */	b lbl_8075C60C
lbl_8075BCA0:
/* 8075BCA0  80 18 0B 28 */	lwz r0, 0xb28(r24)
/* 8075BCA4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8075BCA8  90 18 0B 28 */	stw r0, 0xb28(r24)
/* 8075BCAC  80 18 0B 3C */	lwz r0, 0xb3c(r24)
/* 8075BCB0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8075BCB4  90 18 0B 3C */	stw r0, 0xb3c(r24)
/* 8075BCB8  7F 03 C3 78 */	mr r3, r24
/* 8075BCBC  38 80 00 13 */	li r4, 0x13
/* 8075BCC0  38 A0 00 00 */	li r5, 0
/* 8075BCC4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075BCC8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8075BCCC  4B FF CB 35 */	bl setBck__8daE_PZ_cFiUcff
/* 8075BCD0  80 78 06 84 */	lwz r3, 0x684(r24)
/* 8075BCD4  38 03 00 01 */	addi r0, r3, 1
/* 8075BCD8  90 18 06 84 */	stw r0, 0x684(r24)
/* 8075BCDC  48 00 09 30 */	b lbl_8075C60C
lbl_8075BCE0:
/* 8075BCE0  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 8075BCE4  38 80 00 01 */	li r4, 1
/* 8075BCE8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8075BCEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8075BCF0  40 82 00 18 */	bne lbl_8075BD08
/* 8075BCF4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8075BCF8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8075BCFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075BD00  41 82 00 08 */	beq lbl_8075BD08
/* 8075BD04  38 80 00 00 */	li r4, 0
lbl_8075BD08:
/* 8075BD08  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8075BD0C  41 82 09 00 */	beq lbl_8075C60C
/* 8075BD10  80 78 06 84 */	lwz r3, 0x684(r24)
/* 8075BD14  38 03 00 01 */	addi r0, r3, 1
/* 8075BD18  90 18 06 84 */	stw r0, 0x684(r24)
lbl_8075BD1C:
/* 8075BD1C  7F 03 C3 78 */	mr r3, r24
/* 8075BD20  38 80 00 01 */	li r4, 1
/* 8075BD24  4B FF CD 71 */	bl mPzScaleSet__8daE_PZ_cFb
/* 8075BD28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8075BD2C  41 82 08 E0 */	beq lbl_8075C60C
/* 8075BD30  38 00 00 0A */	li r0, 0xa
/* 8075BD34  98 18 07 D3 */	stb r0, 0x7d3(r24)
/* 8075BD38  7F 03 C3 78 */	mr r3, r24
/* 8075BD3C  38 80 00 00 */	li r4, 0
/* 8075BD40  4B FF CB 79 */	bl mEntrySUB__8daE_PZ_cFb
/* 8075BD44  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075BD48  D0 18 07 9C */	stfs f0, 0x79c(r24)
/* 8075BD4C  D0 18 07 A0 */	stfs f0, 0x7a0(r24)
/* 8075BD50  D0 18 07 A4 */	stfs f0, 0x7a4(r24)
/* 8075BD54  88 18 08 47 */	lbz r0, 0x847(r24)
/* 8075BD58  28 00 00 00 */	cmplwi r0, 0
/* 8075BD5C  40 82 00 24 */	bne lbl_8075BD80
/* 8075BD60  80 18 06 84 */	lwz r0, 0x684(r24)
/* 8075BD64  2C 00 00 0C */	cmpwi r0, 0xc
/* 8075BD68  40 82 00 18 */	bne lbl_8075BD80
/* 8075BD6C  7F 03 C3 78 */	mr r3, r24
/* 8075BD70  38 80 00 02 */	li r4, 2
/* 8075BD74  38 A0 00 00 */	li r5, 0
/* 8075BD78  4B FF CB 35 */	bl setActionMode__8daE_PZ_cFii
/* 8075BD7C  48 00 08 90 */	b lbl_8075C60C
lbl_8075BD80:
/* 8075BD80  80 18 06 84 */	lwz r0, 0x684(r24)
/* 8075BD84  2C 00 00 0C */	cmpwi r0, 0xc
/* 8075BD88  40 82 00 10 */	bne lbl_8075BD98
/* 8075BD8C  38 00 00 14 */	li r0, 0x14
/* 8075BD90  90 18 06 84 */	stw r0, 0x684(r24)
/* 8075BD94  48 00 08 78 */	b lbl_8075C60C
lbl_8075BD98:
/* 8075BD98  88 78 07 8C */	lbz r3, 0x78c(r24)
/* 8075BD9C  38 03 00 01 */	addi r0, r3, 1
/* 8075BDA0  98 18 07 8C */	stb r0, 0x78c(r24)
/* 8075BDA4  7F 03 C3 78 */	mr r3, r24
/* 8075BDA8  4B FF FA 39 */	bl mPointerSet__8daE_PZ_cFv
/* 8075BDAC  88 98 07 8C */	lbz r4, 0x78c(r24)
/* 8075BDB0  88 78 07 8A */	lbz r3, 0x78a(r24)
/* 8075BDB4  38 03 FF FF */	addi r0, r3, -1
/* 8075BDB8  7C 04 00 00 */	cmpw r4, r0
/* 8075BDBC  40 80 00 6C */	bge lbl_8075BE28
/* 8075BDC0  88 18 07 8B */	lbz r0, 0x78b(r24)
/* 8075BDC4  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8075BDC8  38 63 07 08 */	addi r3, r3, 0x708
/* 8075BDCC  7C 78 1A 14 */	add r3, r24, r3
/* 8075BDD0  C0 03 00 00 */	lfs f0, 0(r3)
/* 8075BDD4  D0 18 04 D0 */	stfs f0, 0x4d0(r24)
/* 8075BDD8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8075BDDC  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
/* 8075BDE0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075BDE4  D0 18 04 D8 */	stfs f0, 0x4d8(r24)
/* 8075BDE8  7F 03 C3 78 */	mr r3, r24
/* 8075BDEC  38 80 00 08 */	li r4, 8
/* 8075BDF0  38 A0 00 00 */	li r5, 0
/* 8075BDF4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075BDF8  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 8075BDFC  4B FF CA 05 */	bl setBck__8daE_PZ_cFiUcff
/* 8075BE00  C0 38 07 CC */	lfs f1, 0x7cc(r24)
/* 8075BE04  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075BE08  D0 18 07 9C */	stfs f0, 0x79c(r24)
/* 8075BE0C  D0 38 07 A0 */	stfs f1, 0x7a0(r24)
/* 8075BE10  D0 18 07 A4 */	stfs f0, 0x7a4(r24)
/* 8075BE14  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 8075BE18  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8075BE1C  38 00 00 15 */	li r0, 0x15
/* 8075BE20  90 18 06 84 */	stw r0, 0x684(r24)
/* 8075BE24  48 00 07 E8 */	b lbl_8075C60C
lbl_8075BE28:
/* 8075BE28  88 18 07 8B */	lbz r0, 0x78b(r24)
/* 8075BE2C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8075BE30  38 63 07 08 */	addi r3, r3, 0x708
/* 8075BE34  7C 78 1A 14 */	add r3, r24, r3
/* 8075BE38  C0 03 00 00 */	lfs f0, 0(r3)
/* 8075BE3C  D0 18 04 D0 */	stfs f0, 0x4d0(r24)
/* 8075BE40  C0 03 00 04 */	lfs f0, 4(r3)
/* 8075BE44  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
/* 8075BE48  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075BE4C  D0 18 04 D8 */	stfs f0, 0x4d8(r24)
/* 8075BE50  7F 03 C3 78 */	mr r3, r24
/* 8075BE54  38 80 00 01 */	li r4, 1
/* 8075BE58  4B FF CA 61 */	bl mEntrySUB__8daE_PZ_cFb
/* 8075BE5C  7F 03 C3 78 */	mr r3, r24
/* 8075BE60  38 80 00 08 */	li r4, 8
/* 8075BE64  38 A0 00 00 */	li r5, 0
/* 8075BE68  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075BE6C  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 8075BE70  4B FF C9 91 */	bl setBck__8daE_PZ_cFiUcff
/* 8075BE74  C0 38 07 CC */	lfs f1, 0x7cc(r24)
/* 8075BE78  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075BE7C  D0 18 07 9C */	stfs f0, 0x79c(r24)
/* 8075BE80  D0 38 07 A0 */	stfs f1, 0x7a0(r24)
/* 8075BE84  D0 18 07 A4 */	stfs f0, 0x7a4(r24)
/* 8075BE88  38 00 00 00 */	li r0, 0
/* 8075BE8C  98 18 07 8C */	stb r0, 0x78c(r24)
/* 8075BE90  98 18 08 47 */	stb r0, 0x847(r24)
/* 8075BE94  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 8075BE98  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8075BE9C  38 00 00 01 */	li r0, 1
/* 8075BEA0  90 18 06 84 */	stw r0, 0x684(r24)
/* 8075BEA4  48 00 07 68 */	b lbl_8075C60C
lbl_8075BEA8:
/* 8075BEA8  88 18 07 8B */	lbz r0, 0x78b(r24)
/* 8075BEAC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8075BEB0  38 63 07 08 */	addi r3, r3, 0x708
/* 8075BEB4  7C 78 1A 14 */	add r3, r24, r3
/* 8075BEB8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8075BEBC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8075BEC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8075BEC4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8075BEC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075BECC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8075BED0  38 60 00 00 */	li r3, 0
/* 8075BED4  48 00 00 28 */	b lbl_8075BEFC
lbl_8075BED8:
/* 8075BED8  7C 98 1A 14 */	add r4, r24, r3
/* 8075BEDC  C0 04 06 90 */	lfs f0, 0x690(r4)
/* 8075BEE0  D0 04 07 08 */	stfs f0, 0x708(r4)
/* 8075BEE4  C0 04 06 94 */	lfs f0, 0x694(r4)
/* 8075BEE8  D0 04 07 0C */	stfs f0, 0x70c(r4)
/* 8075BEEC  C0 04 06 98 */	lfs f0, 0x698(r4)
/* 8075BEF0  D0 04 07 10 */	stfs f0, 0x710(r4)
/* 8075BEF4  38 A5 00 01 */	addi r5, r5, 1
/* 8075BEF8  38 63 00 0C */	addi r3, r3, 0xc
lbl_8075BEFC:
/* 8075BEFC  88 18 07 8A */	lbz r0, 0x78a(r24)
/* 8075BF00  7C 05 00 00 */	cmpw r5, r0
/* 8075BF04  41 80 FF D4 */	blt lbl_8075BED8
/* 8075BF08  3B 40 00 00 */	li r26, 0
/* 8075BF0C  3A E0 00 00 */	li r23, 0
/* 8075BF10  3B 20 00 01 */	li r25, 1
/* 8075BF14  C3 FE 00 04 */	lfs f31, 4(r30)
/* 8075BF18  48 00 02 A4 */	b lbl_8075C1BC
lbl_8075BF1C:
/* 8075BF1C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8075BF20  7F 98 BA 14 */	add r28, r24, r23
/* 8075BF24  38 9C 07 08 */	addi r4, r28, 0x708
/* 8075BF28  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8075BF2C  4B B0 AC 08 */	b __mi__4cXyzCFRC3Vec
/* 8075BF30  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8075BF34  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8075BF38  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8075BF3C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8075BF40  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8075BF44  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8075BF48  38 61 00 50 */	addi r3, r1, 0x50
/* 8075BF4C  1C 19 00 0C */	mulli r0, r25, 0xc
/* 8075BF50  7F 78 02 14 */	add r27, r24, r0
/* 8075BF54  38 9B 07 08 */	addi r4, r27, 0x708
/* 8075BF58  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8075BF5C  4B B0 AB D8 */	b __mi__4cXyzCFRC3Vec
/* 8075BF60  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8075BF64  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8075BF68  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8075BF6C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8075BF70  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8075BF74  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8075BF78  38 61 00 8C */	addi r3, r1, 0x8c
/* 8075BF7C  4B BE B1 BC */	b PSVECSquareMag
/* 8075BF80  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8075BF84  40 81 00 58 */	ble lbl_8075BFDC
/* 8075BF88  FC 00 08 34 */	frsqrte f0, f1
/* 8075BF8C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8075BF90  FC 44 00 32 */	fmul f2, f4, f0
/* 8075BF94  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8075BF98  FC 00 00 32 */	fmul f0, f0, f0
/* 8075BF9C  FC 01 00 32 */	fmul f0, f1, f0
/* 8075BFA0  FC 03 00 28 */	fsub f0, f3, f0
/* 8075BFA4  FC 02 00 32 */	fmul f0, f2, f0
/* 8075BFA8  FC 44 00 32 */	fmul f2, f4, f0
/* 8075BFAC  FC 00 00 32 */	fmul f0, f0, f0
/* 8075BFB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8075BFB4  FC 03 00 28 */	fsub f0, f3, f0
/* 8075BFB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8075BFBC  FC 44 00 32 */	fmul f2, f4, f0
/* 8075BFC0  FC 00 00 32 */	fmul f0, f0, f0
/* 8075BFC4  FC 01 00 32 */	fmul f0, f1, f0
/* 8075BFC8  FC 03 00 28 */	fsub f0, f3, f0
/* 8075BFCC  FC 02 00 32 */	fmul f0, f2, f0
/* 8075BFD0  FF C1 00 32 */	fmul f30, f1, f0
/* 8075BFD4  FF C0 F0 18 */	frsp f30, f30
/* 8075BFD8  48 00 00 90 */	b lbl_8075C068
lbl_8075BFDC:
/* 8075BFDC  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8075BFE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075BFE4  40 80 00 10 */	bge lbl_8075BFF4
/* 8075BFE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075BFEC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 8075BFF0  48 00 00 78 */	b lbl_8075C068
lbl_8075BFF4:
/* 8075BFF4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8075BFF8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8075BFFC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8075C000  3C 00 7F 80 */	lis r0, 0x7f80
/* 8075C004  7C 03 00 00 */	cmpw r3, r0
/* 8075C008  41 82 00 14 */	beq lbl_8075C01C
/* 8075C00C  40 80 00 40 */	bge lbl_8075C04C
/* 8075C010  2C 03 00 00 */	cmpwi r3, 0
/* 8075C014  41 82 00 20 */	beq lbl_8075C034
/* 8075C018  48 00 00 34 */	b lbl_8075C04C
lbl_8075C01C:
/* 8075C01C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C020  41 82 00 0C */	beq lbl_8075C02C
/* 8075C024  38 00 00 01 */	li r0, 1
/* 8075C028  48 00 00 28 */	b lbl_8075C050
lbl_8075C02C:
/* 8075C02C  38 00 00 02 */	li r0, 2
/* 8075C030  48 00 00 20 */	b lbl_8075C050
lbl_8075C034:
/* 8075C034  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C038  41 82 00 0C */	beq lbl_8075C044
/* 8075C03C  38 00 00 05 */	li r0, 5
/* 8075C040  48 00 00 10 */	b lbl_8075C050
lbl_8075C044:
/* 8075C044  38 00 00 03 */	li r0, 3
/* 8075C048  48 00 00 08 */	b lbl_8075C050
lbl_8075C04C:
/* 8075C04C  38 00 00 04 */	li r0, 4
lbl_8075C050:
/* 8075C050  2C 00 00 01 */	cmpwi r0, 1
/* 8075C054  40 82 00 10 */	bne lbl_8075C064
/* 8075C058  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075C05C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 8075C060  48 00 00 08 */	b lbl_8075C068
lbl_8075C064:
/* 8075C064  FF C0 08 90 */	fmr f30, f1
lbl_8075C068:
/* 8075C068  38 61 00 80 */	addi r3, r1, 0x80
/* 8075C06C  4B BE B0 CC */	b PSVECSquareMag
/* 8075C070  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8075C074  40 81 00 58 */	ble lbl_8075C0CC
/* 8075C078  FC 00 08 34 */	frsqrte f0, f1
/* 8075C07C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8075C080  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C084  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8075C088  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C08C  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C090  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C094  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C098  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C09C  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C0A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C0A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C0A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C0AC  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C0B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C0B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C0B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C0BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C0C0  FC 21 00 32 */	fmul f1, f1, f0
/* 8075C0C4  FC 20 08 18 */	frsp f1, f1
/* 8075C0C8  48 00 00 88 */	b lbl_8075C150
lbl_8075C0CC:
/* 8075C0CC  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8075C0D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075C0D4  40 80 00 10 */	bge lbl_8075C0E4
/* 8075C0D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075C0DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8075C0E0  48 00 00 70 */	b lbl_8075C150
lbl_8075C0E4:
/* 8075C0E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8075C0E8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8075C0EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8075C0F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8075C0F4  7C 03 00 00 */	cmpw r3, r0
/* 8075C0F8  41 82 00 14 */	beq lbl_8075C10C
/* 8075C0FC  40 80 00 40 */	bge lbl_8075C13C
/* 8075C100  2C 03 00 00 */	cmpwi r3, 0
/* 8075C104  41 82 00 20 */	beq lbl_8075C124
/* 8075C108  48 00 00 34 */	b lbl_8075C13C
lbl_8075C10C:
/* 8075C10C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C110  41 82 00 0C */	beq lbl_8075C11C
/* 8075C114  38 00 00 01 */	li r0, 1
/* 8075C118  48 00 00 28 */	b lbl_8075C140
lbl_8075C11C:
/* 8075C11C  38 00 00 02 */	li r0, 2
/* 8075C120  48 00 00 20 */	b lbl_8075C140
lbl_8075C124:
/* 8075C124  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C128  41 82 00 0C */	beq lbl_8075C134
/* 8075C12C  38 00 00 05 */	li r0, 5
/* 8075C130  48 00 00 10 */	b lbl_8075C140
lbl_8075C134:
/* 8075C134  38 00 00 03 */	li r0, 3
/* 8075C138  48 00 00 08 */	b lbl_8075C140
lbl_8075C13C:
/* 8075C13C  38 00 00 04 */	li r0, 4
lbl_8075C140:
/* 8075C140  2C 00 00 01 */	cmpwi r0, 1
/* 8075C144  40 82 00 0C */	bne lbl_8075C150
/* 8075C148  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075C14C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8075C150:
/* 8075C150  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 8075C154  40 81 00 4C */	ble lbl_8075C1A0
/* 8075C158  C0 1C 07 08 */	lfs f0, 0x708(r28)
/* 8075C15C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8075C160  C0 1C 07 0C */	lfs f0, 0x70c(r28)
/* 8075C164  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8075C168  C0 1C 07 10 */	lfs f0, 0x710(r28)
/* 8075C16C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8075C170  C0 1B 07 08 */	lfs f0, 0x708(r27)
/* 8075C174  D0 1C 07 08 */	stfs f0, 0x708(r28)
/* 8075C178  C0 1B 07 0C */	lfs f0, 0x70c(r27)
/* 8075C17C  D0 1C 07 0C */	stfs f0, 0x70c(r28)
/* 8075C180  C0 1B 07 10 */	lfs f0, 0x710(r27)
/* 8075C184  D0 1C 07 10 */	stfs f0, 0x710(r28)
/* 8075C188  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8075C18C  D0 1B 07 08 */	stfs f0, 0x708(r27)
/* 8075C190  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8075C194  D0 1B 07 0C */	stfs f0, 0x70c(r27)
/* 8075C198  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8075C19C  D0 1B 07 10 */	stfs f0, 0x710(r27)
lbl_8075C1A0:
/* 8075C1A0  88 18 07 8A */	lbz r0, 0x78a(r24)
/* 8075C1A4  3B 39 00 01 */	addi r25, r25, 1
/* 8075C1A8  7C 19 00 00 */	cmpw r25, r0
/* 8075C1AC  41 80 00 10 */	blt lbl_8075C1BC
/* 8075C1B0  3B 3A 00 02 */	addi r25, r26, 2
/* 8075C1B4  3B 5A 00 01 */	addi r26, r26, 1
/* 8075C1B8  3A F7 00 0C */	addi r23, r23, 0xc
lbl_8075C1BC:
/* 8075C1BC  88 78 07 8A */	lbz r3, 0x78a(r24)
/* 8075C1C0  38 03 FF FF */	addi r0, r3, -1
/* 8075C1C4  7C 1A 00 00 */	cmpw r26, r0
/* 8075C1C8  41 80 FD 54 */	blt lbl_8075BF1C
/* 8075C1CC  38 00 00 03 */	li r0, 3
/* 8075C1D0  98 18 05 46 */	stb r0, 0x546(r24)
/* 8075C1D4  7F 03 C3 78 */	mr r3, r24
/* 8075C1D8  4B FF F6 09 */	bl mPointerSet__8daE_PZ_cFv
/* 8075C1DC  38 00 00 00 */	li r0, 0
/* 8075C1E0  98 18 07 8C */	stb r0, 0x78c(r24)
/* 8075C1E4  38 61 00 44 */	addi r3, r1, 0x44
/* 8075C1E8  88 18 07 8B */	lbz r0, 0x78b(r24)
/* 8075C1EC  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8075C1F0  38 84 07 08 */	addi r4, r4, 0x708
/* 8075C1F4  7C 98 22 14 */	add r4, r24, r4
/* 8075C1F8  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 8075C1FC  4B B0 A9 38 */	b __mi__4cXyzCFRC3Vec
/* 8075C200  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8075C204  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8075C208  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8075C20C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8075C210  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8075C214  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8075C218  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C21C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8075C220  38 61 00 38 */	addi r3, r1, 0x38
/* 8075C224  38 81 00 74 */	addi r4, r1, 0x74
/* 8075C228  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 8075C22C  4B B0 A9 08 */	b __mi__4cXyzCFRC3Vec
/* 8075C230  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8075C234  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8075C238  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8075C23C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8075C240  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8075C244  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8075C248  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C24C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8075C250  38 61 00 2C */	addi r3, r1, 0x2c
/* 8075C254  88 18 07 8B */	lbz r0, 0x78b(r24)
/* 8075C258  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8075C25C  38 84 07 08 */	addi r4, r4, 0x708
/* 8075C260  7C 98 22 14 */	add r4, r24, r4
/* 8075C264  38 B8 07 90 */	addi r5, r24, 0x790
/* 8075C268  4B B0 A8 CC */	b __mi__4cXyzCFRC3Vec
/* 8075C26C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8075C270  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8075C274  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8075C278  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8075C27C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8075C280  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8075C284  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C288  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8075C28C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8075C290  4B BE AE A8 */	b PSVECSquareMag
/* 8075C294  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075C29C  40 81 00 58 */	ble lbl_8075C2F4
/* 8075C2A0  FC 00 08 34 */	frsqrte f0, f1
/* 8075C2A4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8075C2A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C2AC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8075C2B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C2B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C2B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C2BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C2C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C2C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C2C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C2CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C2D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C2D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C2D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C2DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C2E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C2E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C2E8  FC 21 00 32 */	fmul f1, f1, f0
/* 8075C2EC  FC 20 08 18 */	frsp f1, f1
/* 8075C2F0  48 00 00 88 */	b lbl_8075C378
lbl_8075C2F4:
/* 8075C2F4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8075C2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075C2FC  40 80 00 10 */	bge lbl_8075C30C
/* 8075C300  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075C304  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8075C308  48 00 00 70 */	b lbl_8075C378
lbl_8075C30C:
/* 8075C30C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8075C310  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8075C314  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8075C318  3C 00 7F 80 */	lis r0, 0x7f80
/* 8075C31C  7C 03 00 00 */	cmpw r3, r0
/* 8075C320  41 82 00 14 */	beq lbl_8075C334
/* 8075C324  40 80 00 40 */	bge lbl_8075C364
/* 8075C328  2C 03 00 00 */	cmpwi r3, 0
/* 8075C32C  41 82 00 20 */	beq lbl_8075C34C
/* 8075C330  48 00 00 34 */	b lbl_8075C364
lbl_8075C334:
/* 8075C334  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C338  41 82 00 0C */	beq lbl_8075C344
/* 8075C33C  38 00 00 01 */	li r0, 1
/* 8075C340  48 00 00 28 */	b lbl_8075C368
lbl_8075C344:
/* 8075C344  38 00 00 02 */	li r0, 2
/* 8075C348  48 00 00 20 */	b lbl_8075C368
lbl_8075C34C:
/* 8075C34C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C350  41 82 00 0C */	beq lbl_8075C35C
/* 8075C354  38 00 00 05 */	li r0, 5
/* 8075C358  48 00 00 10 */	b lbl_8075C368
lbl_8075C35C:
/* 8075C35C  38 00 00 03 */	li r0, 3
/* 8075C360  48 00 00 08 */	b lbl_8075C368
lbl_8075C364:
/* 8075C364  38 00 00 04 */	li r0, 4
lbl_8075C368:
/* 8075C368  2C 00 00 01 */	cmpwi r0, 1
/* 8075C36C  40 82 00 0C */	bne lbl_8075C378
/* 8075C370  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075C374  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8075C378:
/* 8075C378  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C37C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075C380  41 82 01 F4 */	beq lbl_8075C574
/* 8075C384  38 61 00 80 */	addi r3, r1, 0x80
/* 8075C388  4B BE AD B0 */	b PSVECSquareMag
/* 8075C38C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C390  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075C394  40 81 00 58 */	ble lbl_8075C3EC
/* 8075C398  FC 00 08 34 */	frsqrte f0, f1
/* 8075C39C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8075C3A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C3A4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8075C3A8  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C3AC  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C3B0  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C3B4  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C3B8  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C3BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C3C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C3C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C3C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C3CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C3D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C3D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C3D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C3DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C3E0  FC 21 00 32 */	fmul f1, f1, f0
/* 8075C3E4  FC 20 08 18 */	frsp f1, f1
/* 8075C3E8  48 00 00 88 */	b lbl_8075C470
lbl_8075C3EC:
/* 8075C3EC  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8075C3F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075C3F4  40 80 00 10 */	bge lbl_8075C404
/* 8075C3F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075C3FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8075C400  48 00 00 70 */	b lbl_8075C470
lbl_8075C404:
/* 8075C404  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8075C408  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8075C40C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8075C410  3C 00 7F 80 */	lis r0, 0x7f80
/* 8075C414  7C 03 00 00 */	cmpw r3, r0
/* 8075C418  41 82 00 14 */	beq lbl_8075C42C
/* 8075C41C  40 80 00 40 */	bge lbl_8075C45C
/* 8075C420  2C 03 00 00 */	cmpwi r3, 0
/* 8075C424  41 82 00 20 */	beq lbl_8075C444
/* 8075C428  48 00 00 34 */	b lbl_8075C45C
lbl_8075C42C:
/* 8075C42C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C430  41 82 00 0C */	beq lbl_8075C43C
/* 8075C434  38 00 00 01 */	li r0, 1
/* 8075C438  48 00 00 28 */	b lbl_8075C460
lbl_8075C43C:
/* 8075C43C  38 00 00 02 */	li r0, 2
/* 8075C440  48 00 00 20 */	b lbl_8075C460
lbl_8075C444:
/* 8075C444  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C448  41 82 00 0C */	beq lbl_8075C454
/* 8075C44C  38 00 00 05 */	li r0, 5
/* 8075C450  48 00 00 10 */	b lbl_8075C460
lbl_8075C454:
/* 8075C454  38 00 00 03 */	li r0, 3
/* 8075C458  48 00 00 08 */	b lbl_8075C460
lbl_8075C45C:
/* 8075C45C  38 00 00 04 */	li r0, 4
lbl_8075C460:
/* 8075C460  2C 00 00 01 */	cmpwi r0, 1
/* 8075C464  40 82 00 0C */	bne lbl_8075C470
/* 8075C468  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075C46C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8075C470:
/* 8075C470  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C474  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075C478  41 82 00 FC */	beq lbl_8075C574
/* 8075C47C  38 61 00 68 */	addi r3, r1, 0x68
/* 8075C480  4B BE AC B8 */	b PSVECSquareMag
/* 8075C484  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075C48C  40 81 00 58 */	ble lbl_8075C4E4
/* 8075C490  FC 00 08 34 */	frsqrte f0, f1
/* 8075C494  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8075C498  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C49C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8075C4A0  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C4A4  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C4A8  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C4AC  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C4B0  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C4B4  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C4B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C4BC  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C4C0  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C4C4  FC 44 00 32 */	fmul f2, f4, f0
/* 8075C4C8  FC 00 00 32 */	fmul f0, f0, f0
/* 8075C4CC  FC 01 00 32 */	fmul f0, f1, f0
/* 8075C4D0  FC 03 00 28 */	fsub f0, f3, f0
/* 8075C4D4  FC 02 00 32 */	fmul f0, f2, f0
/* 8075C4D8  FC 21 00 32 */	fmul f1, f1, f0
/* 8075C4DC  FC 20 08 18 */	frsp f1, f1
/* 8075C4E0  48 00 00 88 */	b lbl_8075C568
lbl_8075C4E4:
/* 8075C4E4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8075C4E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8075C4EC  40 80 00 10 */	bge lbl_8075C4FC
/* 8075C4F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075C4F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8075C4F8  48 00 00 70 */	b lbl_8075C568
lbl_8075C4FC:
/* 8075C4FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8075C500  80 81 00 08 */	lwz r4, 8(r1)
/* 8075C504  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8075C508  3C 00 7F 80 */	lis r0, 0x7f80
/* 8075C50C  7C 03 00 00 */	cmpw r3, r0
/* 8075C510  41 82 00 14 */	beq lbl_8075C524
/* 8075C514  40 80 00 40 */	bge lbl_8075C554
/* 8075C518  2C 03 00 00 */	cmpwi r3, 0
/* 8075C51C  41 82 00 20 */	beq lbl_8075C53C
/* 8075C520  48 00 00 34 */	b lbl_8075C554
lbl_8075C524:
/* 8075C524  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C528  41 82 00 0C */	beq lbl_8075C534
/* 8075C52C  38 00 00 01 */	li r0, 1
/* 8075C530  48 00 00 28 */	b lbl_8075C558
lbl_8075C534:
/* 8075C534  38 00 00 02 */	li r0, 2
/* 8075C538  48 00 00 20 */	b lbl_8075C558
lbl_8075C53C:
/* 8075C53C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8075C540  41 82 00 0C */	beq lbl_8075C54C
/* 8075C544  38 00 00 05 */	li r0, 5
/* 8075C548  48 00 00 10 */	b lbl_8075C558
lbl_8075C54C:
/* 8075C54C  38 00 00 03 */	li r0, 3
/* 8075C550  48 00 00 08 */	b lbl_8075C558
lbl_8075C554:
/* 8075C554  38 00 00 04 */	li r0, 4
lbl_8075C558:
/* 8075C558  2C 00 00 01 */	cmpwi r0, 1
/* 8075C55C  40 82 00 0C */	bne lbl_8075C568
/* 8075C560  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8075C564  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8075C568:
/* 8075C568  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C56C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8075C570  40 82 00 34 */	bne lbl_8075C5A4
lbl_8075C574:
/* 8075C574  88 78 07 8B */	lbz r3, 0x78b(r24)
/* 8075C578  38 03 00 01 */	addi r0, r3, 1
/* 8075C57C  98 18 07 8B */	stb r0, 0x78b(r24)
/* 8075C580  88 78 07 8B */	lbz r3, 0x78b(r24)
/* 8075C584  88 18 07 8A */	lbz r0, 0x78a(r24)
/* 8075C588  7C 03 00 40 */	cmplw r3, r0
/* 8075C58C  41 80 00 18 */	blt lbl_8075C5A4
/* 8075C590  7F 03 C3 78 */	mr r3, r24
/* 8075C594  38 80 00 02 */	li r4, 2
/* 8075C598  38 A0 00 00 */	li r5, 0
/* 8075C59C  4B FF C3 11 */	bl setActionMode__8daE_PZ_cFii
/* 8075C5A0  48 00 00 6C */	b lbl_8075C60C
lbl_8075C5A4:
/* 8075C5A4  88 18 07 8B */	lbz r0, 0x78b(r24)
/* 8075C5A8  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8075C5AC  38 63 07 08 */	addi r3, r3, 0x708
/* 8075C5B0  7C 78 1A 14 */	add r3, r24, r3
/* 8075C5B4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8075C5B8  D0 18 04 D0 */	stfs f0, 0x4d0(r24)
/* 8075C5BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8075C5C0  D0 18 04 D4 */	stfs f0, 0x4d4(r24)
/* 8075C5C4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8075C5C8  D0 18 04 D8 */	stfs f0, 0x4d8(r24)
/* 8075C5CC  7F 03 C3 78 */	mr r3, r24
/* 8075C5D0  38 80 00 08 */	li r4, 8
/* 8075C5D4  38 A0 00 00 */	li r5, 0
/* 8075C5D8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 8075C5DC  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 8075C5E0  4B FF C2 21 */	bl setBck__8daE_PZ_cFiUcff
/* 8075C5E4  C0 38 07 CC */	lfs f1, 0x7cc(r24)
/* 8075C5E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C5EC  D0 18 07 9C */	stfs f0, 0x79c(r24)
/* 8075C5F0  D0 38 07 A0 */	stfs f1, 0x7a0(r24)
/* 8075C5F4  D0 18 07 A4 */	stfs f0, 0x7a4(r24)
/* 8075C5F8  80 78 05 B4 */	lwz r3, 0x5b4(r24)
/* 8075C5FC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8075C600  80 78 06 84 */	lwz r3, 0x684(r24)
/* 8075C604  38 03 00 01 */	addi r0, r3, 1
/* 8075C608  90 18 06 84 */	stw r0, 0x684(r24)
lbl_8075C60C:
/* 8075C60C  7F 03 C3 78 */	mr r3, r24
/* 8075C610  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8075C614  4B 8B E0 FC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8075C618  7C 64 1B 78 */	mr r4, r3
/* 8075C61C  80 18 08 4C */	lwz r0, 0x84c(r24)
/* 8075C620  2C 00 00 00 */	cmpwi r0, 0
/* 8075C624  40 82 00 4C */	bne lbl_8075C670
/* 8075C628  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8075C62C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8075C630  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8075C634  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 8075C638  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8075C63C  38 61 00 20 */	addi r3, r1, 0x20
/* 8075C640  38 81 00 8C */	addi r4, r1, 0x8c
/* 8075C644  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 8075C648  4B B0 A4 EC */	b __mi__4cXyzCFRC3Vec
/* 8075C64C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8075C650  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8075C654  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8075C658  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8075C65C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8075C660  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8075C664  38 61 00 80 */	addi r3, r1, 0x80
/* 8075C668  4B B0 AA C0 */	b atan2sX_Z__4cXyzCFv
/* 8075C66C  7C 64 07 34 */	extsh r4, r3
lbl_8075C670:
/* 8075C670  38 78 04 DE */	addi r3, r24, 0x4de
/* 8075C674  7C 84 07 34 */	extsh r4, r4
/* 8075C678  38 A0 00 04 */	li r5, 4
/* 8075C67C  38 C0 08 00 */	li r6, 0x800
/* 8075C680  4B B1 3F 88 */	b cLib_addCalcAngleS2__FPssss
lbl_8075C684:
/* 8075C684  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8075C688  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8075C68C  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 8075C690  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8075C694  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8075C698  4B C0 5B 78 */	b _restgpr_23
/* 8075C69C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8075C6A0  7C 08 03 A6 */	mtlr r0
/* 8075C6A4  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8075C6A8  4E 80 00 20 */	blr 
