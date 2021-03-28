lbl_801F54C0:
/* 801F54C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F54C4  7C 08 02 A6 */	mflr r0
/* 801F54C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F54CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F54D0  7C 7F 1B 78 */	mr r31, r3
/* 801F54D4  48 00 13 1D */	bl setSaveData__12dMenu_save_cFv
/* 801F54D8  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 801F54DC  28 00 00 00 */	cmplwi r0, 0
/* 801F54E0  40 82 00 14 */	bne lbl_801F54F4
/* 801F54E4  7F E3 FB 78 */	mr r3, r31
/* 801F54E8  38 80 00 01 */	li r4, 1
/* 801F54EC  38 A0 00 21 */	li r5, 0x21
/* 801F54F0  4B FF FE 4D */	bl selectDataBaseMoveAnmInitSet__12dMenu_save_cFii
lbl_801F54F4:
/* 801F54F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F54F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F54FC  7C 08 03 A6 */	mtlr r0
/* 801F5500  38 21 00 10 */	addi r1, r1, 0x10
/* 801F5504  4E 80 00 20 */	blr 
