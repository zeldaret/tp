lbl_80CF464C:
/* 80CF464C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF4650  7C 08 02 A6 */	mflr r0
/* 80CF4654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF4658  48 00 05 1D */	bl CreateHeap__14daObjSwBallB_cFv
/* 80CF465C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF4660  7C 08 03 A6 */	mtlr r0
/* 80CF4664  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF4668  4E 80 00 20 */	blr 
