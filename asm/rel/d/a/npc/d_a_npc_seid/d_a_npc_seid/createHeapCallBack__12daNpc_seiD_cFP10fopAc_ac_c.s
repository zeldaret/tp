lbl_80AC9BA8:
/* 80AC9BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC9BAC  7C 08 02 A6 */	mflr r0
/* 80AC9BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC9BB4  4B FF FD B5 */	bl CreateHeap__12daNpc_seiD_cFv
/* 80AC9BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC9BBC  7C 08 03 A6 */	mtlr r0
/* 80AC9BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC9BC4  4E 80 00 20 */	blr 
