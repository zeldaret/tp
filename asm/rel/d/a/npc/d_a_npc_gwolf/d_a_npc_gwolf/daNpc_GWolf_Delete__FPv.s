lbl_809F7B18:
/* 809F7B18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7B1C  7C 08 02 A6 */	mflr r0
/* 809F7B20  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7B24  4B FF C0 B5 */	bl Delete__13daNpc_GWolf_cFv
/* 809F7B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7B2C  7C 08 03 A6 */	mtlr r0
/* 809F7B30  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7B34  4E 80 00 20 */	blr 
