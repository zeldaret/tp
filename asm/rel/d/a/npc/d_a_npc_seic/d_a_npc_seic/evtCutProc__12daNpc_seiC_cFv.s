lbl_80AC7E4C:
/* 80AC7E4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC7E50  7C 08 02 A6 */	mflr r0
/* 80AC7E54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC7E58  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC7E5C  4B 89 A3 80 */	b _savegpr_29
/* 80AC7E60  7C 7D 1B 78 */	mr r29, r3
/* 80AC7E64  3B C0 00 00 */	li r30, 0
/* 80AC7E68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC7E6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC7E70  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AC7E74  7F E3 FB 78 */	mr r3, r31
/* 80AC7E78  3C 80 80 AD */	lis r4, struct_80AC92C8+0x0@ha
/* 80AC7E7C  38 84 92 C8 */	addi r4, r4, struct_80AC92C8+0x0@l
/* 80AC7E80  38 84 00 22 */	addi r4, r4, 0x22
/* 80AC7E84  7F A5 EB 78 */	mr r5, r29
/* 80AC7E88  38 C0 FF FF */	li r6, -1
/* 80AC7E8C  4B 57 FC 90 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AC7E90  2C 03 FF FF */	cmpwi r3, -1
/* 80AC7E94  41 82 00 64 */	beq lbl_80AC7EF8
/* 80AC7E98  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80AC7E9C  7F E3 FB 78 */	mr r3, r31
/* 80AC7EA0  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AC7EA4  3C A0 80 AD */	lis r5, mCutNameList__12daNpc_seiC_c@ha
/* 80AC7EA8  38 A5 93 9C */	addi r5, r5, mCutNameList__12daNpc_seiC_c@l
/* 80AC7EAC  38 C0 00 01 */	li r6, 1
/* 80AC7EB0  38 E0 00 00 */	li r7, 0
/* 80AC7EB4  39 00 00 00 */	li r8, 0
/* 80AC7EB8  4B 57 FF 58 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AC7EBC  7C 60 1B 78 */	mr r0, r3
/* 80AC7EC0  7F A3 EB 78 */	mr r3, r29
/* 80AC7EC4  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AC7EC8  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AC7ECC  3C A0 80 AD */	lis r5, mCutList__12daNpc_seiC_c@ha
/* 80AC7ED0  38 05 93 A0 */	addi r0, r5, mCutList__12daNpc_seiC_c@l
/* 80AC7ED4  7D 80 32 14 */	add r12, r0, r6
/* 80AC7ED8  4B 89 A1 AC */	b __ptmf_scall
/* 80AC7EDC  60 00 00 00 */	nop 
/* 80AC7EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80AC7EE4  41 82 00 10 */	beq lbl_80AC7EF4
/* 80AC7EE8  7F E3 FB 78 */	mr r3, r31
/* 80AC7EEC  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AC7EF0  4B 58 02 8C */	b cutEnd__16dEvent_manager_cFi
lbl_80AC7EF4:
/* 80AC7EF4  3B C0 00 01 */	li r30, 1
lbl_80AC7EF8:
/* 80AC7EF8  7F C3 F3 78 */	mr r3, r30
/* 80AC7EFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC7F00  4B 89 A3 28 */	b _restgpr_29
/* 80AC7F04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC7F08  7C 08 03 A6 */	mtlr r0
/* 80AC7F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC7F10  4E 80 00 20 */	blr 
