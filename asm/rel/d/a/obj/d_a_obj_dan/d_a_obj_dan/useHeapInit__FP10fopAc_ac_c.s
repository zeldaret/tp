lbl_80BDA678:
/* 80BDA678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA67C  7C 08 02 A6 */	mflr r0
/* 80BDA680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA684  48 00 00 15 */	bl CreateHeap__10daObjDAN_cFv
/* 80BDA688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA68C  7C 08 03 A6 */	mtlr r0
/* 80BDA690  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA694  4E 80 00 20 */	blr 
