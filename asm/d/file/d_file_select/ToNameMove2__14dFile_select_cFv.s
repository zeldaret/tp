lbl_801872C4:
/* 801872C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801872C8  7C 08 02 A6 */	mflr r0
/* 801872CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801872D0  39 61 00 20 */	addi r11, r1, 0x20
/* 801872D4  48 1D AE FD */	bl _savegpr_26
/* 801872D8  7C 7A 1B 78 */	mr r26, r3
/* 801872DC  48 00 5F 81 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 801872E0  7C 7B 1B 78 */	mr r27, r3
/* 801872E4  7F 43 D3 78 */	mr r3, r26
/* 801872E8  48 00 8E 3D */	bl nameMoveAnm__14dFile_select_cFv
/* 801872EC  7C 7C 1B 78 */	mr r28, r3
/* 801872F0  7F 43 D3 78 */	mr r3, r26
/* 801872F4  48 00 6E CD */	bl errorMoveAnm__14dFile_select_cFv
/* 801872F8  7C 7D 1B 78 */	mr r29, r3
/* 801872FC  7F 43 D3 78 */	mr r3, r26
/* 80187300  48 00 1A 39 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 80187304  7C 7E 1B 78 */	mr r30, r3
/* 80187308  7F 43 D3 78 */	mr r3, r26
/* 8018730C  48 00 62 69 */	bl ketteiTxtDispAnm__14dFile_select_cFv
/* 80187310  7C 7F 1B 78 */	mr r31, r3
/* 80187314  7F 43 D3 78 */	mr r3, r26
/* 80187318  48 00 61 05 */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 8018731C  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80187320  28 00 00 01 */	cmplwi r0, 1
/* 80187324  40 82 00 48 */	bne lbl_8018736C
/* 80187328  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8018732C  28 00 00 01 */	cmplwi r0, 1
/* 80187330  40 82 00 3C */	bne lbl_8018736C
/* 80187334  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80187338  28 00 00 01 */	cmplwi r0, 1
/* 8018733C  40 82 00 30 */	bne lbl_8018736C
/* 80187340  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80187344  28 00 00 01 */	cmplwi r0, 1
/* 80187348  40 82 00 24 */	bne lbl_8018736C
/* 8018734C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80187350  28 00 00 01 */	cmplwi r0, 1
/* 80187354  40 82 00 18 */	bne lbl_8018736C
/* 80187358  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018735C  28 00 00 01 */	cmplwi r0, 1
/* 80187360  40 82 00 0C */	bne lbl_8018736C
/* 80187364  38 00 00 0F */	li r0, 0xf
/* 80187368  98 1A 02 6F */	stb r0, 0x26f(r26)
lbl_8018736C:
/* 8018736C  39 61 00 20 */	addi r11, r1, 0x20
/* 80187370  48 1D AE AD */	bl _restgpr_26
/* 80187374  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80187378  7C 08 03 A6 */	mtlr r0
/* 8018737C  38 21 00 20 */	addi r1, r1, 0x20
/* 80187380  4E 80 00 20 */	blr 
