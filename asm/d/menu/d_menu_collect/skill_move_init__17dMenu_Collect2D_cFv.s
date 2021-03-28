lbl_801B58FC:
/* 801B58FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5900  7C 08 02 A6 */	mflr r0
/* 801B5904  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B590C  7C 7F 1B 78 */	mr r31, r3
/* 801B5910  38 80 04 0C */	li r4, 0x40c
/* 801B5914  48 00 06 A1 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B5918  7F E3 FB 78 */	mr r3, r31
/* 801B591C  38 80 03 F9 */	li r4, 0x3f9
/* 801B5920  48 00 07 99 */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B5924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B592C  7C 08 03 A6 */	mtlr r0
/* 801B5930  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5934  4E 80 00 20 */	blr 
