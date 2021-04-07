lbl_80201404:
/* 80201404  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80201408  7C 08 02 A6 */	mflr r0
/* 8020140C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80201410  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80201414  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80201418  39 61 00 70 */	addi r11, r1, 0x70
/* 8020141C  48 16 0D 85 */	bl __save_gpr
/* 80201420  7C 6F 1B 78 */	mr r15, r3
/* 80201424  7C 8E 23 78 */	mr r14, r4
/* 80201428  7C B1 2B 78 */	mr r17, r5
/* 8020142C  7C D2 33 78 */	mr r18, r6
/* 80201430  7C F3 3B 78 */	mr r19, r7
/* 80201434  7D 14 43 78 */	mr r20, r8
/* 80201438  99 21 00 08 */	stb r9, 8(r1)
/* 8020143C  99 41 00 09 */	stb r10, 9(r1)
/* 80201440  8A E1 00 8B */	lbz r23, 0x8b(r1)
/* 80201444  8B 01 00 8F */	lbz r24, 0x8f(r1)
/* 80201448  8B 21 00 93 */	lbz r25, 0x93(r1)
/* 8020144C  8B 41 00 97 */	lbz r26, 0x97(r1)
/* 80201450  8B 61 00 9B */	lbz r27, 0x9b(r1)
/* 80201454  8B 81 00 9F */	lbz r28, 0x9f(r1)
/* 80201458  8B A1 00 A3 */	lbz r29, 0xa3(r1)
/* 8020145C  8B C1 00 A7 */	lbz r30, 0xa7(r1)
/* 80201460  8A 01 00 AB */	lbz r16, 0xab(r1)
/* 80201464  48 00 48 3D */	bl updateButton__14dMeterButton_cFv
/* 80201468  7D E3 7B 78 */	mr r3, r15
/* 8020146C  7D C4 73 78 */	mr r4, r14
/* 80201470  48 00 55 09 */	bl updateText__14dMeterButton_cFUl
/* 80201474  38 00 00 00 */	li r0, 0
/* 80201478  B0 0F 04 B0 */	sth r0, 0x4b0(r15)
/* 8020147C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80201480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80201484  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80201488  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 8020148C  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 80201490  A0 84 00 62 */	lhz r4, 0x62(r4)
/* 80201494  4B E3 35 29 */	bl isEventBit__11dSv_event_cCFUs
/* 80201498  2C 03 00 00 */	cmpwi r3, 0
/* 8020149C  41 82 00 24 */	beq lbl_802014C0
/* 802014A0  48 03 6D 8D */	bl getStatus__12dMsgObject_cFv
/* 802014A4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802014A8  20 60 00 01 */	subfic r3, r0, 1
/* 802014AC  30 03 FF FF */	addic r0, r3, -1
/* 802014B0  7C 00 19 10 */	subfe r0, r0, r3
/* 802014B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802014B8  40 82 00 08 */	bne lbl_802014C0
/* 802014BC  55 CE 04 A0 */	rlwinm r14, r14, 0, 0x12, 0x10
lbl_802014C0:
/* 802014C0  7D E3 7B 78 */	mr r3, r15
/* 802014C4  7D C4 73 78 */	mr r4, r14
/* 802014C8  7E 25 8B 78 */	mr r5, r17
/* 802014CC  48 00 1D F9 */	bl alphaAnimeButtonA__14dMeterButton_cFUlb
/* 802014D0  7C 71 1B 78 */	mr r17, r3
/* 802014D4  7D E3 7B 78 */	mr r3, r15
/* 802014D8  7D C4 73 78 */	mr r4, r14
/* 802014DC  7E 45 93 78 */	mr r5, r18
/* 802014E0  48 00 1E BD */	bl alphaAnimeButtonB__14dMeterButton_cFUlb
/* 802014E4  7C 72 1B 78 */	mr r18, r3
/* 802014E8  7D E3 7B 78 */	mr r3, r15
/* 802014EC  7D C4 73 78 */	mr r4, r14
/* 802014F0  7E 65 9B 78 */	mr r5, r19
/* 802014F4  48 00 1F B5 */	bl alphaAnimeButtonR__14dMeterButton_cFUlb
/* 802014F8  7C 73 1B 78 */	mr r19, r3
/* 802014FC  7D E3 7B 78 */	mr r3, r15
/* 80201500  7D C4 73 78 */	mr r4, r14
/* 80201504  7E 85 A3 78 */	mr r5, r20
/* 80201508  48 00 20 A5 */	bl alphaAnimeButtonZ__14dMeterButton_cFUlb
/* 8020150C  7C 74 1B 78 */	mr r20, r3
/* 80201510  7D E3 7B 78 */	mr r3, r15
/* 80201514  7D C4 73 78 */	mr r4, r14
/* 80201518  88 A1 00 08 */	lbz r5, 8(r1)
/* 8020151C  48 00 21 A5 */	bl alphaAnimeButton3D__14dMeterButton_cFUlb
/* 80201520  7C 75 1B 78 */	mr r21, r3
/* 80201524  7D E3 7B 78 */	mr r3, r15
/* 80201528  7D C4 73 78 */	mr r4, r14
/* 8020152C  88 A1 00 09 */	lbz r5, 9(r1)
/* 80201530  48 00 22 89 */	bl alphaAnimeButtonC__14dMeterButton_cFUlb
/* 80201534  7C 76 1B 78 */	mr r22, r3
/* 80201538  7D E3 7B 78 */	mr r3, r15
/* 8020153C  7D C4 73 78 */	mr r4, r14
/* 80201540  7E E5 BB 78 */	mr r5, r23
/* 80201544  48 00 23 35 */	bl alphaAnimeButtonS__14dMeterButton_cFUlb
/* 80201548  7C 77 1B 78 */	mr r23, r3
/* 8020154C  7D E3 7B 78 */	mr r3, r15
/* 80201550  7D C4 73 78 */	mr r4, r14
/* 80201554  7F 05 C3 78 */	mr r5, r24
/* 80201558  48 00 23 9D */	bl alphaAnimeButtonX__14dMeterButton_cFUlb
/* 8020155C  7C 78 1B 78 */	mr r24, r3
/* 80201560  7D E3 7B 78 */	mr r3, r15
/* 80201564  7D C4 73 78 */	mr r4, r14
/* 80201568  7F 25 CB 78 */	mr r5, r25
/* 8020156C  48 00 24 9D */	bl alphaAnimeButtonY__14dMeterButton_cFUlb
/* 80201570  7C 79 1B 78 */	mr r25, r3
/* 80201574  7D E3 7B 78 */	mr r3, r15
/* 80201578  7D C4 73 78 */	mr r4, r14
/* 8020157C  7F 45 D3 78 */	mr r5, r26
/* 80201580  48 00 25 9D */	bl alphaAnimeButtonNun__14dMeterButton_cFUlb
/* 80201584  7C 7A 1B 78 */	mr r26, r3
/* 80201588  7D E3 7B 78 */	mr r3, r15
/* 8020158C  7D C4 73 78 */	mr r4, r14
/* 80201590  7F 65 DB 78 */	mr r5, r27
/* 80201594  48 00 26 9D */	bl alphaAnimeButtonRemo__14dMeterButton_cFUlb
/* 80201598  7C 7B 1B 78 */	mr r27, r3
/* 8020159C  7D E3 7B 78 */	mr r3, r15
/* 802015A0  7D C4 73 78 */	mr r4, r14
/* 802015A4  7F 85 E3 78 */	mr r5, r28
/* 802015A8  48 00 27 9D */	bl alphaAnimeButtonRemo2__14dMeterButton_cFUlb
/* 802015AC  7C 7C 1B 78 */	mr r28, r3
/* 802015B0  7D E3 7B 78 */	mr r3, r15
/* 802015B4  7D C4 73 78 */	mr r4, r14
/* 802015B8  7F A5 EB 78 */	mr r5, r29
/* 802015BC  48 00 28 9D */	bl alphaAnimeButtonAR__14dMeterButton_cFUlb
/* 802015C0  7C 7D 1B 78 */	mr r29, r3
/* 802015C4  7D E3 7B 78 */	mr r3, r15
/* 802015C8  7D C4 73 78 */	mr r4, r14
/* 802015CC  7F C5 F3 78 */	mr r5, r30
/* 802015D0  48 00 29 91 */	bl alphaAnimeButton3DB__14dMeterButton_cFUlb
/* 802015D4  7C 7E 1B 78 */	mr r30, r3
/* 802015D8  7D E3 7B 78 */	mr r3, r15
/* 802015DC  7D C4 73 78 */	mr r4, r14
/* 802015E0  7E 05 83 78 */	mr r5, r16
/* 802015E4  48 00 2A 85 */	bl alphaAnimeButtonNURE__14dMeterButton_cFUlb
/* 802015E8  7C 7F 1B 78 */	mr r31, r3
/* 802015EC  7D E3 7B 78 */	mr r3, r15
/* 802015F0  7D C4 73 78 */	mr r4, r14
/* 802015F4  88 A1 00 AF */	lbz r5, 0xaf(r1)
/* 802015F8  48 00 2B 79 */	bl alphaAnimeButtonReel__14dMeterButton_cFUlb
/* 802015FC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80201600  7D E3 7B 78 */	mr r3, r15
/* 80201604  7D C4 73 78 */	mr r4, r14
/* 80201608  88 A1 00 B3 */	lbz r5, 0xb3(r1)
/* 8020160C  48 00 2C 6D */	bl alphaAnimeButtonReel2__14dMeterButton_cFUlb
/* 80201610  90 61 00 10 */	stw r3, 0x10(r1)
/* 80201614  7D E3 7B 78 */	mr r3, r15
/* 80201618  7D C4 73 78 */	mr r4, r14
/* 8020161C  88 A1 00 B7 */	lbz r5, 0xb7(r1)
/* 80201620  48 00 2D 49 */	bl alphaAnimeButtonAB__14dMeterButton_cFUlb
/* 80201624  90 61 00 14 */	stw r3, 0x14(r1)
/* 80201628  7D E3 7B 78 */	mr r3, r15
/* 8020162C  7D C4 73 78 */	mr r4, r14
/* 80201630  88 A1 00 BB */	lbz r5, 0xbb(r1)
/* 80201634  48 00 2E 25 */	bl alphaAnimeButtonTate__14dMeterButton_cFUlb
/* 80201638  90 61 00 18 */	stw r3, 0x18(r1)
/* 8020163C  7D E3 7B 78 */	mr r3, r15
/* 80201640  7D C4 73 78 */	mr r4, r14
/* 80201644  88 A1 00 BF */	lbz r5, 0xbf(r1)
/* 80201648  48 00 2F 01 */	bl alphaAnimeButtonNunZ__14dMeterButton_cFUlb
/* 8020164C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80201650  7D E3 7B 78 */	mr r3, r15
/* 80201654  7D C4 73 78 */	mr r4, r14
/* 80201658  88 A1 00 C3 */	lbz r5, 0xc3(r1)
/* 8020165C  48 00 2F C5 */	bl alphaAnimeButtonNunC__14dMeterButton_cFUlb
/* 80201660  90 61 00 20 */	stw r3, 0x20(r1)
/* 80201664  7D E3 7B 78 */	mr r3, r15
/* 80201668  7D C4 73 78 */	mr r4, r14
/* 8020166C  88 A1 00 C7 */	lbz r5, 0xc7(r1)
/* 80201670  48 00 30 89 */	bl alphaAnimeButtonBin__14dMeterButton_cFUlb
/* 80201674  7C 6E 1B 78 */	mr r14, r3
/* 80201678  7D E3 7B 78 */	mr r3, r15
/* 8020167C  48 00 94 09 */	bl pikariCheck__14dMeterButton_cFv
/* 80201680  38 60 00 00 */	li r3, 0
/* 80201684  38 00 00 16 */	li r0, 0x16
/* 80201688  7C 09 03 A6 */	mtctr r0
lbl_8020168C:
/* 8020168C  38 A3 04 84 */	addi r5, r3, 0x484
/* 80201690  7C 8F 2A AE */	lhax r4, r15, r5
/* 80201694  2C 04 00 00 */	cmpwi r4, 0
/* 80201698  40 81 00 0C */	ble lbl_802016A4
/* 8020169C  38 04 FF FF */	addi r0, r4, -1
/* 802016A0  7C 0F 2B 2E */	sthx r0, r15, r5
lbl_802016A4:
/* 802016A4  38 63 00 02 */	addi r3, r3, 2
/* 802016A8  42 00 FF E4 */	bdnz lbl_8020168C
/* 802016AC  3A 00 00 00 */	li r16, 0
/* 802016B0  56 20 06 3E */	clrlwi r0, r17, 0x18
/* 802016B4  90 01 00 24 */	stw r0, 0x24(r1)
lbl_802016B8:
/* 802016B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802016BC  28 00 00 00 */	cmplwi r0, 0
/* 802016C0  41 82 00 14 */	beq lbl_802016D4
/* 802016C4  38 10 04 BE */	addi r0, r16, 0x4be
/* 802016C8  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802016CC  28 00 00 00 */	cmplwi r0, 0
/* 802016D0  41 82 02 14 */	beq lbl_802018E4
lbl_802016D4:
/* 802016D4  56 40 06 3F */	clrlwi. r0, r18, 0x18
/* 802016D8  41 82 00 14 */	beq lbl_802016EC
/* 802016DC  38 10 04 BE */	addi r0, r16, 0x4be
/* 802016E0  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802016E4  28 00 00 01 */	cmplwi r0, 1
/* 802016E8  41 82 01 FC */	beq lbl_802018E4
lbl_802016EC:
/* 802016EC  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 802016F0  41 82 00 14 */	beq lbl_80201704
/* 802016F4  38 10 04 BE */	addi r0, r16, 0x4be
/* 802016F8  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802016FC  28 00 00 02 */	cmplwi r0, 2
/* 80201700  41 82 01 E4 */	beq lbl_802018E4
lbl_80201704:
/* 80201704  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 80201708  41 82 00 14 */	beq lbl_8020171C
/* 8020170C  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201710  7C 0F 00 AE */	lbzx r0, r15, r0
/* 80201714  28 00 00 03 */	cmplwi r0, 3
/* 80201718  41 82 01 CC */	beq lbl_802018E4
lbl_8020171C:
/* 8020171C  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 80201720  41 82 00 14 */	beq lbl_80201734
/* 80201724  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201728  7C 0F 00 AE */	lbzx r0, r15, r0
/* 8020172C  28 00 00 04 */	cmplwi r0, 4
/* 80201730  41 82 01 B4 */	beq lbl_802018E4
lbl_80201734:
/* 80201734  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 80201738  41 82 00 14 */	beq lbl_8020174C
/* 8020173C  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201740  7C 0F 00 AE */	lbzx r0, r15, r0
/* 80201744  28 00 00 05 */	cmplwi r0, 5
/* 80201748  41 82 01 9C */	beq lbl_802018E4
lbl_8020174C:
/* 8020174C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80201750  41 82 00 14 */	beq lbl_80201764
/* 80201754  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201758  7C 0F 00 AE */	lbzx r0, r15, r0
/* 8020175C  28 00 00 06 */	cmplwi r0, 6
/* 80201760  41 82 01 84 */	beq lbl_802018E4
lbl_80201764:
/* 80201764  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80201768  41 82 00 14 */	beq lbl_8020177C
/* 8020176C  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201770  7C 0F 00 AE */	lbzx r0, r15, r0
/* 80201774  28 00 00 07 */	cmplwi r0, 7
/* 80201778  41 82 01 6C */	beq lbl_802018E4
lbl_8020177C:
/* 8020177C  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80201780  41 82 00 14 */	beq lbl_80201794
/* 80201784  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201788  7C 0F 00 AE */	lbzx r0, r15, r0
/* 8020178C  28 00 00 08 */	cmplwi r0, 8
/* 80201790  41 82 01 54 */	beq lbl_802018E4
lbl_80201794:
/* 80201794  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80201798  41 82 00 14 */	beq lbl_802017AC
/* 8020179C  38 10 04 BE */	addi r0, r16, 0x4be
/* 802017A0  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802017A4  28 00 00 09 */	cmplwi r0, 9
/* 802017A8  41 82 01 3C */	beq lbl_802018E4
lbl_802017AC:
/* 802017AC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802017B0  41 82 00 14 */	beq lbl_802017C4
/* 802017B4  38 10 04 BE */	addi r0, r16, 0x4be
/* 802017B8  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802017BC  28 00 00 0A */	cmplwi r0, 0xa
/* 802017C0  41 82 01 24 */	beq lbl_802018E4
lbl_802017C4:
/* 802017C4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802017C8  41 82 00 14 */	beq lbl_802017DC
/* 802017CC  38 10 04 BE */	addi r0, r16, 0x4be
/* 802017D0  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802017D4  28 00 00 0B */	cmplwi r0, 0xb
/* 802017D8  41 82 01 0C */	beq lbl_802018E4
lbl_802017DC:
/* 802017DC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802017E0  41 82 00 14 */	beq lbl_802017F4
/* 802017E4  38 10 04 BE */	addi r0, r16, 0x4be
/* 802017E8  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802017EC  28 00 00 0C */	cmplwi r0, 0xc
/* 802017F0  41 82 00 F4 */	beq lbl_802018E4
lbl_802017F4:
/* 802017F4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802017F8  41 82 00 14 */	beq lbl_8020180C
/* 802017FC  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201800  7C 0F 00 AE */	lbzx r0, r15, r0
/* 80201804  28 00 00 0D */	cmplwi r0, 0xd
/* 80201808  41 82 00 DC */	beq lbl_802018E4
lbl_8020180C:
/* 8020180C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80201810  41 82 00 14 */	beq lbl_80201824
/* 80201814  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201818  7C 0F 00 AE */	lbzx r0, r15, r0
/* 8020181C  28 00 00 0E */	cmplwi r0, 0xe
/* 80201820  41 82 00 C4 */	beq lbl_802018E4
lbl_80201824:
/* 80201824  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80201828  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8020182C  41 82 00 14 */	beq lbl_80201840
/* 80201830  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201834  7C 0F 00 AE */	lbzx r0, r15, r0
/* 80201838  28 00 00 0F */	cmplwi r0, 0xf
/* 8020183C  41 82 00 A8 */	beq lbl_802018E4
lbl_80201840:
/* 80201840  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80201844  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80201848  41 82 00 14 */	beq lbl_8020185C
/* 8020184C  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201850  7C 0F 00 AE */	lbzx r0, r15, r0
/* 80201854  28 00 00 10 */	cmplwi r0, 0x10
/* 80201858  41 82 00 8C */	beq lbl_802018E4
lbl_8020185C:
/* 8020185C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80201860  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80201864  41 82 00 14 */	beq lbl_80201878
/* 80201868  38 10 04 BE */	addi r0, r16, 0x4be
/* 8020186C  7C 0F 00 AE */	lbzx r0, r15, r0
/* 80201870  28 00 00 11 */	cmplwi r0, 0x11
/* 80201874  41 82 00 70 */	beq lbl_802018E4
lbl_80201878:
/* 80201878  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8020187C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80201880  41 82 00 14 */	beq lbl_80201894
/* 80201884  38 10 04 BE */	addi r0, r16, 0x4be
/* 80201888  7C 0F 00 AE */	lbzx r0, r15, r0
/* 8020188C  28 00 00 12 */	cmplwi r0, 0x12
/* 80201890  41 82 00 54 */	beq lbl_802018E4
lbl_80201894:
/* 80201894  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80201898  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8020189C  41 82 00 14 */	beq lbl_802018B0
/* 802018A0  38 10 04 BE */	addi r0, r16, 0x4be
/* 802018A4  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802018A8  28 00 00 13 */	cmplwi r0, 0x13
/* 802018AC  41 82 00 38 */	beq lbl_802018E4
lbl_802018B0:
/* 802018B0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802018B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802018B8  41 82 00 14 */	beq lbl_802018CC
/* 802018BC  38 10 04 BE */	addi r0, r16, 0x4be
/* 802018C0  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802018C4  28 00 00 14 */	cmplwi r0, 0x14
/* 802018C8  41 82 00 1C */	beq lbl_802018E4
lbl_802018CC:
/* 802018CC  55 C0 06 3F */	clrlwi. r0, r14, 0x18
/* 802018D0  41 82 00 24 */	beq lbl_802018F4
/* 802018D4  38 10 04 BE */	addi r0, r16, 0x4be
/* 802018D8  7C 0F 00 AE */	lbzx r0, r15, r0
/* 802018DC  28 00 00 15 */	cmplwi r0, 0x15
/* 802018E0  40 82 00 14 */	bne lbl_802018F4
lbl_802018E4:
/* 802018E4  7D E3 7B 78 */	mr r3, r15
/* 802018E8  7E 04 83 78 */	mr r4, r16
/* 802018EC  48 00 79 D5 */	bl setAlphaButtonOAnimeMax__14dMeterButton_cFi
/* 802018F0  48 00 00 10 */	b lbl_80201900
lbl_802018F4:
/* 802018F4  7D E3 7B 78 */	mr r3, r15
/* 802018F8  7E 04 83 78 */	mr r4, r16
/* 802018FC  48 00 79 51 */	bl setAlphaButtonOAnimeMin__14dMeterButton_cFi
lbl_80201900:
/* 80201900  3A 10 00 01 */	addi r16, r16, 1
/* 80201904  2C 10 00 02 */	cmpwi r16, 2
/* 80201908  41 80 FD B0 */	blt lbl_802016B8
/* 8020190C  88 0F 04 D9 */	lbz r0, 0x4d9(r15)
/* 80201910  28 00 00 FF */	cmplwi r0, 0xff
/* 80201914  41 82 02 38 */	beq lbl_80201B4C
/* 80201918  56 23 06 3F */	clrlwi. r3, r17, 0x18
/* 8020191C  41 82 00 14 */	beq lbl_80201930
/* 80201920  7C 6F 02 14 */	add r3, r15, r0
/* 80201924  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201928  28 03 00 00 */	cmplwi r3, 0
/* 8020192C  41 82 02 14 */	beq lbl_80201B40
lbl_80201930:
/* 80201930  56 43 06 3F */	clrlwi. r3, r18, 0x18
/* 80201934  41 82 00 14 */	beq lbl_80201948
/* 80201938  7C 6F 02 14 */	add r3, r15, r0
/* 8020193C  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201940  28 03 00 01 */	cmplwi r3, 1
/* 80201944  41 82 01 FC */	beq lbl_80201B40
lbl_80201948:
/* 80201948  56 63 06 3F */	clrlwi. r3, r19, 0x18
/* 8020194C  41 82 00 14 */	beq lbl_80201960
/* 80201950  7C 6F 02 14 */	add r3, r15, r0
/* 80201954  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201958  28 03 00 02 */	cmplwi r3, 2
/* 8020195C  41 82 01 E4 */	beq lbl_80201B40
lbl_80201960:
/* 80201960  56 83 06 3F */	clrlwi. r3, r20, 0x18
/* 80201964  41 82 00 14 */	beq lbl_80201978
/* 80201968  7C 6F 02 14 */	add r3, r15, r0
/* 8020196C  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201970  28 03 00 03 */	cmplwi r3, 3
/* 80201974  41 82 01 CC */	beq lbl_80201B40
lbl_80201978:
/* 80201978  56 A3 06 3F */	clrlwi. r3, r21, 0x18
/* 8020197C  41 82 00 14 */	beq lbl_80201990
/* 80201980  7C 6F 02 14 */	add r3, r15, r0
/* 80201984  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201988  28 03 00 04 */	cmplwi r3, 4
/* 8020198C  41 82 01 B4 */	beq lbl_80201B40
lbl_80201990:
/* 80201990  56 C3 06 3F */	clrlwi. r3, r22, 0x18
/* 80201994  41 82 00 14 */	beq lbl_802019A8
/* 80201998  7C 6F 02 14 */	add r3, r15, r0
/* 8020199C  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 802019A0  28 03 00 05 */	cmplwi r3, 5
/* 802019A4  41 82 01 9C */	beq lbl_80201B40
lbl_802019A8:
/* 802019A8  56 E3 06 3F */	clrlwi. r3, r23, 0x18
/* 802019AC  41 82 00 14 */	beq lbl_802019C0
/* 802019B0  7C 6F 02 14 */	add r3, r15, r0
/* 802019B4  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 802019B8  28 03 00 06 */	cmplwi r3, 6
/* 802019BC  41 82 01 84 */	beq lbl_80201B40
lbl_802019C0:
/* 802019C0  57 03 06 3F */	clrlwi. r3, r24, 0x18
/* 802019C4  41 82 00 14 */	beq lbl_802019D8
/* 802019C8  7C 6F 02 14 */	add r3, r15, r0
/* 802019CC  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 802019D0  28 03 00 07 */	cmplwi r3, 7
/* 802019D4  41 82 01 6C */	beq lbl_80201B40
lbl_802019D8:
/* 802019D8  57 23 06 3F */	clrlwi. r3, r25, 0x18
/* 802019DC  41 82 00 14 */	beq lbl_802019F0
/* 802019E0  7C 6F 02 14 */	add r3, r15, r0
/* 802019E4  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 802019E8  28 03 00 08 */	cmplwi r3, 8
/* 802019EC  41 82 01 54 */	beq lbl_80201B40
lbl_802019F0:
/* 802019F0  57 43 06 3F */	clrlwi. r3, r26, 0x18
/* 802019F4  41 82 00 14 */	beq lbl_80201A08
/* 802019F8  7C 6F 02 14 */	add r3, r15, r0
/* 802019FC  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201A00  28 03 00 09 */	cmplwi r3, 9
/* 80201A04  41 82 01 3C */	beq lbl_80201B40
lbl_80201A08:
/* 80201A08  57 63 06 3F */	clrlwi. r3, r27, 0x18
/* 80201A0C  41 82 00 14 */	beq lbl_80201A20
/* 80201A10  7C 6F 02 14 */	add r3, r15, r0
/* 80201A14  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201A18  28 03 00 0A */	cmplwi r3, 0xa
/* 80201A1C  41 82 01 24 */	beq lbl_80201B40
lbl_80201A20:
/* 80201A20  57 83 06 3F */	clrlwi. r3, r28, 0x18
/* 80201A24  41 82 00 14 */	beq lbl_80201A38
/* 80201A28  7C 6F 02 14 */	add r3, r15, r0
/* 80201A2C  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201A30  28 03 00 0B */	cmplwi r3, 0xb
/* 80201A34  41 82 01 0C */	beq lbl_80201B40
lbl_80201A38:
/* 80201A38  57 A3 06 3F */	clrlwi. r3, r29, 0x18
/* 80201A3C  41 82 00 14 */	beq lbl_80201A50
/* 80201A40  7C 6F 02 14 */	add r3, r15, r0
/* 80201A44  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201A48  28 03 00 0C */	cmplwi r3, 0xc
/* 80201A4C  41 82 00 F4 */	beq lbl_80201B40
lbl_80201A50:
/* 80201A50  57 C3 06 3F */	clrlwi. r3, r30, 0x18
/* 80201A54  41 82 00 14 */	beq lbl_80201A68
/* 80201A58  7C 6F 02 14 */	add r3, r15, r0
/* 80201A5C  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201A60  28 03 00 0D */	cmplwi r3, 0xd
/* 80201A64  41 82 00 DC */	beq lbl_80201B40
lbl_80201A68:
/* 80201A68  57 E3 06 3F */	clrlwi. r3, r31, 0x18
/* 80201A6C  41 82 00 14 */	beq lbl_80201A80
/* 80201A70  7C 6F 02 14 */	add r3, r15, r0
/* 80201A74  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201A78  28 03 00 0E */	cmplwi r3, 0xe
/* 80201A7C  41 82 00 C4 */	beq lbl_80201B40
lbl_80201A80:
/* 80201A80  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80201A84  54 63 06 3F */	clrlwi. r3, r3, 0x18
/* 80201A88  41 82 00 14 */	beq lbl_80201A9C
/* 80201A8C  7C 6F 02 14 */	add r3, r15, r0
/* 80201A90  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201A94  28 03 00 0F */	cmplwi r3, 0xf
/* 80201A98  41 82 00 A8 */	beq lbl_80201B40
lbl_80201A9C:
/* 80201A9C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80201AA0  54 63 06 3F */	clrlwi. r3, r3, 0x18
/* 80201AA4  41 82 00 14 */	beq lbl_80201AB8
/* 80201AA8  7C 6F 02 14 */	add r3, r15, r0
/* 80201AAC  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201AB0  28 03 00 10 */	cmplwi r3, 0x10
/* 80201AB4  41 82 00 8C */	beq lbl_80201B40
lbl_80201AB8:
/* 80201AB8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80201ABC  54 63 06 3F */	clrlwi. r3, r3, 0x18
/* 80201AC0  41 82 00 14 */	beq lbl_80201AD4
/* 80201AC4  7C 6F 02 14 */	add r3, r15, r0
/* 80201AC8  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201ACC  28 03 00 11 */	cmplwi r3, 0x11
/* 80201AD0  41 82 00 70 */	beq lbl_80201B40
lbl_80201AD4:
/* 80201AD4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80201AD8  54 63 06 3F */	clrlwi. r3, r3, 0x18
/* 80201ADC  41 82 00 14 */	beq lbl_80201AF0
/* 80201AE0  7C 6F 02 14 */	add r3, r15, r0
/* 80201AE4  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201AE8  28 03 00 12 */	cmplwi r3, 0x12
/* 80201AEC  41 82 00 54 */	beq lbl_80201B40
lbl_80201AF0:
/* 80201AF0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80201AF4  54 63 06 3F */	clrlwi. r3, r3, 0x18
/* 80201AF8  41 82 00 14 */	beq lbl_80201B0C
/* 80201AFC  7C 6F 02 14 */	add r3, r15, r0
/* 80201B00  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201B04  28 03 00 13 */	cmplwi r3, 0x13
/* 80201B08  41 82 00 38 */	beq lbl_80201B40
lbl_80201B0C:
/* 80201B0C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80201B10  54 63 06 3F */	clrlwi. r3, r3, 0x18
/* 80201B14  41 82 00 14 */	beq lbl_80201B28
/* 80201B18  7C 6F 02 14 */	add r3, r15, r0
/* 80201B1C  88 63 04 BE */	lbz r3, 0x4be(r3)
/* 80201B20  28 03 00 14 */	cmplwi r3, 0x14
/* 80201B24  41 82 00 1C */	beq lbl_80201B40
lbl_80201B28:
/* 80201B28  55 C3 06 3F */	clrlwi. r3, r14, 0x18
/* 80201B2C  41 82 00 20 */	beq lbl_80201B4C
/* 80201B30  7C 6F 02 14 */	add r3, r15, r0
/* 80201B34  88 03 04 BE */	lbz r0, 0x4be(r3)
/* 80201B38  28 00 00 15 */	cmplwi r0, 0x15
/* 80201B3C  40 82 00 10 */	bne lbl_80201B4C
lbl_80201B40:
/* 80201B40  7D E3 7B 78 */	mr r3, r15
/* 80201B44  48 00 78 95 */	bl setAlphaIconAnimeMax__14dMeterButton_cFv
/* 80201B48  48 00 00 0C */	b lbl_80201B54
lbl_80201B4C:
/* 80201B4C  7D E3 7B 78 */	mr r3, r15
/* 80201B50  48 00 78 19 */	bl setAlphaIconAnimeMin__14dMeterButton_cFv
lbl_80201B54:
/* 80201B54  88 01 00 08 */	lbz r0, 8(r1)
/* 80201B58  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80201B5C  41 82 03 20 */	beq lbl_80201E7C
/* 80201B60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80201B64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80201B68  89 C3 5E 2D */	lbz r14, 0x5e2d(r3)
/* 80201B6C  55 C0 07 FF */	clrlwi. r0, r14, 0x1f
/* 80201B70  41 82 00 64 */	beq lbl_80201BD4
/* 80201B74  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201B78  3C 80 5F 6C */	lis r4, 0x5F6C /* 0x5F6C5F6E@ha */
/* 80201B7C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6C5F6E@l */
/* 80201B80  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201B84  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201B88  81 83 00 00 */	lwz r12, 0(r3)
/* 80201B8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201B90  7D 89 03 A6 */	mtctr r12
/* 80201B94  4E 80 04 21 */	bctrl 
/* 80201B98  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201B9C  28 00 00 00 */	cmplwi r0, 0
/* 80201BA0  40 82 00 90 */	bne lbl_80201C30
/* 80201BA4  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201BA8  3C 80 5F 6C */	lis r4, 0x5F6C /* 0x5F6C5F6E@ha */
/* 80201BAC  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6C5F6E@l */
/* 80201BB0  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201BB4  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201BB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80201BBC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201BC0  7D 89 03 A6 */	mtctr r12
/* 80201BC4  4E 80 04 21 */	bctrl 
/* 80201BC8  38 00 00 01 */	li r0, 1
/* 80201BCC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80201BD0  48 00 00 60 */	b lbl_80201C30
lbl_80201BD4:
/* 80201BD4  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201BD8  3C 80 5F 6C */	lis r4, 0x5F6C /* 0x5F6C5F6E@ha */
/* 80201BDC  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6C5F6E@l */
/* 80201BE0  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201BE4  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201BE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80201BEC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201BF0  7D 89 03 A6 */	mtctr r12
/* 80201BF4  4E 80 04 21 */	bctrl 
/* 80201BF8  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201BFC  28 00 00 01 */	cmplwi r0, 1
/* 80201C00  40 82 00 30 */	bne lbl_80201C30
/* 80201C04  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201C08  3C 80 5F 6C */	lis r4, 0x5F6C /* 0x5F6C5F6E@ha */
/* 80201C0C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F6C5F6E@l */
/* 80201C10  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201C14  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201C18  81 83 00 00 */	lwz r12, 0(r3)
/* 80201C1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201C20  7D 89 03 A6 */	mtctr r12
/* 80201C24  4E 80 04 21 */	bctrl 
/* 80201C28  38 00 00 00 */	li r0, 0
/* 80201C2C  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_80201C30:
/* 80201C30  55 C0 07 39 */	rlwinm. r0, r14, 0, 0x1c, 0x1c
/* 80201C34  41 82 00 64 */	beq lbl_80201C98
/* 80201C38  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201C3C  3C 80 5F 75 */	lis r4, 0x5F75 /* 0x5F755F6E@ha */
/* 80201C40  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F755F6E@l */
/* 80201C44  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201C48  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201C4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80201C50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201C54  7D 89 03 A6 */	mtctr r12
/* 80201C58  4E 80 04 21 */	bctrl 
/* 80201C5C  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201C60  28 00 00 00 */	cmplwi r0, 0
/* 80201C64  40 82 00 90 */	bne lbl_80201CF4
/* 80201C68  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201C6C  3C 80 5F 75 */	lis r4, 0x5F75 /* 0x5F755F6E@ha */
/* 80201C70  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F755F6E@l */
/* 80201C74  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201C78  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201C7C  81 83 00 00 */	lwz r12, 0(r3)
/* 80201C80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201C84  7D 89 03 A6 */	mtctr r12
/* 80201C88  4E 80 04 21 */	bctrl 
/* 80201C8C  38 00 00 01 */	li r0, 1
/* 80201C90  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80201C94  48 00 00 60 */	b lbl_80201CF4
lbl_80201C98:
/* 80201C98  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201C9C  3C 80 5F 75 */	lis r4, 0x5F75 /* 0x5F755F6E@ha */
/* 80201CA0  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F755F6E@l */
/* 80201CA4  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201CA8  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201CAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80201CB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201CB4  7D 89 03 A6 */	mtctr r12
/* 80201CB8  4E 80 04 21 */	bctrl 
/* 80201CBC  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201CC0  28 00 00 01 */	cmplwi r0, 1
/* 80201CC4  40 82 00 30 */	bne lbl_80201CF4
/* 80201CC8  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201CCC  3C 80 5F 75 */	lis r4, 0x5F75 /* 0x5F755F6E@ha */
/* 80201CD0  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F755F6E@l */
/* 80201CD4  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201CD8  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201CDC  81 83 00 00 */	lwz r12, 0(r3)
/* 80201CE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201CE4  7D 89 03 A6 */	mtctr r12
/* 80201CE8  4E 80 04 21 */	bctrl 
/* 80201CEC  38 00 00 00 */	li r0, 0
/* 80201CF0  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_80201CF4:
/* 80201CF4  55 C0 07 BD */	rlwinm. r0, r14, 0, 0x1e, 0x1e
/* 80201CF8  41 82 00 64 */	beq lbl_80201D5C
/* 80201CFC  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201D00  3C 80 5F 64 */	lis r4, 0x5F64 /* 0x5F645F6E@ha */
/* 80201D04  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F645F6E@l */
/* 80201D08  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201D0C  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201D10  81 83 00 00 */	lwz r12, 0(r3)
/* 80201D14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201D18  7D 89 03 A6 */	mtctr r12
/* 80201D1C  4E 80 04 21 */	bctrl 
/* 80201D20  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201D24  28 00 00 00 */	cmplwi r0, 0
/* 80201D28  40 82 00 90 */	bne lbl_80201DB8
/* 80201D2C  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201D30  3C 80 5F 64 */	lis r4, 0x5F64 /* 0x5F645F6E@ha */
/* 80201D34  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F645F6E@l */
/* 80201D38  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201D3C  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201D40  81 83 00 00 */	lwz r12, 0(r3)
/* 80201D44  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201D48  7D 89 03 A6 */	mtctr r12
/* 80201D4C  4E 80 04 21 */	bctrl 
/* 80201D50  38 00 00 01 */	li r0, 1
/* 80201D54  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80201D58  48 00 00 60 */	b lbl_80201DB8
lbl_80201D5C:
/* 80201D5C  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201D60  3C 80 5F 64 */	lis r4, 0x5F64 /* 0x5F645F6E@ha */
/* 80201D64  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F645F6E@l */
/* 80201D68  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201D6C  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201D70  81 83 00 00 */	lwz r12, 0(r3)
/* 80201D74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201D78  7D 89 03 A6 */	mtctr r12
/* 80201D7C  4E 80 04 21 */	bctrl 
/* 80201D80  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201D84  28 00 00 01 */	cmplwi r0, 1
/* 80201D88  40 82 00 30 */	bne lbl_80201DB8
/* 80201D8C  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201D90  3C 80 5F 64 */	lis r4, 0x5F64 /* 0x5F645F6E@ha */
/* 80201D94  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F645F6E@l */
/* 80201D98  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201D9C  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201DA0  81 83 00 00 */	lwz r12, 0(r3)
/* 80201DA4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201DA8  7D 89 03 A6 */	mtctr r12
/* 80201DAC  4E 80 04 21 */	bctrl 
/* 80201DB0  38 00 00 00 */	li r0, 0
/* 80201DB4  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_80201DB8:
/* 80201DB8  55 C0 07 7B */	rlwinm. r0, r14, 0, 0x1d, 0x1d
/* 80201DBC  41 82 00 64 */	beq lbl_80201E20
/* 80201DC0  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201DC4  3C 80 5F 72 */	lis r4, 0x5F72 /* 0x5F725F6E@ha */
/* 80201DC8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F725F6E@l */
/* 80201DCC  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201DD0  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201DD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80201DD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201DDC  7D 89 03 A6 */	mtctr r12
/* 80201DE0  4E 80 04 21 */	bctrl 
/* 80201DE4  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201DE8  28 00 00 00 */	cmplwi r0, 0
/* 80201DEC  40 82 00 90 */	bne lbl_80201E7C
/* 80201DF0  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201DF4  3C 80 5F 72 */	lis r4, 0x5F72 /* 0x5F725F6E@ha */
/* 80201DF8  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F725F6E@l */
/* 80201DFC  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201E00  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201E04  81 83 00 00 */	lwz r12, 0(r3)
/* 80201E08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201E0C  7D 89 03 A6 */	mtctr r12
/* 80201E10  4E 80 04 21 */	bctrl 
/* 80201E14  38 00 00 01 */	li r0, 1
/* 80201E18  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80201E1C  48 00 00 60 */	b lbl_80201E7C
lbl_80201E20:
/* 80201E20  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201E24  3C 80 5F 72 */	lis r4, 0x5F72 /* 0x5F725F6E@ha */
/* 80201E28  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F725F6E@l */
/* 80201E2C  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201E30  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201E34  81 83 00 00 */	lwz r12, 0(r3)
/* 80201E38  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201E3C  7D 89 03 A6 */	mtctr r12
/* 80201E40  4E 80 04 21 */	bctrl 
/* 80201E44  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201E48  28 00 00 01 */	cmplwi r0, 1
/* 80201E4C  40 82 00 30 */	bne lbl_80201E7C
/* 80201E50  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201E54  3C 80 5F 72 */	lis r4, 0x5F72 /* 0x5F725F6E@ha */
/* 80201E58  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x5F725F6E@l */
/* 80201E5C  3C 80 79 61 */	lis r4, 0x7961 /* 0x79616A69@ha */
/* 80201E60  38 A4 6A 69 */	addi r5, r4, 0x6A69 /* 0x79616A69@l */
/* 80201E64  81 83 00 00 */	lwz r12, 0(r3)
/* 80201E68  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201E6C  7D 89 03 A6 */	mtctr r12
/* 80201E70  4E 80 04 21 */	bctrl 
/* 80201E74  38 00 00 00 */	li r0, 0
/* 80201E78  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_80201E7C:
/* 80201E7C  88 01 00 09 */	lbz r0, 9(r1)
/* 80201E80  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80201E84  41 82 03 20 */	beq lbl_802021A4
/* 80201E88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80201E8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80201E90  89 C3 5E 30 */	lbz r14, 0x5e30(r3)
/* 80201E94  55 C0 07 FF */	clrlwi. r0, r14, 0x1f
/* 80201E98  41 82 00 64 */	beq lbl_80201EFC
/* 80201E9C  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201EA0  3C 80 69 5F */	lis r4, 0x695F /* 0x695F6C6E@ha */
/* 80201EA4  38 C4 6C 6E */	addi r6, r4, 0x6C6E /* 0x695F6C6E@l */
/* 80201EA8  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80201EAC  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80201EB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80201EB4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201EB8  7D 89 03 A6 */	mtctr r12
/* 80201EBC  4E 80 04 21 */	bctrl 
/* 80201EC0  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201EC4  28 00 00 00 */	cmplwi r0, 0
/* 80201EC8  40 82 00 90 */	bne lbl_80201F58
/* 80201ECC  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201ED0  3C 80 69 5F */	lis r4, 0x695F /* 0x695F6C6E@ha */
/* 80201ED4  38 C4 6C 6E */	addi r6, r4, 0x6C6E /* 0x695F6C6E@l */
/* 80201ED8  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80201EDC  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80201EE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80201EE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201EE8  7D 89 03 A6 */	mtctr r12
/* 80201EEC  4E 80 04 21 */	bctrl 
/* 80201EF0  38 00 00 01 */	li r0, 1
/* 80201EF4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80201EF8  48 00 00 60 */	b lbl_80201F58
lbl_80201EFC:
/* 80201EFC  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201F00  3C 80 69 5F */	lis r4, 0x695F /* 0x695F6C6E@ha */
/* 80201F04  38 C4 6C 6E */	addi r6, r4, 0x6C6E /* 0x695F6C6E@l */
/* 80201F08  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80201F0C  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80201F10  81 83 00 00 */	lwz r12, 0(r3)
/* 80201F14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201F18  7D 89 03 A6 */	mtctr r12
/* 80201F1C  4E 80 04 21 */	bctrl 
/* 80201F20  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201F24  28 00 00 01 */	cmplwi r0, 1
/* 80201F28  40 82 00 30 */	bne lbl_80201F58
/* 80201F2C  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201F30  3C 80 69 5F */	lis r4, 0x695F /* 0x695F6C6E@ha */
/* 80201F34  38 C4 6C 6E */	addi r6, r4, 0x6C6E /* 0x695F6C6E@l */
/* 80201F38  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80201F3C  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80201F40  81 83 00 00 */	lwz r12, 0(r3)
/* 80201F44  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201F48  7D 89 03 A6 */	mtctr r12
/* 80201F4C  4E 80 04 21 */	bctrl 
/* 80201F50  38 00 00 00 */	li r0, 0
/* 80201F54  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_80201F58:
/* 80201F58  55 C0 07 39 */	rlwinm. r0, r14, 0, 0x1c, 0x1c
/* 80201F5C  41 82 00 64 */	beq lbl_80201FC0
/* 80201F60  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201F64  3C 80 69 5F */	lis r4, 0x695F /* 0x695F756E@ha */
/* 80201F68  38 C4 75 6E */	addi r6, r4, 0x756E /* 0x695F756E@l */
/* 80201F6C  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80201F70  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80201F74  81 83 00 00 */	lwz r12, 0(r3)
/* 80201F78  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201F7C  7D 89 03 A6 */	mtctr r12
/* 80201F80  4E 80 04 21 */	bctrl 
/* 80201F84  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201F88  28 00 00 00 */	cmplwi r0, 0
/* 80201F8C  40 82 00 90 */	bne lbl_8020201C
/* 80201F90  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201F94  3C 80 69 5F */	lis r4, 0x695F /* 0x695F756E@ha */
/* 80201F98  38 C4 75 6E */	addi r6, r4, 0x756E /* 0x695F756E@l */
/* 80201F9C  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80201FA0  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80201FA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80201FA8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201FAC  7D 89 03 A6 */	mtctr r12
/* 80201FB0  4E 80 04 21 */	bctrl 
/* 80201FB4  38 00 00 01 */	li r0, 1
/* 80201FB8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80201FBC  48 00 00 60 */	b lbl_8020201C
lbl_80201FC0:
/* 80201FC0  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201FC4  3C 80 69 5F */	lis r4, 0x695F /* 0x695F756E@ha */
/* 80201FC8  38 C4 75 6E */	addi r6, r4, 0x756E /* 0x695F756E@l */
/* 80201FCC  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80201FD0  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80201FD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80201FD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80201FDC  7D 89 03 A6 */	mtctr r12
/* 80201FE0  4E 80 04 21 */	bctrl 
/* 80201FE4  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80201FE8  28 00 00 01 */	cmplwi r0, 1
/* 80201FEC  40 82 00 30 */	bne lbl_8020201C
/* 80201FF0  80 6F 00 08 */	lwz r3, 8(r15)
/* 80201FF4  3C 80 69 5F */	lis r4, 0x695F /* 0x695F756E@ha */
/* 80201FF8  38 C4 75 6E */	addi r6, r4, 0x756E /* 0x695F756E@l */
/* 80201FFC  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80202000  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80202004  81 83 00 00 */	lwz r12, 0(r3)
/* 80202008  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020200C  7D 89 03 A6 */	mtctr r12
/* 80202010  4E 80 04 21 */	bctrl 
/* 80202014  38 00 00 00 */	li r0, 0
/* 80202018  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_8020201C:
/* 8020201C  55 C0 07 BD */	rlwinm. r0, r14, 0, 0x1e, 0x1e
/* 80202020  41 82 00 64 */	beq lbl_80202084
/* 80202024  80 6F 00 08 */	lwz r3, 8(r15)
/* 80202028  3C 80 69 5F */	lis r4, 0x695F /* 0x695F646E@ha */
/* 8020202C  38 C4 64 6E */	addi r6, r4, 0x646E /* 0x695F646E@l */
/* 80202030  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80202034  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80202038  81 83 00 00 */	lwz r12, 0(r3)
/* 8020203C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80202040  7D 89 03 A6 */	mtctr r12
/* 80202044  4E 80 04 21 */	bctrl 
/* 80202048  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 8020204C  28 00 00 00 */	cmplwi r0, 0
/* 80202050  40 82 00 90 */	bne lbl_802020E0
/* 80202054  80 6F 00 08 */	lwz r3, 8(r15)
/* 80202058  3C 80 69 5F */	lis r4, 0x695F /* 0x695F646E@ha */
/* 8020205C  38 C4 64 6E */	addi r6, r4, 0x646E /* 0x695F646E@l */
/* 80202060  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80202064  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80202068  81 83 00 00 */	lwz r12, 0(r3)
/* 8020206C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80202070  7D 89 03 A6 */	mtctr r12
/* 80202074  4E 80 04 21 */	bctrl 
/* 80202078  38 00 00 01 */	li r0, 1
/* 8020207C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80202080  48 00 00 60 */	b lbl_802020E0
lbl_80202084:
/* 80202084  80 6F 00 08 */	lwz r3, 8(r15)
/* 80202088  3C 80 69 5F */	lis r4, 0x695F /* 0x695F646E@ha */
/* 8020208C  38 C4 64 6E */	addi r6, r4, 0x646E /* 0x695F646E@l */
/* 80202090  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80202094  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 80202098  81 83 00 00 */	lwz r12, 0(r3)
/* 8020209C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802020A0  7D 89 03 A6 */	mtctr r12
/* 802020A4  4E 80 04 21 */	bctrl 
/* 802020A8  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 802020AC  28 00 00 01 */	cmplwi r0, 1
/* 802020B0  40 82 00 30 */	bne lbl_802020E0
/* 802020B4  80 6F 00 08 */	lwz r3, 8(r15)
/* 802020B8  3C 80 69 5F */	lis r4, 0x695F /* 0x695F646E@ha */
/* 802020BC  38 C4 64 6E */	addi r6, r4, 0x646E /* 0x695F646E@l */
/* 802020C0  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 802020C4  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 802020C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802020CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802020D0  7D 89 03 A6 */	mtctr r12
/* 802020D4  4E 80 04 21 */	bctrl 
/* 802020D8  38 00 00 00 */	li r0, 0
/* 802020DC  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_802020E0:
/* 802020E0  55 C0 07 7B */	rlwinm. r0, r14, 0, 0x1d, 0x1d
/* 802020E4  41 82 00 64 */	beq lbl_80202148
/* 802020E8  80 6F 00 08 */	lwz r3, 8(r15)
/* 802020EC  3C 80 69 5F */	lis r4, 0x695F /* 0x695F726E@ha */
/* 802020F0  38 C4 72 6E */	addi r6, r4, 0x726E /* 0x695F726E@l */
/* 802020F4  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 802020F8  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 802020FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80202100  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80202104  7D 89 03 A6 */	mtctr r12
/* 80202108  4E 80 04 21 */	bctrl 
/* 8020210C  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80202110  28 00 00 00 */	cmplwi r0, 0
/* 80202114  40 82 00 90 */	bne lbl_802021A4
/* 80202118  80 6F 00 08 */	lwz r3, 8(r15)
/* 8020211C  3C 80 69 5F */	lis r4, 0x695F /* 0x695F726E@ha */
/* 80202120  38 C4 72 6E */	addi r6, r4, 0x726E /* 0x695F726E@l */
/* 80202124  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80202128  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 8020212C  81 83 00 00 */	lwz r12, 0(r3)
/* 80202130  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80202134  7D 89 03 A6 */	mtctr r12
/* 80202138  4E 80 04 21 */	bctrl 
/* 8020213C  38 00 00 01 */	li r0, 1
/* 80202140  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 80202144  48 00 00 60 */	b lbl_802021A4
lbl_80202148:
/* 80202148  80 6F 00 08 */	lwz r3, 8(r15)
/* 8020214C  3C 80 69 5F */	lis r4, 0x695F /* 0x695F726E@ha */
/* 80202150  38 C4 72 6E */	addi r6, r4, 0x726E /* 0x695F726E@l */
/* 80202154  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80202158  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 8020215C  81 83 00 00 */	lwz r12, 0(r3)
/* 80202160  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80202164  7D 89 03 A6 */	mtctr r12
/* 80202168  4E 80 04 21 */	bctrl 
/* 8020216C  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80202170  28 00 00 01 */	cmplwi r0, 1
/* 80202174  40 82 00 30 */	bne lbl_802021A4
/* 80202178  80 6F 00 08 */	lwz r3, 8(r15)
/* 8020217C  3C 80 69 5F */	lis r4, 0x695F /* 0x695F726E@ha */
/* 80202180  38 C4 72 6E */	addi r6, r4, 0x726E /* 0x695F726E@l */
/* 80202184  3C 80 00 79 */	lis r4, 0x0079 /* 0x0079616A@ha */
/* 80202188  38 A4 61 6A */	addi r5, r4, 0x616A /* 0x0079616A@l */
/* 8020218C  81 83 00 00 */	lwz r12, 0(r3)
/* 80202190  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80202194  7D 89 03 A6 */	mtctr r12
/* 80202198  4E 80 04 21 */	bctrl 
/* 8020219C  38 00 00 00 */	li r0, 0
/* 802021A0  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_802021A4:
/* 802021A4  3A 20 00 00 */	li r17, 0
/* 802021A8  39 C0 00 00 */	li r14, 0
/* 802021AC  C3 E2 AD 48 */	lfs f31, lit_4146(r2)
lbl_802021B0:
/* 802021B0  7E 0F 72 14 */	add r16, r15, r14
/* 802021B4  C0 30 02 F4 */	lfs f1, 0x2f4(r16)
/* 802021B8  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 802021BC  41 82 00 0C */	beq lbl_802021C8
/* 802021C0  D0 30 02 FC */	stfs f1, 0x2fc(r16)
/* 802021C4  48 00 00 38 */	b lbl_802021FC
lbl_802021C8:
/* 802021C8  38 70 02 FC */	addi r3, r16, 0x2fc
/* 802021CC  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 802021D0  C0 62 AD 50 */	lfs f3, lit_4148(r2)
/* 802021D4  48 06 D8 69 */	bl cLib_addCalc2__FPffff
/* 802021D8  C0 10 02 FC */	lfs f0, 0x2fc(r16)
/* 802021DC  C0 30 02 F4 */	lfs f1, 0x2f4(r16)
/* 802021E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802021E4  FC 00 02 10 */	fabs f0, f0
/* 802021E8  FC 40 00 18 */	frsp f2, f0
/* 802021EC  C0 02 AD 54 */	lfs f0, lit_4149(r2)
/* 802021F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802021F4  40 80 00 08 */	bge lbl_802021FC
/* 802021F8  D0 30 02 FC */	stfs f1, 0x2fc(r16)
lbl_802021FC:
/* 802021FC  7D E3 7B 78 */	mr r3, r15
/* 80202200  7E 24 8B 78 */	mr r4, r17
/* 80202204  C0 30 02 FC */	lfs f1, 0x2fc(r16)
/* 80202208  48 00 83 39 */	bl trans_button__14dMeterButton_cFif
/* 8020220C  3A 31 00 01 */	addi r17, r17, 1
/* 80202210  2C 11 00 02 */	cmpwi r17, 2
/* 80202214  39 CE 00 04 */	addi r14, r14, 4
/* 80202218  41 80 FF 98 */	blt lbl_802021B0
/* 8020221C  38 60 00 01 */	li r3, 1
/* 80202220  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80202224  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80202228  39 61 00 70 */	addi r11, r1, 0x70
/* 8020222C  48 15 FF C1 */	bl __restore_gpr
/* 80202230  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80202234  7C 08 03 A6 */	mtlr r0
/* 80202238  38 21 00 80 */	addi r1, r1, 0x80
/* 8020223C  4E 80 00 20 */	blr 
