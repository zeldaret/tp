lbl_80C3C968:
/* 80C3C968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3C96C  7C 08 02 A6 */	mflr r0
/* 80C3C970  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3C974  48 00 00 15 */	bl setBaseMtx__15daObjKazeNeko_cFv
/* 80C3C978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3C97C  7C 08 03 A6 */	mtlr r0
/* 80C3C980  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3C984  4E 80 00 20 */	blr 
