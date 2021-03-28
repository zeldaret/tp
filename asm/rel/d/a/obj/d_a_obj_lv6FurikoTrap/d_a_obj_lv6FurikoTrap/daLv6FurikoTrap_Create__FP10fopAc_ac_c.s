lbl_80C73030:
/* 80C73030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73034  7C 08 02 A6 */	mflr r0
/* 80C73038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7303C  4B FF F5 C9 */	bl create__17daLv6FurikoTrap_cFv
/* 80C73040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73044  7C 08 03 A6 */	mtlr r0
/* 80C73048  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7304C  4E 80 00 20 */	blr 
