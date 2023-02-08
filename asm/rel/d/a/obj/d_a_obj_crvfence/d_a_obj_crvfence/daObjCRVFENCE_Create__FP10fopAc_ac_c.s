lbl_80BCEE1C:
/* 80BCEE1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCEE20  7C 08 02 A6 */	mflr r0
/* 80BCEE24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCEE28  48 00 0C BD */	bl create__15daObjCRVFENCE_cFv
/* 80BCEE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCEE30  7C 08 03 A6 */	mtlr r0
/* 80BCEE34  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCEE38  4E 80 00 20 */	blr 
