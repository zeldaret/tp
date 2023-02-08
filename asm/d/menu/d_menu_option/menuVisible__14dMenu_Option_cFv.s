lbl_801E5494:
/* 801E5494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E5498  7C 08 02 A6 */	mflr r0
/* 801E549C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E54A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E54A4  93 C1 00 08 */	stw r30, 8(r1)
/* 801E54A8  7C 7E 1B 78 */	mr r30, r3
/* 801E54AC  3B E0 00 00 */	li r31, 0
lbl_801E54B0:
/* 801E54B0  2C 1F 00 03 */	cmpwi r31, 3
/* 801E54B4  40 80 00 14 */	bge lbl_801E54C8
/* 801E54B8  7F C3 F3 78 */	mr r3, r30
/* 801E54BC  7F E4 FB 78 */	mr r4, r31
/* 801E54C0  48 00 00 39 */	bl menuShow__14dMenu_Option_cFi
/* 801E54C4  48 00 00 10 */	b lbl_801E54D4
lbl_801E54C8:
/* 801E54C8  7F C3 F3 78 */	mr r3, r30
/* 801E54CC  7F E4 FB 78 */	mr r4, r31
/* 801E54D0  48 00 00 E9 */	bl menuHide__14dMenu_Option_cFi
lbl_801E54D4:
/* 801E54D4  3B FF 00 01 */	addi r31, r31, 1
/* 801E54D8  2C 1F 00 06 */	cmpwi r31, 6
/* 801E54DC  41 80 FF D4 */	blt lbl_801E54B0
/* 801E54E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E54E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801E54E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E54EC  7C 08 03 A6 */	mtlr r0
/* 801E54F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801E54F4  4E 80 00 20 */	blr 
