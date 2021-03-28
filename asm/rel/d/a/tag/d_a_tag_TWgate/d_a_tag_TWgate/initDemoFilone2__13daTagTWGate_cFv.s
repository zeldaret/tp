lbl_80D52AF4:
/* 80D52AF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D52AF8  7C 08 02 A6 */	mflr r0
/* 80D52AFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D52B00  39 61 00 20 */	addi r11, r1, 0x20
/* 80D52B04  4B 60 F6 D8 */	b _savegpr_29
/* 80D52B08  7C 7F 1B 78 */	mr r31, r3
/* 80D52B0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D52B10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D52B14  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D52B18  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D52B1C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D52B20  7C 05 07 74 */	extsb r5, r0
/* 80D52B24  4B 2E 26 DC */	b onSwitch__10dSv_info_cFii
/* 80D52B28  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D52B2C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D52B30  3C 60 80 D5 */	lis r3, l_zevParamTbl@ha
/* 80D52B34  38 63 57 B0 */	addi r3, r3, l_zevParamTbl@l
/* 80D52B38  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D52B3C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D52B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D52B44  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80D52B48  3B BE 4F F8 */	addi r29, r30, 0x4ff8
/* 80D52B4C  7F A3 EB 78 */	mr r3, r29
/* 80D52B50  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80D52B54  4B 2F 3C AC */	b setObjectArchive__16dEvent_manager_cFPc
/* 80D52B58  7F A3 EB 78 */	mr r3, r29
/* 80D52B5C  7F E4 FB 78 */	mr r4, r31
/* 80D52B60  3C A0 80 D5 */	lis r5, l_zevParamTbl@ha
/* 80D52B64  38 A5 57 B0 */	addi r5, r5, l_zevParamTbl@l
/* 80D52B68  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D52B6C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D52B70  7C A5 02 14 */	add r5, r5, r0
/* 80D52B74  80 A5 00 08 */	lwz r5, 8(r5)
/* 80D52B78  38 C0 00 FF */	li r6, 0xff
/* 80D52B7C  4B 2F 4B DC */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D52B80  B0 7F 05 DC */	sth r3, 0x5dc(r31)
/* 80D52B84  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80D52B88  28 00 00 00 */	cmplwi r0, 0
/* 80D52B8C  41 82 00 2C */	beq lbl_80D52BB8
/* 80D52B90  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D52B94  7F E4 FB 78 */	mr r4, r31
/* 80D52B98  4B 2E F9 80 */	b reset__14dEvt_control_cFPv
/* 80D52B9C  7F E3 FB 78 */	mr r3, r31
/* 80D52BA0  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 80D52BA4  38 A0 00 01 */	li r5, 1
/* 80D52BA8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D52BAC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D52BB0  4B 2C 8A 34 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D52BB4  48 00 00 24 */	b lbl_80D52BD8
lbl_80D52BB8:
/* 80D52BB8  7F E3 FB 78 */	mr r3, r31
/* 80D52BBC  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 80D52BC0  38 A0 00 FF */	li r5, 0xff
/* 80D52BC4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D52BC8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D52BCC  38 E0 00 04 */	li r7, 4
/* 80D52BD0  39 00 00 01 */	li r8, 1
/* 80D52BD4  4B 2C 8A A8 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80D52BD8:
/* 80D52BD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D52BDC  4B 60 F6 4C */	b _restgpr_29
/* 80D52BE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D52BE4  7C 08 03 A6 */	mtlr r0
/* 80D52BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D52BEC  4E 80 00 20 */	blr 
