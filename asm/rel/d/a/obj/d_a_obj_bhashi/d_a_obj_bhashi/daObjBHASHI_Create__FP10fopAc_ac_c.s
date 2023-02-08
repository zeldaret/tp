lbl_80576B34:
/* 80576B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576B38  7C 08 02 A6 */	mflr r0
/* 80576B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576B40  48 00 18 ED */	bl create__13daObjBHASHI_cFv
/* 80576B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576B48  7C 08 03 A6 */	mtlr r0
/* 80576B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80576B50  4E 80 00 20 */	blr 
