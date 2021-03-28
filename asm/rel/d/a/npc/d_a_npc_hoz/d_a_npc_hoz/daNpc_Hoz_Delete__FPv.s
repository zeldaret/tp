lbl_80A05330:
/* 80A05330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05334  7C 08 02 A6 */	mflr r0
/* 80A05338  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0533C  4B FF CA 19 */	bl Delete__11daNpc_Hoz_cFv
/* 80A05340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05344  7C 08 03 A6 */	mtlr r0
/* 80A05348  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0534C  4E 80 00 20 */	blr 
