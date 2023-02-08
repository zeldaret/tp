lbl_801B4F30:
/* 801B4F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4F34  7C 08 02 A6 */	mflr r0
/* 801B4F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4F3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4F40  7C 7F 1B 78 */	mr r31, r3
/* 801B4F44  38 80 04 0C */	li r4, 0x40c
/* 801B4F48  48 00 10 6D */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4F4C  7F E3 FB 78 */	mr r3, r31
/* 801B4F50  38 80 00 00 */	li r4, 0
/* 801B4F54  48 00 11 65 */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B4F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4F60  7C 08 03 A6 */	mtlr r0
/* 801B4F64  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4F68  4E 80 00 20 */	blr 
