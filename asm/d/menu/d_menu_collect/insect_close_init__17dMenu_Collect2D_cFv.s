lbl_801B5C1C:
/* 801B5C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5C20  7C 08 02 A6 */	mflr r0
/* 801B5C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B5C2C  7C 7F 1B 78 */	mr r31, r3
/* 801B5C30  38 80 00 00 */	li r4, 0
/* 801B5C34  48 00 03 81 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B5C38  7F E3 FB 78 */	mr r3, r31
/* 801B5C3C  38 80 00 00 */	li r4, 0
/* 801B5C40  48 00 04 79 */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B5C44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B5C4C  7C 08 03 A6 */	mtlr r0
/* 801B5C50  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5C54  4E 80 00 20 */	blr 
