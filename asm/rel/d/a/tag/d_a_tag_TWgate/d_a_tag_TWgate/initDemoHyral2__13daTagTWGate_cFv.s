lbl_80D54770:
/* 80D54770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D54774  7C 08 02 A6 */	mflr r0
/* 80D54778  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D5477C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D54780  4B 60 DA 5C */	b _savegpr_29
/* 80D54784  7C 7F 1B 78 */	mr r31, r3
/* 80D54788  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5478C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D54790  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D54794  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D54798  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5479C  7C 05 07 74 */	extsb r5, r0
/* 80D547A0  4B 2E 0A 60 */	b onSwitch__10dSv_info_cFii
/* 80D547A4  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D547A8  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D547AC  3C 60 80 D5 */	lis r3, l_zevParamTbl@ha
/* 80D547B0  38 63 57 B0 */	addi r3, r3, l_zevParamTbl@l
/* 80D547B4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D547B8  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D547BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D547C0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80D547C4  3B BE 4F F8 */	addi r29, r30, 0x4ff8
/* 80D547C8  7F A3 EB 78 */	mr r3, r29
/* 80D547CC  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80D547D0  4B 2F 20 30 */	b setObjectArchive__16dEvent_manager_cFPc
/* 80D547D4  7F A3 EB 78 */	mr r3, r29
/* 80D547D8  7F E4 FB 78 */	mr r4, r31
/* 80D547DC  3C A0 80 D5 */	lis r5, l_zevParamTbl@ha
/* 80D547E0  38 A5 57 B0 */	addi r5, r5, l_zevParamTbl@l
/* 80D547E4  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D547E8  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D547EC  7C A5 02 14 */	add r5, r5, r0
/* 80D547F0  80 A5 00 08 */	lwz r5, 8(r5)
/* 80D547F4  38 C0 00 FF */	li r6, 0xff
/* 80D547F8  4B 2F 2F 60 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D547FC  B0 7F 05 DC */	sth r3, 0x5dc(r31)
/* 80D54800  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80D54804  28 00 00 00 */	cmplwi r0, 0
/* 80D54808  41 82 00 2C */	beq lbl_80D54834
/* 80D5480C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D54810  7F E4 FB 78 */	mr r4, r31
/* 80D54814  4B 2E DD 04 */	b reset__14dEvt_control_cFPv
/* 80D54818  7F E3 FB 78 */	mr r3, r31
/* 80D5481C  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 80D54820  38 A0 00 01 */	li r5, 1
/* 80D54824  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D54828  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D5482C  4B 2C 6D B8 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D54830  48 00 00 24 */	b lbl_80D54854
lbl_80D54834:
/* 80D54834  7F E3 FB 78 */	mr r3, r31
/* 80D54838  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 80D5483C  38 A0 00 FF */	li r5, 0xff
/* 80D54840  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D54844  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D54848  38 E0 00 04 */	li r7, 4
/* 80D5484C  39 00 00 01 */	li r8, 1
/* 80D54850  4B 2C 6E 2C */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80D54854:
/* 80D54854  39 61 00 20 */	addi r11, r1, 0x20
/* 80D54858  4B 60 D9 D0 */	b _restgpr_29
/* 80D5485C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D54860  7C 08 03 A6 */	mtlr r0
/* 80D54864  38 21 00 20 */	addi r1, r1, 0x20
/* 80D54868  4E 80 00 20 */	blr 
