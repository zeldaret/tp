lbl_8063D5B0:
/* 8063D5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D5B4  7C 08 02 A6 */	mflr r0
/* 8063D5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D5BC  4B FF FF 3D */	bl CreateHeap__9daB_YOI_cFv
/* 8063D5C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D5C4  7C 08 03 A6 */	mtlr r0
/* 8063D5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D5CC  4E 80 00 20 */	blr 
