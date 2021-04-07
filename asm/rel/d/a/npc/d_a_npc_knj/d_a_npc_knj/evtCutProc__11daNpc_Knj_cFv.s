lbl_80A43E5C:
/* 80A43E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A43E60  7C 08 02 A6 */	mflr r0
/* 80A43E64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A43E68  39 61 00 20 */	addi r11, r1, 0x20
/* 80A43E6C  4B 91 E3 71 */	bl _savegpr_29
/* 80A43E70  7C 7D 1B 78 */	mr r29, r3
/* 80A43E74  3B C0 00 00 */	li r30, 0
/* 80A43E78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A43E7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A43E80  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A43E84  7F E3 FB 78 */	mr r3, r31
/* 80A43E88  3C 80 80 A4 */	lis r4, d_a_npc_knj__stringBase0@ha /* 0x80A455BC@ha */
/* 80A43E8C  38 84 55 BC */	addi r4, r4, d_a_npc_knj__stringBase0@l /* 0x80A455BC@l */
/* 80A43E90  38 84 00 0D */	addi r4, r4, 0xd
/* 80A43E94  7F A5 EB 78 */	mr r5, r29
/* 80A43E98  38 C0 FF FF */	li r6, -1
/* 80A43E9C  4B 60 3C 81 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A43EA0  2C 03 FF FF */	cmpwi r3, -1
/* 80A43EA4  41 82 00 64 */	beq lbl_80A43F08
/* 80A43EA8  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80A43EAC  7F E3 FB 78 */	mr r3, r31
/* 80A43EB0  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80A43EB4  3C A0 80 A4 */	lis r5, mCutNameList__11daNpc_Knj_c@ha /* 0x80A45684@ha */
/* 80A43EB8  38 A5 56 84 */	addi r5, r5, mCutNameList__11daNpc_Knj_c@l /* 0x80A45684@l */
/* 80A43EBC  38 C0 00 01 */	li r6, 1
/* 80A43EC0  38 E0 00 00 */	li r7, 0
/* 80A43EC4  39 00 00 00 */	li r8, 0
/* 80A43EC8  4B 60 3F 49 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A43ECC  7C 60 1B 78 */	mr r0, r3
/* 80A43ED0  7F A3 EB 78 */	mr r3, r29
/* 80A43ED4  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80A43ED8  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A43EDC  3C A0 80 A4 */	lis r5, mCutList__11daNpc_Knj_c@ha /* 0x80A45688@ha */
/* 80A43EE0  38 05 56 88 */	addi r0, r5, mCutList__11daNpc_Knj_c@l /* 0x80A45688@l */
/* 80A43EE4  7D 80 32 14 */	add r12, r0, r6
/* 80A43EE8  4B 91 E1 9D */	bl __ptmf_scall
/* 80A43EEC  60 00 00 00 */	nop 
/* 80A43EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A43EF4  41 82 00 10 */	beq lbl_80A43F04
/* 80A43EF8  7F E3 FB 78 */	mr r3, r31
/* 80A43EFC  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80A43F00  4B 60 42 7D */	bl cutEnd__16dEvent_manager_cFi
lbl_80A43F04:
/* 80A43F04  3B C0 00 01 */	li r30, 1
lbl_80A43F08:
/* 80A43F08  7F C3 F3 78 */	mr r3, r30
/* 80A43F0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A43F10  4B 91 E3 19 */	bl _restgpr_29
/* 80A43F14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A43F18  7C 08 03 A6 */	mtlr r0
/* 80A43F1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A43F20  4E 80 00 20 */	blr 
