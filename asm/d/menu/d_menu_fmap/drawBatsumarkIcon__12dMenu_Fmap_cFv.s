lbl_801CCDDC:
/* 801CCDDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CCDE0  7C 08 02 A6 */	mflr r0
/* 801CCDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CCDE8  38 80 00 05 */	li r4, 5
/* 801CCDEC  38 A0 00 12 */	li r5, 0x12
/* 801CCDF0  48 00 03 1D */	bl drawIcon__12dMenu_Fmap_cFUci
/* 801CCDF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CCDF8  7C 08 03 A6 */	mtlr r0
/* 801CCDFC  38 21 00 10 */	addi r1, r1, 0x10
/* 801CCE00  4E 80 00 20 */	blr 
