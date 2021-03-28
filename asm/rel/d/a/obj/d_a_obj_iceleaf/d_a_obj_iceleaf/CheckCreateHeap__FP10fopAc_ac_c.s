lbl_80C24718:
/* 80C24718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2471C  7C 08 02 A6 */	mflr r0
/* 80C24720  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C24724  48 00 05 79 */	bl CreateHeap__14daObjIceLeaf_cFv
/* 80C24728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2472C  7C 08 03 A6 */	mtlr r0
/* 80C24730  38 21 00 10 */	addi r1, r1, 0x10
/* 80C24734  4E 80 00 20 */	blr 
