lbl_80B7E668:
/* 80B7E668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B7E66C  7C 08 02 A6 */	mflr r0
/* 80B7E670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B7E674  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7E678  4B 7E 3B 60 */	b _savegpr_28
/* 80B7E67C  7C 7C 1B 78 */	mr r28, r3
/* 80B7E680  7C 9D 23 78 */	mr r29, r4
/* 80B7E684  7C BE 2B 78 */	mr r30, r5
/* 80B7E688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B7E68C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B7E690  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80B7E694  4B 4C 9D 54 */	b getRunEventName__16dEvent_manager_cFv
/* 80B7E698  57 A0 10 3A */	slwi r0, r29, 2
/* 80B7E69C  3C 80 80 B9 */	lis r4, l_evtNames@ha
/* 80B7E6A0  38 84 D1 C4 */	addi r4, r4, l_evtNames@l
/* 80B7E6A4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B7E6A8  4B 7E A2 EC */	b strcmp
/* 80B7E6AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B7E6B0  40 82 00 28 */	bne lbl_80B7E6D8
/* 80B7E6B4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B7E6B8  7F 84 E3 78 */	mr r4, r28
/* 80B7E6BC  57 C0 10 3A */	slwi r0, r30, 2
/* 80B7E6C0  3C A0 80 B9 */	lis r5, l_evtNames@ha
/* 80B7E6C4  38 A5 D1 C4 */	addi r5, r5, l_evtNames@l
/* 80B7E6C8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B7E6CC  4B 4C 42 8C */	b setSkipZev__14dEvt_control_cFPvPc
/* 80B7E6D0  38 60 00 01 */	li r3, 1
/* 80B7E6D4  48 00 00 08 */	b lbl_80B7E6DC
lbl_80B7E6D8:
/* 80B7E6D8  38 60 00 00 */	li r3, 0
lbl_80B7E6DC:
/* 80B7E6DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B7E6E0  4B 7E 3B 44 */	b _restgpr_28
/* 80B7E6E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B7E6E8  7C 08 03 A6 */	mtlr r0
/* 80B7E6EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B7E6F0  4E 80 00 20 */	blr 
