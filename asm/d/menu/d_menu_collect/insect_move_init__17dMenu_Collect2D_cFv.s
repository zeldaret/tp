lbl_801B5B70:
/* 801B5B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5B74  7C 08 02 A6 */	mflr r0
/* 801B5B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5B80  7C 7F 1B 78 */	mr r31, r3
/* 801B5B84  38 80 04 0C */	li r4, 0x40c
/* 801B5B88  48 00 04 2D */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B5B8C  7F E3 FB 78 */	mr r3, r31
/* 801B5B90  38 80 03 F9 */	li r4, 0x3f9
/* 801B5B94  48 00 05 25 */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B5B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5BA0  7C 08 03 A6 */	mtlr r0
/* 801B5BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5BA8  4E 80 00 20 */	blr 
