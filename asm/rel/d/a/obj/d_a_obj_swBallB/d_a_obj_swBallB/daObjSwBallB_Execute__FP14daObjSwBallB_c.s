lbl_80CF5880:
/* 80CF5880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5884  7C 08 02 A6 */	mflr r0
/* 80CF5888  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF588C  4B FF F5 7D */	bl execute__14daObjSwBallB_cFv
/* 80CF5890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5894  7C 08 03 A6 */	mtlr r0
/* 80CF5898  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF589C  4E 80 00 20 */	blr 
