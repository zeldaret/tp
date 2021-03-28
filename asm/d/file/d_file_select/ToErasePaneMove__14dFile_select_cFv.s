lbl_80187ADC:
/* 80187ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80187AE0  7C 08 02 A6 */	mflr r0
/* 80187AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80187AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80187AEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80187AF0  7C 7E 1B 78 */	mr r30, r3
/* 80187AF4  48 00 57 69 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 80187AF8  7C 7F 1B 78 */	mr r31, r3
/* 80187AFC  7F C3 F3 78 */	mr r3, r30
/* 80187B00  48 00 12 39 */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 80187B04  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80187B08  28 00 00 01 */	cmplwi r0, 1
/* 80187B0C  40 82 00 20 */	bne lbl_80187B2C
/* 80187B10  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80187B14  28 00 00 01 */	cmplwi r0, 1
/* 80187B18  40 82 00 14 */	bne lbl_80187B2C
/* 80187B1C  7F C3 F3 78 */	mr r3, r30
/* 80187B20  48 00 16 0D */	bl yesnoCursorShow__14dFile_select_cFv
/* 80187B24  38 00 00 1A */	li r0, 0x1a
/* 80187B28  98 1E 02 6F */	stb r0, 0x26f(r30)
lbl_80187B2C:
/* 80187B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80187B30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80187B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80187B38  7C 08 03 A6 */	mtlr r0
/* 80187B3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80187B40  4E 80 00 20 */	blr 
