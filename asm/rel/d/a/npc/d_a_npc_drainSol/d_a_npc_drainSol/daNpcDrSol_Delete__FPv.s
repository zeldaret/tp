lbl_809AED40:
/* 809AED40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AED44  7C 08 02 A6 */	mflr r0
/* 809AED48  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AED4C  4B FF F7 D1 */	bl Delete__12daNpcDrSol_cFv
/* 809AED50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AED54  7C 08 03 A6 */	mtlr r0
/* 809AED58  38 21 00 10 */	addi r1, r1, 0x10
/* 809AED5C  4E 80 00 20 */	blr 
