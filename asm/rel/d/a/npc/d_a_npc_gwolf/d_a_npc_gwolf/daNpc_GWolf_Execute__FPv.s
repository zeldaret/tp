lbl_809F7B38:
/* 809F7B38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7B3C  7C 08 02 A6 */	mflr r0
/* 809F7B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7B44  4B FF C0 C9 */	bl Execute__13daNpc_GWolf_cFv
/* 809F7B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7B4C  7C 08 03 A6 */	mtlr r0
/* 809F7B50  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7B54  4E 80 00 20 */	blr 
