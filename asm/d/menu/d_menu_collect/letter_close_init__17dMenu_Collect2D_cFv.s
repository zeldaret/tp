lbl_801B54C8:
/* 801B54C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B54CC  7C 08 02 A6 */	mflr r0
/* 801B54D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B54D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B54D8  7C 7F 1B 78 */	mr r31, r3
/* 801B54DC  38 80 00 00 */	li r4, 0
/* 801B54E0  48 00 0A D5 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B54E4  7F E3 FB 78 */	mr r3, r31
/* 801B54E8  38 80 00 00 */	li r4, 0
/* 801B54EC  48 00 0B CD */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B54F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B54F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B54F8  7C 08 03 A6 */	mtlr r0
/* 801B54FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5500  4E 80 00 20 */	blr 
