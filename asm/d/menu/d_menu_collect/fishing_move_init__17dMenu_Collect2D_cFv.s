lbl_801B568C:
/* 801B568C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5690  7C 08 02 A6 */	mflr r0
/* 801B5694  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B569C  7C 7F 1B 78 */	mr r31, r3
/* 801B56A0  38 80 04 0C */	li r4, 0x40c
/* 801B56A4  48 00 09 11 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B56A8  7F E3 FB 78 */	mr r3, r31
/* 801B56AC  38 80 03 F9 */	li r4, 0x3f9
/* 801B56B0  48 00 0A 09 */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B56B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B56B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B56BC  7C 08 03 A6 */	mtlr r0
/* 801B56C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801B56C4  4E 80 00 20 */	blr 
