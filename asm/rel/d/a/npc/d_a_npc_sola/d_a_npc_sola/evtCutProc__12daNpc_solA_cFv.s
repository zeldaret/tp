lbl_80AED608:
/* 80AED608  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AED60C  7C 08 02 A6 */	mflr r0
/* 80AED610  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AED614  39 61 00 20 */	addi r11, r1, 0x20
/* 80AED618  4B 87 4B C5 */	bl _savegpr_29
/* 80AED61C  7C 7D 1B 78 */	mr r29, r3
/* 80AED620  3B C0 00 00 */	li r30, 0
/* 80AED624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AED628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AED62C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AED630  7F E3 FB 78 */	mr r3, r31
/* 80AED634  3C 80 80 AF */	lis r4, d_a_npc_sola__stringBase0@ha /* 0x80AEF1E0@ha */
/* 80AED638  38 84 F1 E0 */	addi r4, r4, d_a_npc_sola__stringBase0@l /* 0x80AEF1E0@l */
/* 80AED63C  38 84 00 0D */	addi r4, r4, 0xd
/* 80AED640  7F A5 EB 78 */	mr r5, r29
/* 80AED644  38 C0 FF FF */	li r6, -1
/* 80AED648  4B 55 A4 D5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AED64C  2C 03 FF FF */	cmpwi r3, -1
/* 80AED650  41 82 00 64 */	beq lbl_80AED6B4
/* 80AED654  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80AED658  7F E3 FB 78 */	mr r3, r31
/* 80AED65C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AED660  3C A0 80 AF */	lis r5, mCutNameList__12daNpc_solA_c@ha /* 0x80AEF294@ha */
/* 80AED664  38 A5 F2 94 */	addi r5, r5, mCutNameList__12daNpc_solA_c@l /* 0x80AEF294@l */
/* 80AED668  38 C0 00 01 */	li r6, 1
/* 80AED66C  38 E0 00 00 */	li r7, 0
/* 80AED670  39 00 00 00 */	li r8, 0
/* 80AED674  4B 55 A7 9D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AED678  7C 60 1B 78 */	mr r0, r3
/* 80AED67C  7F A3 EB 78 */	mr r3, r29
/* 80AED680  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AED684  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AED688  3C A0 80 AF */	lis r5, mCutList__12daNpc_solA_c@ha /* 0x80AEF298@ha */
/* 80AED68C  38 05 F2 98 */	addi r0, r5, mCutList__12daNpc_solA_c@l /* 0x80AEF298@l */
/* 80AED690  7D 80 32 14 */	add r12, r0, r6
/* 80AED694  4B 87 49 F1 */	bl __ptmf_scall
/* 80AED698  60 00 00 00 */	nop 
/* 80AED69C  2C 03 00 00 */	cmpwi r3, 0
/* 80AED6A0  41 82 00 10 */	beq lbl_80AED6B0
/* 80AED6A4  7F E3 FB 78 */	mr r3, r31
/* 80AED6A8  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AED6AC  4B 55 AA D1 */	bl cutEnd__16dEvent_manager_cFi
lbl_80AED6B0:
/* 80AED6B0  3B C0 00 01 */	li r30, 1
lbl_80AED6B4:
/* 80AED6B4  7F C3 F3 78 */	mr r3, r30
/* 80AED6B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AED6BC  4B 87 4B 6D */	bl _restgpr_29
/* 80AED6C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AED6C4  7C 08 03 A6 */	mtlr r0
/* 80AED6C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AED6CC  4E 80 00 20 */	blr 
