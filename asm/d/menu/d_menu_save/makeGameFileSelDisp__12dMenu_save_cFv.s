lbl_801F23FC:
/* 801F23FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F2400  7C 08 02 A6 */	mflr r0
/* 801F2404  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F2408  39 61 00 20 */	addi r11, r1, 0x20
/* 801F240C  48 16 FD D1 */	bl _savegpr_29
/* 801F2410  7C 7D 1B 78 */	mr r29, r3
/* 801F2414  48 00 2D 7D */	bl errorTxtChangeAnm__12dMenu_save_cFv
/* 801F2418  7C 7E 1B 78 */	mr r30, r3
/* 801F241C  7F A3 EB 78 */	mr r3, r29
/* 801F2420  48 00 34 A9 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F2424  7C 7F 1B 78 */	mr r31, r3
/* 801F2428  7F A3 EB 78 */	mr r3, r29
/* 801F242C  48 00 3E 4D */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F2430  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F2434  28 00 00 01 */	cmplwi r0, 1
/* 801F2438  40 82 00 2C */	bne lbl_801F2464
/* 801F243C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F2440  28 00 00 01 */	cmplwi r0, 1
/* 801F2444  40 82 00 20 */	bne lbl_801F2464
/* 801F2448  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F244C  28 00 00 01 */	cmplwi r0, 1
/* 801F2450  40 82 00 14 */	bne lbl_801F2464
/* 801F2454  7F A3 EB 78 */	mr r3, r29
/* 801F2458  48 00 39 2D */	bl yesnoCursorShow__12dMenu_save_cFv
/* 801F245C  38 00 00 18 */	li r0, 0x18
/* 801F2460  98 1D 01 B2 */	stb r0, 0x1b2(r29)
lbl_801F2464:
/* 801F2464  39 61 00 20 */	addi r11, r1, 0x20
/* 801F2468  48 16 FD C1 */	bl _restgpr_29
/* 801F246C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F2470  7C 08 03 A6 */	mtlr r0
/* 801F2474  38 21 00 20 */	addi r1, r1, 0x20
/* 801F2478  4E 80 00 20 */	blr 
