lbl_80CF6344:
/* 80CF6344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF6348  7C 08 02 A6 */	mflr r0
/* 80CF634C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF6350  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF6354  4B 66 BE 88 */	b _savegpr_29
/* 80CF6358  7C 7D 1B 78 */	mr r29, r3
/* 80CF635C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF6360  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CF6364  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CF6368  A8 9D 05 7C */	lha r4, 0x57c(r29)
/* 80CF636C  4B 35 17 0C */	b endCheck__16dEvent_manager_cFs
/* 80CF6370  2C 03 00 00 */	cmpwi r3, 0
/* 80CF6374  41 82 00 5C */	beq lbl_80CF63D0
/* 80CF6378  38 00 00 03 */	li r0, 3
/* 80CF637C  98 1D 05 7F */	stb r0, 0x57f(r29)
/* 80CF6380  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CF6384  4B 34 C0 E4 */	b reset__14dEvt_control_cFv
/* 80CF6388  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF638C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF6390  38 80 00 58 */	li r4, 0x58
/* 80CF6394  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CF6398  7C 05 07 74 */	extsb r5, r0
/* 80CF639C  4B 33 EE 64 */	b onSwitch__10dSv_info_cFii
/* 80CF63A0  3B C0 00 00 */	li r30, 0
/* 80CF63A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF63A8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
lbl_80CF63AC:
/* 80CF63AC  7F E3 FB 78 */	mr r3, r31
/* 80CF63B0  38 9E 00 50 */	addi r4, r30, 0x50
/* 80CF63B4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80CF63B8  7C 05 07 74 */	extsb r5, r0
/* 80CF63BC  4B 33 EE 44 */	b onSwitch__10dSv_info_cFii
/* 80CF63C0  3B DE 00 01 */	addi r30, r30, 1
/* 80CF63C4  2C 1E 00 08 */	cmpwi r30, 8
/* 80CF63C8  41 80 FF E4 */	blt lbl_80CF63AC
/* 80CF63CC  48 00 00 0C */	b lbl_80CF63D8
lbl_80CF63D0:
/* 80CF63D0  7F A3 EB 78 */	mr r3, r29
/* 80CF63D4  48 00 00 21 */	bl demoProc__14daObjSwBallC_cFv
lbl_80CF63D8:
/* 80CF63D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF63DC  4B 66 BE 4C */	b _restgpr_29
/* 80CF63E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF63E4  7C 08 03 A6 */	mtlr r0
/* 80CF63E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF63EC  4E 80 00 20 */	blr 
