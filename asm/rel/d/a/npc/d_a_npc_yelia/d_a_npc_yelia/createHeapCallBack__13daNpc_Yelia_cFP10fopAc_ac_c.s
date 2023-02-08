lbl_80B4DD08:
/* 80B4DD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4DD0C  7C 08 02 A6 */	mflr r0
/* 80B4DD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4DD14  4B FF FA 41 */	bl CreateHeap__13daNpc_Yelia_cFv
/* 80B4DD18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4DD1C  7C 08 03 A6 */	mtlr r0
/* 80B4DD20  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4DD24  4E 80 00 20 */	blr 
