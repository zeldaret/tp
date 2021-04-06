lbl_80AA9E98:
/* 80AA9E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA9E9C  7C 08 02 A6 */	mflr r0
/* 80AA9EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA9EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA9EA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA9EAC  7C 7E 1B 78 */	mr r30, r3
/* 80AA9EB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA9EB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA9EB8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AA9EBC  7F E3 FB 78 */	mr r3, r31
/* 80AA9EC0  3C 80 80 AB */	lis r4, d_a_npc_post__stringBase0@ha /* 0x80AAD34C@ha */
/* 80AA9EC4  38 84 D3 4C */	addi r4, r4, d_a_npc_post__stringBase0@l /* 0x80AAD34C@l */
/* 80AA9EC8  38 84 00 4F */	addi r4, r4, 0x4f
/* 80AA9ECC  7F C5 F3 78 */	mr r5, r30
/* 80AA9ED0  38 C0 FF FF */	li r6, -1
/* 80AA9ED4  4B 59 DC 49 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AA9ED8  2C 03 FF FF */	cmpwi r3, -1
/* 80AA9EDC  41 82 00 68 */	beq lbl_80AA9F44
/* 80AA9EE0  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80AA9EE4  7F E3 FB 78 */	mr r3, r31
/* 80AA9EE8  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AA9EEC  3C A0 80 AB */	lis r5, mCutNameList__12daNpc_Post_c@ha /* 0x80AAD8F0@ha */
/* 80AA9EF0  38 A5 D8 F0 */	addi r5, r5, mCutNameList__12daNpc_Post_c@l /* 0x80AAD8F0@l */
/* 80AA9EF4  38 C0 00 02 */	li r6, 2
/* 80AA9EF8  38 E0 00 00 */	li r7, 0
/* 80AA9EFC  39 00 00 00 */	li r8, 0
/* 80AA9F00  4B 59 DF 11 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AA9F04  7C 60 1B 78 */	mr r0, r3
/* 80AA9F08  7F C3 F3 78 */	mr r3, r30
/* 80AA9F0C  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AA9F10  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AA9F14  3C A0 80 AB */	lis r5, mCutList__12daNpc_Post_c@ha /* 0x80AAD904@ha */
/* 80AA9F18  38 05 D9 04 */	addi r0, r5, mCutList__12daNpc_Post_c@l /* 0x80AAD904@l */
/* 80AA9F1C  7D 80 32 14 */	add r12, r0, r6
/* 80AA9F20  4B 8B 81 65 */	bl __ptmf_scall
/* 80AA9F24  60 00 00 00 */	nop 
/* 80AA9F28  2C 03 00 00 */	cmpwi r3, 0
/* 80AA9F2C  41 82 00 10 */	beq lbl_80AA9F3C
/* 80AA9F30  7F E3 FB 78 */	mr r3, r31
/* 80AA9F34  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80AA9F38  4B 59 E2 45 */	bl cutEnd__16dEvent_manager_cFi
lbl_80AA9F3C:
/* 80AA9F3C  38 60 00 01 */	li r3, 1
/* 80AA9F40  48 00 00 08 */	b lbl_80AA9F48
lbl_80AA9F44:
/* 80AA9F44  38 60 00 00 */	li r3, 0
lbl_80AA9F48:
/* 80AA9F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA9F4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA9F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA9F54  7C 08 03 A6 */	mtlr r0
/* 80AA9F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA9F5C  4E 80 00 20 */	blr 
