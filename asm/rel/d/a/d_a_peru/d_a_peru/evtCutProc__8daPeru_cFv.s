lbl_80D47E48:
/* 80D47E48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D47E4C  7C 08 02 A6 */	mflr r0
/* 80D47E50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D47E54  39 61 00 20 */	addi r11, r1, 0x20
/* 80D47E58  4B 61 A3 85 */	bl _savegpr_29
/* 80D47E5C  7C 7D 1B 78 */	mr r29, r3
/* 80D47E60  3B C0 00 00 */	li r30, 0
/* 80D47E64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D47E68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D47E6C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80D47E70  7F E3 FB 78 */	mr r3, r31
/* 80D47E74  3C 80 80 D5 */	lis r4, d_a_peru__stringBase0@ha /* 0x80D4C1B0@ha */
/* 80D47E78  38 84 C1 B0 */	addi r4, r4, d_a_peru__stringBase0@l /* 0x80D4C1B0@l */
/* 80D47E7C  38 84 00 1E */	addi r4, r4, 0x1e
/* 80D47E80  7F A5 EB 78 */	mr r5, r29
/* 80D47E84  38 C0 FF FF */	li r6, -1
/* 80D47E88  4B 2F FC 95 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80D47E8C  2C 03 FF FF */	cmpwi r3, -1
/* 80D47E90  41 82 00 64 */	beq lbl_80D47EF4
/* 80D47E94  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80D47E98  7F E3 FB 78 */	mr r3, r31
/* 80D47E9C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80D47EA0  3C A0 80 D5 */	lis r5, mCutNameList__8daPeru_c@ha /* 0x80D4C4E4@ha */
/* 80D47EA4  38 A5 C4 E4 */	addi r5, r5, mCutNameList__8daPeru_c@l /* 0x80D4C4E4@l */
/* 80D47EA8  38 C0 00 03 */	li r6, 3
/* 80D47EAC  38 E0 00 00 */	li r7, 0
/* 80D47EB0  39 00 00 00 */	li r8, 0
/* 80D47EB4  4B 2F FF 5D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80D47EB8  7C 60 1B 78 */	mr r0, r3
/* 80D47EBC  7F A3 EB 78 */	mr r3, r29
/* 80D47EC0  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80D47EC4  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80D47EC8  3C A0 80 D5 */	lis r5, mCutList__8daPeru_c@ha /* 0x80D4C508@ha */
/* 80D47ECC  38 05 C5 08 */	addi r0, r5, mCutList__8daPeru_c@l /* 0x80D4C508@l */
/* 80D47ED0  7D 80 32 14 */	add r12, r0, r6
/* 80D47ED4  4B 61 A1 B1 */	bl __ptmf_scall
/* 80D47ED8  60 00 00 00 */	nop 
/* 80D47EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80D47EE0  41 82 00 10 */	beq lbl_80D47EF0
/* 80D47EE4  7F E3 FB 78 */	mr r3, r31
/* 80D47EE8  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80D47EEC  4B 30 02 91 */	bl cutEnd__16dEvent_manager_cFi
lbl_80D47EF0:
/* 80D47EF0  3B C0 00 01 */	li r30, 1
lbl_80D47EF4:
/* 80D47EF4  7F C3 F3 78 */	mr r3, r30
/* 80D47EF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80D47EFC  4B 61 A3 2D */	bl _restgpr_29
/* 80D47F00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D47F04  7C 08 03 A6 */	mtlr r0
/* 80D47F08  38 21 00 20 */	addi r1, r1, 0x20
/* 80D47F0C  4E 80 00 20 */	blr 
