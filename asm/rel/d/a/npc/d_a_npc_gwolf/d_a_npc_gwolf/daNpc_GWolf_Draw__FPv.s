lbl_809F7B58:
/* 809F7B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7B5C  7C 08 02 A6 */	mflr r0
/* 809F7B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7B64  4B FF C0 C9 */	bl Draw__13daNpc_GWolf_cFv
/* 809F7B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7B6C  7C 08 03 A6 */	mtlr r0
/* 809F7B70  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7B74  4E 80 00 20 */	blr 
