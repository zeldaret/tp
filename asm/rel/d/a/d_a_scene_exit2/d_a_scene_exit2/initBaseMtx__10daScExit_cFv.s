lbl_8059E158:
/* 8059E158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E15C  7C 08 02 A6 */	mflr r0
/* 8059E160  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E164  48 00 00 15 */	bl setBaseMtx__10daScExit_cFv
/* 8059E168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E16C  7C 08 03 A6 */	mtlr r0
/* 8059E170  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E174  4E 80 00 20 */	blr 
