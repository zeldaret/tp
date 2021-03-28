lbl_80187B44:
/* 80187B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80187B48  7C 08 02 A6 */	mflr r0
/* 80187B4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80187B50  39 61 00 20 */	addi r11, r1, 0x20
/* 80187B54  48 1D A6 85 */	bl _savegpr_28
/* 80187B58  7C 7C 1B 78 */	mr r28, r3
/* 80187B5C  48 00 57 01 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 80187B60  7C 7D 1B 78 */	mr r29, r3
/* 80187B64  7F 83 E3 78 */	mr r3, r28
/* 80187B68  4B FF DF 45 */	bl selectDataMoveAnm__14dFile_select_cFv
/* 80187B6C  7C 7E 1B 78 */	mr r30, r3
/* 80187B70  7F 83 E3 78 */	mr r3, r28
/* 80187B74  4B FF F1 39 */	bl menuMoveAnm__14dFile_select_cFv
/* 80187B78  7C 7F 1B 78 */	mr r31, r3
/* 80187B7C  7F 83 E3 78 */	mr r3, r28
/* 80187B80  48 00 58 9D */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 80187B84  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80187B88  28 00 00 01 */	cmplwi r0, 1
/* 80187B8C  40 82 00 44 */	bne lbl_80187BD0
/* 80187B90  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80187B94  28 00 00 01 */	cmplwi r0, 1
/* 80187B98  40 82 00 38 */	bne lbl_80187BD0
/* 80187B9C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80187BA0  28 00 00 01 */	cmplwi r0, 1
/* 80187BA4  40 82 00 2C */	bne lbl_80187BD0
/* 80187BA8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80187BAC  28 00 00 01 */	cmplwi r0, 1
/* 80187BB0  40 82 00 20 */	bne lbl_80187BD0
/* 80187BB4  7F 83 E3 78 */	mr r3, r28
/* 80187BB8  48 00 5B AD */	bl selFileCursorShow__14dFile_select_cFv
/* 80187BBC  38 00 00 00 */	li r0, 0
/* 80187BC0  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80187BC4  90 03 00 08 */	stw r0, 8(r3)
/* 80187BC8  38 00 00 03 */	li r0, 3
/* 80187BCC  98 1C 02 6F */	stb r0, 0x26f(r28)
lbl_80187BD0:
/* 80187BD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80187BD4  48 1D A6 51 */	bl _restgpr_28
/* 80187BD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80187BDC  7C 08 03 A6 */	mtlr r0
/* 80187BE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80187BE4  4E 80 00 20 */	blr 
