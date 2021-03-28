lbl_80D3D438:
/* 80D3D438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3D43C  7C 08 02 A6 */	mflr r0
/* 80D3D440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3D444  4B FF F4 55 */	bl CreateHeap__12daObj_YBag_cFv
/* 80D3D448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3D44C  7C 08 03 A6 */	mtlr r0
/* 80D3D450  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3D454  4E 80 00 20 */	blr 
