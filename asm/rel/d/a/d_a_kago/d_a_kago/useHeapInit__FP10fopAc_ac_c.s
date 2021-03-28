lbl_808544B8:
/* 808544B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808544BC  7C 08 02 A6 */	mflr r0
/* 808544C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808544C4  4B FF FE 65 */	bl CreateHeap__8daKago_cFv
/* 808544C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808544CC  7C 08 03 A6 */	mtlr r0
/* 808544D0  38 21 00 10 */	addi r1, r1, 0x10
/* 808544D4  4E 80 00 20 */	blr 
