lbl_801874F8:
/* 801874F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801874FC  7C 08 02 A6 */	mflr r0
/* 80187500  90 01 00 24 */	stw r0, 0x24(r1)
/* 80187504  39 61 00 20 */	addi r11, r1, 0x20
/* 80187508  48 1D AC D1 */	bl _savegpr_28
/* 8018750C  7C 7C 1B 78 */	mr r28, r3
/* 80187510  48 00 5D 4D */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 80187514  7C 7D 1B 78 */	mr r29, r3
/* 80187518  7F 83 E3 78 */	mr r3, r28
/* 8018751C  48 00 89 D9 */	bl fileRecScaleAnm2__14dFile_select_cFv
/* 80187520  7C 7E 1B 78 */	mr r30, r3
/* 80187524  7F 83 E3 78 */	mr r3, r28
/* 80187528  48 00 8B FD */	bl nameMoveAnm__14dFile_select_cFv
/* 8018752C  7C 7F 1B 78 */	mr r31, r3
/* 80187530  7F 83 E3 78 */	mr r3, r28
/* 80187534  48 00 5E E9 */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 80187538  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8018753C  28 00 00 01 */	cmplwi r0, 1
/* 80187540  40 82 00 44 */	bne lbl_80187584
/* 80187544  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80187548  28 00 00 01 */	cmplwi r0, 1
/* 8018754C  40 82 00 38 */	bne lbl_80187584
/* 80187550  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80187554  28 00 00 01 */	cmplwi r0, 1
/* 80187558  40 82 00 2C */	bne lbl_80187584
/* 8018755C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80187560  28 00 00 01 */	cmplwi r0, 1
/* 80187564  40 82 00 20 */	bne lbl_80187584
/* 80187568  7F 83 E3 78 */	mr r3, r28
/* 8018756C  38 80 00 00 */	li r4, 0
/* 80187570  48 00 5D D5 */	bl modoruTxtChange__14dFile_select_cFUc
/* 80187574  7F 83 E3 78 */	mr r3, r28
/* 80187578  48 00 61 ED */	bl selFileCursorShow__14dFile_select_cFv
/* 8018757C  38 00 00 03 */	li r0, 3
/* 80187580  98 1C 02 6F */	stb r0, 0x26f(r28)
lbl_80187584:
/* 80187584  39 61 00 20 */	addi r11, r1, 0x20
/* 80187588  48 1D AC 9D */	bl _restgpr_28
/* 8018758C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80187590  7C 08 03 A6 */	mtlr r0
/* 80187594  38 21 00 20 */	addi r1, r1, 0x20
/* 80187598  4E 80 00 20 */	blr 
