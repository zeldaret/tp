lbl_8018EFFC:
/* 8018EFFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018F000  7C 08 02 A6 */	mflr r0
/* 8018F004  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018F008  39 61 00 20 */	addi r11, r1, 0x20
/* 8018F00C  48 1D 31 D1 */	bl _savegpr_29
/* 8018F010  7C 7D 1B 78 */	mr r29, r3
/* 8018F014  48 00 0D 1D */	bl errorTxtChangeAnm__14dFile_select_cFv
/* 8018F018  7C 7E 1B 78 */	mr r30, r3
/* 8018F01C  7F A3 EB 78 */	mr r3, r29
/* 8018F020  4B FF 9E B1 */	bl yesnoSelectMoveAnm__14dFile_select_cFv
/* 8018F024  7C 7F 1B 78 */	mr r31, r3
/* 8018F028  7F A3 EB 78 */	mr r3, r29
/* 8018F02C  88 9D 02 69 */	lbz r4, 0x269(r29)
/* 8018F030  4B FF EB 9D */	bl yesnoWakuAlpahAnm__14dFile_select_cFUc
/* 8018F034  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018F038  28 00 00 01 */	cmplwi r0, 1
/* 8018F03C  40 82 00 2C */	bne lbl_8018F068
/* 8018F040  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018F044  28 00 00 01 */	cmplwi r0, 1
/* 8018F048  40 82 00 20 */	bne lbl_8018F068
/* 8018F04C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018F050  28 00 00 01 */	cmplwi r0, 1
/* 8018F054  40 82 00 14 */	bne lbl_8018F068
/* 8018F058  7F A3 EB 78 */	mr r3, r29
/* 8018F05C  4B FF A0 D1 */	bl yesnoCursorShow__14dFile_select_cFv
/* 8018F060  38 00 00 08 */	li r0, 8
/* 8018F064  98 1D 02 71 */	stb r0, 0x271(r29)
lbl_8018F068:
/* 8018F068  39 61 00 20 */	addi r11, r1, 0x20
/* 8018F06C  48 1D 31 BD */	bl _restgpr_29
/* 8018F070  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018F074  7C 08 03 A6 */	mtlr r0
/* 8018F078  38 21 00 20 */	addi r1, r1, 0x20
/* 8018F07C  4E 80 00 20 */	blr 
