lbl_80D57300:
/* 80D57300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D57304  7C 08 02 A6 */	mflr r0
/* 80D57308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5730C  4B FF FB ED */	bl createHeap__10daTagCsw_cFv
/* 80D57310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D57314  7C 08 03 A6 */	mtlr r0
/* 80D57318  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5731C  4E 80 00 20 */	blr 
