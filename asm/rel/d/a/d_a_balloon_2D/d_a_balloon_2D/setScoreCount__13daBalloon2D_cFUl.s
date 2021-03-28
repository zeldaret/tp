lbl_80653FC0:
/* 80653FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80653FC4  7C 08 02 A6 */	mflr r0
/* 80653FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80653FCC  80 03 07 40 */	lwz r0, 0x740(r3)
/* 80653FD0  7C 00 20 40 */	cmplw r0, r4
/* 80653FD4  41 82 00 08 */	beq lbl_80653FDC
/* 80653FD8  48 00 02 81 */	bl setScoreNum__13daBalloon2D_cFi
lbl_80653FDC:
/* 80653FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80653FE0  7C 08 03 A6 */	mtlr r0
/* 80653FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80653FE8  4E 80 00 20 */	blr 
