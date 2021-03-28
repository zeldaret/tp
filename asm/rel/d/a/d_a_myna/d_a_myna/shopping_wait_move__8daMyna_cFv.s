lbl_809471E8:
/* 809471E8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809471EC  7C 08 02 A6 */	mflr r0
/* 809471F0  90 01 00 64 */	stw r0, 0x64(r1)
/* 809471F4  39 61 00 60 */	addi r11, r1, 0x60
/* 809471F8  4B A1 AF CC */	b _savegpr_23
/* 809471FC  7C 7B 1B 78 */	mr r27, r3
/* 80947200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80947204  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80947208  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 8094720C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80947210  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80947214  40 82 03 88 */	bne lbl_8094759C
/* 80947218  3B A4 07 F0 */	addi r29, r4, 0x7f0
/* 8094721C  7F A3 EB 78 */	mr r3, r29
/* 80947220  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80947224  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80947228  A0 84 06 44 */	lhz r4, 0x644(r4)
/* 8094722C  4B 6E D7 90 */	b isEventBit__11dSv_event_cCFUs
/* 80947230  2C 03 00 00 */	cmpwi r3, 0
/* 80947234  41 82 00 18 */	beq lbl_8094724C
/* 80947238  38 00 00 11 */	li r0, 0x11
/* 8094723C  98 1B 09 2C */	stb r0, 0x92c(r27)
/* 80947240  38 00 00 14 */	li r0, 0x14
/* 80947244  98 1B 09 37 */	stb r0, 0x937(r27)
/* 80947248  48 00 03 54 */	b lbl_8094759C
lbl_8094724C:
/* 8094724C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80947250  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80947254  83 3F 5D AC */	lwz r25, 0x5dac(r31)
/* 80947258  3B 80 00 00 */	li r28, 0
/* 8094725C  80 7F 5D BC */	lwz r3, 0x5dbc(r31)
/* 80947260  AB C3 01 7A */	lha r30, 0x17a(r3)
/* 80947264  88 03 04 D0 */	lbz r0, 0x4d0(r3)
/* 80947268  28 00 00 00 */	cmplwi r0, 0
/* 8094726C  41 82 00 44 */	beq lbl_809472B0
/* 80947270  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80947274  60 00 00 01 */	ori r0, r0, 1
/* 80947278  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 8094727C  7F 63 DB 78 */	mr r3, r27
/* 80947280  38 80 00 00 */	li r4, 0
/* 80947284  38 A0 00 00 */	li r5, 0
/* 80947288  4B 6D 3F 14 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 8094728C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80947290  28 00 00 01 */	cmplwi r0, 1
/* 80947294  40 82 03 08 */	bne lbl_8094759C
/* 80947298  38 00 00 09 */	li r0, 9
/* 8094729C  98 1B 09 2C */	stb r0, 0x92c(r27)
/* 809472A0  80 7F 5D BC */	lwz r3, 0x5dbc(r31)
/* 809472A4  38 00 00 00 */	li r0, 0
/* 809472A8  98 03 04 D0 */	stb r0, 0x4d0(r3)
/* 809472AC  48 00 02 F0 */	b lbl_8094759C
lbl_809472B0:
/* 809472B0  80 19 05 80 */	lwz r0, 0x580(r25)
/* 809472B4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809472B8  41 82 00 84 */	beq lbl_8094733C
/* 809472BC  3A E0 00 00 */	li r23, 0
/* 809472C0  3B 40 00 00 */	li r26, 0
lbl_809472C4:
/* 809472C4  7F 23 CB 78 */	mr r3, r25
/* 809472C8  81 99 06 28 */	lwz r12, 0x628(r25)
/* 809472CC  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 809472D0  7D 89 03 A6 */	mtctr r12
/* 809472D4  4E 80 04 21 */	bctrl 
/* 809472D8  7F 1B D2 14 */	add r24, r27, r26
/* 809472DC  80 18 08 68 */	lwz r0, 0x868(r24)
/* 809472E0  7C 00 18 40 */	cmplw r0, r3
/* 809472E4  40 82 00 48 */	bne lbl_8094732C
/* 809472E8  88 18 08 75 */	lbz r0, 0x875(r24)
/* 809472EC  28 00 00 02 */	cmplwi r0, 2
/* 809472F0  40 82 00 3C */	bne lbl_8094732C
/* 809472F4  A0 18 08 72 */	lhz r0, 0x872(r24)
/* 809472F8  7C 03 07 34 */	extsh r3, r0
/* 809472FC  4B 8F 14 34 */	b dMsgObject_addTotalPrice__Fs
/* 80947300  9A FB 09 31 */	stb r23, 0x931(r27)
/* 80947304  A0 18 08 70 */	lhz r0, 0x870(r24)
/* 80947308  28 00 FF FF */	cmplwi r0, 0xffff
/* 8094730C  41 82 00 20 */	beq lbl_8094732C
/* 80947310  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80947314  60 00 00 01 */	ori r0, r0, 1
/* 80947318  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 8094731C  7F 63 DB 78 */	mr r3, r27
/* 80947320  38 80 00 00 */	li r4, 0
/* 80947324  38 A0 00 00 */	li r5, 0
/* 80947328  4B 6D 3E 74 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
lbl_8094732C:
/* 8094732C  3A F7 00 01 */	addi r23, r23, 1
/* 80947330  2C 17 00 0A */	cmpwi r23, 0xa
/* 80947334  3B 5A 00 10 */	addi r26, r26, 0x10
/* 80947338  41 80 FF 8C */	blt lbl_809472C4
lbl_8094733C:
/* 8094733C  88 1B 09 31 */	lbz r0, 0x931(r27)
/* 80947340  28 00 00 FF */	cmplwi r0, 0xff
/* 80947344  41 82 00 54 */	beq lbl_80947398
/* 80947348  7F 23 CB 78 */	mr r3, r25
/* 8094734C  81 99 06 28 */	lwz r12, 0x628(r25)
/* 80947350  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80947354  7D 89 03 A6 */	mtctr r12
/* 80947358  4E 80 04 21 */	bctrl 
/* 8094735C  88 1B 09 31 */	lbz r0, 0x931(r27)
/* 80947360  54 00 20 36 */	slwi r0, r0, 4
/* 80947364  7C 9B 02 14 */	add r4, r27, r0
/* 80947368  80 04 08 68 */	lwz r0, 0x868(r4)
/* 8094736C  7C 00 18 40 */	cmplw r0, r3
/* 80947370  41 82 00 28 */	beq lbl_80947398
/* 80947374  88 04 08 75 */	lbz r0, 0x875(r4)
/* 80947378  28 00 00 02 */	cmplwi r0, 2
/* 8094737C  40 82 00 1C */	bne lbl_80947398
/* 80947380  A0 04 08 72 */	lhz r0, 0x872(r4)
/* 80947384  7C 00 00 D0 */	neg r0, r0
/* 80947388  7C 03 07 34 */	extsh r3, r0
/* 8094738C  4B 8F 13 A4 */	b dMsgObject_addTotalPrice__Fs
/* 80947390  38 00 00 FF */	li r0, 0xff
/* 80947394  98 1B 09 31 */	stb r0, 0x931(r27)
lbl_80947398:
/* 80947398  7F A3 EB 78 */	mr r3, r29
/* 8094739C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 809473A0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 809473A4  A0 84 01 96 */	lhz r4, 0x196(r4)
/* 809473A8  4B 6E D6 14 */	b isEventBit__11dSv_event_cCFUs
/* 809473AC  2C 03 00 00 */	cmpwi r3, 0
/* 809473B0  40 82 00 C8 */	bne lbl_80947478
/* 809473B4  3C 60 80 95 */	lis r3, daMyna_evtTagActor1@ha
/* 809473B8  80 83 BA CC */	lwz r4, daMyna_evtTagActor1@l(r3)
/* 809473BC  28 04 00 00 */	cmplwi r4, 0
/* 809473C0  41 82 00 B8 */	beq lbl_80947478
/* 809473C4  3C 60 80 95 */	lis r3, lit_4270@ha
/* 809473C8  C0 03 B1 FC */	lfs f0, lit_4270@l(r3)
/* 809473CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809473D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809473D4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809473D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809473DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809473E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809473E4  7F 63 DB 78 */	mr r3, r27
/* 809473E8  38 A1 00 14 */	addi r5, r1, 0x14
/* 809473EC  48 00 29 69 */	bl chkPlayerInEvtArea__8daMyna_cFP10fopAc_ac_c4cXyz
/* 809473F0  2C 03 00 00 */	cmpwi r3, 0
/* 809473F4  41 82 00 84 */	beq lbl_80947478
/* 809473F8  88 1B 09 2F */	lbz r0, 0x92f(r27)
/* 809473FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80947400  41 82 00 30 */	beq lbl_80947430
/* 80947404  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80947408  60 00 00 01 */	ori r0, r0, 1
/* 8094740C  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80947410  7F 63 DB 78 */	mr r3, r27
/* 80947414  38 80 00 00 */	li r4, 0
/* 80947418  38 A0 00 00 */	li r5, 0
/* 8094741C  4B 6D 3D 80 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80947420  3B 80 00 01 */	li r28, 1
/* 80947424  38 00 00 01 */	li r0, 1
/* 80947428  98 1B 09 33 */	stb r0, 0x933(r27)
/* 8094742C  48 00 00 4C */	b lbl_80947478
lbl_80947430:
/* 80947430  88 1B 09 31 */	lbz r0, 0x931(r27)
/* 80947434  28 00 00 FF */	cmplwi r0, 0xff
/* 80947438  41 82 00 40 */	beq lbl_80947478
/* 8094743C  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 80947440  7C 7B 02 14 */	add r3, r27, r0
/* 80947444  88 03 08 75 */	lbz r0, 0x875(r3)
/* 80947448  28 00 00 02 */	cmplwi r0, 2
/* 8094744C  40 82 00 2C */	bne lbl_80947478
/* 80947450  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80947454  60 00 00 01 */	ori r0, r0, 1
/* 80947458  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 8094745C  7F 63 DB 78 */	mr r3, r27
/* 80947460  38 80 00 00 */	li r4, 0
/* 80947464  38 A0 00 00 */	li r5, 0
/* 80947468  4B 6D 3D 34 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 8094746C  3B 80 00 01 */	li r28, 1
/* 80947470  38 00 00 01 */	li r0, 1
/* 80947474  98 1B 09 33 */	stb r0, 0x933(r27)
lbl_80947478:
/* 80947478  3C 60 80 95 */	lis r3, daMyna_evtTagActor0@ha
/* 8094747C  80 83 BA C8 */	lwz r4, daMyna_evtTagActor0@l(r3)
/* 80947480  28 04 00 00 */	cmplwi r4, 0
/* 80947484  41 82 00 64 */	beq lbl_809474E8
/* 80947488  3C 60 80 95 */	lis r3, lit_4270@ha
/* 8094748C  C0 03 B1 FC */	lfs f0, lit_4270@l(r3)
/* 80947490  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80947494  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80947498  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8094749C  D0 01 00 08 */	stfs f0, 8(r1)
/* 809474A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809474A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809474A8  7F 63 DB 78 */	mr r3, r27
/* 809474AC  38 A1 00 08 */	addi r5, r1, 8
/* 809474B0  48 00 28 A5 */	bl chkPlayerInEvtArea__8daMyna_cFP10fopAc_ac_c4cXyz
/* 809474B4  2C 03 00 00 */	cmpwi r3, 0
/* 809474B8  40 82 00 BC */	bne lbl_80947574
/* 809474BC  7F C0 07 35 */	extsh. r0, r30
/* 809474C0  40 81 00 B4 */	ble lbl_80947574
/* 809474C4  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 809474C8  60 00 00 01 */	ori r0, r0, 1
/* 809474CC  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 809474D0  7F 63 DB 78 */	mr r3, r27
/* 809474D4  38 80 00 00 */	li r4, 0
/* 809474D8  38 A0 00 00 */	li r5, 0
/* 809474DC  4B 6D 3C C0 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 809474E0  3B 80 00 01 */	li r28, 1
/* 809474E4  48 00 00 90 */	b lbl_80947574
lbl_809474E8:
/* 809474E8  7F 63 DB 78 */	mr r3, r27
/* 809474EC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809474F0  4B 6D 34 74 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809474F4  3C 60 80 95 */	lis r3, lit_4655@ha
/* 809474F8  C0 03 B2 04 */	lfs f0, lit_4655@l(r3)
/* 809474FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80947500  40 81 00 74 */	ble lbl_80947574
/* 80947504  88 1B 09 2F */	lbz r0, 0x92f(r27)
/* 80947508  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8094750C  41 82 00 28 */	beq lbl_80947534
/* 80947510  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80947514  60 00 00 01 */	ori r0, r0, 1
/* 80947518  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 8094751C  7F 63 DB 78 */	mr r3, r27
/* 80947520  38 80 00 00 */	li r4, 0
/* 80947524  38 A0 00 00 */	li r5, 0
/* 80947528  4B 6D 3C 74 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 8094752C  3B 80 00 01 */	li r28, 1
/* 80947530  48 00 00 44 */	b lbl_80947574
lbl_80947534:
/* 80947534  88 1B 09 31 */	lbz r0, 0x931(r27)
/* 80947538  28 00 00 FF */	cmplwi r0, 0xff
/* 8094753C  41 82 00 38 */	beq lbl_80947574
/* 80947540  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 80947544  7C 7B 02 14 */	add r3, r27, r0
/* 80947548  88 03 08 75 */	lbz r0, 0x875(r3)
/* 8094754C  28 00 00 02 */	cmplwi r0, 2
/* 80947550  40 82 00 24 */	bne lbl_80947574
/* 80947554  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80947558  60 00 00 01 */	ori r0, r0, 1
/* 8094755C  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80947560  7F 63 DB 78 */	mr r3, r27
/* 80947564  38 80 00 00 */	li r4, 0
/* 80947568  38 A0 00 00 */	li r5, 0
/* 8094756C  4B 6D 3C 30 */	b fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 80947570  3B 80 00 01 */	li r28, 1
lbl_80947574:
/* 80947574  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80947578  28 00 00 01 */	cmplwi r0, 1
/* 8094757C  40 82 00 20 */	bne lbl_8094759C
/* 80947580  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80947584  40 82 00 10 */	bne lbl_80947594
/* 80947588  38 00 00 08 */	li r0, 8
/* 8094758C  98 1B 09 2C */	stb r0, 0x92c(r27)
/* 80947590  48 00 00 0C */	b lbl_8094759C
lbl_80947594:
/* 80947594  38 00 00 0A */	li r0, 0xa
/* 80947598  98 1B 09 2C */	stb r0, 0x92c(r27)
lbl_8094759C:
/* 8094759C  39 61 00 60 */	addi r11, r1, 0x60
/* 809475A0  4B A1 AC 70 */	b _restgpr_23
/* 809475A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809475A8  7C 08 03 A6 */	mtlr r0
/* 809475AC  38 21 00 60 */	addi r1, r1, 0x60
/* 809475B0  4E 80 00 20 */	blr 
