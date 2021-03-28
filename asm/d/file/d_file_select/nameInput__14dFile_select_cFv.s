lbl_801873BC:
/* 801873BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801873C0  7C 08 02 A6 */	mflr r0
/* 801873C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801873C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801873CC  7C 7F 1B 78 */	mr r31, r3
/* 801873D0  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801873D4  48 0C 75 CD */	bl _move__7dName_cFv
/* 801873D8  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801873DC  88 03 02 B1 */	lbz r0, 0x2b1(r3)
/* 801873E0  28 00 00 00 */	cmplwi r0, 0
/* 801873E4  40 82 00 20 */	bne lbl_80187404
/* 801873E8  88 1F 02 4C */	lbz r0, 0x24c(r31)
/* 801873EC  28 00 00 00 */	cmplwi r0, 0
/* 801873F0  41 82 00 2C */	beq lbl_8018741C
/* 801873F4  7F E3 FB 78 */	mr r3, r31
/* 801873F8  38 80 00 00 */	li r4, 0
/* 801873FC  48 00 5F 49 */	bl modoruTxtChange__14dFile_select_cFUc
/* 80187400  48 00 00 1C */	b lbl_8018741C
lbl_80187404:
/* 80187404  88 1F 02 4C */	lbz r0, 0x24c(r31)
/* 80187408  28 00 00 00 */	cmplwi r0, 0
/* 8018740C  40 82 00 10 */	bne lbl_8018741C
/* 80187410  7F E3 FB 78 */	mr r3, r31
/* 80187414  38 80 00 01 */	li r4, 1
/* 80187418  48 00 5F 2D */	bl modoruTxtChange__14dFile_select_cFUc
lbl_8018741C:
/* 8018741C  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 80187420  88 03 02 B4 */	lbz r0, 0x2b4(r3)
/* 80187424  2C 00 00 02 */	cmpwi r0, 2
/* 80187428  41 82 00 88 */	beq lbl_801874B0
/* 8018742C  40 80 00 B8 */	bge lbl_801874E4
/* 80187430  2C 00 00 01 */	cmpwi r0, 1
/* 80187434  40 80 00 08 */	bge lbl_8018743C
/* 80187438  48 00 00 AC */	b lbl_801874E4
lbl_8018743C:
/* 8018743C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80187440  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80187444  88 03 0F 1A */	lbz r0, 0xf1a(r3)
/* 80187448  28 00 00 01 */	cmplwi r0, 1
/* 8018744C  40 82 00 18 */	bne lbl_80187464
/* 80187450  38 00 00 00 */	li r0, 0
/* 80187454  98 1F 02 1E */	stb r0, 0x21e(r31)
/* 80187458  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018745C  98 1F 02 71 */	stb r0, 0x271(r31)
/* 80187460  48 00 00 84 */	b lbl_801874E4
lbl_80187464:
/* 80187464  7F E3 FB 78 */	mr r3, r31
/* 80187468  38 80 00 43 */	li r4, 0x43
/* 8018746C  38 A0 00 01 */	li r5, 1
/* 80187470  38 C0 00 00 */	li r6, 0
/* 80187474  48 00 5C 71 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 80187478  7F E3 FB 78 */	mr r3, r31
/* 8018747C  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 80187480  C0 42 9F 40 */	lfs f2, lit_4611(r2)
/* 80187484  48 00 89 E1 */	bl fileRecScaleAnmInitSet2__14dFile_select_cFff
/* 80187488  7F E3 FB 78 */	mr r3, r31
/* 8018748C  38 80 0D 29 */	li r4, 0xd29
/* 80187490  38 A0 0D 1F */	li r5, 0xd1f
/* 80187494  48 00 8B E1 */	bl nameMoveAnmInitSet__14dFile_select_cFii
/* 80187498  7F E3 FB 78 */	mr r3, r31
/* 8018749C  38 80 00 00 */	li r4, 0
/* 801874A0  48 00 5F 01 */	bl modoruTxtDispAnmInit__14dFile_select_cFUc
/* 801874A4  38 00 00 0E */	li r0, 0xe
/* 801874A8  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 801874AC  48 00 00 38 */	b lbl_801874E4
lbl_801874B0:
/* 801874B0  38 83 02 B5 */	addi r4, r3, 0x2b5
/* 801874B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801874B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801874BC  38 63 01 B4 */	addi r3, r3, 0x1b4
/* 801874C0  48 1E 16 6D */	bl strcpy
/* 801874C4  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801874C8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801874CC  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 801874D0  48 00 DD D1 */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801874D4  38 00 00 0F */	li r0, 0xf
/* 801874D8  98 1F 02 0A */	stb r0, 0x20a(r31)
/* 801874DC  38 00 00 11 */	li r0, 0x11
/* 801874E0  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_801874E4:
/* 801874E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801874E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801874EC  7C 08 03 A6 */	mtlr r0
/* 801874F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801874F4  4E 80 00 20 */	blr 
