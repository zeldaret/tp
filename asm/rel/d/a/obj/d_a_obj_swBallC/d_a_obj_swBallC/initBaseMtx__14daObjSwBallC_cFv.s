lbl_80CF5CD4:
/* 80CF5CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5CD8  7C 08 02 A6 */	mflr r0
/* 80CF5CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5CE0  48 00 00 15 */	bl setBaseMtx__14daObjSwBallC_cFv
/* 80CF5CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5CE8  7C 08 03 A6 */	mtlr r0
/* 80CF5CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF5CF0  4E 80 00 20 */	blr 
