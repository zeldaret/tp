lbl_809BC5AC:
/* 809BC5AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809BC5B0  7C 08 02 A6 */	mflr r0
/* 809BC5B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BC5B8  39 61 00 20 */	addi r11, r1, 0x20
/* 809BC5BC  4B 9A 5C 21 */	bl _savegpr_29
/* 809BC5C0  7C 7D 1B 78 */	mr r29, r3
/* 809BC5C4  3B C0 00 00 */	li r30, 0
/* 809BC5C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809BC5CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809BC5D0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809BC5D4  7F E3 FB 78 */	mr r3, r31
/* 809BC5D8  3C 80 80 9C */	lis r4, d_a_npc_gnd__stringBase0@ha /* 0x809BE588@ha */
/* 809BC5DC  38 84 E5 88 */	addi r4, r4, d_a_npc_gnd__stringBase0@l /* 0x809BE588@l */
/* 809BC5E0  38 84 00 0D */	addi r4, r4, 0xd
/* 809BC5E4  7F A5 EB 78 */	mr r5, r29
/* 809BC5E8  38 C0 FF FF */	li r6, -1
/* 809BC5EC  4B 68 B5 31 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809BC5F0  2C 03 FF FF */	cmpwi r3, -1
/* 809BC5F4  41 82 00 64 */	beq lbl_809BC658
/* 809BC5F8  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 809BC5FC  7F E3 FB 78 */	mr r3, r31
/* 809BC600  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809BC604  3C A0 80 9C */	lis r5, mCutNameList__11daNpc_Gnd_c@ha /* 0x809BE640@ha */
/* 809BC608  38 A5 E6 40 */	addi r5, r5, mCutNameList__11daNpc_Gnd_c@l /* 0x809BE640@l */
/* 809BC60C  38 C0 00 01 */	li r6, 1
/* 809BC610  38 E0 00 00 */	li r7, 0
/* 809BC614  39 00 00 00 */	li r8, 0
/* 809BC618  4B 68 B7 F9 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809BC61C  7C 60 1B 78 */	mr r0, r3
/* 809BC620  7F A3 EB 78 */	mr r3, r29
/* 809BC624  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809BC628  1C C0 00 0C */	mulli r6, r0, 0xc
/* 809BC62C  3C A0 80 9C */	lis r5, mCutList__11daNpc_Gnd_c@ha /* 0x809BE644@ha */
/* 809BC630  38 05 E6 44 */	addi r0, r5, mCutList__11daNpc_Gnd_c@l /* 0x809BE644@l */
/* 809BC634  7D 80 32 14 */	add r12, r0, r6
/* 809BC638  4B 9A 5A 4D */	bl __ptmf_scall
/* 809BC63C  60 00 00 00 */	nop 
/* 809BC640  2C 03 00 00 */	cmpwi r3, 0
/* 809BC644  41 82 00 10 */	beq lbl_809BC654
/* 809BC648  7F E3 FB 78 */	mr r3, r31
/* 809BC64C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809BC650  4B 68 BB 2D */	bl cutEnd__16dEvent_manager_cFi
lbl_809BC654:
/* 809BC654  3B C0 00 01 */	li r30, 1
lbl_809BC658:
/* 809BC658  7F C3 F3 78 */	mr r3, r30
/* 809BC65C  39 61 00 20 */	addi r11, r1, 0x20
/* 809BC660  4B 9A 5B C9 */	bl _restgpr_29
/* 809BC664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809BC668  7C 08 03 A6 */	mtlr r0
/* 809BC66C  38 21 00 20 */	addi r1, r1, 0x20
/* 809BC670  4E 80 00 20 */	blr 
