lbl_801F2514:
/* 801F2514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F2518  7C 08 02 A6 */	mflr r0
/* 801F251C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F2520  39 61 00 20 */	addi r11, r1, 0x20
/* 801F2524  48 16 FC B9 */	bl _savegpr_29
/* 801F2528  7C 7D 1B 78 */	mr r29, r3
/* 801F252C  48 00 2C 65 */	bl errorTxtChangeAnm__12dMenu_save_cFv
/* 801F2530  7C 7E 1B 78 */	mr r30, r3
/* 801F2534  7F A3 EB 78 */	mr r3, r29
/* 801F2538  48 00 33 91 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F253C  7C 7F 1B 78 */	mr r31, r3
/* 801F2540  7F A3 EB 78 */	mr r3, r29
/* 801F2544  48 00 3D 35 */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F2548  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F254C  28 00 00 01 */	cmplwi r0, 1
/* 801F2550  40 82 00 44 */	bne lbl_801F2594
/* 801F2554  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F2558  28 00 00 01 */	cmplwi r0, 1
/* 801F255C  40 82 00 38 */	bne lbl_801F2594
/* 801F2560  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F2564  28 00 00 01 */	cmplwi r0, 1
/* 801F2568  40 82 00 2C */	bne lbl_801F2594
/* 801F256C  3C 60 80 43 */	lis r3, g_msHIO@ha
/* 801F2570  38 63 E8 4C */	addi r3, r3, g_msHIO@l
/* 801F2574  88 03 00 06 */	lbz r0, 6(r3)
/* 801F2578  98 1D 01 BD */	stb r0, 0x1bd(r29)
/* 801F257C  7F A3 EB 78 */	mr r3, r29
/* 801F2580  48 00 43 D5 */	bl setInitSaveData__12dMenu_save_cFv
/* 801F2584  7F A3 EB 78 */	mr r3, r29
/* 801F2588  48 00 42 31 */	bl dataSave__12dMenu_save_cFv
/* 801F258C  38 00 00 1A */	li r0, 0x1a
/* 801F2590  98 1D 01 B2 */	stb r0, 0x1b2(r29)
lbl_801F2594:
/* 801F2594  39 61 00 20 */	addi r11, r1, 0x20
/* 801F2598  48 16 FC 91 */	bl _restgpr_29
/* 801F259C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F25A0  7C 08 03 A6 */	mtlr r0
/* 801F25A4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F25A8  4E 80 00 20 */	blr 
