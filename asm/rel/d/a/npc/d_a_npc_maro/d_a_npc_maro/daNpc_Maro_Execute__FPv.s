lbl_805637C0:
/* 805637C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805637C4  7C 08 02 A6 */	mflr r0
/* 805637C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805637CC  4B FF 86 51 */	bl Execute__12daNpc_Maro_cFv
/* 805637D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805637D4  7C 08 03 A6 */	mtlr r0
/* 805637D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805637DC  4E 80 00 20 */	blr 
