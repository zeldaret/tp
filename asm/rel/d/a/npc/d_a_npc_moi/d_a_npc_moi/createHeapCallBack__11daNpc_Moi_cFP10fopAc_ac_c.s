lbl_80A74B80:
/* 80A74B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A74B84  7C 08 02 A6 */	mflr r0
/* 80A74B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A74B8C  4B FF F8 E9 */	bl CreateHeap__11daNpc_Moi_cFv
/* 80A74B90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A74B94  7C 08 03 A6 */	mtlr r0
/* 80A74B98  38 21 00 10 */	addi r1, r1, 0x10
/* 80A74B9C  4E 80 00 20 */	blr 
