lbl_805590B4:
/* 805590B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805590B8  7C 08 02 A6 */	mflr r0
/* 805590BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805590C0  4B FF B0 79 */	bl create__13daNpc_Kolin_cFv
/* 805590C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805590C8  7C 08 03 A6 */	mtlr r0
/* 805590CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805590D0  4E 80 00 20 */	blr 
