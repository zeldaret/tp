lbl_80D53454:
/* 80D53454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D53458  7C 08 02 A6 */	mflr r0
/* 80D5345C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D53460  39 61 00 20 */	addi r11, r1, 0x20
/* 80D53464  4B 60 ED 78 */	b _savegpr_29
/* 80D53468  7C 7F 1B 78 */	mr r31, r3
/* 80D5346C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D53470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D53474  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D53478  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D5347C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D53480  7C 05 07 74 */	extsb r5, r0
/* 80D53484  4B 2E 1D 7C */	b onSwitch__10dSv_info_cFii
/* 80D53488  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D5348C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D53490  3C 60 80 D5 */	lis r3, l_zevParamTbl@ha
/* 80D53494  38 63 57 B0 */	addi r3, r3, l_zevParamTbl@l
/* 80D53498  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D5349C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D534A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D534A4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80D534A8  3B BE 4F F8 */	addi r29, r30, 0x4ff8
/* 80D534AC  7F A3 EB 78 */	mr r3, r29
/* 80D534B0  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80D534B4  4B 2F 33 4C */	b setObjectArchive__16dEvent_manager_cFPc
/* 80D534B8  7F A3 EB 78 */	mr r3, r29
/* 80D534BC  7F E4 FB 78 */	mr r4, r31
/* 80D534C0  3C A0 80 D5 */	lis r5, l_zevParamTbl@ha
/* 80D534C4  38 A5 57 B0 */	addi r5, r5, l_zevParamTbl@l
/* 80D534C8  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D534CC  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D534D0  7C A5 02 14 */	add r5, r5, r0
/* 80D534D4  80 A5 00 08 */	lwz r5, 8(r5)
/* 80D534D8  38 C0 00 FF */	li r6, 0xff
/* 80D534DC  4B 2F 42 7C */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D534E0  B0 7F 05 DC */	sth r3, 0x5dc(r31)
/* 80D534E4  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80D534E8  28 00 00 00 */	cmplwi r0, 0
/* 80D534EC  41 82 00 2C */	beq lbl_80D53518
/* 80D534F0  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D534F4  7F E4 FB 78 */	mr r4, r31
/* 80D534F8  4B 2E F0 20 */	b reset__14dEvt_control_cFPv
/* 80D534FC  7F E3 FB 78 */	mr r3, r31
/* 80D53500  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 80D53504  38 A0 00 01 */	li r5, 1
/* 80D53508  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D5350C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D53510  4B 2C 80 D4 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D53514  48 00 00 24 */	b lbl_80D53538
lbl_80D53518:
/* 80D53518  7F E3 FB 78 */	mr r3, r31
/* 80D5351C  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 80D53520  38 A0 00 FF */	li r5, 0xff
/* 80D53524  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D53528  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D5352C  38 E0 00 04 */	li r7, 4
/* 80D53530  39 00 00 01 */	li r8, 1
/* 80D53534  4B 2C 81 48 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80D53538:
/* 80D53538  39 61 00 20 */	addi r11, r1, 0x20
/* 80D5353C  4B 60 EC EC */	b _restgpr_29
/* 80D53540  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D53544  7C 08 03 A6 */	mtlr r0
/* 80D53548  38 21 00 20 */	addi r1, r1, 0x20
/* 80D5354C  4E 80 00 20 */	blr 
