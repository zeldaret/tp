lbl_80A715D4:
/* 80A715D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A715D8  7C 08 02 A6 */	mflr r0
/* 80A715DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A715E0  4B FF FA 95 */	bl CreateHeap__12daNpc_midP_cFv
/* 80A715E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A715E8  7C 08 03 A6 */	mtlr r0
/* 80A715EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A715F0  4E 80 00 20 */	blr 
