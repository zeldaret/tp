lbl_8000DE8C:
/* 8000DE8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000DE90  7C 08 02 A6 */	mflr r0
/* 8000DE94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000DE98  39 61 00 20 */	addi r11, r1, 0x20
/* 8000DE9C  48 35 43 35 */	bl _savegpr_26
/* 8000DEA0  7C 7A 1B 78 */	mr r26, r3
/* 8000DEA4  3B 80 00 00 */	li r28, 0
/* 8000DEA8  3F E0 C0 00 */	lis r31, 0xc000
/* 8000DEAC  48 00 00 68 */	b lbl_8000DF14
lbl_8000DEB0:
/* 8000DEB0  80 7A 00 60 */	lwz r3, 0x60(r26)
/* 8000DEB4  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 8000DEB8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8000DEBC  83 C3 00 3C */	lwz r30, 0x3c(r3)
/* 8000DEC0  7C 1E F8 40 */	cmplw r30, r31
/* 8000DEC4  40 80 00 08 */	bge lbl_8000DECC
/* 8000DEC8  48 00 00 08 */	b lbl_8000DED0
lbl_8000DECC:
/* 8000DECC  3B C0 00 00 */	li r30, 0
lbl_8000DED0:
/* 8000DED0  28 1E 00 00 */	cmplwi r30, 0
/* 8000DED4  41 82 00 3C */	beq lbl_8000DF10
/* 8000DED8  3B 60 00 00 */	li r27, 0
/* 8000DEDC  48 00 00 28 */	b lbl_8000DF04
lbl_8000DEE0:
/* 8000DEE0  7F C3 F3 78 */	mr r3, r30
/* 8000DEE4  7F A4 EB 78 */	mr r4, r29
/* 8000DEE8  38 A0 00 00 */	li r5, 0
/* 8000DEEC  48 31 E7 79 */	bl setTevColorAnm__14J3DMaterialAnmFiP14J3DTevColorAnm
/* 8000DEF0  7F C3 F3 78 */	mr r3, r30
/* 8000DEF4  7F A4 EB 78 */	mr r4, r29
/* 8000DEF8  38 A0 00 00 */	li r5, 0
/* 8000DEFC  48 31 E7 A9 */	bl setTevKColorAnm__14J3DMaterialAnmFiP15J3DTevKColorAnm
/* 8000DF00  3B 7B 00 01 */	addi r27, r27, 1
lbl_8000DF04:
/* 8000DF04  57 7D 04 3E */	clrlwi r29, r27, 0x10
/* 8000DF08  2C 1D 00 04 */	cmpwi r29, 4
/* 8000DF0C  41 80 FF D4 */	blt lbl_8000DEE0
lbl_8000DF10:
/* 8000DF10  3B 9C 00 01 */	addi r28, r28, 1
lbl_8000DF14:
/* 8000DF14  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8000DF18  A0 1A 00 5C */	lhz r0, 0x5c(r26)
/* 8000DF1C  7C 03 00 40 */	cmplw r3, r0
/* 8000DF20  41 80 FF 90 */	blt lbl_8000DEB0
/* 8000DF24  39 61 00 20 */	addi r11, r1, 0x20
/* 8000DF28  48 35 42 F5 */	bl _restgpr_26
/* 8000DF2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000DF30  7C 08 03 A6 */	mtlr r0
/* 8000DF34  38 21 00 20 */	addi r1, r1, 0x20
/* 8000DF38  4E 80 00 20 */	blr 
