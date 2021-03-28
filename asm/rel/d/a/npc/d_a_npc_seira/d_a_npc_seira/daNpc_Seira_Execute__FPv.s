lbl_80ACED28:
/* 80ACED28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACED2C  7C 08 02 A6 */	mflr r0
/* 80ACED30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACED34  4B FF D3 FD */	bl Execute__13daNpc_Seira_cFv
/* 80ACED38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACED3C  7C 08 03 A6 */	mtlr r0
/* 80ACED40  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACED44  4E 80 00 20 */	blr 
