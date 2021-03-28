lbl_805669F8:
/* 805669F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805669FC  7C 08 02 A6 */	mflr r0
/* 80566A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566A04  4B FF F9 3D */	bl CreateHeap__12daNpc_Taro_cFv
/* 80566A08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566A0C  7C 08 03 A6 */	mtlr r0
/* 80566A10  38 21 00 10 */	addi r1, r1, 0x10
/* 80566A14  4E 80 00 20 */	blr 
