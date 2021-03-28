lbl_8083B830:
/* 8083B830  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8083B834  7C 08 02 A6 */	mflr r0
/* 8083B838  90 01 00 84 */	stw r0, 0x84(r1)
/* 8083B83C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8083B840  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8083B844  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8083B848  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8083B84C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8083B850  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8083B854  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8083B858  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 8083B85C  39 61 00 40 */	addi r11, r1, 0x40
/* 8083B860  4B B2 69 6C */	b _savegpr_25
/* 8083B864  7C 7C 1B 78 */	mr r28, r3
/* 8083B868  FF A0 08 90 */	fmr f29, f1
/* 8083B86C  3C 60 80 84 */	lis r3, lit_3894@ha
/* 8083B870  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 8083B874  3B BC 05 B0 */	addi r29, r28, 0x5b0
/* 8083B878  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 8083B87C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8083B880  41 82 00 14 */	beq lbl_8083B894
/* 8083B884  38 7F 00 20 */	addi r3, r31, 0x20
/* 8083B888  C3 E3 01 18 */	lfs f31, 0x118(r3)
/* 8083B88C  C3 C3 01 1C */	lfs f30, 0x11c(r3)
/* 8083B890  48 00 00 10 */	b lbl_8083B8A0
lbl_8083B894:
/* 8083B894  38 7F 00 20 */	addi r3, r31, 0x20
/* 8083B898  C3 E3 00 2C */	lfs f31, 0x2c(r3)
/* 8083B89C  C3 C3 00 30 */	lfs f30, 0x30(r3)
lbl_8083B8A0:
/* 8083B8A0  A0 1C 16 C4 */	lhz r0, 0x16c4(r28)
/* 8083B8A4  28 00 00 11 */	cmplwi r0, 0x11
/* 8083B8A8  40 82 00 D0 */	bne lbl_8083B978
/* 8083B8AC  38 7C 05 B0 */	addi r3, r28, 0x5b0
/* 8083B8B0  4B 92 2C 1C */	b checkAnmEnd__16daPy_frameCtrl_cFv
/* 8083B8B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083B8B8  40 82 00 C0 */	bne lbl_8083B978
/* 8083B8BC  38 00 00 00 */	li r0, 0
/* 8083B8C0  98 1C 16 B7 */	stb r0, 0x16b7(r28)
/* 8083B8C4  7F A3 EB 78 */	mr r3, r29
/* 8083B8C8  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 8083B8CC  4B AE CB 60 */	b checkPass__12J3DFrameCtrlFf
/* 8083B8D0  2C 03 00 00 */	cmpwi r3, 0
/* 8083B8D4  40 82 00 18 */	bne lbl_8083B8EC
/* 8083B8D8  7F A3 EB 78 */	mr r3, r29
/* 8083B8DC  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 8083B8E0  4B AE CB 4C */	b checkPass__12J3DFrameCtrlFf
/* 8083B8E4  2C 03 00 00 */	cmpwi r3, 0
/* 8083B8E8  41 82 00 10 */	beq lbl_8083B8F8
lbl_8083B8EC:
/* 8083B8EC  88 1C 16 B6 */	lbz r0, 0x16b6(r28)
/* 8083B8F0  60 00 00 04 */	ori r0, r0, 4
/* 8083B8F4  98 1C 16 B6 */	stb r0, 0x16b6(r28)
lbl_8083B8F8:
/* 8083B8F8  7F A3 EB 78 */	mr r3, r29
/* 8083B8FC  C0 3F 01 F4 */	lfs f1, 0x1f4(r31)
/* 8083B900  4B AE CB 2C */	b checkPass__12J3DFrameCtrlFf
/* 8083B904  2C 03 00 00 */	cmpwi r3, 0
/* 8083B908  40 82 00 18 */	bne lbl_8083B920
/* 8083B90C  7F A3 EB 78 */	mr r3, r29
/* 8083B910  C0 3F 01 B0 */	lfs f1, 0x1b0(r31)
/* 8083B914  4B AE CB 18 */	b checkPass__12J3DFrameCtrlFf
/* 8083B918  2C 03 00 00 */	cmpwi r3, 0
/* 8083B91C  41 82 00 14 */	beq lbl_8083B930
lbl_8083B920:
/* 8083B920  88 1C 16 B6 */	lbz r0, 0x16b6(r28)
/* 8083B924  60 00 00 08 */	ori r0, r0, 8
/* 8083B928  98 1C 16 B6 */	stb r0, 0x16b6(r28)
/* 8083B92C  48 00 05 E4 */	b lbl_8083BF10
lbl_8083B930:
/* 8083B930  7F A3 EB 78 */	mr r3, r29
/* 8083B934  C0 3F 01 F8 */	lfs f1, 0x1f8(r31)
/* 8083B938  4B AE CA F4 */	b checkPass__12J3DFrameCtrlFf
/* 8083B93C  2C 03 00 00 */	cmpwi r3, 0
/* 8083B940  41 82 00 14 */	beq lbl_8083B954
/* 8083B944  88 1C 16 B6 */	lbz r0, 0x16b6(r28)
/* 8083B948  60 00 00 01 */	ori r0, r0, 1
/* 8083B94C  98 1C 16 B6 */	stb r0, 0x16b6(r28)
/* 8083B950  48 00 05 C0 */	b lbl_8083BF10
lbl_8083B954:
/* 8083B954  7F A3 EB 78 */	mr r3, r29
/* 8083B958  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 8083B95C  4B AE CA D0 */	b checkPass__12J3DFrameCtrlFf
/* 8083B960  2C 03 00 00 */	cmpwi r3, 0
/* 8083B964  41 82 05 AC */	beq lbl_8083BF10
/* 8083B968  88 1C 16 B6 */	lbz r0, 0x16b6(r28)
/* 8083B96C  60 00 00 02 */	ori r0, r0, 2
/* 8083B970  98 1C 16 B6 */	stb r0, 0x16b6(r28)
/* 8083B974  48 00 05 9C */	b lbl_8083BF10
lbl_8083B978:
/* 8083B978  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 8083B97C  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083B980  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083B984  4C 41 13 82 */	cror 2, 1, 2
/* 8083B988  40 82 00 18 */	bne lbl_8083B9A0
/* 8083B98C  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8083B990  C0 1C 17 8C */	lfs f0, 0x178c(r28)
/* 8083B994  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083B998  EF 82 00 32 */	fmuls f28, f2, f0
/* 8083B99C  48 00 00 18 */	b lbl_8083B9B4
lbl_8083B9A0:
/* 8083B9A0  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8083B9A4  38 7F 00 20 */	addi r3, r31, 0x20
/* 8083B9A8  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 8083B9AC  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083B9B0  EF 82 00 32 */	fmuls f28, f2, f0
lbl_8083B9B4:
/* 8083B9B4  3B DF 00 20 */	addi r30, r31, 0x20
/* 8083B9B8  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8083B9BC  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8083B9C0  40 80 03 48 */	bge lbl_8083BD08
/* 8083B9C4  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 8083B9C8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8083B9CC  41 82 00 14 */	beq lbl_8083B9E0
/* 8083B9D0  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 8083B9D4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8083B9D8  90 1C 17 44 */	stw r0, 0x1744(r28)
/* 8083B9DC  C3 BE 00 48 */	lfs f29, 0x48(r30)
lbl_8083B9E0:
/* 8083B9E0  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083B9E4  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8083B9E8  40 80 00 20 */	bge lbl_8083BA08
/* 8083B9EC  A0 1C 16 C4 */	lhz r0, 0x16c4(r28)
/* 8083B9F0  28 00 00 07 */	cmplwi r0, 7
/* 8083B9F4  40 82 00 14 */	bne lbl_8083BA08
/* 8083B9F8  38 7C 05 B0 */	addi r3, r28, 0x5b0
/* 8083B9FC  4B 92 2A D0 */	b checkAnmEnd__16daPy_frameCtrl_cFv
/* 8083BA00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083BA04  41 82 05 0C */	beq lbl_8083BF10
lbl_8083BA08:
/* 8083BA08  3B 7F 00 20 */	addi r27, r31, 0x20
/* 8083BA0C  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 8083BA10  FC 00 10 50 */	fneg f0, f2
/* 8083BA14  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8083BA18  40 80 00 28 */	bge lbl_8083BA40
/* 8083BA1C  C0 5B 00 34 */	lfs f2, 0x34(r27)
/* 8083BA20  7F 83 E3 78 */	mr r3, r28
/* 8083BA24  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8083BA28  FC 60 10 90 */	fmr f3, f2
/* 8083BA2C  38 80 00 06 */	li r4, 6
/* 8083BA30  38 A0 00 06 */	li r5, 6
/* 8083BA34  FC 80 E8 90 */	fmr f4, f29
/* 8083BA38  4B FF E4 9D */	bl setDoubleAnime__9daHorse_cFfffUsUsf
/* 8083BA3C  48 00 03 F4 */	b lbl_8083BE30
lbl_8083BA40:
/* 8083BA40  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083BA44  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8083BA48  40 80 00 34 */	bge lbl_8083BA7C
/* 8083BA4C  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8083BA50  EC 1C 10 2A */	fadds f0, f28, f2
/* 8083BA54  EC 00 10 24 */	fdivs f0, f0, f2
/* 8083BA58  EC 21 00 28 */	fsubs f1, f1, f0
/* 8083BA5C  7F 83 E3 78 */	mr r3, r28
/* 8083BA60  C0 5B 00 20 */	lfs f2, 0x20(r27)
/* 8083BA64  C0 7B 00 34 */	lfs f3, 0x34(r27)
/* 8083BA68  38 80 00 1B */	li r4, 0x1b
/* 8083BA6C  38 A0 00 06 */	li r5, 6
/* 8083BA70  FC 80 E8 90 */	fmr f4, f29
/* 8083BA74  4B FF E4 61 */	bl setDoubleAnime__9daHorse_cFfffUsUsf
/* 8083BA78  48 00 03 B8 */	b lbl_8083BE30
lbl_8083BA7C:
/* 8083BA7C  C0 5B 00 38 */	lfs f2, 0x38(r27)
/* 8083BA80  FC 1C 10 40 */	fcmpo cr0, f28, f2
/* 8083BA84  40 80 02 54 */	bge lbl_8083BCD8
/* 8083BA88  A8 7C 16 EC */	lha r3, 0x16ec(r28)
/* 8083BA8C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8083BA90  4B A3 53 94 */	b cLib_distanceAngleS__Fss
/* 8083BA94  7C 7A 1B 78 */	mr r26, r3
/* 8083BA98  7F 83 E3 78 */	mr r3, r28
/* 8083BA9C  48 00 1C AD */	bl checkWaitTurn__9daHorse_cCFv
/* 8083BAA0  2C 03 00 00 */	cmpwi r3, 0
/* 8083BAA4  41 82 01 D4 */	beq lbl_8083BC78
/* 8083BAA8  C0 3C 17 58 */	lfs f1, 0x1758(r28)
/* 8083BAAC  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8083BAB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083BAB4  40 81 01 C4 */	ble lbl_8083BC78
/* 8083BAB8  2C 1A 08 00 */	cmpwi r26, 0x800
/* 8083BABC  41 80 01 BC */	blt lbl_8083BC78
/* 8083BAC0  2C 1A 60 00 */	cmpwi r26, 0x6000
/* 8083BAC4  41 81 01 B4 */	bgt lbl_8083BC78
/* 8083BAC8  C3 9F 01 48 */	lfs f28, 0x148(r31)
/* 8083BACC  7F 83 E3 78 */	mr r3, r28
/* 8083BAD0  48 00 51 D5 */	bl resetNeckAnime__9daHorse_cFv
/* 8083BAD4  A8 7C 16 E8 */	lha r3, 0x16e8(r28)
/* 8083BAD8  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8083BADC  7C 63 00 50 */	subf r3, r3, r0
/* 8083BAE0  7C 60 07 35 */	extsh. r0, r3
/* 8083BAE4  40 81 00 BC */	ble lbl_8083BBA0
/* 8083BAE8  A0 1C 16 C4 */	lhz r0, 0x16c4(r28)
/* 8083BAEC  28 00 00 18 */	cmplwi r0, 0x18
/* 8083BAF0  40 82 00 28 */	bne lbl_8083BB18
/* 8083BAF4  38 7C 05 B0 */	addi r3, r28, 0x5b0
/* 8083BAF8  4B 92 29 D4 */	b checkAnmEnd__16daPy_frameCtrl_cFv
/* 8083BAFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083BB00  41 82 00 0C */	beq lbl_8083BB0C
/* 8083BB04  3B 40 00 17 */	li r26, 0x17
/* 8083BB08  48 00 01 4C */	b lbl_8083BC54
lbl_8083BB0C:
/* 8083BB0C  7F 83 E3 78 */	mr r3, r28
/* 8083BB10  4B FF FD 19 */	bl setTurnStartVibration__9daHorse_cFv
/* 8083BB14  48 00 03 FC */	b lbl_8083BF10
lbl_8083BB18:
/* 8083BB18  28 00 00 17 */	cmplwi r0, 0x17
/* 8083BB1C  40 82 00 70 */	bne lbl_8083BB8C
/* 8083BB20  3B 40 00 17 */	li r26, 0x17
/* 8083BB24  7C 63 07 34 */	extsh r3, r3
/* 8083BB28  4B B2 95 A8 */	b abs
/* 8083BB2C  C8 7F 01 80 */	lfd f3, 0x180(r31)
/* 8083BB30  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8083BB34  90 01 00 0C */	stw r0, 0xc(r1)
/* 8083BB38  3C 60 43 30 */	lis r3, 0x4330
/* 8083BB3C  90 61 00 08 */	stw r3, 8(r1)
/* 8083BB40  C8 01 00 08 */	lfd f0, 8(r1)
/* 8083BB44  EC 40 18 28 */	fsubs f2, f0, f3
/* 8083BB48  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 8083BB4C  A8 1C 16 C2 */	lha r0, 0x16c2(r28)
/* 8083BB50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083BB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083BB58  90 61 00 10 */	stw r3, 0x10(r1)
/* 8083BB5C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8083BB60  EC 00 18 28 */	fsubs f0, f0, f3
/* 8083BB64  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083BB68  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8083BB6C  EF 81 00 2A */	fadds f28, f1, f0
/* 8083BB70  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083BB74  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8083BB78  40 81 00 08 */	ble lbl_8083BB80
/* 8083BB7C  FF 80 00 90 */	fmr f28, f0
lbl_8083BB80:
/* 8083BB80  7F 83 E3 78 */	mr r3, r28
/* 8083BB84  4B FF FC A9 */	bl setTurnVibration__9daHorse_cFv
/* 8083BB88  48 00 00 CC */	b lbl_8083BC54
lbl_8083BB8C:
/* 8083BB8C  80 7C 05 98 */	lwz r3, 0x598(r28)
/* 8083BB90  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083BB94  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083BB98  3B 40 00 18 */	li r26, 0x18
/* 8083BB9C  48 00 00 B8 */	b lbl_8083BC54
lbl_8083BBA0:
/* 8083BBA0  A0 1C 16 C4 */	lhz r0, 0x16c4(r28)
/* 8083BBA4  28 00 00 1A */	cmplwi r0, 0x1a
/* 8083BBA8  40 82 00 28 */	bne lbl_8083BBD0
/* 8083BBAC  38 7C 05 B0 */	addi r3, r28, 0x5b0
/* 8083BBB0  4B 92 29 1C */	b checkAnmEnd__16daPy_frameCtrl_cFv
/* 8083BBB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8083BBB8  41 82 00 0C */	beq lbl_8083BBC4
/* 8083BBBC  3B 40 00 19 */	li r26, 0x19
/* 8083BBC0  48 00 00 94 */	b lbl_8083BC54
lbl_8083BBC4:
/* 8083BBC4  7F 83 E3 78 */	mr r3, r28
/* 8083BBC8  4B FF FC 61 */	bl setTurnStartVibration__9daHorse_cFv
/* 8083BBCC  48 00 03 44 */	b lbl_8083BF10
lbl_8083BBD0:
/* 8083BBD0  28 00 00 19 */	cmplwi r0, 0x19
/* 8083BBD4  40 82 00 70 */	bne lbl_8083BC44
/* 8083BBD8  3B 40 00 19 */	li r26, 0x19
/* 8083BBDC  7C 63 07 34 */	extsh r3, r3
/* 8083BBE0  4B B2 94 F0 */	b abs
/* 8083BBE4  C8 7F 01 80 */	lfd f3, 0x180(r31)
/* 8083BBE8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8083BBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083BBF0  3C 60 43 30 */	lis r3, 0x4330
/* 8083BBF4  90 61 00 10 */	stw r3, 0x10(r1)
/* 8083BBF8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8083BBFC  EC 40 18 28 */	fsubs f2, f0, f3
/* 8083BC00  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 8083BC04  A8 1C 16 C2 */	lha r0, 0x16c2(r28)
/* 8083BC08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083BC0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8083BC10  90 61 00 08 */	stw r3, 8(r1)
/* 8083BC14  C8 01 00 08 */	lfd f0, 8(r1)
/* 8083BC18  EC 00 18 28 */	fsubs f0, f0, f3
/* 8083BC1C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083BC20  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8083BC24  EF 81 00 2A */	fadds f28, f1, f0
/* 8083BC28  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083BC2C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8083BC30  40 81 00 08 */	ble lbl_8083BC38
/* 8083BC34  FF 80 00 90 */	fmr f28, f0
lbl_8083BC38:
/* 8083BC38  7F 83 E3 78 */	mr r3, r28
/* 8083BC3C  4B FF FB F1 */	bl setTurnVibration__9daHorse_cFv
/* 8083BC40  48 00 00 14 */	b lbl_8083BC54
lbl_8083BC44:
/* 8083BC44  80 7C 05 98 */	lwz r3, 0x598(r28)
/* 8083BC48  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083BC4C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083BC50  3B 40 00 1A */	li r26, 0x1a
lbl_8083BC54:
/* 8083BC54  7F 83 E3 78 */	mr r3, r28
/* 8083BC58  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 8083BC5C  FC 40 E0 90 */	fmr f2, f28
/* 8083BC60  FC 60 E0 90 */	fmr f3, f28
/* 8083BC64  7F 44 D3 78 */	mr r4, r26
/* 8083BC68  7F 45 D3 78 */	mr r5, r26
/* 8083BC6C  FC 80 E8 90 */	fmr f4, f29
/* 8083BC70  4B FF E2 65 */	bl setDoubleAnime__9daHorse_cFfffUsUsf
/* 8083BC74  48 00 01 BC */	b lbl_8083BE30
lbl_8083BC78:
/* 8083BC78  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 8083BC7C  EC 3C 00 24 */	fdivs f1, f28, f0
/* 8083BC80  88 1C 16 B4 */	lbz r0, 0x16b4(r28)
/* 8083BC84  28 00 00 00 */	cmplwi r0, 0
/* 8083BC88  41 82 00 2C */	beq lbl_8083BCB4
/* 8083BC8C  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 8083BC90  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8083BC94  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8083BC98  40 81 00 1C */	ble lbl_8083BCB4
/* 8083BC9C  38 7F 00 20 */	addi r3, r31, 0x20
/* 8083BCA0  C0 43 00 DC */	lfs f2, 0xdc(r3)
/* 8083BCA4  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083BCA8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8083BCAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8083BCB0  EC 22 00 2A */	fadds f1, f2, f0
lbl_8083BCB4:
/* 8083BCB4  7F 83 E3 78 */	mr r3, r28
/* 8083BCB8  38 9F 00 20 */	addi r4, r31, 0x20
/* 8083BCBC  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 8083BCC0  C0 64 00 24 */	lfs f3, 0x24(r4)
/* 8083BCC4  38 80 00 1B */	li r4, 0x1b
/* 8083BCC8  38 A0 00 23 */	li r5, 0x23
/* 8083BCCC  FC 80 E8 90 */	fmr f4, f29
/* 8083BCD0  4B FF E2 05 */	bl setDoubleAnime__9daHorse_cFfffUsUsf
/* 8083BCD4  48 00 01 5C */	b lbl_8083BE30
lbl_8083BCD8:
/* 8083BCD8  EC 3C 10 28 */	fsubs f1, f28, f2
/* 8083BCDC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8083BCE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8083BCE4  EC 21 00 24 */	fdivs f1, f1, f0
/* 8083BCE8  7F 83 E3 78 */	mr r3, r28
/* 8083BCEC  C0 5B 00 24 */	lfs f2, 0x24(r27)
/* 8083BCF0  C0 7B 00 28 */	lfs f3, 0x28(r27)
/* 8083BCF4  38 80 00 23 */	li r4, 0x23
/* 8083BCF8  38 A0 00 22 */	li r5, 0x22
/* 8083BCFC  FC 80 E8 90 */	fmr f4, f29
/* 8083BD00  4B FF E1 D5 */	bl setDoubleAnime__9daHorse_cFfffUsUsf
/* 8083BD04  48 00 01 2C */	b lbl_8083BE30
lbl_8083BD08:
/* 8083BD08  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8083BD0C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8083BD10  40 80 00 58 */	bge lbl_8083BD68
/* 8083BD14  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 8083BD18  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8083BD1C  40 82 00 28 */	bne lbl_8083BD44
/* 8083BD20  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8083BD24  7F 83 E3 78 */	mr r3, r28
/* 8083BD28  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 8083BD2C  FC 60 10 90 */	fmr f3, f2
/* 8083BD30  38 80 00 22 */	li r4, 0x22
/* 8083BD34  38 A0 00 22 */	li r5, 0x22
/* 8083BD38  FC 80 E8 90 */	fmr f4, f29
/* 8083BD3C  4B FF E1 99 */	bl setDoubleAnime__9daHorse_cFfffUsUsf
/* 8083BD40  48 00 00 F0 */	b lbl_8083BE30
lbl_8083BD44:
/* 8083BD44  7F 83 E3 78 */	mr r3, r28
/* 8083BD48  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 8083BD4C  FC 40 F8 90 */	fmr f2, f31
/* 8083BD50  FC 60 F8 90 */	fmr f3, f31
/* 8083BD54  38 80 00 13 */	li r4, 0x13
/* 8083BD58  38 A0 00 13 */	li r5, 0x13
/* 8083BD5C  FC 80 E8 90 */	fmr f4, f29
/* 8083BD60  4B FF E1 75 */	bl setDoubleAnime__9daHorse_cFfffUsUsf
/* 8083BD64  48 00 00 CC */	b lbl_8083BE30
lbl_8083BD68:
/* 8083BD68  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 8083BD6C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8083BD70  40 82 00 4C */	bne lbl_8083BDBC
/* 8083BD74  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 8083BD78  60 00 00 02 */	ori r0, r0, 2
/* 8083BD7C  90 1C 17 44 */	stw r0, 0x1744(r28)
/* 8083BD80  A8 1C 16 F8 */	lha r0, 0x16f8(r28)
/* 8083BD84  2C 00 00 00 */	cmpwi r0, 0
/* 8083BD88  40 82 01 88 */	bne lbl_8083BF10
/* 8083BD8C  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 8083BD90  60 00 00 04 */	ori r0, r0, 4
/* 8083BD94  90 1C 17 48 */	stw r0, 0x1748(r28)
/* 8083BD98  7F 83 E3 78 */	mr r3, r28
/* 8083BD9C  38 80 00 11 */	li r4, 0x11
/* 8083BDA0  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8083BDA4  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 8083BDA8  38 A0 FF FF */	li r5, -1
/* 8083BDAC  C0 7F 01 44 */	lfs f3, 0x144(r31)
/* 8083BDB0  38 C0 00 00 */	li r6, 0
/* 8083BDB4  4B FF E4 59 */	bl setSingleAnime__9daHorse_cFUsffsfi
/* 8083BDB8  48 00 01 58 */	b lbl_8083BF10
lbl_8083BDBC:
/* 8083BDBC  C0 BE 00 44 */	lfs f5, 0x44(r30)
/* 8083BDC0  FC 1C 28 40 */	fcmpo cr0, f28, f5
/* 8083BDC4  40 80 00 1C */	bge lbl_8083BDE0
/* 8083BDC8  C0 5F 01 98 */	lfs f2, 0x198(r31)
/* 8083BDCC  EC 3C 00 28 */	fsubs f1, f28, f0
/* 8083BDD0  EC 05 00 28 */	fsubs f0, f5, f0
/* 8083BDD4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083BDD8  EC 22 00 32 */	fmuls f1, f2, f0
/* 8083BDDC  48 00 00 38 */	b lbl_8083BE14
lbl_8083BDE0:
/* 8083BDE0  C0 9F 01 98 */	lfs f4, 0x198(r31)
/* 8083BDE4  EC 7C 28 28 */	fsubs f3, f28, f5
/* 8083BDE8  C0 5F 01 48 */	lfs f2, 0x148(r31)
/* 8083BDEC  C0 3C 17 9C */	lfs f1, 0x179c(r28)
/* 8083BDF0  C0 1C 17 8C */	lfs f0, 0x178c(r28)
/* 8083BDF4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083BDF8  EC 02 00 2A */	fadds f0, f2, f0
/* 8083BDFC  EC 00 28 28 */	fsubs f0, f0, f5
/* 8083BE00  EC 03 00 24 */	fdivs f0, f3, f0
/* 8083BE04  EC 24 00 2A */	fadds f1, f4, f0
/* 8083BE08  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8083BE0C  40 81 00 08 */	ble lbl_8083BE14
/* 8083BE10  FC 20 10 90 */	fmr f1, f2
lbl_8083BE14:
/* 8083BE14  7F 83 E3 78 */	mr r3, r28
/* 8083BE18  FC 40 F8 90 */	fmr f2, f31
/* 8083BE1C  FC 60 F0 90 */	fmr f3, f30
/* 8083BE20  38 80 00 13 */	li r4, 0x13
/* 8083BE24  38 A0 00 12 */	li r5, 0x12
/* 8083BE28  FC 80 E8 90 */	fmr f4, f29
/* 8083BE2C  4B FF E0 A9 */	bl setDoubleAnime__9daHorse_cFfffUsUsf
lbl_8083BE30:
/* 8083BE30  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 8083BE34  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8083BE38  41 82 00 60 */	beq lbl_8083BE98
/* 8083BE3C  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 8083BE40  60 00 00 20 */	ori r0, r0, 0x20
/* 8083BE44  90 1C 17 48 */	stw r0, 0x1748(r28)
/* 8083BE48  A8 1C 16 F8 */	lha r0, 0x16f8(r28)
/* 8083BE4C  2C 00 00 00 */	cmpwi r0, 0
/* 8083BE50  40 82 00 18 */	bne lbl_8083BE68
/* 8083BE54  80 7C 17 44 */	lwz r3, 0x1744(r28)
/* 8083BE58  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8083BE5C  41 82 00 28 */	beq lbl_8083BE84
/* 8083BE60  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8083BE64  41 82 00 20 */	beq lbl_8083BE84
lbl_8083BE68:
/* 8083BE68  38 00 00 01 */	li r0, 1
/* 8083BE6C  98 1C 0E A7 */	stb r0, 0xea7(r28)
/* 8083BE70  38 00 00 03 */	li r0, 3
/* 8083BE74  98 1C 0E A6 */	stb r0, 0xea6(r28)
/* 8083BE78  38 00 00 02 */	li r0, 2
/* 8083BE7C  98 1C 0E 44 */	stb r0, 0xe44(r28)
/* 8083BE80  48 00 00 18 */	b lbl_8083BE98
lbl_8083BE84:
/* 8083BE84  38 00 00 00 */	li r0, 0
/* 8083BE88  98 1C 0E A7 */	stb r0, 0xea7(r28)
/* 8083BE8C  38 00 00 01 */	li r0, 1
/* 8083BE90  98 1C 0E A6 */	stb r0, 0xea6(r28)
/* 8083BE94  98 1C 0E 44 */	stb r0, 0xe44(r28)
lbl_8083BE98:
/* 8083BE98  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 8083BE9C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8083BEA0  41 82 00 70 */	beq lbl_8083BF10
/* 8083BEA4  3B 40 00 00 */	li r26, 0
/* 8083BEA8  9B 5C 16 B7 */	stb r26, 0x16b7(r28)
/* 8083BEAC  3B 20 00 00 */	li r25, 0
/* 8083BEB0  3B 7F 01 DC */	addi r27, r31, 0x1dc
/* 8083BEB4  CB BF 01 80 */	lfd f29, 0x180(r31)
/* 8083BEB8  3F E0 43 30 */	lis r31, 0x4330
/* 8083BEBC  3B C0 00 01 */	li r30, 1
lbl_8083BEC0:
/* 8083BEC0  7F A3 EB 78 */	mr r3, r29
/* 8083BEC4  7C 3B D4 2E */	lfsx f1, r27, r26
/* 8083BEC8  A8 1D 00 08 */	lha r0, 8(r29)
/* 8083BECC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083BED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083BED4  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8083BED8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8083BEDC  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8083BEE0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8083BEE4  4B AE C5 48 */	b checkPass__12J3DFrameCtrlFf
/* 8083BEE8  2C 03 00 00 */	cmpwi r3, 0
/* 8083BEEC  41 82 00 14 */	beq lbl_8083BF00
/* 8083BEF0  88 7C 16 B6 */	lbz r3, 0x16b6(r28)
/* 8083BEF4  7F C0 C8 30 */	slw r0, r30, r25
/* 8083BEF8  7C 60 03 78 */	or r0, r3, r0
/* 8083BEFC  98 1C 16 B6 */	stb r0, 0x16b6(r28)
lbl_8083BF00:
/* 8083BF00  3B 39 00 01 */	addi r25, r25, 1
/* 8083BF04  2C 19 00 04 */	cmpwi r25, 4
/* 8083BF08  3B 5A 00 04 */	addi r26, r26, 4
/* 8083BF0C  41 80 FF B4 */	blt lbl_8083BEC0
lbl_8083BF10:
/* 8083BF10  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8083BF14  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8083BF18  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8083BF1C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8083BF20  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8083BF24  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8083BF28  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 8083BF2C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 8083BF30  39 61 00 40 */	addi r11, r1, 0x40
/* 8083BF34  4B B2 62 E4 */	b _restgpr_25
/* 8083BF38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8083BF3C  7C 08 03 A6 */	mtlr r0
/* 8083BF40  38 21 00 80 */	addi r1, r1, 0x80
/* 8083BF44  4E 80 00 20 */	blr 
