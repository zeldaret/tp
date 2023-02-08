lbl_8048F7D8:
/* 8048F7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F7DC  7C 08 02 A6 */	mflr r0
/* 8048F7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F7E4  48 00 01 71 */	bl createHeap__11daTag_Msg_cFv
/* 8048F7E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F7EC  7C 08 03 A6 */	mtlr r0
/* 8048F7F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F7F4  4E 80 00 20 */	blr 
