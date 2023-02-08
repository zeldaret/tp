lbl_80AF3830:
/* 80AF3830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF3834  7C 08 02 A6 */	mflr r0
/* 80AF3838  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF383C  4B FF FB 65 */	bl CreateHeap__16daNpc_SoldierB_cFv
/* 80AF3840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF3844  7C 08 03 A6 */	mtlr r0
/* 80AF3848  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF384C  4E 80 00 20 */	blr 
