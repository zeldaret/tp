lbl_8003CBBC:
/* 8003CBBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003CBC0  7C 08 02 A6 */	mflr r0
/* 8003CBC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003CBC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8003CBCC  48 32 56 0D */	bl _savegpr_28
/* 8003CBD0  7C 7C 1B 78 */	mr r28, r3
/* 8003CBD4  80 04 00 04 */	lwz r0, 4(r4)
/* 8003CBD8  28 00 00 00 */	cmplwi r0, 0
/* 8003CBDC  41 82 00 30 */	beq lbl_8003CC0C
/* 8003CBE0  7C 1E 03 78 */	mr r30, r0
/* 8003CBE4  3B A0 00 00 */	li r29, 0
/* 8003CBE8  8B E4 00 01 */	lbz r31, 1(r4)
/* 8003CBEC  48 00 00 18 */	b lbl_8003CC04
lbl_8003CBF0:
/* 8003CBF0  7F 83 E3 78 */	mr r3, r28
/* 8003CBF4  7F C4 F3 78 */	mr r4, r30
/* 8003CBF8  4B FF FF 09 */	bl rendering__11dDrawPath_cFPCQ211dDrawPath_c11group_class
/* 8003CBFC  3B DE 00 14 */	addi r30, r30, 0x14
/* 8003CC00  3B BD 00 01 */	addi r29, r29, 1
lbl_8003CC04:
/* 8003CC04  7C 1D F8 00 */	cmpw r29, r31
/* 8003CC08  41 80 FF E8 */	blt lbl_8003CBF0
lbl_8003CC0C:
/* 8003CC0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8003CC10  48 32 56 15 */	bl _restgpr_28
/* 8003CC14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003CC18  7C 08 03 A6 */	mtlr r0
/* 8003CC1C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003CC20  4E 80 00 20 */	blr 
