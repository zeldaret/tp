lbl_801B541C:
/* 801B541C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B5420  7C 08 02 A6 */	mflr r0
/* 801B5424  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B5428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B542C  7C 7F 1B 78 */	mr r31, r3
/* 801B5430  38 80 04 0C */	li r4, 0x40c
/* 801B5434  48 00 0B 81 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B5438  7F E3 FB 78 */	mr r3, r31
/* 801B543C  38 80 03 F9 */	li r4, 0x3f9
/* 801B5440  48 00 0C 79 */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B5444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B5448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B544C  7C 08 03 A6 */	mtlr r0
/* 801B5450  38 21 00 10 */	addi r1, r1, 0x10
/* 801B5454  4E 80 00 20 */	blr 
