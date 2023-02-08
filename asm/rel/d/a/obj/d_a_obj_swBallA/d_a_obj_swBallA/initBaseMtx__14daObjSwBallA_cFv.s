lbl_80CF3610:
/* 80CF3610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF3614  7C 08 02 A6 */	mflr r0
/* 80CF3618  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF361C  48 00 00 15 */	bl setBaseMtx__14daObjSwBallA_cFv
/* 80CF3620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF3624  7C 08 03 A6 */	mtlr r0
/* 80CF3628  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF362C  4E 80 00 20 */	blr 
