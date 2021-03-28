lbl_804DA720:
/* 804DA720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA724  7C 08 02 A6 */	mflr r0
/* 804DA728  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA72C  4B FF FE C9 */	bl createHeap__9daCanoe_cFv
/* 804DA730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA734  7C 08 03 A6 */	mtlr r0
/* 804DA738  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA73C  4E 80 00 20 */	blr 
