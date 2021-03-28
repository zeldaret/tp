lbl_809AED20:
/* 809AED20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AED24  7C 08 02 A6 */	mflr r0
/* 809AED28  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AED2C  4B FF F3 E1 */	bl Create__12daNpcDrSol_cFv
/* 809AED30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AED34  7C 08 03 A6 */	mtlr r0
/* 809AED38  38 21 00 10 */	addi r1, r1, 0x10
/* 809AED3C  4E 80 00 20 */	blr 
