lbl_80D52DB4:
/* 80D52DB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D52DB8  7C 08 02 A6 */	mflr r0
/* 80D52DBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D52DC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D52DC4  4B 60 F4 18 */	b _savegpr_29
/* 80D52DC8  7C 7D 1B 78 */	mr r29, r3
/* 80D52DCC  38 00 00 01 */	li r0, 1
/* 80D52DD0  98 03 05 DE */	stb r0, 0x5de(r3)
/* 80D52DD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D52DD8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D52DDC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80D52DE0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D52DE4  54 00 3F FE */	rlwinm r0, r0, 7, 0x1f, 0x1f
/* 80D52DE8  98 1D 05 DF */	stb r0, 0x5df(r29)
/* 80D52DEC  88 1D 05 E2 */	lbz r0, 0x5e2(r29)
/* 80D52DF0  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D52DF4  3C 60 80 D5 */	lis r3, l_zevParamTbl@ha
/* 80D52DF8  38 63 57 B0 */	addi r3, r3, l_zevParamTbl@l
/* 80D52DFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D52E00  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80D52E04  3B DF 4F F8 */	addi r30, r31, 0x4ff8
/* 80D52E08  7F C3 F3 78 */	mr r3, r30
/* 80D52E0C  80 9D 01 00 */	lwz r4, 0x100(r29)
/* 80D52E10  4B 2F 39 F0 */	b setObjectArchive__16dEvent_manager_cFPc
/* 80D52E14  7F C3 F3 78 */	mr r3, r30
/* 80D52E18  7F A4 EB 78 */	mr r4, r29
/* 80D52E1C  3C A0 80 D5 */	lis r5, l_zevParamTbl@ha
/* 80D52E20  38 A5 57 B0 */	addi r5, r5, l_zevParamTbl@l
/* 80D52E24  88 1D 05 E2 */	lbz r0, 0x5e2(r29)
/* 80D52E28  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D52E2C  7C A5 02 14 */	add r5, r5, r0
/* 80D52E30  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 80D52E34  38 C0 00 FF */	li r6, 0xff
/* 80D52E38  4B 2F 49 20 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D52E3C  B0 7D 05 DC */	sth r3, 0x5dc(r29)
/* 80D52E40  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80D52E44  7F A4 EB 78 */	mr r4, r29
/* 80D52E48  4B 2E F6 D0 */	b reset__14dEvt_control_cFPv
/* 80D52E4C  7F A3 EB 78 */	mr r3, r29
/* 80D52E50  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 80D52E54  38 A0 00 01 */	li r5, 1
/* 80D52E58  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D52E5C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D52E60  4B 2C 87 84 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D52E64  39 61 00 20 */	addi r11, r1, 0x20
/* 80D52E68  4B 60 F3 C0 */	b _restgpr_29
/* 80D52E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D52E70  7C 08 03 A6 */	mtlr r0
/* 80D52E74  38 21 00 20 */	addi r1, r1, 0x20
/* 80D52E78  4E 80 00 20 */	blr 
