lbl_803071A4:
/* 803071A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803071A8  7C 08 02 A6 */	mflr r0
/* 803071AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803071B0  4B FF 03 09 */	bl isUsed__7J2DPaneFPC7ResFONT
/* 803071B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803071B8  7C 08 03 A6 */	mtlr r0
/* 803071BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803071C0  4E 80 00 20 */	blr 
