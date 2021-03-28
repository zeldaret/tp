lbl_80993568:
/* 80993568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099356C  7C 08 02 A6 */	mflr r0
/* 80993570  90 01 00 24 */	stw r0, 0x24(r1)
/* 80993574  39 61 00 20 */	addi r11, r1, 0x20
/* 80993578  4B 9C EC 64 */	b _savegpr_29
/* 8099357C  7C 7D 1B 78 */	mr r29, r3
/* 80993580  3B C0 00 00 */	li r30, 0
/* 80993584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80993588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8099358C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80993590  7F E3 FB 78 */	mr r3, r31
/* 80993594  3C 80 80 99 */	lis r4, struct_80995970+0x0@ha
/* 80993598  38 84 59 70 */	addi r4, r4, struct_80995970+0x0@l
/* 8099359C  38 84 00 1D */	addi r4, r4, 0x1d
/* 809935A0  7F A5 EB 78 */	mr r5, r29
/* 809935A4  38 C0 FF FF */	li r6, -1
/* 809935A8  4B 6B 45 74 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809935AC  2C 03 FF FF */	cmpwi r3, -1
/* 809935B0  41 82 00 64 */	beq lbl_80993614
/* 809935B4  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 809935B8  7F E3 FB 78 */	mr r3, r31
/* 809935BC  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809935C0  3C A0 80 99 */	lis r5, mCutNameList__14daNpc_clerkA_c@ha
/* 809935C4  38 A5 5B F8 */	addi r5, r5, mCutNameList__14daNpc_clerkA_c@l
/* 809935C8  38 C0 00 01 */	li r6, 1
/* 809935CC  38 E0 00 00 */	li r7, 0
/* 809935D0  39 00 00 00 */	li r8, 0
/* 809935D4  4B 6B 48 3C */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809935D8  7C 60 1B 78 */	mr r0, r3
/* 809935DC  7F A3 EB 78 */	mr r3, r29
/* 809935E0  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809935E4  1C C0 00 0C */	mulli r6, r0, 0xc
/* 809935E8  3C A0 80 99 */	lis r5, mCutList__14daNpc_clerkA_c@ha
/* 809935EC  38 05 5B FC */	addi r0, r5, mCutList__14daNpc_clerkA_c@l
/* 809935F0  7D 80 32 14 */	add r12, r0, r6
/* 809935F4  4B 9C EA 90 */	b __ptmf_scall
/* 809935F8  60 00 00 00 */	nop 
/* 809935FC  2C 03 00 00 */	cmpwi r3, 0
/* 80993600  41 82 00 10 */	beq lbl_80993610
/* 80993604  7F E3 FB 78 */	mr r3, r31
/* 80993608  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 8099360C  4B 6B 4B 70 */	b cutEnd__16dEvent_manager_cFi
lbl_80993610:
/* 80993610  3B C0 00 01 */	li r30, 1
lbl_80993614:
/* 80993614  7F C3 F3 78 */	mr r3, r30
/* 80993618  39 61 00 20 */	addi r11, r1, 0x20
/* 8099361C  4B 9C EC 0C */	b _restgpr_29
/* 80993620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80993624  7C 08 03 A6 */	mtlr r0
/* 80993628  38 21 00 20 */	addi r1, r1, 0x20
/* 8099362C  4E 80 00 20 */	blr 
