lbl_801CADA0:
/* 801CADA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CADA4  7C 08 02 A6 */	mflr r0
/* 801CADA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CADAC  38 80 00 06 */	li r4, 6
/* 801CADB0  48 00 09 21 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801CADB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CADB8  7C 08 03 A6 */	mtlr r0
/* 801CADBC  38 21 00 10 */	addi r1, r1, 0x10
/* 801CADC0  4E 80 00 20 */	blr 
