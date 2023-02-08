lbl_806D6CD0:
/* 806D6CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D6CD4  7C 08 02 A6 */	mflr r0
/* 806D6CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D6CDC  4B FF FD ED */	bl CreateHeap__8daE_GM_cFv
/* 806D6CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D6CE4  7C 08 03 A6 */	mtlr r0
/* 806D6CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 806D6CEC  4E 80 00 20 */	blr 
