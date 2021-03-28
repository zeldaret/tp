lbl_801B7F00:
/* 801B7F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B7F04  7C 08 02 A6 */	mflr r0
/* 801B7F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B7F0C  4B FF DE 65 */	bl _draw__17dMenu_Collect2D_cFv
/* 801B7F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B7F14  7C 08 03 A6 */	mtlr r0
/* 801B7F18  38 21 00 10 */	addi r1, r1, 0x10
/* 801B7F1C  4E 80 00 20 */	blr 
