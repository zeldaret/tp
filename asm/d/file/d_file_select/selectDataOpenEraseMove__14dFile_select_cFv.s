lbl_801866C8:
/* 801866C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801866CC  7C 08 02 A6 */	mflr r0
/* 801866D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801866D4  39 61 00 20 */	addi r11, r1, 0x20
/* 801866D8  48 1D BB 01 */	bl _savegpr_28
/* 801866DC  7C 7C 1B 78 */	mr r28, r3
/* 801866E0  48 00 6B 7D */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 801866E4  7C 7D 1B 78 */	mr r29, r3
/* 801866E8  7F 83 E3 78 */	mr r3, r28
/* 801866EC  4B FF F3 C1 */	bl selectDataMoveAnm__14dFile_select_cFv
/* 801866F0  7C 7E 1B 78 */	mr r30, r3
/* 801866F4  7F 83 E3 78 */	mr r3, r28
/* 801866F8  48 00 26 41 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 801866FC  7F 83 E3 78 */	mr r3, r28
/* 80186700  48 00 6D 1D */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 80186704  7C 7F 1B 78 */	mr r31, r3
/* 80186708  7F 83 E3 78 */	mr r3, r28
/* 8018670C  88 9C 02 65 */	lbz r4, 0x265(r28)
/* 80186710  48 00 6F 7D */	bl selectWakuAlpahAnm__14dFile_select_cFUc
/* 80186714  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80186718  28 00 00 01 */	cmplwi r0, 1
/* 8018671C  40 82 00 40 */	bne lbl_8018675C
/* 80186720  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80186724  28 00 00 01 */	cmplwi r0, 1
/* 80186728  40 82 00 34 */	bne lbl_8018675C
/* 8018672C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80186730  28 00 00 01 */	cmplwi r0, 1
/* 80186734  40 82 00 28 */	bne lbl_8018675C
/* 80186738  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018673C  28 00 00 01 */	cmplwi r0, 1
/* 80186740  40 82 00 1C */	bne lbl_8018675C
/* 80186744  38 00 00 02 */	li r0, 2
/* 80186748  98 1C 02 6E */	stb r0, 0x26e(r28)
/* 8018674C  7F 83 E3 78 */	mr r3, r28
/* 80186750  48 00 29 DD */	bl yesnoCursorShow__14dFile_select_cFv
/* 80186754  38 00 00 1A */	li r0, 0x1a
/* 80186758  98 1C 02 6F */	stb r0, 0x26f(r28)
lbl_8018675C:
/* 8018675C  39 61 00 20 */	addi r11, r1, 0x20
/* 80186760  48 1D BA C5 */	bl _restgpr_28
/* 80186764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80186768  7C 08 03 A6 */	mtlr r0
/* 8018676C  38 21 00 20 */	addi r1, r1, 0x20
/* 80186770  4E 80 00 20 */	blr 
