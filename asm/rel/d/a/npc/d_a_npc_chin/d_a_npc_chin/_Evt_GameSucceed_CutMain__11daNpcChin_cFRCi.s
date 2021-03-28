lbl_8099041C:
/* 8099041C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80990420  7C 08 02 A6 */	mflr r0
/* 80990424  90 01 00 24 */	stw r0, 0x24(r1)
/* 80990428  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8099042C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80990430  7C 7E 1B 78 */	mr r30, r3
/* 80990434  3B E0 00 00 */	li r31, 0
/* 80990438  80 04 00 00 */	lwz r0, 0(r4)
/* 8099043C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80990440  41 82 01 18 */	beq lbl_80990558
/* 80990444  40 80 00 1C */	bge lbl_80990460
/* 80990448  2C 00 00 14 */	cmpwi r0, 0x14
/* 8099044C  41 82 00 44 */	beq lbl_80990490
/* 80990450  40 80 01 58 */	bge lbl_809905A8
/* 80990454  2C 00 00 0A */	cmpwi r0, 0xa
/* 80990458  41 82 00 14 */	beq lbl_8099046C
/* 8099045C  48 00 01 4C */	b lbl_809905A8
lbl_80990460:
/* 80990460  2C 00 00 28 */	cmpwi r0, 0x28
/* 80990464  41 82 00 FC */	beq lbl_80990560
/* 80990468  48 00 01 40 */	b lbl_809905A8
lbl_8099046C:
/* 8099046C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80990470  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80990474  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80990478  4B 68 A2 98 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8099047C  7C 64 1B 78 */	mr r4, r3
/* 80990480  7F C3 F3 78 */	mr r3, r30
/* 80990484  4B 7C 3D CC */	b setAngle__8daNpcF_cFs
/* 80990488  38 60 00 01 */	li r3, 1
/* 8099048C  48 00 01 20 */	b lbl_809905AC
lbl_80990490:
/* 80990490  38 80 00 00 */	li r4, 0
/* 80990494  38 A0 00 01 */	li r5, 1
/* 80990498  38 C0 00 00 */	li r6, 0
/* 8099049C  4B 7C 38 E8 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809904A0  2C 03 00 00 */	cmpwi r3, 0
/* 809904A4  41 82 00 A8 */	beq lbl_8099054C
/* 809904A8  38 7E 0E 70 */	addi r3, r30, 0xe70
/* 809904AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809904B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809904B4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809904B8  4B 7C 02 04 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809904BC  38 00 00 00 */	li r0, 0
/* 809904C0  90 01 00 08 */	stw r0, 8(r1)
/* 809904C4  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809904C8  38 81 00 08 */	addi r4, r1, 8
/* 809904CC  4B 8B A0 5C */	b getEventId__10dMsgFlow_cFPi
/* 809904D0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 809904D4  28 00 00 01 */	cmplwi r0, 1
/* 809904D8  41 82 00 0C */	beq lbl_809904E4
/* 809904DC  38 00 00 00 */	li r0, 0
/* 809904E0  90 01 00 08 */	stw r0, 8(r1)
lbl_809904E4:
/* 809904E4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809904E8  80 81 00 08 */	lwz r4, 8(r1)
/* 809904EC  38 A0 00 00 */	li r5, 0
/* 809904F0  38 C0 FF FF */	li r6, -1
/* 809904F4  38 E0 FF FF */	li r7, -1
/* 809904F8  39 00 00 00 */	li r8, 0
/* 809904FC  39 20 00 00 */	li r9, 0
/* 80990500  4B 68 B6 E8 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80990504  7C 64 1B 78 */	mr r4, r3
/* 80990508  3C 04 00 01 */	addis r0, r4, 1
/* 8099050C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80990510  41 82 00 14 */	beq lbl_80990524
/* 80990514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80990518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099051C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80990520  4B 6B 31 CC */	b setPtI_Id__14dEvt_control_cFUi
lbl_80990524:
/* 80990524  7F C3 F3 78 */	mr r3, r30
/* 80990528  38 80 00 0E */	li r4, 0xe
/* 8099052C  3C A0 80 99 */	lis r5, lit_4627@ha
/* 80990530  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 80990534  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80990538  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8099053C  7D 89 03 A6 */	mtctr r12
/* 80990540  4E 80 04 21 */	bctrl 
/* 80990544  3B E0 00 01 */	li r31, 1
/* 80990548  48 00 00 60 */	b lbl_809905A8
lbl_8099054C:
/* 8099054C  7F C3 F3 78 */	mr r3, r30
/* 80990550  4B FF EC B9 */	bl _talk_motion__11daNpcChin_cFv
/* 80990554  48 00 00 54 */	b lbl_809905A8
lbl_80990558:
/* 80990558  38 60 00 01 */	li r3, 1
/* 8099055C  48 00 00 50 */	b lbl_809905AC
lbl_80990560:
/* 80990560  38 80 00 00 */	li r4, 0
/* 80990564  38 A0 00 01 */	li r5, 1
/* 80990568  38 C0 00 00 */	li r6, 0
/* 8099056C  4B 7C 38 18 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80990570  2C 03 00 00 */	cmpwi r3, 0
/* 80990574  41 82 00 2C */	beq lbl_809905A0
/* 80990578  7F C3 F3 78 */	mr r3, r30
/* 8099057C  38 80 00 0E */	li r4, 0xe
/* 80990580  3C A0 80 99 */	lis r5, lit_4627@ha
/* 80990584  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 80990588  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8099058C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80990590  7D 89 03 A6 */	mtctr r12
/* 80990594  4E 80 04 21 */	bctrl 
/* 80990598  3B E0 00 01 */	li r31, 1
/* 8099059C  48 00 00 0C */	b lbl_809905A8
lbl_809905A0:
/* 809905A0  7F C3 F3 78 */	mr r3, r30
/* 809905A4  4B FF EC 65 */	bl _talk_motion__11daNpcChin_cFv
lbl_809905A8:
/* 809905A8  7F E3 FB 78 */	mr r3, r31
lbl_809905AC:
/* 809905AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809905B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809905B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809905B8  7C 08 03 A6 */	mtlr r0
/* 809905BC  38 21 00 20 */	addi r1, r1, 0x20
/* 809905C0  4E 80 00 20 */	blr 
