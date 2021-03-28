lbl_80C0D2FC:
/* 80C0D2FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C0D300  7C 08 02 A6 */	mflr r0
/* 80C0D304  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C0D308  39 61 00 20 */	addi r11, r1, 0x20
/* 80C0D30C  4B 75 4E D0 */	b _savegpr_29
/* 80C0D310  7C 7D 1B 78 */	mr r29, r3
/* 80C0D314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0D318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0D31C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80C0D320  7C 00 07 74 */	extsb r0, r0
/* 80C0D324  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80C0D328  7C 63 02 14 */	add r3, r3, r0
/* 80C0D32C  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 80C0D330  38 7D 20 4C */	addi r3, r29, 0x204c
/* 80C0D334  4B 54 05 04 */	b getActor__18daBaseNpc_acMngr_cFv
/* 80C0D338  7C 7E 1B 78 */	mr r30, r3
/* 80C0D33C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C0D340  4B 55 41 6C */	b Start__9dCamera_cFv
/* 80C0D344  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C0D348  38 80 00 00 */	li r4, 0
/* 80C0D34C  4B 55 5C C0 */	b SetTrimSize__9dCamera_cFl
/* 80C0D350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0D354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0D358  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80C0D35C  4B 43 51 0C */	b reset__14dEvt_control_cFv
/* 80C0D360  7F C3 F3 78 */	mr r3, r30
/* 80C0D364  4B FF A4 A9 */	bl soldierDemoSkip__11daObj_GrA_cFv
/* 80C0D368  38 7E 20 4C */	addi r3, r30, 0x204c
/* 80C0D36C  38 80 00 00 */	li r4, 0
/* 80C0D370  4B 54 04 AC */	b entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C0D374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0D378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C0D37C  88 9D 0A 7F */	lbz r4, 0xa7f(r29)
/* 80C0D380  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80C0D384  7C 05 07 74 */	extsb r5, r0
/* 80C0D388  4B 42 7E 78 */	b onSwitch__10dSv_info_cFii
/* 80C0D38C  38 60 00 01 */	li r3, 1
/* 80C0D390  39 61 00 20 */	addi r11, r1, 0x20
/* 80C0D394  4B 75 4E 94 */	b _restgpr_29
/* 80C0D398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C0D39C  7C 08 03 A6 */	mtlr r0
/* 80C0D3A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C0D3A4  4E 80 00 20 */	blr 
