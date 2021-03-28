lbl_802FF75C:
/* 802FF75C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802FF760  7C 08 02 A6 */	mflr r0
/* 802FF764  90 01 00 94 */	stw r0, 0x94(r1)
/* 802FF768  39 61 00 90 */	addi r11, r1, 0x90
/* 802FF76C  48 06 2A 61 */	bl _savegpr_25
/* 802FF770  7C 7B 1B 78 */	mr r27, r3
/* 802FF774  7C 99 23 78 */	mr r25, r4
/* 802FF778  7C BC 2B 78 */	mr r28, r5
/* 802FF77C  7C DD 33 78 */	mr r29, r6
/* 802FF780  7C FA 3B 78 */	mr r26, r7
/* 802FF784  4B FF 64 75 */	bl __ct__7J2DPaneFv
/* 802FF788  3C 60 80 3D */	lis r3, __vt__10J2DTextBox@ha
/* 802FF78C  38 03 D3 28 */	addi r0, r3, __vt__10J2DTextBox@l
/* 802FF790  90 1B 00 00 */	stw r0, 0(r27)
/* 802FF794  38 60 00 00 */	li r3, 0
/* 802FF798  90 7B 01 00 */	stw r3, 0x100(r27)
/* 802FF79C  38 00 FF FF */	li r0, -1
/* 802FF7A0  90 1B 01 04 */	stw r0, 0x104(r27)
/* 802FF7A4  90 1B 01 08 */	stw r0, 0x108(r27)
/* 802FF7A8  90 7B 01 24 */	stw r3, 0x124(r27)
/* 802FF7AC  90 1B 01 28 */	stw r0, 0x128(r27)
/* 802FF7B0  90 1B 01 2C */	stw r0, 0x12c(r27)
/* 802FF7B4  7F 83 E3 78 */	mr r3, r28
/* 802FF7B8  81 9C 00 00 */	lwz r12, 0(r28)
/* 802FF7BC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802FF7C0  7D 89 03 A6 */	mtctr r12
/* 802FF7C4  4E 80 04 21 */	bctrl 
/* 802FF7C8  7C 7F 1B 78 */	mr r31, r3
/* 802FF7CC  7F 83 E3 78 */	mr r3, r28
/* 802FF7D0  38 81 00 28 */	addi r4, r1, 0x28
/* 802FF7D4  38 A0 00 08 */	li r5, 8
/* 802FF7D8  4B FD CA C1 */	bl read__14JSUInputStreamFPvl
/* 802FF7DC  3C 60 54 42 */	lis r3, 0x5442 /* 0x54425831@ha */
/* 802FF7E0  38 03 58 31 */	addi r0, r3, 0x5831 /* 0x54425831@l */
/* 802FF7E4  90 1B 00 08 */	stw r0, 8(r27)
/* 802FF7E8  7F 83 E3 78 */	mr r3, r28
/* 802FF7EC  81 9C 00 00 */	lwz r12, 0(r28)
/* 802FF7F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802FF7F4  7D 89 03 A6 */	mtctr r12
/* 802FF7F8  4E 80 04 21 */	bctrl 
/* 802FF7FC  7C 7E 1B 78 */	mr r30, r3
/* 802FF800  7F 83 E3 78 */	mr r3, r28
/* 802FF804  38 81 00 20 */	addi r4, r1, 0x20
/* 802FF808  38 A0 00 08 */	li r5, 8
/* 802FF80C  4B FD CC 4D */	bl peek__20JSURandomInputStreamFPvl
/* 802FF810  7F 63 DB 78 */	mr r3, r27
/* 802FF814  7F 24 CB 78 */	mr r4, r25
/* 802FF818  7F 85 E3 78 */	mr r5, r28
/* 802FF81C  4B FF 82 FD */	bl makePaneExStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream
/* 802FF820  7F 83 E3 78 */	mr r3, r28
/* 802FF824  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FF828  7C 9E 02 14 */	add r4, r30, r0
/* 802FF82C  38 A0 00 00 */	li r5, 0
/* 802FF830  4B FD CC AD */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802FF834  7F 83 E3 78 */	mr r3, r28
/* 802FF838  38 81 00 30 */	addi r4, r1, 0x30
/* 802FF83C  38 A0 00 20 */	li r5, 0x20
/* 802FF840  4B FD CA 59 */	bl read__14JSUInputStreamFPvl
/* 802FF844  3B C0 00 00 */	li r30, 0
/* 802FF848  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 802FF84C  28 00 FF FF */	cmplwi r0, 0xffff
/* 802FF850  41 82 00 54 */	beq lbl_802FF8A4
/* 802FF854  1C 00 00 88 */	mulli r0, r0, 0x88
/* 802FF858  7F DA 02 15 */	add. r30, r26, r0
/* 802FF85C  41 82 00 48 */	beq lbl_802FF8A4
/* 802FF860  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FF864  28 03 00 00 */	cmplwi r3, 0
/* 802FF868  41 82 00 34 */	beq lbl_802FF89C
/* 802FF86C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF870  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 802FF874  7D 89 03 A6 */	mtctr r12
/* 802FF878  4E 80 04 21 */	bctrl 
/* 802FF87C  28 03 00 00 */	cmplwi r3, 0
/* 802FF880  41 82 00 1C */	beq lbl_802FF89C
/* 802FF884  90 7B 01 00 */	stw r3, 0x100(r27)
/* 802FF888  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FF88C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FF890  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 802FF894  7D 89 03 A6 */	mtctr r12
/* 802FF898  4E 80 04 21 */	bctrl 
lbl_802FF89C:
/* 802FF89C  88 1E 00 13 */	lbz r0, 0x13(r30)
/* 802FF8A0  98 1B 00 B2 */	stb r0, 0xb2(r27)
lbl_802FF8A4:
/* 802FF8A4  A8 01 00 36 */	lha r0, 0x36(r1)
/* 802FF8A8  C8 22 C8 88 */	lfd f1, lit_1662(r2)
/* 802FF8AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FF8B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 802FF8B4  3C 60 43 30 */	lis r3, 0x4330
/* 802FF8B8  90 61 00 50 */	stw r3, 0x50(r1)
/* 802FF8BC  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 802FF8C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FF8C4  D0 1B 01 14 */	stfs f0, 0x114(r27)
/* 802FF8C8  A8 01 00 38 */	lha r0, 0x38(r1)
/* 802FF8CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FF8D0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802FF8D4  90 61 00 58 */	stw r3, 0x58(r1)
/* 802FF8D8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 802FF8DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FF8E0  D0 1B 01 18 */	stfs f0, 0x118(r27)
/* 802FF8E4  A0 01 00 3A */	lhz r0, 0x3a(r1)
/* 802FF8E8  C8 22 C8 90 */	lfd f1, lit_1665(r2)
/* 802FF8EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 802FF8F0  90 61 00 60 */	stw r3, 0x60(r1)
/* 802FF8F4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 802FF8F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FF8FC  D0 1B 01 1C */	stfs f0, 0x11c(r27)
/* 802FF900  A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 802FF904  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802FF908  90 61 00 68 */	stw r3, 0x68(r1)
/* 802FF90C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 802FF910  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FF914  D0 1B 01 20 */	stfs f0, 0x120(r27)
/* 802FF918  88 01 00 3E */	lbz r0, 0x3e(r1)
/* 802FF91C  54 03 10 3A */	slwi r3, r0, 2
/* 802FF920  88 01 00 3F */	lbz r0, 0x3f(r1)
/* 802FF924  7C 60 03 78 */	or r0, r3, r0
/* 802FF928  98 1B 01 30 */	stb r0, 0x130(r27)
/* 802FF92C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 802FF930  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FF934  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 802FF938  98 1B 01 04 */	stb r0, 0x104(r27)
/* 802FF93C  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 802FF940  98 1B 01 05 */	stb r0, 0x105(r27)
/* 802FF944  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 802FF948  98 1B 01 06 */	stb r0, 0x106(r27)
/* 802FF94C  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 802FF950  98 1B 01 07 */	stb r0, 0x107(r27)
/* 802FF954  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FF958  90 01 00 18 */	stw r0, 0x18(r1)
/* 802FF95C  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802FF960  98 1B 01 08 */	stb r0, 0x108(r27)
/* 802FF964  88 01 00 19 */	lbz r0, 0x19(r1)
/* 802FF968  98 1B 01 09 */	stb r0, 0x109(r27)
/* 802FF96C  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 802FF970  98 1B 01 0A */	stb r0, 0x10a(r27)
/* 802FF974  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 802FF978  98 1B 01 0B */	stb r0, 0x10b(r27)
/* 802FF97C  7F 63 DB 78 */	mr r3, r27
/* 802FF980  88 81 00 48 */	lbz r4, 0x48(r1)
/* 802FF984  30 04 FF FF */	addic r0, r4, -1
/* 802FF988  7C 00 21 10 */	subfe r0, r0, r4
/* 802FF98C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802FF990  81 9B 00 00 */	lwz r12, 0(r27)
/* 802FF994  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802FF998  7D 89 03 A6 */	mtctr r12
/* 802FF99C  4E 80 04 21 */	bctrl 
/* 802FF9A0  3B 40 00 00 */	li r26, 0
/* 802FF9A4  57 A0 01 8D */	rlwinm. r0, r29, 0, 6, 6
/* 802FF9A8  40 82 00 24 */	bne lbl_802FF9CC
/* 802FF9AC  A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 802FF9B0  7C 1A 03 78 */	mr r26, r0
/* 802FF9B4  7C 00 07 34 */	extsh r0, r0
/* 802FF9B8  2C 00 FF FF */	cmpwi r0, -1
/* 802FF9BC  40 82 00 10 */	bne lbl_802FF9CC
/* 802FF9C0  A0 61 00 4E */	lhz r3, 0x4e(r1)
/* 802FF9C4  38 03 00 01 */	addi r0, r3, 1
/* 802FF9C8  54 1A 04 3E */	clrlwi r26, r0, 0x10
lbl_802FF9CC:
/* 802FF9CC  38 00 00 00 */	li r0, 0
/* 802FF9D0  B0 1B 01 32 */	sth r0, 0x132(r27)
/* 802FF9D4  90 1B 01 24 */	stw r0, 0x124(r27)
/* 802FF9D8  57 43 04 3F */	clrlwi. r3, r26, 0x10
/* 802FF9DC  41 82 00 0C */	beq lbl_802FF9E8
/* 802FF9E0  4B FC F2 E5 */	bl __nwa__FUl
/* 802FF9E4  90 7B 01 24 */	stw r3, 0x124(r27)
lbl_802FF9E8:
/* 802FF9E8  80 1B 01 24 */	lwz r0, 0x124(r27)
/* 802FF9EC  28 00 00 00 */	cmplwi r0, 0
/* 802FF9F0  41 82 00 40 */	beq lbl_802FFA30
/* 802FF9F4  B3 5B 01 32 */	sth r26, 0x132(r27)
/* 802FF9F8  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 802FF9FC  38 03 FF FF */	addi r0, r3, -1
/* 802FFA00  A3 41 00 4E */	lhz r26, 0x4e(r1)
/* 802FFA04  7C 00 D0 00 */	cmpw r0, r26
/* 802FFA08  40 80 00 08 */	bge lbl_802FFA10
/* 802FFA0C  54 1A 04 3E */	clrlwi r26, r0, 0x10
lbl_802FFA10:
/* 802FFA10  7F 83 E3 78 */	mr r3, r28
/* 802FFA14  80 9B 01 24 */	lwz r4, 0x124(r27)
/* 802FFA18  57 45 04 3E */	clrlwi r5, r26, 0x10
/* 802FFA1C  4B FD CA 3D */	bl peek__20JSURandomInputStreamFPvl
/* 802FFA20  38 80 00 00 */	li r4, 0
/* 802FFA24  80 7B 01 24 */	lwz r3, 0x124(r27)
/* 802FFA28  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 802FFA2C  7C 83 01 AE */	stbx r4, r3, r0
lbl_802FFA30:
/* 802FFA30  7F 83 E3 78 */	mr r3, r28
/* 802FFA34  A0 81 00 4E */	lhz r4, 0x4e(r1)
/* 802FFA38  81 9C 00 00 */	lwz r12, 0(r28)
/* 802FFA3C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802FFA40  7D 89 03 A6 */	mtctr r12
/* 802FFA44  4E 80 04 21 */	bctrl 
/* 802FFA48  7F 83 E3 78 */	mr r3, r28
/* 802FFA4C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802FFA50  7C 9F 02 14 */	add r4, r31, r0
/* 802FFA54  38 A0 00 00 */	li r5, 0
/* 802FFA58  4B FD CA 85 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802FFA5C  38 00 00 00 */	li r0, 0
/* 802FFA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FFA64  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802FFA68  98 1B 01 2C */	stb r0, 0x12c(r27)
/* 802FFA6C  88 01 00 15 */	lbz r0, 0x15(r1)
/* 802FFA70  98 1B 01 2D */	stb r0, 0x12d(r27)
/* 802FFA74  88 01 00 16 */	lbz r0, 0x16(r1)
/* 802FFA78  98 1B 01 2E */	stb r0, 0x12e(r27)
/* 802FFA7C  88 01 00 17 */	lbz r0, 0x17(r1)
/* 802FFA80  98 1B 01 2F */	stb r0, 0x12f(r27)
/* 802FFA84  38 00 FF FF */	li r0, -1
/* 802FFA88  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FFA8C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802FFA90  98 1B 01 28 */	stb r0, 0x128(r27)
/* 802FFA94  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802FFA98  98 1B 01 29 */	stb r0, 0x129(r27)
/* 802FFA9C  88 01 00 12 */	lbz r0, 0x12(r1)
/* 802FFAA0  98 1B 01 2A */	stb r0, 0x12a(r27)
/* 802FFAA4  88 01 00 13 */	lbz r0, 0x13(r1)
/* 802FFAA8  98 1B 01 2B */	stb r0, 0x12b(r27)
/* 802FFAAC  28 1E 00 00 */	cmplwi r30, 0
/* 802FFAB0  41 82 00 E4 */	beq lbl_802FFB94
/* 802FFAB4  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FFAB8  28 03 00 00 */	cmplwi r3, 0
/* 802FFABC  41 82 00 D8 */	beq lbl_802FFB94
/* 802FFAC0  81 83 00 00 */	lwz r12, 0(r3)
/* 802FFAC4  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 802FFAC8  7D 89 03 A6 */	mtctr r12
/* 802FFACC  4E 80 04 21 */	bctrl 
/* 802FFAD0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802FFAD4  28 00 00 01 */	cmplwi r0, 1
/* 802FFAD8  41 82 00 BC */	beq lbl_802FFB94
/* 802FFADC  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FFAE0  38 80 00 00 */	li r4, 0
/* 802FFAE4  81 83 00 00 */	lwz r12, 0(r3)
/* 802FFAE8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802FFAEC  7D 89 03 A6 */	mtctr r12
/* 802FFAF0  4E 80 04 21 */	bctrl 
/* 802FFAF4  AB 83 00 00 */	lha r28, 0(r3)
/* 802FFAF8  AB A3 00 02 */	lha r29, 2(r3)
/* 802FFAFC  AB E3 00 04 */	lha r31, 4(r3)
/* 802FFB00  AB 43 00 06 */	lha r26, 6(r3)
/* 802FFB04  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802FFB08  38 80 00 01 */	li r4, 1
/* 802FFB0C  81 83 00 00 */	lwz r12, 0(r3)
/* 802FFB10  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802FFB14  7D 89 03 A6 */	mtctr r12
/* 802FFB18  4E 80 04 21 */	bctrl 
/* 802FFB1C  A8 83 00 00 */	lha r4, 0(r3)
/* 802FFB20  A8 A3 00 02 */	lha r5, 2(r3)
/* 802FFB24  A8 C3 00 04 */	lha r6, 4(r3)
/* 802FFB28  A8 63 00 06 */	lha r3, 6(r3)
/* 802FFB2C  57 A0 82 1E */	rlwinm r0, r29, 0x10, 8, 0xf
/* 802FFB30  53 80 C0 0E */	rlwimi r0, r28, 0x18, 0, 7
/* 802FFB34  53 E0 44 2E */	rlwimi r0, r31, 8, 0x10, 0x17
/* 802FFB38  53 40 06 3E */	rlwimi r0, r26, 0, 0x18, 0x1f
/* 802FFB3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FFB40  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802FFB44  98 1B 01 2C */	stb r0, 0x12c(r27)
/* 802FFB48  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802FFB4C  98 1B 01 2D */	stb r0, 0x12d(r27)
/* 802FFB50  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802FFB54  98 1B 01 2E */	stb r0, 0x12e(r27)
/* 802FFB58  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802FFB5C  98 1B 01 2F */	stb r0, 0x12f(r27)
/* 802FFB60  54 A0 82 1E */	rlwinm r0, r5, 0x10, 8, 0xf
/* 802FFB64  50 80 C0 0E */	rlwimi r0, r4, 0x18, 0, 7
/* 802FFB68  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 802FFB6C  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 802FFB70  90 01 00 08 */	stw r0, 8(r1)
/* 802FFB74  88 01 00 08 */	lbz r0, 8(r1)
/* 802FFB78  98 1B 01 28 */	stb r0, 0x128(r27)
/* 802FFB7C  88 01 00 09 */	lbz r0, 9(r1)
/* 802FFB80  98 1B 01 29 */	stb r0, 0x129(r27)
/* 802FFB84  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802FFB88  98 1B 01 2A */	stb r0, 0x12a(r27)
/* 802FFB8C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802FFB90  98 1B 01 2B */	stb r0, 0x12b(r27)
lbl_802FFB94:
/* 802FFB94  C0 02 C8 80 */	lfs f0, lit_1660(r2)
/* 802FFB98  D0 1B 01 0C */	stfs f0, 0x10c(r27)
/* 802FFB9C  D0 1B 01 10 */	stfs f0, 0x110(r27)
/* 802FFBA0  38 00 00 01 */	li r0, 1
/* 802FFBA4  98 1B 01 31 */	stb r0, 0x131(r27)
/* 802FFBA8  7F 63 DB 78 */	mr r3, r27
/* 802FFBAC  39 61 00 90 */	addi r11, r1, 0x90
/* 802FFBB0  48 06 26 69 */	bl _restgpr_25
/* 802FFBB4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802FFBB8  7C 08 03 A6 */	mtlr r0
/* 802FFBBC  38 21 00 90 */	addi r1, r1, 0x90
/* 802FFBC0  4E 80 00 20 */	blr 
