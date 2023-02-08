lbl_80948484:
/* 80948484  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80948488  7C 08 02 A6 */	mflr r0
/* 8094848C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80948490  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80948494  7C 7F 1B 78 */	mr r31, r3
/* 80948498  3C 80 80 95 */	lis r4, daMyna_evtTagActor0@ha /* 0x8094BAC8@ha */
/* 8094849C  80 04 BA C8 */	lwz r0, daMyna_evtTagActor0@l(r4)  /* 0x8094BAC8@l */
/* 809484A0  28 00 00 00 */	cmplwi r0, 0
/* 809484A4  41 82 01 48 */	beq lbl_809485EC
/* 809484A8  3C 80 80 95 */	lis r4, lit_4270@ha /* 0x8094B1FC@ha */
/* 809484AC  C0 04 B1 FC */	lfs f0, lit_4270@l(r4)  /* 0x8094B1FC@l */
/* 809484B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809484B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809484B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809484BC  48 00 09 41 */	bl fly_body_wave__8daMyna_cFv
/* 809484C0  A8 1F 09 26 */	lha r0, 0x926(r31)
/* 809484C4  2C 00 00 00 */	cmpwi r0, 0
/* 809484C8  40 81 00 18 */	ble lbl_809484E0
/* 809484CC  88 1F 09 37 */	lbz r0, 0x937(r31)
/* 809484D0  28 00 00 00 */	cmplwi r0, 0
/* 809484D4  40 82 00 0C */	bne lbl_809484E0
/* 809484D8  38 00 00 00 */	li r0, 0
/* 809484DC  B0 1F 09 26 */	sth r0, 0x926(r31)
lbl_809484E0:
/* 809484E0  4B 8F 02 E5 */	bl dMsgObject_getTotalPayment__Fv
/* 809484E4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 809484E8  A8 1F 09 22 */	lha r0, 0x922(r31)
/* 809484EC  7C 03 00 00 */	cmpw r3, r0
/* 809484F0  40 81 00 30 */	ble lbl_80948520
/* 809484F4  38 00 00 00 */	li r0, 0
/* 809484F8  98 1F 09 37 */	stb r0, 0x937(r31)
/* 809484FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80948500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80948504  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80948508  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8094850C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80948510  A0 84 06 44 */	lhz r4, 0x644(r4)
/* 80948514  4B 6E C4 79 */	bl onEventBit__11dSv_event_cFUs
/* 80948518  38 00 00 01 */	li r0, 1
/* 8094851C  98 1F 09 39 */	stb r0, 0x939(r31)
lbl_80948520:
/* 80948520  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80948524  D0 01 00 08 */	stfs f0, 8(r1)
/* 80948528  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8094852C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80948530  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80948534  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80948538  7F E3 FB 78 */	mr r3, r31
/* 8094853C  3C 80 80 95 */	lis r4, daMyna_evtTagActor0@ha /* 0x8094BAC8@ha */
/* 80948540  38 84 BA C8 */	addi r4, r4, daMyna_evtTagActor0@l /* 0x8094BAC8@l */
/* 80948544  80 84 00 00 */	lwz r4, 0(r4)
/* 80948548  38 A1 00 08 */	addi r5, r1, 8
/* 8094854C  48 00 18 09 */	bl chkPlayerInEvtArea__8daMyna_cFP10fopAc_ac_c4cXyz
/* 80948550  2C 03 00 00 */	cmpwi r3, 0
/* 80948554  41 82 00 58 */	beq lbl_809485AC
/* 80948558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094855C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80948560  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80948564  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80948568  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8094856C  40 82 00 40 */	bne lbl_809485AC
/* 80948570  88 1F 09 37 */	lbz r0, 0x937(r31)
/* 80948574  28 00 00 00 */	cmplwi r0, 0
/* 80948578  41 82 00 34 */	beq lbl_809485AC
/* 8094857C  A8 1F 09 26 */	lha r0, 0x926(r31)
/* 80948580  2C 00 00 00 */	cmpwi r0, 0
/* 80948584  40 82 00 28 */	bne lbl_809485AC
/* 80948588  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 8094858C  4B 73 B2 A5 */	bl Move__10dCcD_GSttsFv
/* 80948590  7F E3 FB 78 */	mr r3, r31
/* 80948594  48 00 02 95 */	bl fly_attack_move__8daMyna_cFv
/* 80948598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8094859C  41 82 00 50 */	beq lbl_809485EC
/* 809485A0  38 00 00 14 */	li r0, 0x14
/* 809485A4  98 1F 09 2C */	stb r0, 0x92c(r31)
/* 809485A8  48 00 00 44 */	b lbl_809485EC
lbl_809485AC:
/* 809485AC  7F E3 FB 78 */	mr r3, r31
/* 809485B0  48 00 05 2D */	bl fly_return_move__8daMyna_cFv
/* 809485B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809485B8  41 82 00 34 */	beq lbl_809485EC
/* 809485BC  88 1F 09 37 */	lbz r0, 0x937(r31)
/* 809485C0  28 00 00 00 */	cmplwi r0, 0
/* 809485C4  40 82 00 20 */	bne lbl_809485E4
/* 809485C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809485CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809485D0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 809485D4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 809485D8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 809485DC  A0 84 06 44 */	lhz r4, 0x644(r4)
/* 809485E0  4B 6E C3 C5 */	bl offEventBit__11dSv_event_cFUs
lbl_809485E4:
/* 809485E4  38 00 00 11 */	li r0, 0x11
/* 809485E8  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_809485EC:
/* 809485EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 809485F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809485F4  7C 08 03 A6 */	mtlr r0
/* 809485F8  38 21 00 30 */	addi r1, r1, 0x30
/* 809485FC  4E 80 00 20 */	blr 
