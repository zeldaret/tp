lbl_809EC0CC:
/* 809EC0CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809EC0D0  7C 08 02 A6 */	mflr r0
/* 809EC0D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809EC0D8  39 61 00 20 */	addi r11, r1, 0x20
/* 809EC0DC  4B 97 60 FC */	b _savegpr_28
/* 809EC0E0  7C 7C 1B 78 */	mr r28, r3
/* 809EC0E4  7C 9D 23 78 */	mr r29, r4
/* 809EC0E8  7C BE 2B 78 */	mr r30, r5
/* 809EC0EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EC0F0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 809EC0F4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 809EC0F8  4B 65 C2 F0 */	b getRunEventName__16dEvent_manager_cFv
/* 809EC0FC  57 A0 10 3A */	slwi r0, r29, 2
/* 809EC100  3C 80 80 9F */	lis r4, l_evtNames@ha
/* 809EC104  38 84 F8 60 */	addi r4, r4, l_evtNames@l
/* 809EC108  7C 84 00 2E */	lwzx r4, r4, r0
/* 809EC10C  4B 97 C8 88 */	b strcmp
/* 809EC110  2C 03 00 00 */	cmpwi r3, 0
/* 809EC114  40 82 00 34 */	bne lbl_809EC148
/* 809EC118  3B FF 4E C8 */	addi r31, r31, 0x4ec8
/* 809EC11C  7F E3 FB 78 */	mr r3, r31
/* 809EC120  7F 84 E3 78 */	mr r4, r28
/* 809EC124  57 C0 10 3A */	slwi r0, r30, 2
/* 809EC128  3C A0 80 9F */	lis r5, l_evtNames@ha
/* 809EC12C  38 A5 F8 60 */	addi r5, r5, l_evtNames@l
/* 809EC130  7C A5 00 2E */	lwzx r5, r5, r0
/* 809EC134  4B 65 68 24 */	b setSkipZev__14dEvt_control_cFPvPc
/* 809EC138  7F E3 FB 78 */	mr r3, r31
/* 809EC13C  4B 65 68 6C */	b onSkipFade__14dEvt_control_cFv
/* 809EC140  38 60 00 01 */	li r3, 1
/* 809EC144  48 00 00 08 */	b lbl_809EC14C
lbl_809EC148:
/* 809EC148  38 60 00 00 */	li r3, 0
lbl_809EC14C:
/* 809EC14C  39 61 00 20 */	addi r11, r1, 0x20
/* 809EC150  4B 97 60 D4 */	b _restgpr_28
/* 809EC154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809EC158  7C 08 03 A6 */	mtlr r0
/* 809EC15C  38 21 00 20 */	addi r1, r1, 0x20
/* 809EC160  4E 80 00 20 */	blr 
