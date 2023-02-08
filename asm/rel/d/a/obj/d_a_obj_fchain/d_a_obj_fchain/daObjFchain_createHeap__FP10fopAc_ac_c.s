lbl_80BE6054:
/* 80BE6054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE6058  7C 08 02 A6 */	mflr r0
/* 80BE605C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE6060  4B FF FF 99 */	bl createHeap__13daObjFchain_cFv
/* 80BE6064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE6068  7C 08 03 A6 */	mtlr r0
/* 80BE606C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE6070  4E 80 00 20 */	blr 
