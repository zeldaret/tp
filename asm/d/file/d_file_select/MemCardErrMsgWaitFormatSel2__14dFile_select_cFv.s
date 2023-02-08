lbl_8018F1CC:
/* 8018F1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F1D0  7C 08 02 A6 */	mflr r0
/* 8018F1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F1DC  7C 7F 1B 78 */	mr r31, r3
/* 8018F1E0  48 00 08 4D */	bl errYesNoSelect__14dFile_select_cFv
/* 8018F1E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018F1E8  41 82 00 2C */	beq lbl_8018F214
/* 8018F1EC  88 1F 02 68 */	lbz r0, 0x268(r31)
/* 8018F1F0  28 00 00 00 */	cmplwi r0, 0
/* 8018F1F4  41 82 00 18 */	beq lbl_8018F20C
/* 8018F1F8  38 00 00 01 */	li r0, 1
/* 8018F1FC  98 1F 03 B1 */	stb r0, 0x3b1(r31)
/* 8018F200  7F E3 FB 78 */	mr r3, r31
/* 8018F204  4B FF FF 79 */	bl formatYesSel2DispInitSet__14dFile_select_cFv
/* 8018F208  48 00 00 0C */	b lbl_8018F214
lbl_8018F20C:
/* 8018F20C  7F E3 FB 78 */	mr r3, r31
/* 8018F210  4B FF FD 9D */	bl formatNoSelDispInitSet__14dFile_select_cFv
lbl_8018F214:
/* 8018F214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F21C  7C 08 03 A6 */	mtlr r0
/* 8018F220  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F224  4E 80 00 20 */	blr 
