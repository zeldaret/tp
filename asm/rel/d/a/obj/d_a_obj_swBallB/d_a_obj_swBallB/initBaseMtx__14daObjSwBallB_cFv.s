lbl_80CF496C:
/* 80CF496C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF4970  7C 08 02 A6 */	mflr r0
/* 80CF4974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF4978  48 00 00 15 */	bl setBaseMtx__14daObjSwBallB_cFv
/* 80CF497C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF4980  7C 08 03 A6 */	mtlr r0
/* 80CF4984  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF4988  4E 80 00 20 */	blr 
