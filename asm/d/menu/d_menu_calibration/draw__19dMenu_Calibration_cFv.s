lbl_801AFBF4:
/* 801AFBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AFBF8  7C 08 02 A6 */	mflr r0
/* 801AFBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AFC00  4B FF F2 2D */	bl _draw__19dMenu_Calibration_cFv
/* 801AFC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AFC08  7C 08 03 A6 */	mtlr r0
/* 801AFC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 801AFC10  4E 80 00 20 */	blr 
