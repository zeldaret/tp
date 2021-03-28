lbl_8018F974:
/* 8018F974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018F978  7C 08 02 A6 */	mflr r0
/* 8018F97C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018F980  39 61 00 20 */	addi r11, r1, 0x20
/* 8018F984  48 1D 28 59 */	bl _savegpr_29
/* 8018F988  7C 7D 1B 78 */	mr r29, r3
/* 8018F98C  4B FF E8 35 */	bl errorMoveAnm__14dFile_select_cFv
/* 8018F990  7C 7F 1B 78 */	mr r31, r3
/* 8018F994  3B C0 00 01 */	li r30, 1
/* 8018F998  38 60 00 01 */	li r3, 1
/* 8018F99C  88 1D 01 08 */	lbz r0, 0x108(r29)
/* 8018F9A0  28 00 00 00 */	cmplwi r0, 0
/* 8018F9A4  41 82 00 18 */	beq lbl_8018F9BC
/* 8018F9A8  7F A3 EB 78 */	mr r3, r29
/* 8018F9AC  4B FF 93 8D */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 8018F9B0  7C 7E 1B 78 */	mr r30, r3
/* 8018F9B4  7F A3 EB 78 */	mr r3, r29
/* 8018F9B8  4B FF DB BD */	bl ketteiTxtDispAnm__14dFile_select_cFv
lbl_8018F9BC:
/* 8018F9BC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018F9C0  28 00 00 01 */	cmplwi r0, 1
/* 8018F9C4  40 82 00 50 */	bne lbl_8018FA14
/* 8018F9C8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018F9CC  28 00 00 01 */	cmplwi r0, 1
/* 8018F9D0  40 82 00 44 */	bne lbl_8018FA14
/* 8018F9D4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018F9D8  28 00 00 01 */	cmplwi r0, 1
/* 8018F9DC  40 82 00 38 */	bne lbl_8018FA14
/* 8018F9E0  38 00 00 00 */	li r0, 0
/* 8018F9E4  98 1D 02 80 */	stb r0, 0x280(r29)
/* 8018F9E8  38 7D 02 84 */	addi r3, r29, 0x284
/* 8018F9EC  48 1D 26 2D */	bl __ptmf_test
/* 8018F9F0  2C 03 00 00 */	cmpwi r3, 0
/* 8018F9F4  41 82 00 18 */	beq lbl_8018FA0C
/* 8018F9F8  7F A3 EB 78 */	mr r3, r29
/* 8018F9FC  39 9D 02 84 */	addi r12, r29, 0x284
/* 8018FA00  48 1D 26 85 */	bl __ptmf_scall
/* 8018FA04  60 00 00 00 */	nop 
/* 8018FA08  48 00 00 0C */	b lbl_8018FA14
lbl_8018FA0C:
/* 8018FA0C  88 1D 02 73 */	lbz r0, 0x273(r29)
/* 8018FA10  98 1D 02 71 */	stb r0, 0x271(r29)
lbl_8018FA14:
/* 8018FA14  39 61 00 20 */	addi r11, r1, 0x20
/* 8018FA18  48 1D 28 11 */	bl _restgpr_29
/* 8018FA1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018FA20  7C 08 03 A6 */	mtlr r0
/* 8018FA24  38 21 00 20 */	addi r1, r1, 0x20
/* 8018FA28  4E 80 00 20 */	blr 
