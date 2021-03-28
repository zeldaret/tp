lbl_804DD554:
/* 804DD554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DD558  7C 08 02 A6 */	mflr r0
/* 804DD55C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DD560  4B FF FD FD */	bl draw__9daCanoe_cFv
/* 804DD564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DD568  7C 08 03 A6 */	mtlr r0
/* 804DD56C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DD570  4E 80 00 20 */	blr 
