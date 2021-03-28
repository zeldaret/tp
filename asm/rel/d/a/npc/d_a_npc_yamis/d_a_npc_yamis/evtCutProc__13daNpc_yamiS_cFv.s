lbl_80B47524:
/* 80B47524  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B47528  7C 08 02 A6 */	mflr r0
/* 80B4752C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B47530  39 61 00 20 */	addi r11, r1, 0x20
/* 80B47534  4B 81 AC A8 */	b _savegpr_29
/* 80B47538  7C 7D 1B 78 */	mr r29, r3
/* 80B4753C  3B C0 00 00 */	li r30, 0
/* 80B47540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B47544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B47548  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B4754C  7F E3 FB 78 */	mr r3, r31
/* 80B47550  3C 80 80 B5 */	lis r4, struct_80B49790+0x0@ha
/* 80B47554  38 84 97 90 */	addi r4, r4, struct_80B49790+0x0@l
/* 80B47558  38 84 00 09 */	addi r4, r4, 9
/* 80B4755C  7F A5 EB 78 */	mr r5, r29
/* 80B47560  38 C0 FF FF */	li r6, -1
/* 80B47564  4B 50 05 B8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B47568  2C 03 FF FF */	cmpwi r3, -1
/* 80B4756C  41 82 00 64 */	beq lbl_80B475D0
/* 80B47570  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80B47574  7F E3 FB 78 */	mr r3, r31
/* 80B47578  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B4757C  3C A0 80 B5 */	lis r5, mCutNameList__13daNpc_yamiS_c@ha
/* 80B47580  38 A5 98 A8 */	addi r5, r5, mCutNameList__13daNpc_yamiS_c@l
/* 80B47584  38 C0 00 02 */	li r6, 2
/* 80B47588  38 E0 00 00 */	li r7, 0
/* 80B4758C  39 00 00 00 */	li r8, 0
/* 80B47590  4B 50 08 80 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B47594  7C 60 1B 78 */	mr r0, r3
/* 80B47598  7F A3 EB 78 */	mr r3, r29
/* 80B4759C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B475A0  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B475A4  3C A0 80 B5 */	lis r5, mCutList__13daNpc_yamiS_c@ha
/* 80B475A8  38 05 98 BC */	addi r0, r5, mCutList__13daNpc_yamiS_c@l
/* 80B475AC  7D 80 32 14 */	add r12, r0, r6
/* 80B475B0  4B 81 AA D4 */	b __ptmf_scall
/* 80B475B4  60 00 00 00 */	nop 
/* 80B475B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B475BC  41 82 00 10 */	beq lbl_80B475CC
/* 80B475C0  7F E3 FB 78 */	mr r3, r31
/* 80B475C4  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B475C8  4B 50 0B B4 */	b cutEnd__16dEvent_manager_cFi
lbl_80B475CC:
/* 80B475CC  3B C0 00 01 */	li r30, 1
lbl_80B475D0:
/* 80B475D0  7F C3 F3 78 */	mr r3, r30
/* 80B475D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B475D8  4B 81 AC 50 */	b _restgpr_29
/* 80B475DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B475E0  7C 08 03 A6 */	mtlr r0
/* 80B475E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B475E8  4E 80 00 20 */	blr 
