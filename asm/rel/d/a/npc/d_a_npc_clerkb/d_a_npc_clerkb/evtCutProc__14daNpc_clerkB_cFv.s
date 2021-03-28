lbl_80997598:
/* 80997598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099759C  7C 08 02 A6 */	mflr r0
/* 809975A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809975A4  39 61 00 20 */	addi r11, r1, 0x20
/* 809975A8  4B 9C AC 34 */	b _savegpr_29
/* 809975AC  7C 7D 1B 78 */	mr r29, r3
/* 809975B0  3B C0 00 00 */	li r30, 0
/* 809975B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809975B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809975BC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 809975C0  7F E3 FB 78 */	mr r3, r31
/* 809975C4  3C 80 80 9A */	lis r4, struct_80999A8C+0x0@ha
/* 809975C8  38 84 9A 8C */	addi r4, r4, struct_80999A8C+0x0@l
/* 809975CC  38 84 00 1D */	addi r4, r4, 0x1d
/* 809975D0  7F A5 EB 78 */	mr r5, r29
/* 809975D4  38 C0 FF FF */	li r6, -1
/* 809975D8  4B 6B 05 44 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809975DC  2C 03 FF FF */	cmpwi r3, -1
/* 809975E0  41 82 00 64 */	beq lbl_80997644
/* 809975E4  90 7D 0D AC */	stw r3, 0xdac(r29)
/* 809975E8  7F E3 FB 78 */	mr r3, r31
/* 809975EC  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 809975F0  3C A0 80 9A */	lis r5, mCutNameList__14daNpc_clerkB_c@ha
/* 809975F4  38 A5 9E 1C */	addi r5, r5, mCutNameList__14daNpc_clerkB_c@l
/* 809975F8  38 C0 00 01 */	li r6, 1
/* 809975FC  38 E0 00 00 */	li r7, 0
/* 80997600  39 00 00 00 */	li r8, 0
/* 80997604  4B 6B 08 0C */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80997608  7C 60 1B 78 */	mr r0, r3
/* 8099760C  7F A3 EB 78 */	mr r3, r29
/* 80997610  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 80997614  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80997618  3C A0 80 9A */	lis r5, mCutList__14daNpc_clerkB_c@ha
/* 8099761C  38 05 9E 20 */	addi r0, r5, mCutList__14daNpc_clerkB_c@l
/* 80997620  7D 80 32 14 */	add r12, r0, r6
/* 80997624  4B 9C AA 60 */	b __ptmf_scall
/* 80997628  60 00 00 00 */	nop 
/* 8099762C  2C 03 00 00 */	cmpwi r3, 0
/* 80997630  41 82 00 10 */	beq lbl_80997640
/* 80997634  7F E3 FB 78 */	mr r3, r31
/* 80997638  80 9D 0D AC */	lwz r4, 0xdac(r29)
/* 8099763C  4B 6B 0B 40 */	b cutEnd__16dEvent_manager_cFi
lbl_80997640:
/* 80997640  3B C0 00 01 */	li r30, 1
lbl_80997644:
/* 80997644  7F C3 F3 78 */	mr r3, r30
/* 80997648  39 61 00 20 */	addi r11, r1, 0x20
/* 8099764C  4B 9C AB DC */	b _restgpr_29
/* 80997650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80997654  7C 08 03 A6 */	mtlr r0
/* 80997658  38 21 00 20 */	addi r1, r1, 0x20
/* 8099765C  4E 80 00 20 */	blr 
