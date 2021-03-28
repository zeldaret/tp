lbl_801B5258:
/* 801B5258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B525C  7C 08 02 A6 */	mflr r0
/* 801B5260  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5268  7C 7F 1B 78 */	mr r31, r3
/* 801B526C  38 80 00 00 */	li r4, 0
/* 801B5270  48 00 0D 45 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B5274  7F E3 FB 78 */	mr r3, r31
/* 801B5278  38 80 00 00 */	li r4, 0
/* 801B527C  48 00 0E 3D */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B5280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5288  7C 08 03 A6 */	mtlr r0
/* 801B528C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5290  4E 80 00 20 */	blr 
