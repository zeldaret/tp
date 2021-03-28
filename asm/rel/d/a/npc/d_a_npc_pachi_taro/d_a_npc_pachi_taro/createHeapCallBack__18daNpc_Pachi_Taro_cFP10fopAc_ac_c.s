lbl_80A9CCC0:
/* 80A9CCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9CCC4  7C 08 02 A6 */	mflr r0
/* 80A9CCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9CCCC  4B FF F9 D1 */	bl CreateHeap__18daNpc_Pachi_Taro_cFv
/* 80A9CCD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9CCD4  7C 08 03 A6 */	mtlr r0
/* 80A9CCD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9CCDC  4E 80 00 20 */	blr 
