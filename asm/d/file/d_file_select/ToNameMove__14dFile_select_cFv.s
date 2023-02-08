lbl_8018721C:
/* 8018721C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80187220  7C 08 02 A6 */	mflr r0
/* 80187224  90 01 00 24 */	stw r0, 0x24(r1)
/* 80187228  39 61 00 20 */	addi r11, r1, 0x20
/* 8018722C  48 1D AF A9 */	bl _savegpr_27
/* 80187230  7C 7B 1B 78 */	mr r27, r3
/* 80187234  48 00 60 29 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 80187238  7C 7C 1B 78 */	mr r28, r3
/* 8018723C  7F 63 DB 78 */	mr r3, r27
/* 80187240  48 00 8E E5 */	bl nameMoveAnm__14dFile_select_cFv
/* 80187244  7C 7D 1B 78 */	mr r29, r3
/* 80187248  7F 63 DB 78 */	mr r3, r27
/* 8018724C  4B FF FA 61 */	bl menuMoveAnm__14dFile_select_cFv
/* 80187250  7C 7E 1B 78 */	mr r30, r3
/* 80187254  7F 63 DB 78 */	mr r3, r27
/* 80187258  48 00 8B C1 */	bl fileRecScaleAnm__14dFile_select_cFv
/* 8018725C  7C 7F 1B 78 */	mr r31, r3
/* 80187260  7F 63 DB 78 */	mr r3, r27
/* 80187264  48 00 8D 39 */	bl fileInfoScaleAnm__14dFile_select_cFv
/* 80187268  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8018726C  28 00 00 01 */	cmplwi r0, 1
/* 80187270  40 82 00 3C */	bne lbl_801872AC
/* 80187274  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80187278  28 00 00 01 */	cmplwi r0, 1
/* 8018727C  40 82 00 30 */	bne lbl_801872AC
/* 80187280  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80187284  28 00 00 01 */	cmplwi r0, 1
/* 80187288  40 82 00 24 */	bne lbl_801872AC
/* 8018728C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80187290  28 00 00 01 */	cmplwi r0, 1
/* 80187294  40 82 00 18 */	bne lbl_801872AC
/* 80187298  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018729C  28 00 00 01 */	cmplwi r0, 1
/* 801872A0  40 82 00 0C */	bne lbl_801872AC
/* 801872A4  38 00 00 0F */	li r0, 0xf
/* 801872A8  98 1B 02 6F */	stb r0, 0x26f(r27)
lbl_801872AC:
/* 801872AC  39 61 00 20 */	addi r11, r1, 0x20
/* 801872B0  48 1D AF 71 */	bl _restgpr_27
/* 801872B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801872B8  7C 08 03 A6 */	mtlr r0
/* 801872BC  38 21 00 20 */	addi r1, r1, 0x20
/* 801872C0  4E 80 00 20 */	blr 
