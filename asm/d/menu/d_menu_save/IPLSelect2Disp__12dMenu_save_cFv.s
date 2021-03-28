lbl_801F1E58:
/* 801F1E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F1E5C  7C 08 02 A6 */	mflr r0
/* 801F1E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F1E64  39 61 00 20 */	addi r11, r1, 0x20
/* 801F1E68  48 17 03 75 */	bl _savegpr_29
/* 801F1E6C  7C 7D 1B 78 */	mr r29, r3
/* 801F1E70  48 00 33 21 */	bl errorTxtChangeAnm__12dMenu_save_cFv
/* 801F1E74  7C 7E 1B 78 */	mr r30, r3
/* 801F1E78  7F A3 EB 78 */	mr r3, r29
/* 801F1E7C  38 80 00 01 */	li r4, 1
/* 801F1E80  48 00 3C 65 */	bl yesnoSelectMoveAnm__12dMenu_save_cFUc
/* 801F1E84  7C 7F 1B 78 */	mr r31, r3
/* 801F1E88  7F A3 EB 78 */	mr r3, r29
/* 801F1E8C  88 9D 01 B7 */	lbz r4, 0x1b7(r29)
/* 801F1E90  48 00 47 C5 */	bl yesnoWakuAlpahAnm__12dMenu_save_cFUc
/* 801F1E94  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F1E98  28 00 00 01 */	cmplwi r0, 1
/* 801F1E9C  40 82 00 2C */	bne lbl_801F1EC8
/* 801F1EA0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F1EA4  28 00 00 01 */	cmplwi r0, 1
/* 801F1EA8  40 82 00 20 */	bne lbl_801F1EC8
/* 801F1EAC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F1EB0  28 00 00 01 */	cmplwi r0, 1
/* 801F1EB4  40 82 00 14 */	bne lbl_801F1EC8
/* 801F1EB8  7F A3 EB 78 */	mr r3, r29
/* 801F1EBC  48 00 3E C9 */	bl yesnoCursorShow__12dMenu_save_cFv
/* 801F1EC0  38 00 00 0E */	li r0, 0xe
/* 801F1EC4  98 1D 01 B2 */	stb r0, 0x1b2(r29)
lbl_801F1EC8:
/* 801F1EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F1ECC  48 17 03 5D */	bl _restgpr_29
/* 801F1ED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F1ED4  7C 08 03 A6 */	mtlr r0
/* 801F1ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 801F1EDC  4E 80 00 20 */	blr 
