lbl_80AD1E04:
/* 80AD1E04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD1E08  7C 08 02 A6 */	mflr r0
/* 80AD1E0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD1E10  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD1E14  4B 89 03 C9 */	bl _savegpr_29
/* 80AD1E18  7C 7D 1B 78 */	mr r29, r3
/* 80AD1E1C  3B C0 00 00 */	li r30, 0
/* 80AD1E20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD1E24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD1E28  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AD1E2C  7F E3 FB 78 */	mr r3, r31
/* 80AD1E30  3C 80 80 AD */	lis r4, d_a_npc_seira2__stringBase0@ha /* 0x80AD4B5C@ha */
/* 80AD1E34  38 84 4B 5C */	addi r4, r4, d_a_npc_seira2__stringBase0@l /* 0x80AD4B5C@l */
/* 80AD1E38  38 84 00 24 */	addi r4, r4, 0x24
/* 80AD1E3C  7F A5 EB 78 */	mr r5, r29
/* 80AD1E40  38 C0 FF FF */	li r6, -1
/* 80AD1E44  4B 57 5C D9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AD1E48  2C 03 FF FF */	cmpwi r3, -1
/* 80AD1E4C  41 82 00 64 */	beq lbl_80AD1EB0
/* 80AD1E50  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80AD1E54  7F E3 FB 78 */	mr r3, r31
/* 80AD1E58  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AD1E5C  3C A0 80 AD */	lis r5, mCutNameList__14daNpc_Seira2_c@ha /* 0x80AD52B4@ha */
/* 80AD1E60  38 A5 52 B4 */	addi r5, r5, mCutNameList__14daNpc_Seira2_c@l /* 0x80AD52B4@l */
/* 80AD1E64  38 C0 00 01 */	li r6, 1
/* 80AD1E68  38 E0 00 00 */	li r7, 0
/* 80AD1E6C  39 00 00 00 */	li r8, 0
/* 80AD1E70  4B 57 5F A1 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AD1E74  7C 60 1B 78 */	mr r0, r3
/* 80AD1E78  7F A3 EB 78 */	mr r3, r29
/* 80AD1E7C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AD1E80  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AD1E84  3C A0 80 AD */	lis r5, mCutList__14daNpc_Seira2_c@ha /* 0x80AD52B8@ha */
/* 80AD1E88  38 05 52 B8 */	addi r0, r5, mCutList__14daNpc_Seira2_c@l /* 0x80AD52B8@l */
/* 80AD1E8C  7D 80 32 14 */	add r12, r0, r6
/* 80AD1E90  4B 89 01 F5 */	bl __ptmf_scall
/* 80AD1E94  60 00 00 00 */	nop 
/* 80AD1E98  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1E9C  41 82 00 10 */	beq lbl_80AD1EAC
/* 80AD1EA0  7F E3 FB 78 */	mr r3, r31
/* 80AD1EA4  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AD1EA8  4B 57 62 D5 */	bl cutEnd__16dEvent_manager_cFi
lbl_80AD1EAC:
/* 80AD1EAC  3B C0 00 01 */	li r30, 1
lbl_80AD1EB0:
/* 80AD1EB0  38 7D 0E 78 */	addi r3, r29, 0xe78
/* 80AD1EB4  4B 6C 44 59 */	bl Save__16ShopCam_action_cFv
/* 80AD1EB8  7F C3 F3 78 */	mr r3, r30
/* 80AD1EBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD1EC0  4B 89 03 69 */	bl _restgpr_29
/* 80AD1EC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD1EC8  7C 08 03 A6 */	mtlr r0
/* 80AD1ECC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD1ED0  4E 80 00 20 */	blr 
