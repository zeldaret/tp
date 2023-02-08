lbl_80C25CA4:
/* 80C25CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25CA8  7C 08 02 A6 */	mflr r0
/* 80C25CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25CB0  4B FF F4 A9 */	bl execute__14daObjIceLeaf_cFv
/* 80C25CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25CB8  7C 08 03 A6 */	mtlr r0
/* 80C25CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25CC0  4E 80 00 20 */	blr 
