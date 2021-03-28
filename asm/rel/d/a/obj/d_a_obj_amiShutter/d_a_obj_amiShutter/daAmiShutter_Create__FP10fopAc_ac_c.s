lbl_80BA21C0:
/* 80BA21C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA21C4  7C 08 02 A6 */	mflr r0
/* 80BA21C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA21CC  4B FF F4 85 */	bl create__14daAmiShutter_cFv
/* 80BA21D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA21D4  7C 08 03 A6 */	mtlr r0
/* 80BA21D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA21DC  4E 80 00 20 */	blr 
