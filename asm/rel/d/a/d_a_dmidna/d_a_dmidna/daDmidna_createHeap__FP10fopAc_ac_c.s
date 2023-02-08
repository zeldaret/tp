lbl_8045CFC4:
/* 8045CFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045CFC8  7C 08 02 A6 */	mflr r0
/* 8045CFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045CFD0  4B FF FF 09 */	bl createHeap__10daDmidna_cFv
/* 8045CFD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045CFD8  7C 08 03 A6 */	mtlr r0
/* 8045CFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8045CFE0  4E 80 00 20 */	blr 
