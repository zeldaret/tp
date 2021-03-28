lbl_80982A98:
/* 80982A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80982A9C  7C 08 02 A6 */	mflr r0
/* 80982AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80982AA4  4B FF F7 FD */	bl CreateHeap__11daNpcChat_cFv
/* 80982AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80982AAC  7C 08 03 A6 */	mtlr r0
/* 80982AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80982AB4  4E 80 00 20 */	blr 
