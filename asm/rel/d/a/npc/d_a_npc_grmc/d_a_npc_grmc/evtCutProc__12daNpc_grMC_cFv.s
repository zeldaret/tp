lbl_809D8174:
/* 809D8174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D8178  7C 08 02 A6 */	mflr r0
/* 809D817C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D8180  39 61 00 20 */	addi r11, r1, 0x20
/* 809D8184  4B 98 A0 59 */	bl _savegpr_29
/* 809D8188  7C 7D 1B 78 */	mr r29, r3
/* 809D818C  3B C0 00 00 */	li r30, 0
/* 809D8190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D8194  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D8198  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809D819C  7F E3 FB 78 */	mr r3, r31
/* 809D81A0  3C 80 80 9E */	lis r4, d_a_npc_grmc__stringBase0@ha /* 0x809D9E68@ha */
/* 809D81A4  38 84 9E 68 */	addi r4, r4, d_a_npc_grmc__stringBase0@l /* 0x809D9E68@l */
/* 809D81A8  38 84 00 1D */	addi r4, r4, 0x1d
/* 809D81AC  7F A5 EB 78 */	mr r5, r29
/* 809D81B0  38 C0 FF FF */	li r6, -1
/* 809D81B4  4B 66 F9 69 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809D81B8  2C 03 FF FF */	cmpwi r3, -1
/* 809D81BC  41 82 00 64 */	beq lbl_809D8220
/* 809D81C0  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 809D81C4  7F E3 FB 78 */	mr r3, r31
/* 809D81C8  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809D81CC  3C A0 80 9E */	lis r5, mCutNameList__12daNpc_grMC_c@ha /* 0x809DA240@ha */
/* 809D81D0  38 A5 A2 40 */	addi r5, r5, mCutNameList__12daNpc_grMC_c@l /* 0x809DA240@l */
/* 809D81D4  38 C0 00 01 */	li r6, 1
/* 809D81D8  38 E0 00 00 */	li r7, 0
/* 809D81DC  39 00 00 00 */	li r8, 0
/* 809D81E0  4B 66 FC 31 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809D81E4  7C 60 1B 78 */	mr r0, r3
/* 809D81E8  7F A3 EB 78 */	mr r3, r29
/* 809D81EC  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809D81F0  1C C0 00 0C */	mulli r6, r0, 0xc
/* 809D81F4  3C A0 80 9E */	lis r5, mCutList__12daNpc_grMC_c@ha /* 0x809DA244@ha */
/* 809D81F8  38 05 A2 44 */	addi r0, r5, mCutList__12daNpc_grMC_c@l /* 0x809DA244@l */
/* 809D81FC  7D 80 32 14 */	add r12, r0, r6
/* 809D8200  4B 98 9E 85 */	bl __ptmf_scall
/* 809D8204  60 00 00 00 */	nop 
/* 809D8208  2C 03 00 00 */	cmpwi r3, 0
/* 809D820C  41 82 00 10 */	beq lbl_809D821C
/* 809D8210  7F E3 FB 78 */	mr r3, r31
/* 809D8214  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809D8218  4B 66 FF 65 */	bl cutEnd__16dEvent_manager_cFi
lbl_809D821C:
/* 809D821C  3B C0 00 01 */	li r30, 1
lbl_809D8220:
/* 809D8220  7F C3 F3 78 */	mr r3, r30
/* 809D8224  39 61 00 20 */	addi r11, r1, 0x20
/* 809D8228  4B 98 A0 01 */	bl _restgpr_29
/* 809D822C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D8230  7C 08 03 A6 */	mtlr r0
/* 809D8234  38 21 00 20 */	addi r1, r1, 0x20
/* 809D8238  4E 80 00 20 */	blr 
