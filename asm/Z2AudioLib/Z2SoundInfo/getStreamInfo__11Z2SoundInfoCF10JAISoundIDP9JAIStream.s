lbl_802BB8E0:
/* 802BB8E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BB8E4  7C 08 02 A6 */	mflr r0
/* 802BB8E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BB8EC  39 61 00 30 */	addi r11, r1, 0x30
/* 802BB8F0  48 0A 68 E1 */	bl _savegpr_26
/* 802BB8F4  7C 9B 23 78 */	mr r27, r4
/* 802BB8F8  7C BA 2B 78 */	mr r26, r5
/* 802BB8FC  80 04 00 00 */	lwz r0, 0(r4)
/* 802BB900  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BB904  38 81 00 10 */	addi r4, r1, 0x10
/* 802BB908  48 00 02 41 */	bl getSoundInfo___11Z2SoundInfoCF10JAISoundIDP8JAISound
/* 802BB90C  80 1B 00 00 */	lwz r0, 0(r27)
/* 802BB910  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BB914  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BB918  38 81 00 0C */	addi r4, r1, 0xc
/* 802BB91C  4B FE B8 45 */	bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BB920  54 60 06 36 */	rlwinm r0, r3, 0, 0x18, 0x1b
/* 802BB924  2C 00 00 70 */	cmpwi r0, 0x70
/* 802BB928  41 82 00 08 */	beq lbl_802BB930
/* 802BB92C  48 00 00 CC */	b lbl_802BB9F8
lbl_802BB930:
/* 802BB930  80 1B 00 00 */	lwz r0, 0(r27)
/* 802BB934  90 01 00 08 */	stw r0, 8(r1)
/* 802BB938  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BB93C  38 81 00 08 */	addi r4, r1, 8
/* 802BB940  4B FE B9 4D */	bl getData__13JAUSoundTableCF10JAISoundID
/* 802BB944  A3 A3 00 02 */	lhz r29, 2(r3)
/* 802BB948  7F 43 D3 78 */	mr r3, r26
/* 802BB94C  81 9A 00 00 */	lwz r12, 0(r26)
/* 802BB950  81 8C 00 08 */	lwz r12, 8(r12)
/* 802BB954  7D 89 03 A6 */	mtctr r12
/* 802BB958  4E 80 04 21 */	bctrl 
/* 802BB95C  7C 7E 1B 78 */	mr r30, r3
/* 802BB960  3B 80 00 00 */	li r28, 0
/* 802BB964  83 E2 C0 90 */	lwz r31, STRM_CH_SHIFT__20JAUStdSoundTableType(r2)
/* 802BB968  48 00 00 80 */	b lbl_802BB9E8
lbl_802BB96C:
/* 802BB96C  57 BB 07 BF */	clrlwi. r27, r29, 0x1e
/* 802BB970  41 82 00 68 */	beq lbl_802BB9D8
/* 802BB974  7F 43 D3 78 */	mr r3, r26
/* 802BB978  7F 84 E3 78 */	mr r4, r28
/* 802BB97C  81 9A 00 00 */	lwz r12, 0(r26)
/* 802BB980  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802BB984  7D 89 03 A6 */	mtctr r12
/* 802BB988  4E 80 04 21 */	bctrl 
/* 802BB98C  28 03 00 00 */	cmplwi r3, 0
/* 802BB990  41 82 00 48 */	beq lbl_802BB9D8
/* 802BB994  2C 1B 00 02 */	cmpwi r27, 2
/* 802BB998  41 82 00 2C */	beq lbl_802BB9C4
/* 802BB99C  40 80 00 10 */	bge lbl_802BB9AC
/* 802BB9A0  2C 1B 00 01 */	cmpwi r27, 1
/* 802BB9A4  40 80 00 14 */	bge lbl_802BB9B8
/* 802BB9A8  48 00 00 30 */	b lbl_802BB9D8
lbl_802BB9AC:
/* 802BB9AC  2C 1B 00 04 */	cmpwi r27, 4
/* 802BB9B0  40 80 00 28 */	bge lbl_802BB9D8
/* 802BB9B4  48 00 00 1C */	b lbl_802BB9D0
lbl_802BB9B8:
/* 802BB9B8  C0 02 C0 94 */	lfs f0, lit_1010(r2)
/* 802BB9BC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BB9C0  48 00 00 18 */	b lbl_802BB9D8
lbl_802BB9C4:
/* 802BB9C4  C0 02 C0 7C */	lfs f0, lit_968(r2)
/* 802BB9C8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BB9CC  48 00 00 0C */	b lbl_802BB9D8
lbl_802BB9D0:
/* 802BB9D0  C0 02 C0 80 */	lfs f0, lit_969(r2)
/* 802BB9D4  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_802BB9D8:
/* 802BB9D8  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 802BB9DC  7C 00 FE 30 */	sraw r0, r0, r31
/* 802BB9E0  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 802BB9E4  3B 9C 00 01 */	addi r28, r28, 1
lbl_802BB9E8:
/* 802BB9E8  7C 1C F0 00 */	cmpw r28, r30
/* 802BB9EC  40 80 00 0C */	bge lbl_802BB9F8
/* 802BB9F0  57 A0 04 3F */	clrlwi. r0, r29, 0x10
/* 802BB9F4  40 82 FF 78 */	bne lbl_802BB96C
lbl_802BB9F8:
/* 802BB9F8  39 61 00 30 */	addi r11, r1, 0x30
/* 802BB9FC  48 0A 68 21 */	bl _restgpr_26
/* 802BBA00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BBA04  7C 08 03 A6 */	mtlr r0
/* 802BBA08  38 21 00 30 */	addi r1, r1, 0x30
/* 802BBA0C  4E 80 00 20 */	blr 
