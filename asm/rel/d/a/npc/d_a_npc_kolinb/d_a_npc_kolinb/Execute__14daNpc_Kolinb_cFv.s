lbl_80A46070:
/* 80A46070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A46074  7C 08 02 A6 */	mflr r0
/* 80A46078  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4607C  4B 70 24 B1 */	bl execute__8daNpcT_cFv
/* 80A46080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A46084  7C 08 03 A6 */	mtlr r0
/* 80A46088  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4608C  4E 80 00 20 */	blr 
