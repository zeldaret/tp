lbl_80AC5608:
/* 80AC5608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC560C  7C 08 02 A6 */	mflr r0
/* 80AC5610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC5614  4B FF FD B5 */	bl CreateHeap__12daNpc_seiB_cFv
/* 80AC5618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC561C  7C 08 03 A6 */	mtlr r0
/* 80AC5620  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5624  4E 80 00 20 */	blr 
