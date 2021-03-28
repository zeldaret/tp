lbl_8018ECBC:
/* 8018ECBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018ECC0  7C 08 02 A6 */	mflr r0
/* 8018ECC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018ECC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8018ECCC  48 1D 35 0D */	bl _savegpr_28
/* 8018ECD0  7C 7C 1B 78 */	mr r28, r3
/* 8018ECD4  48 00 10 5D */	bl errorTxtChangeAnm__14dFile_select_cFv
/* 8018ECD8  7C 7F 1B 78 */	mr r31, r3
/* 8018ECDC  3B C0 00 01 */	li r30, 1
/* 8018ECE0  3B A0 00 01 */	li r29, 1
/* 8018ECE4  88 1C 02 82 */	lbz r0, 0x282(r28)
/* 8018ECE8  28 00 00 00 */	cmplwi r0, 0
/* 8018ECEC  41 82 00 2C */	beq lbl_8018ED18
/* 8018ECF0  88 1C 02 80 */	lbz r0, 0x280(r28)
/* 8018ECF4  28 00 00 00 */	cmplwi r0, 0
/* 8018ECF8  41 82 00 30 */	beq lbl_8018ED28
/* 8018ECFC  7F 83 E3 78 */	mr r3, r28
/* 8018ED00  4B FF A0 39 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 8018ED04  7C 7E 1B 78 */	mr r30, r3
/* 8018ED08  7F 83 E3 78 */	mr r3, r28
/* 8018ED0C  4B FF E8 69 */	bl ketteiTxtDispAnm__14dFile_select_cFv
/* 8018ED10  7C 7D 1B 78 */	mr r29, r3
/* 8018ED14  48 00 00 14 */	b lbl_8018ED28
lbl_8018ED18:
/* 8018ED18  7F 83 E3 78 */	mr r3, r28
/* 8018ED1C  88 9C 02 68 */	lbz r4, 0x268(r28)
/* 8018ED20  4B FF EE AD */	bl yesnoWakuAlpahAnm__14dFile_select_cFUc
/* 8018ED24  7C 7E 1B 78 */	mr r30, r3
lbl_8018ED28:
/* 8018ED28  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8018ED2C  28 00 00 01 */	cmplwi r0, 1
/* 8018ED30  40 82 00 38 */	bne lbl_8018ED68
/* 8018ED34  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018ED38  28 00 00 01 */	cmplwi r0, 1
/* 8018ED3C  40 82 00 2C */	bne lbl_8018ED68
/* 8018ED40  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8018ED44  28 00 00 01 */	cmplwi r0, 1
/* 8018ED48  40 82 00 20 */	bne lbl_8018ED68
/* 8018ED4C  88 1C 02 80 */	lbz r0, 0x280(r28)
/* 8018ED50  28 00 00 00 */	cmplwi r0, 0
/* 8018ED54  41 82 00 0C */	beq lbl_8018ED60
/* 8018ED58  7F 83 E3 78 */	mr r3, r28
/* 8018ED5C  4B FF A3 D1 */	bl yesnoCursorShow__14dFile_select_cFv
lbl_8018ED60:
/* 8018ED60  38 00 00 04 */	li r0, 4
/* 8018ED64  98 1C 02 71 */	stb r0, 0x271(r28)
lbl_8018ED68:
/* 8018ED68  39 61 00 20 */	addi r11, r1, 0x20
/* 8018ED6C  48 1D 34 B9 */	bl _restgpr_28
/* 8018ED70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018ED74  7C 08 03 A6 */	mtlr r0
/* 8018ED78  38 21 00 20 */	addi r1, r1, 0x20
/* 8018ED7C  4E 80 00 20 */	blr 
