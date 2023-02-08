lbl_80A64CC8:
/* 80A64CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64CCC  7C 08 02 A6 */	mflr r0
/* 80A64CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64CD4  4B FF FA 6D */	bl CreateHeap__11daNpc_Len_cFv
/* 80A64CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64CDC  7C 08 03 A6 */	mtlr r0
/* 80A64CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64CE4  4E 80 00 20 */	blr 
