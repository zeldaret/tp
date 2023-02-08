lbl_80CFB61C:
/* 80CFB61C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFB620  7C 08 02 A6 */	mflr r0
/* 80CFB624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFB628  4B FF FF 15 */	bl draw__14daObjSwChain_cFv
/* 80CFB62C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFB630  7C 08 03 A6 */	mtlr r0
/* 80CFB634  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFB638  4E 80 00 20 */	blr 
