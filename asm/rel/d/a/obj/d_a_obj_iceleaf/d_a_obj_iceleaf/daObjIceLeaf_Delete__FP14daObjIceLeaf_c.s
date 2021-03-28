lbl_80C25CC4:
/* 80C25CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25CC8  7C 08 02 A6 */	mflr r0
/* 80C25CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25CD0  4B FF FF 81 */	bl _delete__14daObjIceLeaf_cFv
/* 80C25CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25CD8  7C 08 03 A6 */	mtlr r0
/* 80C25CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25CE0  4E 80 00 20 */	blr 
