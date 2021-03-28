lbl_80D54A30:
/* 80D54A30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D54A34  7C 08 02 A6 */	mflr r0
/* 80D54A38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D54A3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D54A40  4B 60 D7 9C */	b _savegpr_29
/* 80D54A44  7C 7D 1B 78 */	mr r29, r3
/* 80D54A48  38 00 00 01 */	li r0, 1
/* 80D54A4C  98 03 05 DE */	stb r0, 0x5de(r3)
/* 80D54A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D54A54  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D54A58  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80D54A5C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D54A60  54 00 3F FE */	rlwinm r0, r0, 7, 0x1f, 0x1f
/* 80D54A64  98 1D 05 DF */	stb r0, 0x5df(r29)
/* 80D54A68  88 1D 05 E2 */	lbz r0, 0x5e2(r29)
/* 80D54A6C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D54A70  3C 60 80 D5 */	lis r3, l_zevParamTbl@ha
/* 80D54A74  38 63 57 B0 */	addi r3, r3, l_zevParamTbl@l
/* 80D54A78  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D54A7C  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80D54A80  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80D54A84  7F C3 F3 78 */	mr r3, r30
/* 80D54A88  80 9D 01 00 */	lwz r4, 0x100(r29)
/* 80D54A8C  4B 2F 1D 74 */	b setObjectArchive__16dEvent_manager_cFPc
/* 80D54A90  7F C3 F3 78 */	mr r3, r30
/* 80D54A94  7F A4 EB 78 */	mr r4, r29
/* 80D54A98  3C A0 80 D5 */	lis r5, l_zevParamTbl@ha
/* 80D54A9C  38 A5 57 B0 */	addi r5, r5, l_zevParamTbl@l
/* 80D54AA0  88 1D 05 E2 */	lbz r0, 0x5e2(r29)
/* 80D54AA4  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D54AA8  7C A5 02 14 */	add r5, r5, r0
/* 80D54AAC  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80D54AB0  38 C0 00 FF */	li r6, 0xff
/* 80D54AB4  4B 2F 2C A4 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D54AB8  B0 7D 05 DC */	sth r3, 0x5dc(r29)
/* 80D54ABC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D54AC0  7F A4 EB 78 */	mr r4, r29
/* 80D54AC4  4B 2E DA 54 */	b reset__14dEvt_control_cFPv
/* 80D54AC8  7F A3 EB 78 */	mr r3, r29
/* 80D54ACC  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 80D54AD0  38 A0 00 01 */	li r5, 1
/* 80D54AD4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D54AD8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D54ADC  4B 2C 6B 08 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D54AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D54AE4  4B 60 D7 44 */	b _restgpr_29
/* 80D54AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D54AEC  7C 08 03 A6 */	mtlr r0
/* 80D54AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D54AF4  4E 80 00 20 */	blr 
