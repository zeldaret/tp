lbl_809FEDB8:
/* 809FEDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FEDBC  7C 08 02 A6 */	mflr r0
/* 809FEDC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FEDC4  4B FF AD C9 */	bl Draw__13daNpc_Hanjo_cFv
/* 809FEDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FEDCC  7C 08 03 A6 */	mtlr r0
/* 809FEDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 809FEDD4  4E 80 00 20 */	blr 
