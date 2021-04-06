lbl_80D53DD4:
/* 80D53DD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D53DD8  7C 08 02 A6 */	mflr r0
/* 80D53DDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D53DE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D53DE4  4B 60 E3 F9 */	bl _savegpr_29
/* 80D53DE8  7C 7F 1B 78 */	mr r31, r3
/* 80D53DEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D53DF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D53DF4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D53DF8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D53DFC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D53E00  7C 05 07 74 */	extsb r5, r0
/* 80D53E04  4B 2E 13 FD */	bl onSwitch__10dSv_info_cFii
/* 80D53E08  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D53E0C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D53E10  3C 60 80 D5 */	lis r3, l_zevParamTbl@ha /* 0x80D557B0@ha */
/* 80D53E14  38 63 57 B0 */	addi r3, r3, l_zevParamTbl@l /* 0x80D557B0@l */
/* 80D53E18  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D53E1C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80D53E20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D53E24  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D53E28  3B BE 4F F8 */	addi r29, r30, 0x4ff8
/* 80D53E2C  7F A3 EB 78 */	mr r3, r29
/* 80D53E30  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80D53E34  4B 2F 29 CD */	bl setObjectArchive__16dEvent_manager_cFPc
/* 80D53E38  7F A3 EB 78 */	mr r3, r29
/* 80D53E3C  7F E4 FB 78 */	mr r4, r31
/* 80D53E40  3C A0 80 D5 */	lis r5, l_zevParamTbl@ha /* 0x80D557B0@ha */
/* 80D53E44  38 A5 57 B0 */	addi r5, r5, l_zevParamTbl@l /* 0x80D557B0@l */
/* 80D53E48  88 1F 05 E2 */	lbz r0, 0x5e2(r31)
/* 80D53E4C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80D53E50  7C A5 02 14 */	add r5, r5, r0
/* 80D53E54  80 A5 00 08 */	lwz r5, 8(r5)
/* 80D53E58  38 C0 00 FF */	li r6, 0xff
/* 80D53E5C  4B 2F 38 FD */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D53E60  B0 7F 05 DC */	sth r3, 0x5dc(r31)
/* 80D53E64  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80D53E68  28 00 00 00 */	cmplwi r0, 0
/* 80D53E6C  41 82 00 2C */	beq lbl_80D53E98
/* 80D53E70  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80D53E74  7F E4 FB 78 */	mr r4, r31
/* 80D53E78  4B 2E E6 A1 */	bl reset__14dEvt_control_cFPv
/* 80D53E7C  7F E3 FB 78 */	mr r3, r31
/* 80D53E80  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 80D53E84  38 A0 00 01 */	li r5, 1
/* 80D53E88  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D53E8C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D53E90  4B 2C 77 55 */	bl fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80D53E94  48 00 00 24 */	b lbl_80D53EB8
lbl_80D53E98:
/* 80D53E98  7F E3 FB 78 */	mr r3, r31
/* 80D53E9C  A8 9F 05 DC */	lha r4, 0x5dc(r31)
/* 80D53EA0  38 A0 00 FF */	li r5, 0xff
/* 80D53EA4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D53EA8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D53EAC  38 E0 00 04 */	li r7, 4
/* 80D53EB0  39 00 00 01 */	li r8, 1
/* 80D53EB4  4B 2C 77 C9 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
lbl_80D53EB8:
/* 80D53EB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D53EBC  4B 60 E3 6D */	bl _restgpr_29
/* 80D53EC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D53EC4  7C 08 03 A6 */	mtlr r0
/* 80D53EC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D53ECC  4E 80 00 20 */	blr 
