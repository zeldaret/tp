lbl_80D664AC:
/* 80D664AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D664B0  7C 08 02 A6 */	mflr r0
/* 80D664B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D664B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D664BC  4B 5F BD 20 */	b _savegpr_29
/* 80D664C0  7C 7E 1B 78 */	mr r30, r3
/* 80D664C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D664C8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80D664CC  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80D664D0  28 00 00 00 */	cmplwi r0, 0
/* 80D664D4  41 82 00 18 */	beq lbl_80D664EC
/* 80D664D8  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80D664DC  28 00 00 01 */	cmplwi r0, 1
/* 80D664E0  41 82 00 54 */	beq lbl_80D66534
/* 80D664E4  4B 2B 37 98 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D664E8  48 00 00 4C */	b lbl_80D66534
lbl_80D664EC:
/* 80D664EC  88 1E 05 45 */	lbz r0, 0x545(r30)
/* 80D664F0  1C A0 00 1C */	mulli r5, r0, 0x1c
/* 80D664F4  3C 80 80 3B */	lis r4, dist_table__12dAttention_c@ha
/* 80D664F8  38 04 9C 70 */	addi r0, r4, dist_table__12dAttention_c@l
/* 80D664FC  7F A0 2A 14 */	add r29, r0, r5
/* 80D66500  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80D66504  4B 2B 44 60 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D66508  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80D6650C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D66510  40 81 00 18 */	ble lbl_80D66528
/* 80D66514  38 00 FF FF */	li r0, -1
/* 80D66518  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80D6651C  7F C3 F3 78 */	mr r3, r30
/* 80D66520  4B 2B 37 5C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D66524  48 00 00 10 */	b lbl_80D66534
lbl_80D66528:
/* 80D66528  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80D6652C  60 00 00 01 */	ori r0, r0, 1
/* 80D66530  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_80D66534:
/* 80D66534  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80D66538  28 00 00 01 */	cmplwi r0, 1
/* 80D6653C  40 82 01 04 */	bne lbl_80D66640
/* 80D66540  4B 4D 1C A8 */	b getNodeIdx__12dMsgObject_cFv
/* 80D66544  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80D66548  28 00 00 FF */	cmplwi r0, 0xff
/* 80D6654C  40 82 00 84 */	bne lbl_80D665D0
/* 80D66550  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80D66554  3C 03 00 01 */	addis r0, r3, 1
/* 80D66558  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D6655C  40 82 00 14 */	bne lbl_80D66570
/* 80D66560  7F C3 F3 78 */	mr r3, r30
/* 80D66564  48 00 01 45 */	bl messageSet__8daTalk_cFv
/* 80D66568  90 7E 05 B4 */	stw r3, 0x5b4(r30)
/* 80D6656C  48 00 00 D4 */	b lbl_80D66640
lbl_80D66570:
/* 80D66570  7F C3 F3 78 */	mr r3, r30
/* 80D66574  48 00 01 15 */	bl getStatus__8daTalk_cFv
/* 80D66578  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80D6657C  28 00 00 0E */	cmplwi r0, 0xe
/* 80D66580  40 82 00 14 */	bne lbl_80D66594
/* 80D66584  7F C3 F3 78 */	mr r3, r30
/* 80D66588  38 80 00 10 */	li r4, 0x10
/* 80D6658C  48 00 00 D9 */	bl setStatus__8daTalk_cFUs
/* 80D66590  48 00 00 B0 */	b lbl_80D66640
lbl_80D66594:
/* 80D66594  7F C3 F3 78 */	mr r3, r30
/* 80D66598  48 00 00 F1 */	bl getStatus__8daTalk_cFv
/* 80D6659C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80D665A0  28 00 00 12 */	cmplwi r0, 0x12
/* 80D665A4  40 82 00 9C */	bne lbl_80D66640
/* 80D665A8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D665AC  4B 2D BE BC */	b reset__14dEvt_control_cFv
/* 80D665B0  7F C3 F3 78 */	mr r3, r30
/* 80D665B4  38 80 00 13 */	li r4, 0x13
/* 80D665B8  48 00 00 AD */	bl setStatus__8daTalk_cFUs
/* 80D665BC  38 00 FF FF */	li r0, -1
/* 80D665C0  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80D665C4  7F C3 F3 78 */	mr r3, r30
/* 80D665C8  4B 2B 36 B4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D665CC  48 00 00 74 */	b lbl_80D66640
lbl_80D665D0:
/* 80D665D0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80D665D4  3C 03 00 01 */	addis r0, r3, 1
/* 80D665D8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D665DC  40 82 00 2C */	bne lbl_80D66608
/* 80D665E0  4B 4D 1C 08 */	b getNodeIdx__12dMsgObject_cFv
/* 80D665E4  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 80D665E8  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D665EC  7F C4 F3 78 */	mr r4, r30
/* 80D665F0  38 C0 00 00 */	li r6, 0
/* 80D665F4  38 E0 00 00 */	li r7, 0
/* 80D665F8  4B 4E 39 98 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D665FC  38 00 00 02 */	li r0, 2
/* 80D66600  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80D66604  48 00 00 3C */	b lbl_80D66640
lbl_80D66608:
/* 80D66608  4B 4D 1B B8 */	b getpTalkActor__12dMsgObject_cFv
/* 80D6660C  7C 64 1B 78 */	mr r4, r3
/* 80D66610  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D66614  38 A0 00 00 */	li r5, 0
/* 80D66618  38 C0 00 00 */	li r6, 0
/* 80D6661C  4B 4E 3C BC */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D66620  2C 03 00 00 */	cmpwi r3, 0
/* 80D66624  41 82 00 1C */	beq lbl_80D66640
/* 80D66628  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D6662C  4B 2D BE 3C */	b reset__14dEvt_control_cFv
/* 80D66630  38 00 FF FF */	li r0, -1
/* 80D66634  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80D66638  7F C3 F3 78 */	mr r3, r30
/* 80D6663C  4B 2B 36 40 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80D66640:
/* 80D66640  38 60 00 01 */	li r3, 1
/* 80D66644  39 61 00 20 */	addi r11, r1, 0x20
/* 80D66648  4B 5F BB E0 */	b _restgpr_29
/* 80D6664C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D66650  7C 08 03 A6 */	mtlr r0
/* 80D66654  38 21 00 20 */	addi r1, r1, 0x20
/* 80D66658  4E 80 00 20 */	blr 
