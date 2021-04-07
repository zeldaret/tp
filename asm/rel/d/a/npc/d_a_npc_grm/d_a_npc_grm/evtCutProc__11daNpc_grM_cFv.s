lbl_809D4FD0:
/* 809D4FD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D4FD4  7C 08 02 A6 */	mflr r0
/* 809D4FD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D4FDC  39 61 00 20 */	addi r11, r1, 0x20
/* 809D4FE0  4B 98 D1 FD */	bl _savegpr_29
/* 809D4FE4  7C 7D 1B 78 */	mr r29, r3
/* 809D4FE8  3B C0 00 00 */	li r30, 0
/* 809D4FEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D4FF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D4FF4  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809D4FF8  7F E3 FB 78 */	mr r3, r31
/* 809D4FFC  3C 80 80 9D */	lis r4, d_a_npc_grm__stringBase0@ha /* 0x809D6E60@ha */
/* 809D5000  38 84 6E 60 */	addi r4, r4, d_a_npc_grm__stringBase0@l /* 0x809D6E60@l */
/* 809D5004  38 84 00 2B */	addi r4, r4, 0x2b
/* 809D5008  7F A5 EB 78 */	mr r5, r29
/* 809D500C  38 C0 FF FF */	li r6, -1
/* 809D5010  4B 67 2B 0D */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809D5014  2C 03 FF FF */	cmpwi r3, -1
/* 809D5018  41 82 00 64 */	beq lbl_809D507C
/* 809D501C  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 809D5020  7F E3 FB 78 */	mr r3, r31
/* 809D5024  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809D5028  3C A0 80 9D */	lis r5, mCutNameList__11daNpc_grM_c@ha /* 0x809D70BC@ha */
/* 809D502C  38 A5 70 BC */	addi r5, r5, mCutNameList__11daNpc_grM_c@l /* 0x809D70BC@l */
/* 809D5030  38 C0 00 02 */	li r6, 2
/* 809D5034  38 E0 00 00 */	li r7, 0
/* 809D5038  39 00 00 00 */	li r8, 0
/* 809D503C  4B 67 2D D5 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809D5040  7C 60 1B 78 */	mr r0, r3
/* 809D5044  7F A3 EB 78 */	mr r3, r29
/* 809D5048  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809D504C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 809D5050  3C A0 80 9D */	lis r5, mCutList__11daNpc_grM_c@ha /* 0x809D70D0@ha */
/* 809D5054  38 05 70 D0 */	addi r0, r5, mCutList__11daNpc_grM_c@l /* 0x809D70D0@l */
/* 809D5058  7D 80 32 14 */	add r12, r0, r6
/* 809D505C  4B 98 D0 29 */	bl __ptmf_scall
/* 809D5060  60 00 00 00 */	nop 
/* 809D5064  2C 03 00 00 */	cmpwi r3, 0
/* 809D5068  41 82 00 10 */	beq lbl_809D5078
/* 809D506C  7F E3 FB 78 */	mr r3, r31
/* 809D5070  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809D5074  4B 67 31 09 */	bl cutEnd__16dEvent_manager_cFi
lbl_809D5078:
/* 809D5078  3B C0 00 01 */	li r30, 1
lbl_809D507C:
/* 809D507C  7F C3 F3 78 */	mr r3, r30
/* 809D5080  39 61 00 20 */	addi r11, r1, 0x20
/* 809D5084  4B 98 D1 A5 */	bl _restgpr_29
/* 809D5088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D508C  7C 08 03 A6 */	mtlr r0
/* 809D5090  38 21 00 20 */	addi r1, r1, 0x20
/* 809D5094  4E 80 00 20 */	blr 
