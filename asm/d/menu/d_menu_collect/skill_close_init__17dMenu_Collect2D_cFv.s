lbl_801B59A8:
/* 801B59A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B59AC  7C 08 02 A6 */	mflr r0
/* 801B59B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B59B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B59B8  7C 7F 1B 78 */	mr r31, r3
/* 801B59BC  38 80 00 00 */	li r4, 0
/* 801B59C0  48 00 05 F5 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B59C4  7F E3 FB 78 */	mr r3, r31
/* 801B59C8  38 80 00 00 */	li r4, 0
/* 801B59CC  48 00 06 ED */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B59D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B59D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B59D8  7C 08 03 A6 */	mtlr r0
/* 801B59DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B59E0  4E 80 00 20 */	blr 
