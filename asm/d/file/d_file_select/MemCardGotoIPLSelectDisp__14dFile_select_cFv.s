lbl_8018EA90:
/* 8018EA90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018EA94  7C 08 02 A6 */	mflr r0
/* 8018EA98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018EA9C  39 61 00 20 */	addi r11, r1, 0x20
/* 8018EAA0  48 1D 37 3D */	bl _savegpr_29
/* 8018EAA4  7C 7D 1B 78 */	mr r29, r3
/* 8018EAA8  48 00 12 89 */	bl errorTxtChangeAnm__14dFile_select_cFv
/* 8018EAAC  7C 7E 1B 78 */	mr r30, r3
/* 8018EAB0  7F A3 EB 78 */	mr r3, r29
/* 8018EAB4  4B FF A2 85 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 8018EAB8  7C 7F 1B 78 */	mr r31, r3
/* 8018EABC  7F A3 EB 78 */	mr r3, r29
/* 8018EAC0  4B FF EA B5 */	bl ketteiTxtDispAnm__14dFile_select_cFv
/* 8018EAC4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018EAC8  28 00 00 01 */	cmplwi r0, 1
/* 8018EACC  40 82 00 2C */	bne lbl_8018EAF8
/* 8018EAD0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018EAD4  28 00 00 01 */	cmplwi r0, 1
/* 8018EAD8  40 82 00 20 */	bne lbl_8018EAF8
/* 8018EADC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018EAE0  28 00 00 01 */	cmplwi r0, 1
/* 8018EAE4  40 82 00 14 */	bne lbl_8018EAF8
/* 8018EAE8  7F A3 EB 78 */	mr r3, r29
/* 8018EAEC  4B FF A6 41 */	bl yesnoCursorShow__14dFile_select_cFv
/* 8018EAF0  38 00 00 14 */	li r0, 0x14
/* 8018EAF4  98 1D 02 71 */	stb r0, 0x271(r29)
lbl_8018EAF8:
/* 8018EAF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8018EAFC  48 1D 37 2D */	bl _restgpr_29
/* 8018EB00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018EB04  7C 08 03 A6 */	mtlr r0
/* 8018EB08  38 21 00 20 */	addi r1, r1, 0x20
/* 8018EB0C  4E 80 00 20 */	blr 
