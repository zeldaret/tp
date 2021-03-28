lbl_80C27810:
/* 80C27810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C27814  7C 08 02 A6 */	mflr r0
/* 80C27818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2781C  48 00 01 8D */	bl CreateHeap__12daObjIBone_cFv
/* 80C27820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C27824  7C 08 03 A6 */	mtlr r0
/* 80C27828  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2782C  4E 80 00 20 */	blr 
