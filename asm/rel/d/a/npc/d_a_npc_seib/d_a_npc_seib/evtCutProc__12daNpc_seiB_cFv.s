lbl_80AC59F4:
/* 80AC59F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC59F8  7C 08 02 A6 */	mflr r0
/* 80AC59FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC5A00  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC5A04  4B 89 C7 D8 */	b _savegpr_29
/* 80AC5A08  7C 7D 1B 78 */	mr r29, r3
/* 80AC5A0C  3B C0 00 00 */	li r30, 0
/* 80AC5A10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC5A14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC5A18  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AC5A1C  7F E3 FB 78 */	mr r3, r31
/* 80AC5A20  3C 80 80 AC */	lis r4, struct_80AC70D0+0x0@ha
/* 80AC5A24  38 84 70 D0 */	addi r4, r4, struct_80AC70D0+0x0@l
/* 80AC5A28  38 84 00 22 */	addi r4, r4, 0x22
/* 80AC5A2C  7F A5 EB 78 */	mr r5, r29
/* 80AC5A30  38 C0 FF FF */	li r6, -1
/* 80AC5A34  4B 58 20 E8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AC5A38  2C 03 FF FF */	cmpwi r3, -1
/* 80AC5A3C  41 82 00 64 */	beq lbl_80AC5AA0
/* 80AC5A40  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80AC5A44  7F E3 FB 78 */	mr r3, r31
/* 80AC5A48  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AC5A4C  3C A0 80 AC */	lis r5, mCutNameList__12daNpc_seiB_c@ha
/* 80AC5A50  38 A5 72 28 */	addi r5, r5, mCutNameList__12daNpc_seiB_c@l
/* 80AC5A54  38 C0 00 01 */	li r6, 1
/* 80AC5A58  38 E0 00 00 */	li r7, 0
/* 80AC5A5C  39 00 00 00 */	li r8, 0
/* 80AC5A60  4B 58 23 B0 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80AC5A64  7C 60 1B 78 */	mr r0, r3
/* 80AC5A68  7F A3 EB 78 */	mr r3, r29
/* 80AC5A6C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AC5A70  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80AC5A74  3C A0 80 AC */	lis r5, mCutList__12daNpc_seiB_c@ha
/* 80AC5A78  38 05 72 2C */	addi r0, r5, mCutList__12daNpc_seiB_c@l
/* 80AC5A7C  7D 80 32 14 */	add r12, r0, r6
/* 80AC5A80  4B 89 C6 04 */	b __ptmf_scall
/* 80AC5A84  60 00 00 00 */	nop 
/* 80AC5A88  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5A8C  41 82 00 10 */	beq lbl_80AC5A9C
/* 80AC5A90  7F E3 FB 78 */	mr r3, r31
/* 80AC5A94  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80AC5A98  4B 58 26 E4 */	b cutEnd__16dEvent_manager_cFi
lbl_80AC5A9C:
/* 80AC5A9C  3B C0 00 01 */	li r30, 1
lbl_80AC5AA0:
/* 80AC5AA0  7F C3 F3 78 */	mr r3, r30
/* 80AC5AA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC5AA8  4B 89 C7 80 */	b _restgpr_29
/* 80AC5AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC5AB0  7C 08 03 A6 */	mtlr r0
/* 80AC5AB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC5AB8  4E 80 00 20 */	blr 
