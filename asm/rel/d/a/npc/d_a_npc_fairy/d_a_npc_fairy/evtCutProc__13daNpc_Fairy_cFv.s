lbl_809B3630:
/* 809B3630  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B3634  7C 08 02 A6 */	mflr r0
/* 809B3638  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B363C  39 61 00 20 */	addi r11, r1, 0x20
/* 809B3640  4B 9A EB 9C */	b _savegpr_29
/* 809B3644  7C 7D 1B 78 */	mr r29, r3
/* 809B3648  3B C0 00 00 */	li r30, 0
/* 809B364C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809B3650  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809B3654  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809B3658  7F E3 FB 78 */	mr r3, r31
/* 809B365C  3C 80 80 9C */	lis r4, struct_809B94CC+0x0@ha
/* 809B3660  38 84 94 CC */	addi r4, r4, struct_809B94CC+0x0@l
/* 809B3664  38 84 00 F8 */	addi r4, r4, 0xf8
/* 809B3668  7F A5 EB 78 */	mr r5, r29
/* 809B366C  38 C0 FF FF */	li r6, -1
/* 809B3670  4B 69 44 AC */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809B3674  2C 03 FF FF */	cmpwi r3, -1
/* 809B3678  41 82 00 64 */	beq lbl_809B36DC
/* 809B367C  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 809B3680  7F E3 FB 78 */	mr r3, r31
/* 809B3684  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809B3688  3C A0 80 9C */	lis r5, mCutNameList__13daNpc_Fairy_c@ha
/* 809B368C  38 A5 99 8C */	addi r5, r5, mCutNameList__13daNpc_Fairy_c@l
/* 809B3690  38 C0 00 12 */	li r6, 0x12
/* 809B3694  38 E0 00 00 */	li r7, 0
/* 809B3698  39 00 00 00 */	li r8, 0
/* 809B369C  4B 69 47 74 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809B36A0  7C 60 1B 78 */	mr r0, r3
/* 809B36A4  7F A3 EB 78 */	mr r3, r29
/* 809B36A8  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809B36AC  1C C0 00 0C */	mulli r6, r0, 0xc
/* 809B36B0  3C A0 80 9C */	lis r5, mCutList__13daNpc_Fairy_c@ha
/* 809B36B4  38 05 9A A0 */	addi r0, r5, mCutList__13daNpc_Fairy_c@l
/* 809B36B8  7D 80 32 14 */	add r12, r0, r6
/* 809B36BC  4B 9A E9 C8 */	b __ptmf_scall
/* 809B36C0  60 00 00 00 */	nop 
/* 809B36C4  2C 03 00 00 */	cmpwi r3, 0
/* 809B36C8  41 82 00 10 */	beq lbl_809B36D8
/* 809B36CC  7F E3 FB 78 */	mr r3, r31
/* 809B36D0  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809B36D4  4B 69 4A A8 */	b cutEnd__16dEvent_manager_cFi
lbl_809B36D8:
/* 809B36D8  3B C0 00 01 */	li r30, 1
lbl_809B36DC:
/* 809B36DC  7F C3 F3 78 */	mr r3, r30
/* 809B36E0  39 61 00 20 */	addi r11, r1, 0x20
/* 809B36E4  4B 9A EB 44 */	b _restgpr_29
/* 809B36E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B36EC  7C 08 03 A6 */	mtlr r0
/* 809B36F0  38 21 00 20 */	addi r1, r1, 0x20
/* 809B36F4  4E 80 00 20 */	blr 
