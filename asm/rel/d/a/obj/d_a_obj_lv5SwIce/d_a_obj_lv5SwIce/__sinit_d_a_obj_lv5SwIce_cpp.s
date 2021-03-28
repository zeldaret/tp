lbl_80C6D484:
/* 80C6D484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D488  7C 08 02 A6 */	mflr r0
/* 80C6D48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D490  3C 60 80 C7 */	lis r3, l_HIO@ha
/* 80C6D494  38 63 D6 D4 */	addi r3, r3, l_HIO@l
/* 80C6D498  4B FF F4 B5 */	bl __ct__16daLv5SwIce_HIO_cFv
/* 80C6D49C  3C 80 80 C7 */	lis r4, __dt__16daLv5SwIce_HIO_cFv@ha
/* 80C6D4A0  38 84 D4 18 */	addi r4, r4, __dt__16daLv5SwIce_HIO_cFv@l
/* 80C6D4A4  3C A0 80 C7 */	lis r5, lit_3647@ha
/* 80C6D4A8  38 A5 D6 C8 */	addi r5, r5, lit_3647@l
/* 80C6D4AC  4B FF F4 2D */	bl __register_global_object
/* 80C6D4B0  3C 60 80 C7 */	lis r3, mCcDCyl__12daLv5SwIce_c@ha
/* 80C6D4B4  38 63 D5 80 */	addi r3, r3, mCcDCyl__12daLv5SwIce_c@l
/* 80C6D4B8  38 A3 FF FC */	addi r5, r3, -4
/* 80C6D4BC  3C 60 80 C7 */	lis r3, mCcDObjInfo__12daLv5SwIce_c@ha
/* 80C6D4C0  38 63 D5 08 */	addi r3, r3, mCcDObjInfo__12daLv5SwIce_c@l
/* 80C6D4C4  38 83 FF FC */	addi r4, r3, -4
/* 80C6D4C8  38 00 00 06 */	li r0, 6
/* 80C6D4CC  7C 09 03 A6 */	mtctr r0
lbl_80C6D4D0:
/* 80C6D4D0  80 64 00 04 */	lwz r3, 4(r4)
/* 80C6D4D4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C6D4D8  90 65 00 04 */	stw r3, 4(r5)
/* 80C6D4DC  94 05 00 08 */	stwu r0, 8(r5)
/* 80C6D4E0  42 00 FF F0 */	bdnz lbl_80C6D4D0
/* 80C6D4E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D4E8  7C 08 03 A6 */	mtlr r0
/* 80C6D4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D4F0  4E 80 00 20 */	blr 
