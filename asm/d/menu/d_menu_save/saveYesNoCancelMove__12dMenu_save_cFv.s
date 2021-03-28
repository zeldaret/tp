lbl_801F47DC:
/* 801F47DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F47E0  7C 08 02 A6 */	mflr r0
/* 801F47E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F47E8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F47EC  48 16 D9 F1 */	bl _savegpr_29
/* 801F47F0  7C 7D 1B 78 */	mr r29, r3
/* 801F47F4  48 00 01 35 */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F47F8  7C 7E 1B 78 */	mr r30, r3
/* 801F47FC  7F A3 EB 78 */	mr r3, r29
/* 801F4800  48 00 10 C9 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
/* 801F4804  7C 7F 1B 78 */	mr r31, r3
/* 801F4808  7F A3 EB 78 */	mr r3, r29
/* 801F480C  48 00 0D F5 */	bl selectDataMoveAnm__12dMenu_save_cFv
/* 801F4810  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F4814  28 00 00 01 */	cmplwi r0, 1
/* 801F4818  40 82 00 2C */	bne lbl_801F4844
/* 801F481C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F4820  28 00 00 01 */	cmplwi r0, 1
/* 801F4824  40 82 00 20 */	bne lbl_801F4844
/* 801F4828  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F482C  28 00 00 01 */	cmplwi r0, 1
/* 801F4830  40 82 00 14 */	bne lbl_801F4844
/* 801F4834  7F A3 EB 78 */	mr r3, r29
/* 801F4838  48 00 1C 21 */	bl selFileCursorShow__12dMenu_save_cFv
/* 801F483C  38 00 00 31 */	li r0, 0x31
/* 801F4840  98 1D 01 B2 */	stb r0, 0x1b2(r29)
lbl_801F4844:
/* 801F4844  39 61 00 20 */	addi r11, r1, 0x20
/* 801F4848  48 16 D9 E1 */	bl _restgpr_29
/* 801F484C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F4850  7C 08 03 A6 */	mtlr r0
/* 801F4854  38 21 00 20 */	addi r1, r1, 0x20
/* 801F4858  4E 80 00 20 */	blr 
