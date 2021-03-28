lbl_809481B4:
/* 809481B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809481B8  7C 08 02 A6 */	mflr r0
/* 809481BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 809481C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 809481C4  7C 7F 1B 78 */	mr r31, r3
/* 809481C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809481CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809481D0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809481D4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809481D8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809481DC  41 82 00 10 */	beq lbl_809481EC
/* 809481E0  38 00 00 07 */	li r0, 7
/* 809481E4  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 809481E8  48 00 01 8C */	b lbl_80948374
lbl_809481EC:
/* 809481EC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809481F0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809481F4  7C 00 20 00 */	cmpw r0, r4
/* 809481F8  41 82 00 64 */	beq lbl_8094825C
/* 809481FC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80948200  38 A0 00 04 */	li r5, 4
/* 80948204  38 C0 7F FF */	li r6, 0x7fff
/* 80948208  38 E0 05 DC */	li r7, 0x5dc
/* 8094820C  4B 92 83 34 */	b cLib_addCalcAngleS__FPsssss
/* 80948210  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80948214  A8 9F 04 B4 */	lha r4, 0x4b4(r31)
/* 80948218  38 A0 00 04 */	li r5, 4
/* 8094821C  38 C0 7F FF */	li r6, 0x7fff
/* 80948220  38 E0 05 DC */	li r7, 0x5dc
/* 80948224  4B 92 83 1C */	b cLib_addCalcAngleS__FPsssss
/* 80948228  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 8094822C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80948230  7C 03 00 50 */	subf r0, r3, r0
/* 80948234  7C 03 07 34 */	extsh r3, r0
/* 80948238  4B A1 CE 98 */	b abs
/* 8094823C  2C 03 00 80 */	cmpwi r3, 0x80
/* 80948240  40 80 00 1C */	bge lbl_8094825C
/* 80948244  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80948248  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 8094824C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80948250  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80948254  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80948258  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
lbl_8094825C:
/* 8094825C  3C 60 80 95 */	lis r3, daMyna_evtTagActor0@ha
/* 80948260  80 03 BA C8 */	lwz r0, daMyna_evtTagActor0@l(r3)
/* 80948264  28 00 00 00 */	cmplwi r0, 0
/* 80948268  41 82 01 0C */	beq lbl_80948374
/* 8094826C  3C 60 80 95 */	lis r3, lit_4270@ha
/* 80948270  C0 03 B1 FC */	lfs f0, lit_4270@l(r3)
/* 80948274  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80948278  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8094827C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80948280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80948284  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80948288  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8094828C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80948290  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80948294  A0 84 06 44 */	lhz r4, 0x644(r4)
/* 80948298  4B 6E C7 24 */	b isEventBit__11dSv_event_cCFUs
/* 8094829C  2C 03 00 00 */	cmpwi r3, 0
/* 809482A0  41 82 00 50 */	beq lbl_809482F0
/* 809482A4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809482A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 809482AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809482B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809482B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809482B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809482BC  7F E3 FB 78 */	mr r3, r31
/* 809482C0  3C 80 80 95 */	lis r4, daMyna_evtTagActor0@ha
/* 809482C4  38 84 BA C8 */	addi r4, r4, daMyna_evtTagActor0@l
/* 809482C8  80 84 00 00 */	lwz r4, 0(r4)
/* 809482CC  38 A1 00 08 */	addi r5, r1, 8
/* 809482D0  48 00 1A 85 */	bl chkPlayerInEvtArea__8daMyna_cFP10fopAc_ac_c4cXyz
/* 809482D4  2C 03 00 00 */	cmpwi r3, 0
/* 809482D8  41 82 00 9C */	beq lbl_80948374
/* 809482DC  38 00 00 14 */	li r0, 0x14
/* 809482E0  98 1F 09 37 */	stb r0, 0x937(r31)
/* 809482E4  38 00 00 13 */	li r0, 0x13
/* 809482E8  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 809482EC  48 00 00 88 */	b lbl_80948374
lbl_809482F0:
/* 809482F0  88 1F 09 39 */	lbz r0, 0x939(r31)
/* 809482F4  28 00 00 01 */	cmplwi r0, 1
/* 809482F8  40 82 00 50 */	bne lbl_80948348
/* 809482FC  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80948300  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80948304  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80948308  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8094830C  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80948310  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80948314  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80948318  60 00 00 01 */	ori r0, r0, 1
/* 8094831C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80948320  7F E3 FB 78 */	mr r3, r31
/* 80948324  38 80 00 00 */	li r4, 0
/* 80948328  38 A0 00 00 */	li r5, 0
/* 8094832C  4B 6D 2E 70 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80948330  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80948334  28 00 00 01 */	cmplwi r0, 1
/* 80948338  40 82 00 3C */	bne lbl_80948374
/* 8094833C  38 00 00 15 */	li r0, 0x15
/* 80948340  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 80948344  48 00 00 30 */	b lbl_80948374
lbl_80948348:
/* 80948348  A8 9F 09 2A */	lha r4, 0x92a(r31)
/* 8094834C  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 80948350  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 80948354  A8 03 00 24 */	lha r0, 0x24(r3)
/* 80948358  7C 04 00 00 */	cmpw r4, r0
/* 8094835C  40 80 00 10 */	bge lbl_8094836C
/* 80948360  38 04 00 01 */	addi r0, r4, 1
/* 80948364  B0 1F 09 2A */	sth r0, 0x92a(r31)
/* 80948368  48 00 00 0C */	b lbl_80948374
lbl_8094836C:
/* 8094836C  38 00 00 07 */	li r0, 7
/* 80948370  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_80948374:
/* 80948374  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80948378  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8094837C  7C 08 03 A6 */	mtlr r0
/* 80948380  38 21 00 30 */	addi r1, r1, 0x30
/* 80948384  4E 80 00 20 */	blr 
