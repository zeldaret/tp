lbl_8060F0B0:
/* 8060F0B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F0B4  7C 08 02 A6 */	mflr r0
/* 8060F0B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F0BC  4B FF FA 25 */	bl CreateHeap__9daB_MGN_cFv
/* 8060F0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F0C4  7C 08 03 A6 */	mtlr r0
/* 8060F0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F0CC  4E 80 00 20 */	blr 
