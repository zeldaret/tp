lbl_80A5B8FC:
/* 80A5B8FC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80A5B900  7C 08 02 A6 */	mflr r0
/* 80A5B904  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80A5B908  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80A5B90C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80A5B910  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80A5B914  4B 90 68 BC */	b _savegpr_26
/* 80A5B918  7C 7F 1B 78 */	mr r31, r3
/* 80A5B91C  3C 80 80 A6 */	lis r4, lit_1109@ha
/* 80A5B920  3B A4 FE 48 */	addi r29, r4, lit_1109@l
/* 80A5B924  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A5B928  3B C4 DE FC */	addi r30, r4, lit_4030@l
/* 80A5B92C  A8 03 05 E8 */	lha r0, 0x5e8(r3)
/* 80A5B930  2C 00 01 2C */	cmpwi r0, 0x12c
/* 80A5B934  40 82 00 3C */	bne lbl_80A5B970
/* 80A5B938  80 1D 01 1C */	lwz r0, 0x11c(r29)
/* 80A5B93C  2C 00 00 00 */	cmpwi r0, 0
/* 80A5B940  40 82 00 44 */	bne lbl_80A5B984
/* 80A5B944  A8 1F 0B 42 */	lha r0, 0xb42(r31)
/* 80A5B948  2C 00 00 00 */	cmpwi r0, 0
/* 80A5B94C  40 82 00 38 */	bne lbl_80A5B984
/* 80A5B950  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A5B954  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A5B958  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80A5B95C  28 00 00 00 */	cmplwi r0, 0
/* 80A5B960  41 82 00 24 */	beq lbl_80A5B984
/* 80A5B964  4B FF FC B1 */	bl kantera_sub__FP12npc_ks_class
/* 80A5B968  38 60 00 01 */	li r3, 1
/* 80A5B96C  48 00 0A 58 */	b lbl_80A5C3C4
lbl_80A5B970:
/* 80A5B970  4B 5B C9 38 */	b cDmrNowMidnaTalk__Fv
/* 80A5B974  2C 03 00 00 */	cmpwi r3, 0
/* 80A5B978  41 82 00 0C */	beq lbl_80A5B984
/* 80A5B97C  38 60 00 01 */	li r3, 1
/* 80A5B980  48 00 0A 44 */	b lbl_80A5C3C4
lbl_80A5B984:
/* 80A5B984  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A5B988  28 00 00 02 */	cmplwi r0, 2
/* 80A5B98C  40 82 00 24 */	bne lbl_80A5B9B0
/* 80A5B990  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5B994  7C 05 07 75 */	extsb. r5, r0
/* 80A5B998  40 82 00 3C */	bne lbl_80A5B9D4
/* 80A5B99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5B9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5B9A4  38 80 00 4F */	li r4, 0x4f
/* 80A5B9A8  4B 5D 98 58 */	b onSwitch__10dSv_info_cFii
/* 80A5B9AC  48 00 00 28 */	b lbl_80A5B9D4
lbl_80A5B9B0:
/* 80A5B9B0  28 00 00 03 */	cmplwi r0, 3
/* 80A5B9B4  40 82 00 20 */	bne lbl_80A5B9D4
/* 80A5B9B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5B9BC  7C 05 07 75 */	extsb. r5, r0
/* 80A5B9C0  40 82 00 14 */	bne lbl_80A5B9D4
/* 80A5B9C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5B9C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5B9CC  38 80 00 50 */	li r4, 0x50
/* 80A5B9D0  4B 5D 98 30 */	b onSwitch__10dSv_info_cFii
lbl_80A5B9D4:
/* 80A5B9D4  A8 7F 05 E6 */	lha r3, 0x5e6(r31)
/* 80A5B9D8  38 03 00 01 */	addi r0, r3, 1
/* 80A5B9DC  B0 1F 05 E6 */	sth r0, 0x5e6(r31)
/* 80A5B9E0  38 60 00 00 */	li r3, 0
/* 80A5B9E4  38 00 00 04 */	li r0, 4
/* 80A5B9E8  7C 09 03 A6 */	mtctr r0
lbl_80A5B9EC:
/* 80A5B9EC  38 A3 05 F0 */	addi r5, r3, 0x5f0
/* 80A5B9F0  7C 9F 2A AE */	lhax r4, r31, r5
/* 80A5B9F4  2C 04 00 00 */	cmpwi r4, 0
/* 80A5B9F8  41 82 00 0C */	beq lbl_80A5BA04
/* 80A5B9FC  38 04 FF FF */	addi r0, r4, -1
/* 80A5BA00  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80A5BA04:
/* 80A5BA04  38 63 00 02 */	addi r3, r3, 2
/* 80A5BA08  42 00 FF E4 */	bdnz lbl_80A5B9EC
/* 80A5BA0C  A8 7F 05 F8 */	lha r3, 0x5f8(r31)
/* 80A5BA10  2C 03 00 00 */	cmpwi r3, 0
/* 80A5BA14  41 82 00 0C */	beq lbl_80A5BA20
/* 80A5BA18  38 03 FF FF */	addi r0, r3, -1
/* 80A5BA1C  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
lbl_80A5BA20:
/* 80A5BA20  A8 7F 09 4C */	lha r3, 0x94c(r31)
/* 80A5BA24  2C 03 00 00 */	cmpwi r3, 0
/* 80A5BA28  41 82 00 0C */	beq lbl_80A5BA34
/* 80A5BA2C  38 03 FF FF */	addi r0, r3, -1
/* 80A5BA30  B0 1F 09 4C */	sth r0, 0x94c(r31)
lbl_80A5BA34:
/* 80A5BA34  A8 7F 09 4E */	lha r3, 0x94e(r31)
/* 80A5BA38  2C 03 00 00 */	cmpwi r3, 0
/* 80A5BA3C  41 82 00 0C */	beq lbl_80A5BA48
/* 80A5BA40  38 03 FF FF */	addi r0, r3, -1
/* 80A5BA44  B0 1F 09 4E */	sth r0, 0x94e(r31)
lbl_80A5BA48:
/* 80A5BA48  7F E3 FB 78 */	mr r3, r31
/* 80A5BA4C  4B FF ED 8D */	bl action__FP12npc_ks_class
/* 80A5BA50  88 1F 09 0C */	lbz r0, 0x90c(r31)
/* 80A5BA54  7C 00 07 75 */	extsb. r0, r0
/* 80A5BA58  41 82 02 88 */	beq lbl_80A5BCE0
/* 80A5BA5C  38 61 00 50 */	addi r3, r1, 0x50
/* 80A5BA60  38 9F 09 1C */	addi r4, r31, 0x91c
/* 80A5BA64  38 BF 09 10 */	addi r5, r31, 0x910
/* 80A5BA68  4B 80 B0 CC */	b __mi__4cXyzCFRC3Vec
/* 80A5BA6C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80A5BA70  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5BA74  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A5BA78  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5BA7C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80A5BA80  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80A5BA84  38 61 00 74 */	addi r3, r1, 0x74
/* 80A5BA88  4B 8E B6 B0 */	b PSVECSquareMag
/* 80A5BA8C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5BA90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5BA94  40 81 00 58 */	ble lbl_80A5BAEC
/* 80A5BA98  FC 00 08 34 */	frsqrte f0, f1
/* 80A5BA9C  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A5BAA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5BAA4  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A5BAA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5BAAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5BAB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5BAB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5BAB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5BABC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5BAC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5BAC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5BAC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5BACC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5BAD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5BAD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5BAD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5BADC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5BAE0  FF E1 00 32 */	fmul f31, f1, f0
/* 80A5BAE4  FF E0 F8 18 */	frsp f31, f31
/* 80A5BAE8  48 00 00 90 */	b lbl_80A5BB78
lbl_80A5BAEC:
/* 80A5BAEC  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A5BAF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5BAF4  40 80 00 10 */	bge lbl_80A5BB04
/* 80A5BAF8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A5BAFC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80A5BB00  48 00 00 78 */	b lbl_80A5BB78
lbl_80A5BB04:
/* 80A5BB04  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A5BB08  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A5BB0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A5BB10  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A5BB14  7C 03 00 00 */	cmpw r3, r0
/* 80A5BB18  41 82 00 14 */	beq lbl_80A5BB2C
/* 80A5BB1C  40 80 00 40 */	bge lbl_80A5BB5C
/* 80A5BB20  2C 03 00 00 */	cmpwi r3, 0
/* 80A5BB24  41 82 00 20 */	beq lbl_80A5BB44
/* 80A5BB28  48 00 00 34 */	b lbl_80A5BB5C
lbl_80A5BB2C:
/* 80A5BB2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A5BB30  41 82 00 0C */	beq lbl_80A5BB3C
/* 80A5BB34  38 00 00 01 */	li r0, 1
/* 80A5BB38  48 00 00 28 */	b lbl_80A5BB60
lbl_80A5BB3C:
/* 80A5BB3C  38 00 00 02 */	li r0, 2
/* 80A5BB40  48 00 00 20 */	b lbl_80A5BB60
lbl_80A5BB44:
/* 80A5BB44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A5BB48  41 82 00 0C */	beq lbl_80A5BB54
/* 80A5BB4C  38 00 00 05 */	li r0, 5
/* 80A5BB50  48 00 00 10 */	b lbl_80A5BB60
lbl_80A5BB54:
/* 80A5BB54  38 00 00 03 */	li r0, 3
/* 80A5BB58  48 00 00 08 */	b lbl_80A5BB60
lbl_80A5BB5C:
/* 80A5BB5C  38 00 00 04 */	li r0, 4
lbl_80A5BB60:
/* 80A5BB60  2C 00 00 01 */	cmpwi r0, 1
/* 80A5BB64  40 82 00 10 */	bne lbl_80A5BB74
/* 80A5BB68  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A5BB6C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80A5BB70  48 00 00 08 */	b lbl_80A5BB78
lbl_80A5BB74:
/* 80A5BB74  FF E0 08 90 */	fmr f31, f1
lbl_80A5BB78:
/* 80A5BB78  38 61 00 44 */	addi r3, r1, 0x44
/* 80A5BB7C  38 9F 09 1C */	addi r4, r31, 0x91c
/* 80A5BB80  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80A5BB84  4B 80 AF B0 */	b __mi__4cXyzCFRC3Vec
/* 80A5BB88  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A5BB8C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5BB90  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80A5BB94  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5BB98  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A5BB9C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80A5BBA0  38 61 00 74 */	addi r3, r1, 0x74
/* 80A5BBA4  4B 8E B5 94 */	b PSVECSquareMag
/* 80A5BBA8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5BBAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5BBB0  40 81 00 58 */	ble lbl_80A5BC08
/* 80A5BBB4  FC 00 08 34 */	frsqrte f0, f1
/* 80A5BBB8  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A5BBBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5BBC0  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A5BBC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5BBC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5BBCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5BBD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5BBD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5BBD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5BBDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5BBE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5BBE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5BBE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5BBEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5BBF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5BBF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5BBF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5BBFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80A5BC00  FC 20 08 18 */	frsp f1, f1
/* 80A5BC04  48 00 00 88 */	b lbl_80A5BC8C
lbl_80A5BC08:
/* 80A5BC08  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A5BC0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5BC10  40 80 00 10 */	bge lbl_80A5BC20
/* 80A5BC14  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A5BC18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A5BC1C  48 00 00 70 */	b lbl_80A5BC8C
lbl_80A5BC20:
/* 80A5BC20  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A5BC24  80 81 00 08 */	lwz r4, 8(r1)
/* 80A5BC28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A5BC2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A5BC30  7C 03 00 00 */	cmpw r3, r0
/* 80A5BC34  41 82 00 14 */	beq lbl_80A5BC48
/* 80A5BC38  40 80 00 40 */	bge lbl_80A5BC78
/* 80A5BC3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5BC40  41 82 00 20 */	beq lbl_80A5BC60
/* 80A5BC44  48 00 00 34 */	b lbl_80A5BC78
lbl_80A5BC48:
/* 80A5BC48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A5BC4C  41 82 00 0C */	beq lbl_80A5BC58
/* 80A5BC50  38 00 00 01 */	li r0, 1
/* 80A5BC54  48 00 00 28 */	b lbl_80A5BC7C
lbl_80A5BC58:
/* 80A5BC58  38 00 00 02 */	li r0, 2
/* 80A5BC5C  48 00 00 20 */	b lbl_80A5BC7C
lbl_80A5BC60:
/* 80A5BC60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A5BC64  41 82 00 0C */	beq lbl_80A5BC70
/* 80A5BC68  38 00 00 05 */	li r0, 5
/* 80A5BC6C  48 00 00 10 */	b lbl_80A5BC7C
lbl_80A5BC70:
/* 80A5BC70  38 00 00 03 */	li r0, 3
/* 80A5BC74  48 00 00 08 */	b lbl_80A5BC7C
lbl_80A5BC78:
/* 80A5BC78  38 00 00 04 */	li r0, 4
lbl_80A5BC7C:
/* 80A5BC7C  2C 00 00 01 */	cmpwi r0, 1
/* 80A5BC80  40 82 00 0C */	bne lbl_80A5BC8C
/* 80A5BC84  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A5BC88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A5BC8C:
/* 80A5BC8C  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80A5BC90  EC 60 07 F2 */	fmuls f3, f0, f31
/* 80A5BC94  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80A5BC98  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80A5BC9C  40 81 00 08 */	ble lbl_80A5BCA4
/* 80A5BCA0  FC 60 00 90 */	fmr f3, f0
lbl_80A5BCA4:
/* 80A5BCA4  C0 5E 04 F8 */	lfs f2, 0x4f8(r30)
/* 80A5BCA8  EC 01 F8 24 */	fdivs f0, f1, f31
/* 80A5BCAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A5BCB0  FC 00 00 1E */	fctiwz f0, f0
/* 80A5BCB4  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80A5BCB8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A5BCBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A5BCC0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A5BCC4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A5BCC8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80A5BCCC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80A5BCD0  D0 1F 09 08 */	stfs f0, 0x908(r31)
/* 80A5BCD4  38 00 00 00 */	li r0, 0
/* 80A5BCD8  98 1F 09 0C */	stb r0, 0x90c(r31)
/* 80A5BCDC  48 00 00 14 */	b lbl_80A5BCF0
lbl_80A5BCE0:
/* 80A5BCE0  38 7F 09 08 */	addi r3, r31, 0x908
/* 80A5BCE4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80A5BCE8  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 80A5BCEC  4B 81 3D 94 */	b cLib_addCalc0__FPfff
lbl_80A5BCF0:
/* 80A5BCF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BCF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BCF8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80A5BCFC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80A5BD00  C0 1F 09 08 */	lfs f0, 0x908(r31)
/* 80A5BD04  EC 42 00 2A */	fadds f2, f2, f0
/* 80A5BD08  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80A5BD0C  4B 8E AB DC */	b PSMTXTrans
/* 80A5BD10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BD14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BD18  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80A5BD1C  4B 5B 07 18 */	b mDoMtx_YrotM__FPA4_fs
/* 80A5BD20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BD24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BD28  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80A5BD2C  4B 5B 06 70 */	b mDoMtx_XrotM__FPA4_fs
/* 80A5BD30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BD34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BD38  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80A5BD3C  4B 5B 07 90 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A5BD40  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80A5BD44  C0 5F 09 28 */	lfs f2, 0x928(r31)
/* 80A5BD48  FC 60 08 90 */	fmr f3, f1
/* 80A5BD4C  4B 5B 10 50 */	b transM__14mDoMtx_stack_cFfff
/* 80A5BD50  3B 7D 00 70 */	addi r27, r29, 0x70
/* 80A5BD54  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80A5BD58  FC 40 08 90 */	fmr f2, f1
/* 80A5BD5C  FC 60 08 90 */	fmr f3, f1
/* 80A5BD60  4B 5B 10 D8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80A5BD64  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80A5BD68  83 83 00 04 */	lwz r28, 4(r3)
/* 80A5BD6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BD70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BD74  38 9C 00 24 */	addi r4, r28, 0x24
/* 80A5BD78  4B 8E A7 38 */	b PSMTXCopy
/* 80A5BD7C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A5BD80  7C 03 07 74 */	extsb r3, r0
/* 80A5BD84  4B 5D 12 E8 */	b dComIfGp_getReverb__Fi
/* 80A5BD88  7C 65 1B 78 */	mr r5, r3
/* 80A5BD8C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80A5BD90  38 80 00 00 */	li r4, 0
/* 80A5BD94  4B 5B 53 1C */	b play__16mDoExt_McaMorfSOFUlSc
/* 80A5BD98  7F E3 FB 78 */	mr r3, r31
/* 80A5BD9C  4B FF DC F5 */	bl anm_se_set__FP12npc_ks_class
/* 80A5BDA0  88 1F 05 E4 */	lbz r0, 0x5e4(r31)
/* 80A5BDA4  7C 00 07 75 */	extsb. r0, r0
/* 80A5BDA8  41 82 00 10 */	beq lbl_80A5BDB8
/* 80A5BDAC  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 80A5BDB0  4B 5B 16 78 */	b play__14mDoExt_baseAnmFv
/* 80A5BDB4  48 00 00 2C */	b lbl_80A5BDE0
lbl_80A5BDB8:
/* 80A5BDB8  A8 1F 05 E2 */	lha r0, 0x5e2(r31)
/* 80A5BDBC  C8 3E 04 F0 */	lfd f1, 0x4f0(r30)
/* 80A5BDC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A5BDC4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A5BDC8  3C 00 43 30 */	lis r0, 0x4330
/* 80A5BDCC  90 01 00 80 */	stw r0, 0x80(r1)
/* 80A5BDD0  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80A5BDD4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A5BDD8  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 80A5BDDC  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80A5BDE0:
/* 80A5BDE0  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80A5BDE4  4B 5B 54 08 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80A5BDE8  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 80A5BDEC  2C 00 00 22 */	cmpwi r0, 0x22
/* 80A5BDF0  40 82 01 60 */	bne lbl_80A5BF50
/* 80A5BDF4  3C 60 80 A6 */	lis r3, s_kago_sub__FPvPv@ha
/* 80A5BDF8  38 63 B5 44 */	addi r3, r3, s_kago_sub__FPvPv@l
/* 80A5BDFC  7F E4 FB 78 */	mr r4, r31
/* 80A5BE00  4B 5C 55 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A5BE04  7C 7A 1B 79 */	or. r26, r3, r3
/* 80A5BE08  41 82 01 48 */	beq lbl_80A5BF50
/* 80A5BE0C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80A5BE10  80 63 00 04 */	lwz r3, 4(r3)
/* 80A5BE14  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A5BE18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A5BE1C  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 80A5BE20  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A5BE24  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A5BE28  4B 8E A6 88 */	b PSMTXCopy
/* 80A5BE2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BE30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BE34  38 80 F8 30 */	li r4, -2000
/* 80A5BE38  4B 5B 05 FC */	b mDoMtx_YrotM__FPA4_fs
/* 80A5BE3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BE40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BE44  38 80 C9 C8 */	li r4, -13880
/* 80A5BE48  4B 5B 05 54 */	b mDoMtx_XrotM__FPA4_fs
/* 80A5BE4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BE50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BE54  38 80 D1 98 */	li r4, -11880
/* 80A5BE58  4B 5B 06 74 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A5BE5C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80A5BE60  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 80A5BE64  FC 60 10 90 */	fmr f3, f2
/* 80A5BE68  4B 5B 0F 34 */	b transM__14mDoMtx_stack_cFfff
/* 80A5BE6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BE70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BE74  38 80 00 00 */	li r4, 0
/* 80A5BE78  4B 5B 05 BC */	b mDoMtx_YrotM__FPA4_fs
/* 80A5BE7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BE80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BE84  38 80 00 00 */	li r4, 0
/* 80A5BE88  4B 5B 05 14 */	b mDoMtx_XrotM__FPA4_fs
/* 80A5BE8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BE90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BE94  38 80 00 00 */	li r4, 0
/* 80A5BE98  4B 5B 06 34 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A5BE9C  38 00 00 01 */	li r0, 1
/* 80A5BEA0  98 1A 0B A2 */	stb r0, 0xba2(r26)
/* 80A5BEA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BEA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BEAC  7C 64 1B 78 */	mr r4, r3
/* 80A5BEB0  4B 8E A6 00 */	b PSMTXCopy
/* 80A5BEB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A5BEB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A5BEBC  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80A5BEC0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80A5BEC4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A5BEC8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A5BECC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A5BED0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A5BED4  D0 5A 04 D0 */	stfs f2, 0x4d0(r26)
/* 80A5BED8  D0 3A 04 D4 */	stfs f1, 0x4d4(r26)
/* 80A5BEDC  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80A5BEE0  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80A5BEE4  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80A5BEE8  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80A5BEEC  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80A5BEF0  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80A5BEF4  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80A5BEF8  80 9A 05 74 */	lwz r4, 0x574(r26)
/* 80A5BEFC  38 84 00 24 */	addi r4, r4, 0x24
/* 80A5BF00  4B 8E A5 B0 */	b PSMTXCopy
/* 80A5BF04  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80A5BF08  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80A5BF0C  41 82 00 44 */	beq lbl_80A5BF50
/* 80A5BF10  7F E3 FB 78 */	mr r3, r31
/* 80A5BF14  38 80 00 27 */	li r4, 0x27
/* 80A5BF18  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A5BF1C  38 A0 00 02 */	li r5, 2
/* 80A5BF20  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A5BF24  4B FE D2 81 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A5BF28  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050044@ha */
/* 80A5BF2C  38 03 00 44 */	addi r0, r3, 0x0044 /* 0x00050044@l */
/* 80A5BF30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A5BF34  38 7F 08 60 */	addi r3, r31, 0x860
/* 80A5BF38  38 81 00 10 */	addi r4, r1, 0x10
/* 80A5BF3C  38 A0 FF FF */	li r5, -1
/* 80A5BF40  81 9F 08 60 */	lwz r12, 0x860(r31)
/* 80A5BF44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A5BF48  7D 89 03 A6 */	mtctr r12
/* 80A5BF4C  4E 80 04 21 */	bctrl 
lbl_80A5BF50:
/* 80A5BF50  80 9F 0B FC */	lwz r4, 0xbfc(r31)
/* 80A5BF54  28 04 00 00 */	cmplwi r4, 0
/* 80A5BF58  41 82 00 20 */	beq lbl_80A5BF78
/* 80A5BF5C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80A5BF60  80 63 00 04 */	lwz r3, 4(r3)
/* 80A5BF64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A5BF68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A5BF6C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A5BF70  38 84 00 24 */	addi r4, r4, 0x24
/* 80A5BF74  4B 8E A5 3C */	b PSMTXCopy
lbl_80A5BF78:
/* 80A5BF78  7F E3 FB 78 */	mr r3, r31
/* 80A5BF7C  4B FF F6 99 */	bl kantera_sub__FP12npc_ks_class
/* 80A5BF80  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80A5BF84  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A5BF88  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A5BF8C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80A5BF90  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80A5BF94  80 84 00 00 */	lwz r4, 0(r4)
/* 80A5BF98  4B 8E A5 18 */	b PSMTXCopy
/* 80A5BF9C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5BFA0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5BFA4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5BFA8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80A5BFAC  88 1F 0C 17 */	lbz r0, 0xc17(r31)
/* 80A5BFB0  2C 00 00 03 */	cmpwi r0, 3
/* 80A5BFB4  41 82 00 38 */	beq lbl_80A5BFEC
/* 80A5BFB8  38 61 00 74 */	addi r3, r1, 0x74
/* 80A5BFBC  38 9F 05 38 */	addi r4, r31, 0x538
/* 80A5BFC0  4B 81 4F 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 80A5BFC4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80A5BFC8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80A5BFCC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80A5BFD0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80A5BFD4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80A5BFD8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80A5BFDC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80A5BFE0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A5BFE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5BFE8  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_80A5BFEC:
/* 80A5BFEC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80A5BFF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A5BFF4  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80A5BFF8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80A5BFFC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80A5C000  80 84 00 00 */	lwz r4, 0(r4)
/* 80A5C004  4B 8E A4 AC */	b PSMTXCopy
/* 80A5C008  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A5C00C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5C010  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5C014  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5C018  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80A5C01C  38 61 00 74 */	addi r3, r1, 0x74
/* 80A5C020  38 9F 06 14 */	addi r4, r31, 0x614
/* 80A5C024  4B 81 4E C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A5C028  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80A5C02C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A5C030  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 80A5C034  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80A5C038  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80A5C03C  80 84 00 00 */	lwz r4, 0(r4)
/* 80A5C040  4B 8E A4 70 */	b PSMTXCopy
/* 80A5C044  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80A5C048  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80A5C04C  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80A5C050  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A5C054  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5C058  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80A5C05C  38 61 00 74 */	addi r3, r1, 0x74
/* 80A5C060  38 81 00 68 */	addi r4, r1, 0x68
/* 80A5C064  4B 81 4E 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A5C068  38 61 00 38 */	addi r3, r1, 0x38
/* 80A5C06C  38 81 00 68 */	addi r4, r1, 0x68
/* 80A5C070  38 BF 06 14 */	addi r5, r31, 0x614
/* 80A5C074  4B 80 AA C0 */	b __mi__4cXyzCFRC3Vec
/* 80A5C078  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A5C07C  38 81 00 38 */	addi r4, r1, 0x38
/* 80A5C080  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80A5C084  4B 80 AB 00 */	b __ml__4cXyzCFf
/* 80A5C088  38 7F 06 14 */	addi r3, r31, 0x614
/* 80A5C08C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A5C090  7C 65 1B 78 */	mr r5, r3
/* 80A5C094  4B 8E AF FC */	b PSVECAdd
/* 80A5C098  88 7F 06 20 */	lbz r3, 0x620(r31)
/* 80A5C09C  7C 60 07 75 */	extsb. r0, r3
/* 80A5C0A0  41 82 02 5C */	beq lbl_80A5C2FC
/* 80A5C0A4  7C 60 07 74 */	extsb r0, r3
/* 80A5C0A8  2C 00 00 01 */	cmpwi r0, 1
/* 80A5C0AC  40 82 01 08 */	bne lbl_80A5C1B4
/* 80A5C0B0  C0 1F 06 24 */	lfs f0, 0x624(r31)
/* 80A5C0B4  FC 00 02 10 */	fabs f0, f0
/* 80A5C0B8  FC 60 00 18 */	frsp f3, f0
/* 80A5C0BC  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80A5C0C0  C0 3F 06 14 */	lfs f1, 0x614(r31)
/* 80A5C0C4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A5C0C8  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80A5C0CC  EC 60 18 2A */	fadds f3, f0, f3
/* 80A5C0D0  4B 81 39 6C */	b cLib_addCalc2__FPffff
/* 80A5C0D4  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80A5C0D8  FC 00 02 10 */	fabs f0, f0
/* 80A5C0DC  FC 60 00 18 */	frsp f3, f0
/* 80A5C0E0  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80A5C0E4  C0 3F 06 18 */	lfs f1, 0x618(r31)
/* 80A5C0E8  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A5C0EC  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80A5C0F0  EC 60 18 2A */	fadds f3, f0, f3
/* 80A5C0F4  38 63 00 04 */	addi r3, r3, 4
/* 80A5C0F8  4B 81 39 44 */	b cLib_addCalc2__FPffff
/* 80A5C0FC  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 80A5C100  FC 00 02 10 */	fabs f0, f0
/* 80A5C104  FC 60 00 18 */	frsp f3, f0
/* 80A5C108  3B 5D 00 4C */	addi r26, r29, 0x4c
/* 80A5C10C  3B 5A 00 08 */	addi r26, r26, 8
/* 80A5C110  7F 43 D3 78 */	mr r3, r26
/* 80A5C114  C0 3F 06 1C */	lfs f1, 0x61c(r31)
/* 80A5C118  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A5C11C  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80A5C120  EC 60 18 2A */	fadds f3, f0, f3
/* 80A5C124  4B 81 39 18 */	b cLib_addCalc2__FPffff
/* 80A5C128  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 80A5C12C  C0 1F 06 14 */	lfs f0, 0x614(r31)
/* 80A5C130  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A5C134  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80A5C138  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80A5C13C  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 80A5C140  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5C144  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80A5C148  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A5C14C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A5C150  EC 21 00 2A */	fadds f1, f1, f0
/* 80A5C154  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 80A5C158  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5C15C  4C 40 13 82 */	cror 2, 0, 2
/* 80A5C160  40 82 00 8C */	bne lbl_80A5C1EC
/* 80A5C164  38 00 00 02 */	li r0, 2
/* 80A5C168  98 1F 06 20 */	stb r0, 0x620(r31)
/* 80A5C16C  38 00 00 0A */	li r0, 0xa
/* 80A5C170  98 1F 06 21 */	stb r0, 0x621(r31)
/* 80A5C174  38 00 00 00 */	li r0, 0
/* 80A5C178  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A5C17C  98 03 09 2C */	stb r0, 0x92c(r3)
/* 80A5C180  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80A5C184  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A5C188  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80A5C18C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A5C190  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A5C194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5C198  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5C19C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80A5C1A0  38 80 00 02 */	li r4, 2
/* 80A5C1A4  38 A0 00 1F */	li r5, 0x1f
/* 80A5C1A8  38 C1 00 20 */	addi r6, r1, 0x20
/* 80A5C1AC  4B 61 38 78 */	b StartShock__12dVibration_cFii4cXyz
/* 80A5C1B0  48 00 00 3C */	b lbl_80A5C1EC
lbl_80A5C1B4:
/* 80A5C1B4  2C 00 00 02 */	cmpwi r0, 2
/* 80A5C1B8  40 82 00 24 */	bne lbl_80A5C1DC
/* 80A5C1BC  C0 1F 06 14 */	lfs f0, 0x614(r31)
/* 80A5C1C0  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 80A5C1C4  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80A5C1C8  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80A5C1CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A5C1D0  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 80A5C1D4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A5C1D8  48 00 00 14 */	b lbl_80A5C1EC
lbl_80A5C1DC:
/* 80A5C1DC  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80A5C1E0  38 9F 06 24 */	addi r4, r31, 0x624
/* 80A5C1E4  7C 65 1B 78 */	mr r5, r3
/* 80A5C1E8  4B 8E AE A8 */	b PSVECAdd
lbl_80A5C1EC:
/* 80A5C1EC  C0 3F 06 38 */	lfs f1, 0x638(r31)
/* 80A5C1F0  C0 1F 06 34 */	lfs f0, 0x634(r31)
/* 80A5C1F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5C1F8  D0 1F 06 38 */	stfs f0, 0x638(r31)
/* 80A5C1FC  C0 3F 06 34 */	lfs f1, 0x634(r31)
/* 80A5C200  C0 1E 05 04 */	lfs f0, 0x504(r30)
/* 80A5C204  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5C208  D0 1F 06 34 */	stfs f0, 0x634(r31)
/* 80A5C20C  C0 3F 06 38 */	lfs f1, 0x638(r31)
/* 80A5C210  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5C214  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5C218  40 80 00 08 */	bge lbl_80A5C220
/* 80A5C21C  D0 1F 06 38 */	stfs f0, 0x638(r31)
lbl_80A5C220:
/* 80A5C220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5C224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5C228  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 80A5C22C  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 80A5C230  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A5C234  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80A5C238  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A5C23C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A5C240  C0 23 00 04 */	lfs f1, 4(r3)
/* 80A5C244  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 80A5C248  EC 01 00 2A */	fadds f0, f1, f0
/* 80A5C24C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A5C250  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A5C254  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A5C258  4B FE CD A9 */	bl setPlayerPosAndAngle__FP4cXyzs
/* 80A5C25C  88 1F 06 20 */	lbz r0, 0x620(r31)
/* 80A5C260  2C 00 00 02 */	cmpwi r0, 2
/* 80A5C264  40 82 00 68 */	bne lbl_80A5C2CC
/* 80A5C268  A8 1F 06 04 */	lha r0, 0x604(r31)
/* 80A5C26C  2C 00 00 00 */	cmpwi r0, 0
/* 80A5C270  40 80 00 34 */	bge lbl_80A5C2A4
/* 80A5C274  A8 1F 06 02 */	lha r0, 0x602(r31)
/* 80A5C278  2C 00 00 00 */	cmpwi r0, 0
/* 80A5C27C  40 80 00 28 */	bge lbl_80A5C2A4
/* 80A5C280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5C284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5C288  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80A5C28C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80A5C290  B0 03 4F A4 */	sth r0, 0x4fa4(r3)
/* 80A5C294  38 00 00 01 */	li r0, 1
/* 80A5C298  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 80A5C29C  38 00 00 02 */	li r0, 2
/* 80A5C2A0  98 03 5E 57 */	stb r0, 0x5e57(r3)
lbl_80A5C2A4:
/* 80A5C2A4  38 00 00 01 */	li r0, 1
/* 80A5C2A8  90 1A 06 0C */	stw r0, 0x60c(r26)
/* 80A5C2AC  38 7F 06 10 */	addi r3, r31, 0x610
/* 80A5C2B0  A8 1F 06 02 */	lha r0, 0x602(r31)
/* 80A5C2B4  54 00 08 3C */	slwi r0, r0, 1
/* 80A5C2B8  7C 04 07 34 */	extsh r4, r0
/* 80A5C2BC  38 A0 00 01 */	li r5, 1
/* 80A5C2C0  38 C0 0F A0 */	li r6, 0xfa0
/* 80A5C2C4  4B 81 43 44 */	b cLib_addCalcAngleS2__FPssss
/* 80A5C2C8  48 00 00 20 */	b lbl_80A5C2E8
lbl_80A5C2CC:
/* 80A5C2CC  38 00 00 00 */	li r0, 0
/* 80A5C2D0  90 1A 06 0C */	stw r0, 0x60c(r26)
/* 80A5C2D4  38 7F 06 10 */	addi r3, r31, 0x610
/* 80A5C2D8  38 80 27 10 */	li r4, 0x2710
/* 80A5C2DC  38 A0 00 04 */	li r5, 4
/* 80A5C2E0  38 C0 0F A0 */	li r6, 0xfa0
/* 80A5C2E4  4B 81 43 24 */	b cLib_addCalcAngleS2__FPssss
lbl_80A5C2E8:
/* 80A5C2E8  88 1F 06 20 */	lbz r0, 0x620(r31)
/* 80A5C2EC  7C 00 07 75 */	extsb. r0, r0
/* 80A5C2F0  41 82 00 0C */	beq lbl_80A5C2FC
/* 80A5C2F4  A8 1F 06 10 */	lha r0, 0x610(r31)
/* 80A5C2F8  90 1A 06 10 */	stw r0, 0x610(r26)
lbl_80A5C2FC:
/* 80A5C2FC  88 7F 06 21 */	lbz r3, 0x621(r31)
/* 80A5C300  7C 60 07 75 */	extsb. r0, r3
/* 80A5C304  41 82 00 0C */	beq lbl_80A5C310
/* 80A5C308  38 03 FF FF */	addi r0, r3, -1
/* 80A5C30C  98 1F 06 21 */	stb r0, 0x621(r31)
lbl_80A5C310:
/* 80A5C310  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A5C314  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A5C318  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80A5C31C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A5C320  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A5C324  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A5C328  88 1F 0A EC */	lbz r0, 0xaec(r31)
/* 80A5C32C  7C 00 07 75 */	extsb. r0, r0
/* 80A5C330  40 82 00 14 */	bne lbl_80A5C344
/* 80A5C334  80 1F 09 B8 */	lwz r0, 0x9b8(r31)
/* 80A5C338  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A5C33C  90 1F 09 B8 */	stw r0, 0x9b8(r31)
/* 80A5C340  48 00 00 10 */	b lbl_80A5C350
lbl_80A5C344:
/* 80A5C344  80 1F 09 B8 */	lwz r0, 0x9b8(r31)
/* 80A5C348  60 00 00 01 */	ori r0, r0, 1
/* 80A5C34C  90 1F 09 B8 */	stw r0, 0x9b8(r31)
lbl_80A5C350:
/* 80A5C350  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 80A5C354  38 81 00 68 */	addi r4, r1, 0x68
/* 80A5C358  4B 81 2E 84 */	b SetC__8cM3dGCylFRC4cXyz
/* 80A5C35C  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 80A5C360  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80A5C364  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80A5C368  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A5C36C  4B 81 2E 94 */	b SetR__8cM3dGCylFf
/* 80A5C370  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 80A5C374  C0 3E 04 14 */	lfs f1, 0x414(r30)
/* 80A5C378  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80A5C37C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A5C380  4B 81 2E 78 */	b SetH__8cM3dGCylFf
/* 80A5C384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A5C388  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A5C38C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A5C390  38 9F 09 8C */	addi r4, r31, 0x98c
/* 80A5C394  4B 80 88 14 */	b Set__4cCcSFP8cCcD_Obj
/* 80A5C398  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A5C39C  28 00 00 00 */	cmplwi r0, 0
/* 80A5C3A0  40 82 00 10 */	bne lbl_80A5C3B0
/* 80A5C3A4  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A5C3A8  4B FF 3C ED */	bl demo_camera__FP12npc_ks_class
/* 80A5C3AC  48 00 00 14 */	b lbl_80A5C3C0
lbl_80A5C3B0:
/* 80A5C3B0  28 00 00 04 */	cmplwi r0, 4
/* 80A5C3B4  41 80 00 0C */	blt lbl_80A5C3C0
/* 80A5C3B8  7F E3 FB 78 */	mr r3, r31
/* 80A5C3BC  4B FF 3C D9 */	bl demo_camera__FP12npc_ks_class
lbl_80A5C3C0:
/* 80A5C3C0  38 60 00 01 */	li r3, 1
lbl_80A5C3C4:
/* 80A5C3C4  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80A5C3C8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80A5C3CC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80A5C3D0  4B 90 5E 4C */	b _restgpr_26
/* 80A5C3D4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80A5C3D8  7C 08 03 A6 */	mtlr r0
/* 80A5C3DC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80A5C3E0  4E 80 00 20 */	blr 
