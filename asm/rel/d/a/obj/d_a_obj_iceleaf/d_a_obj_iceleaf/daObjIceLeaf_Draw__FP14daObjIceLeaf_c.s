lbl_80C25C84:
/* 80C25C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25C88  7C 08 02 A6 */	mflr r0
/* 80C25C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25C90  4B FF FF 29 */	bl draw__14daObjIceLeaf_cFv
/* 80C25C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25C98  7C 08 03 A6 */	mtlr r0
/* 80C25C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25CA0  4E 80 00 20 */	blr 
