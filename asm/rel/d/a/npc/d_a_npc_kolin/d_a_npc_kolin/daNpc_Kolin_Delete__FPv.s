lbl_805590D4:
/* 805590D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805590D8  7C 08 02 A6 */	mflr r0
/* 805590DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805590E0  4B FF B8 51 */	bl Delete__13daNpc_Kolin_cFv
/* 805590E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805590E8  7C 08 03 A6 */	mtlr r0
/* 805590EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805590F0  4E 80 00 20 */	blr 
