lbl_809F41EC:
/* 809F41EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F41F0  7C 08 02 A6 */	mflr r0
/* 809F41F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F41F8  4B FF F5 C9 */	bl CreateHeap__13daNpc_GWolf_cFv
/* 809F41FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F4200  7C 08 03 A6 */	mtlr r0
/* 809F4204  38 21 00 10 */	addi r1, r1, 0x10
/* 809F4208  4E 80 00 20 */	blr 
