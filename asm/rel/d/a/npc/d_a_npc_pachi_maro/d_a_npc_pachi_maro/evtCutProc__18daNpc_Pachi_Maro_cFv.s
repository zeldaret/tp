lbl_80A98B9C:
/* 80A98B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A98BA0  7C 08 02 A6 */	mflr r0
/* 80A98BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A98BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A98BAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A98BB0  7C 7E 1B 78 */	mr r30, r3
/* 80A98BB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A98BB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A98BBC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A98BC0  7F E3 FB 78 */	mr r3, r31
/* 80A98BC4  3C 80 80 AA */	lis r4, d_a_npc_pachi_maro__stringBase0@ha /* 0x80A9B988@ha */
/* 80A98BC8  38 84 B9 88 */	addi r4, r4, d_a_npc_pachi_maro__stringBase0@l /* 0x80A9B988@l */
/* 80A98BCC  38 84 00 E1 */	addi r4, r4, 0xe1
/* 80A98BD0  7F C5 F3 78 */	mr r5, r30
/* 80A98BD4  38 C0 FF FF */	li r6, -1
/* 80A98BD8  4B 5A EF 45 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A98BDC  2C 03 FF FF */	cmpwi r3, -1
/* 80A98BE0  41 82 00 68 */	beq lbl_80A98C48
/* 80A98BE4  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 80A98BE8  7F E3 FB 78 */	mr r3, r31
/* 80A98BEC  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A98BF0  3C A0 80 AA */	lis r5, mCutNameList__18daNpc_Pachi_Maro_c@ha /* 0x80A9BE64@ha */
/* 80A98BF4  38 A5 BE 64 */	addi r5, r5, mCutNameList__18daNpc_Pachi_Maro_c@l /* 0x80A9BE64@l */
/* 80A98BF8  38 C0 00 0B */	li r6, 0xb
/* 80A98BFC  38 E0 00 00 */	li r7, 0
/* 80A98C00  39 00 00 00 */	li r8, 0
/* 80A98C04  4B 5A F2 0D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80A98C08  7C 60 1B 78 */	mr r0, r3
/* 80A98C0C  7F C3 F3 78 */	mr r3, r30
/* 80A98C10  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A98C14  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80A98C18  3C A0 80 AA */	lis r5, mCutList__18daNpc_Pachi_Maro_c@ha /* 0x80A9BF08@ha */
/* 80A98C1C  38 05 BF 08 */	addi r0, r5, mCutList__18daNpc_Pachi_Maro_c@l /* 0x80A9BF08@l */
/* 80A98C20  7D 80 32 14 */	add r12, r0, r6
/* 80A98C24  4B 8C 94 61 */	bl __ptmf_scall
/* 80A98C28  60 00 00 00 */	nop 
/* 80A98C2C  2C 03 00 00 */	cmpwi r3, 0
/* 80A98C30  41 82 00 10 */	beq lbl_80A98C40
/* 80A98C34  7F E3 FB 78 */	mr r3, r31
/* 80A98C38  80 9E 0D AC */	lwz r4, 0xdac(r30)
/* 80A98C3C  4B 5A F5 41 */	bl cutEnd__16dEvent_manager_cFi
lbl_80A98C40:
/* 80A98C40  38 60 00 01 */	li r3, 1
/* 80A98C44  48 00 00 08 */	b lbl_80A98C4C
lbl_80A98C48:
/* 80A98C48  38 60 00 00 */	li r3, 0
lbl_80A98C4C:
/* 80A98C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A98C50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A98C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A98C58  7C 08 03 A6 */	mtlr r0
/* 80A98C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A98C60  4E 80 00 20 */	blr 
