lbl_8018A444:
/* 8018A444  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018A448  7C 08 02 A6 */	mflr r0
/* 8018A44C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018A450  39 61 00 20 */	addi r11, r1, 0x20
/* 8018A454  48 1D 7D 89 */	bl _savegpr_29
/* 8018A458  7C 7D 1B 78 */	mr r29, r3
/* 8018A45C  48 00 2E 01 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 8018A460  7C 7E 1B 78 */	mr r30, r3
/* 8018A464  7F A3 EB 78 */	mr r3, r29
/* 8018A468  4B FF B6 45 */	bl selectDataMoveAnm__14dFile_select_cFv
/* 8018A46C  7C 7F 1B 78 */	mr r31, r3
/* 8018A470  7F A3 EB 78 */	mr r3, r29
/* 8018A474  48 00 31 01 */	bl ketteiTxtDispAnm__14dFile_select_cFv
/* 8018A478  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018A47C  28 00 00 01 */	cmplwi r0, 1
/* 8018A480  40 82 00 38 */	bne lbl_8018A4B8
/* 8018A484  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018A488  28 00 00 01 */	cmplwi r0, 1
/* 8018A48C  40 82 00 2C */	bne lbl_8018A4B8
/* 8018A490  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018A494  28 00 00 01 */	cmplwi r0, 1
/* 8018A498  40 82 00 20 */	bne lbl_8018A4B8
/* 8018A49C  7F A3 EB 78 */	mr r3, r29
/* 8018A4A0  48 00 32 C5 */	bl selFileCursorShow__14dFile_select_cFv
/* 8018A4A4  38 00 00 00 */	li r0, 0
/* 8018A4A8  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8018A4AC  90 03 00 08 */	stw r0, 8(r3)
/* 8018A4B0  38 00 00 03 */	li r0, 3
/* 8018A4B4  98 1D 02 6F */	stb r0, 0x26f(r29)
lbl_8018A4B8:
/* 8018A4B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8018A4BC  48 1D 7D 6D */	bl _restgpr_29
/* 8018A4C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018A4C4  7C 08 03 A6 */	mtlr r0
/* 8018A4C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8018A4CC  4E 80 00 20 */	blr 
