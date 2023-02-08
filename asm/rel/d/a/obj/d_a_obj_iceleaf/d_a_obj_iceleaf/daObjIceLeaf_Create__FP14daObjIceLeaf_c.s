lbl_80C25CE4:
/* 80C25CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25CE8  7C 08 02 A6 */	mflr r0
/* 80C25CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25CF0  4B FF F1 25 */	bl create__14daObjIceLeaf_cFv
/* 80C25CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25CF8  7C 08 03 A6 */	mtlr r0
/* 80C25CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25D00  4E 80 00 20 */	blr 
