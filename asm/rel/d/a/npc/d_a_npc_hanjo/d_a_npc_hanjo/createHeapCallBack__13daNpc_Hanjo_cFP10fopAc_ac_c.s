lbl_809F9C20:
/* 809F9C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F9C24  7C 08 02 A6 */	mflr r0
/* 809F9C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F9C2C  4B FF F9 4D */	bl CreateHeap__13daNpc_Hanjo_cFv
/* 809F9C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F9C34  7C 08 03 A6 */	mtlr r0
/* 809F9C38  38 21 00 10 */	addi r1, r1, 0x10
/* 809F9C3C  4E 80 00 20 */	blr 
