lbl_80B03658:
/* 80B03658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0365C  7C 08 02 A6 */	mflr r0
/* 80B03660  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B03664  39 61 00 20 */	addi r11, r1, 0x20
/* 80B03668  4B 85 EB 71 */	bl _savegpr_28
/* 80B0366C  7C 7C 1B 78 */	mr r28, r3
/* 80B03670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B03674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B03678  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B0367C  7F C3 F3 78 */	mr r3, r30
/* 80B03680  3C 80 80 B1 */	lis r4, d_a_npc_tk__stringBase0@ha /* 0x80B0C3A0@ha */
/* 80B03684  38 84 C3 A0 */	addi r4, r4, d_a_npc_tk__stringBase0@l /* 0x80B0C3A0@l */
/* 80B03688  38 84 00 1F */	addi r4, r4, 0x1f
/* 80B0368C  38 A0 00 00 */	li r5, 0
/* 80B03690  38 C0 00 00 */	li r6, 0
/* 80B03694  4B 54 44 89 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B03698  7C 7F 1B 78 */	mr r31, r3
/* 80B0369C  2C 1F FF FF */	cmpwi r31, -1
/* 80B036A0  41 82 00 9C */	beq lbl_80B0373C
/* 80B036A4  48 00 8A F5 */	bl checkNowWolf__9daPy_py_cFv
/* 80B036A8  28 03 00 00 */	cmplwi r3, 0
/* 80B036AC  40 82 00 2C */	bne lbl_80B036D8
/* 80B036B0  7F C3 F3 78 */	mr r3, r30
/* 80B036B4  7F E4 FB 78 */	mr r4, r31
/* 80B036B8  3C A0 80 B1 */	lis r5, action_table@ha /* 0x80B0C3F4@ha */
/* 80B036BC  38 A5 C3 F4 */	addi r5, r5, action_table@l /* 0x80B0C3F4@l */
/* 80B036C0  38 C0 00 04 */	li r6, 4
/* 80B036C4  38 E0 00 00 */	li r7, 0
/* 80B036C8  39 00 00 00 */	li r8, 0
/* 80B036CC  4B 54 47 45 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B036D0  7C 7D 1B 78 */	mr r29, r3
/* 80B036D4  48 00 00 28 */	b lbl_80B036FC
lbl_80B036D8:
/* 80B036D8  7F C3 F3 78 */	mr r3, r30
/* 80B036DC  7F E4 FB 78 */	mr r4, r31
/* 80B036E0  3C A0 80 B1 */	lis r5, action_table_w@ha /* 0x80B0C404@ha */
/* 80B036E4  38 A5 C4 04 */	addi r5, r5, action_table_w@l /* 0x80B0C404@l */
/* 80B036E8  38 C0 00 02 */	li r6, 2
/* 80B036EC  38 E0 00 00 */	li r7, 0
/* 80B036F0  39 00 00 00 */	li r8, 0
/* 80B036F4  4B 54 47 1D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B036F8  7C 7D 1B 78 */	mr r29, r3
lbl_80B036FC:
/* 80B036FC  7F C3 F3 78 */	mr r3, r30
/* 80B03700  7F E4 FB 78 */	mr r4, r31
/* 80B03704  4B 54 46 49 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B03708  2C 03 00 00 */	cmpwi r3, 0
/* 80B0370C  41 82 00 10 */	beq lbl_80B0371C
/* 80B03710  7F 83 E3 78 */	mr r3, r28
/* 80B03714  7F A4 EB 78 */	mr r4, r29
/* 80B03718  4B FF EF E1 */	bl initPerchDemo__10daNPC_TK_cFi
lbl_80B0371C:
/* 80B0371C  7F 83 E3 78 */	mr r3, r28
/* 80B03720  7F A4 EB 78 */	mr r4, r29
/* 80B03724  4B FF F4 39 */	bl executePerchDemo__10daNPC_TK_cFi
/* 80B03728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B0372C  41 82 00 10 */	beq lbl_80B0373C
/* 80B03730  7F C3 F3 78 */	mr r3, r30
/* 80B03734  7F E4 FB 78 */	mr r4, r31
/* 80B03738  4B 54 4A 45 */	bl cutEnd__16dEvent_manager_cFi
lbl_80B0373C:
/* 80B0373C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B03740  4B 85 EA E5 */	bl _restgpr_28
/* 80B03744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B03748  7C 08 03 A6 */	mtlr r0
/* 80B0374C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B03750  4E 80 00 20 */	blr 
