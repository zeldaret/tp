lbl_80BF4130:
/* 80BF4130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4134  7C 08 02 A6 */	mflr r0
/* 80BF4138  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF413C  4B FF F3 3D */	bl CreateHeap__14daObj_Gadget_cFv
/* 80BF4140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF4144  7C 08 03 A6 */	mtlr r0
/* 80BF4148  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF414C  4E 80 00 20 */	blr 
