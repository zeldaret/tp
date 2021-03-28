lbl_801F20AC:
/* 801F20AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F20B0  7C 08 02 A6 */	mflr r0
/* 801F20B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F20B8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F20BC  48 17 01 21 */	bl _savegpr_29
/* 801F20C0  7C 7D 1B 78 */	mr r29, r3
/* 801F20C4  48 00 30 CD */	bl errorTxtChangeAnm__12dMenu_save_cFv
/* 801F20C8  7C 7E 1B 78 */	mr r30, r3
/* 801F20CC  7F A3 EB 78 */	mr r3, r29
/* 801F20D0  38 80 00 01 */	li r4, 1
/* 801F20D4  48 00 3A 11 */	bl yesnoSelectMoveAnm__12dMenu_save_cFUc
/* 801F20D8  7C 7F 1B 78 */	mr r31, r3
/* 801F20DC  7F A3 EB 78 */	mr r3, r29
/* 801F20E0  88 9D 01 B7 */	lbz r4, 0x1b7(r29)
/* 801F20E4  48 00 45 71 */	bl yesnoWakuAlpahAnm__12dMenu_save_cFUc
/* 801F20E8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F20EC  28 00 00 01 */	cmplwi r0, 1
/* 801F20F0  40 82 00 2C */	bne lbl_801F211C
/* 801F20F4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F20F8  28 00 00 01 */	cmplwi r0, 1
/* 801F20FC  40 82 00 20 */	bne lbl_801F211C
/* 801F2100  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F2104  28 00 00 01 */	cmplwi r0, 1
/* 801F2108  40 82 00 14 */	bne lbl_801F211C
/* 801F210C  7F A3 EB 78 */	mr r3, r29
/* 801F2110  48 00 3C 75 */	bl yesnoCursorShow__12dMenu_save_cFv
/* 801F2114  38 00 00 13 */	li r0, 0x13
/* 801F2118  98 1D 01 B2 */	stb r0, 0x1b2(r29)
lbl_801F211C:
/* 801F211C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F2120  48 17 01 09 */	bl _restgpr_29
/* 801F2124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F2128  7C 08 03 A6 */	mtlr r0
/* 801F212C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F2130  4E 80 00 20 */	blr 
