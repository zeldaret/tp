lbl_8018F400:
/* 8018F400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F404  7C 08 02 A6 */	mflr r0
/* 8018F408  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F40C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F410  7C 7F 1B 78 */	mr r31, r3
/* 8018F414  48 00 06 19 */	bl errYesNoSelect__14dFile_select_cFv
/* 8018F418  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018F41C  41 82 00 58 */	beq lbl_8018F474
/* 8018F420  88 1F 02 68 */	lbz r0, 0x268(r31)
/* 8018F424  28 00 00 00 */	cmplwi r0, 0
/* 8018F428  41 82 00 1C */	beq lbl_8018F444
/* 8018F42C  7F E3 FB 78 */	mr r3, r31
/* 8018F430  38 80 00 1B */	li r4, 0x1b
/* 8018F434  48 00 08 31 */	bl errorTxtSet__14dFile_select_cFUs
/* 8018F438  38 00 00 01 */	li r0, 1
/* 8018F43C  98 1F 03 B1 */	stb r0, 0x3b1(r31)
/* 8018F440  48 00 00 10 */	b lbl_8018F450
lbl_8018F444:
/* 8018F444  7F E3 FB 78 */	mr r3, r31
/* 8018F448  38 80 00 19 */	li r4, 0x19
/* 8018F44C  48 00 08 19 */	bl errorTxtSet__14dFile_select_cFUs
lbl_8018F450:
/* 8018F450  7F E3 FB 78 */	mr r3, r31
/* 8018F454  38 80 00 00 */	li r4, 0
/* 8018F458  4B FF E0 A1 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018F45C  7F E3 FB 78 */	mr r3, r31
/* 8018F460  38 80 04 7D */	li r4, 0x47d
/* 8018F464  38 A0 04 73 */	li r5, 0x473
/* 8018F468  4B FF 97 55 */	bl yesnoMenuMoveAnmInitSet__14dFile_select_cFii
/* 8018F46C  38 00 00 0E */	li r0, 0xe
/* 8018F470  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018F474:
/* 8018F474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F47C  7C 08 03 A6 */	mtlr r0
/* 8018F480  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F484  4E 80 00 20 */	blr 
