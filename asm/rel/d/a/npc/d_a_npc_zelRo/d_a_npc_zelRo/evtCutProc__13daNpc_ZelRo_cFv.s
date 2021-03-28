lbl_80B72F7C:
/* 80B72F7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B72F80  7C 08 02 A6 */	mflr r0
/* 80B72F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B72F88  39 61 00 20 */	addi r11, r1, 0x20
/* 80B72F8C  4B 7E F2 50 */	b _savegpr_29
/* 80B72F90  7C 7D 1B 78 */	mr r29, r3
/* 80B72F94  3B C0 00 00 */	li r30, 0
/* 80B72F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B72F9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B72FA0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B72FA4  7F E3 FB 78 */	mr r3, r31
/* 80B72FA8  3C 80 80 B7 */	lis r4, struct_80B74D3C+0x0@ha
/* 80B72FAC  38 84 4D 3C */	addi r4, r4, struct_80B74D3C+0x0@l
/* 80B72FB0  38 84 00 13 */	addi r4, r4, 0x13
/* 80B72FB4  7F A5 EB 78 */	mr r5, r29
/* 80B72FB8  38 C0 FF FF */	li r6, -1
/* 80B72FBC  4B 4D 4B 60 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B72FC0  2C 03 FF FF */	cmpwi r3, -1
/* 80B72FC4  41 82 00 64 */	beq lbl_80B73028
/* 80B72FC8  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 80B72FCC  7F E3 FB 78 */	mr r3, r31
/* 80B72FD0  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B72FD4  3C A0 80 B7 */	lis r5, mCutNameList__13daNpc_ZelRo_c@ha
/* 80B72FD8  38 A5 4E 28 */	addi r5, r5, mCutNameList__13daNpc_ZelRo_c@l
/* 80B72FDC  38 C0 00 01 */	li r6, 1
/* 80B72FE0  38 E0 00 00 */	li r7, 0
/* 80B72FE4  39 00 00 00 */	li r8, 0
/* 80B72FE8  4B 4D 4E 28 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80B72FEC  7C 60 1B 78 */	mr r0, r3
/* 80B72FF0  7F A3 EB 78 */	mr r3, r29
/* 80B72FF4  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B72FF8  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80B72FFC  3C A0 80 B7 */	lis r5, mCutList__13daNpc_ZelRo_c@ha
/* 80B73000  38 05 4E 2C */	addi r0, r5, mCutList__13daNpc_ZelRo_c@l
/* 80B73004  7D 80 32 14 */	add r12, r0, r6
/* 80B73008  4B 7E F0 7C */	b __ptmf_scall
/* 80B7300C  60 00 00 00 */	nop 
/* 80B73010  2C 03 00 00 */	cmpwi r3, 0
/* 80B73014  41 82 00 10 */	beq lbl_80B73024
/* 80B73018  7F E3 FB 78 */	mr r3, r31
/* 80B7301C  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80B73020  4B 4D 51 5C */	b cutEnd__16dEvent_manager_cFi
lbl_80B73024:
/* 80B73024  3B C0 00 01 */	li r30, 1
lbl_80B73028:
/* 80B73028  7F C3 F3 78 */	mr r3, r30
/* 80B7302C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B73030  4B 7E F1 F8 */	b _restgpr_29
/* 80B73034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B73038  7C 08 03 A6 */	mtlr r0
/* 80B7303C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B73040  4E 80 00 20 */	blr 
