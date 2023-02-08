lbl_801C188C:
/* 801C188C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C1890  7C 08 02 A6 */	mflr r0
/* 801C1894  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C1898  4B FF FA 1D */	bl moveFloor__20dMenu_StageMapCtrl_cFv
/* 801C189C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C18A0  7C 08 03 A6 */	mtlr r0
/* 801C18A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801C18A8  4E 80 00 20 */	blr 
