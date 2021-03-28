lbl_80C9AB10:
/* 80C9AB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9AB14  7C 08 02 A6 */	mflr r0
/* 80C9AB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9AB1C  48 00 00 15 */	bl create__18daObjMirrorTable_cFv
/* 80C9AB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9AB24  7C 08 03 A6 */	mtlr r0
/* 80C9AB28  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9AB2C  4E 80 00 20 */	blr 
