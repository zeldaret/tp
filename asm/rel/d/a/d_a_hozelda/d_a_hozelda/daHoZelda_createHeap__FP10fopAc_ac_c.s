lbl_808466F8:
/* 808466F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808466FC  7C 08 02 A6 */	mflr r0
/* 80846700  90 01 00 14 */	stw r0, 0x14(r1)
/* 80846704  4B FF F8 FD */	bl createHeap__11daHoZelda_cFv
/* 80846708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084670C  7C 08 03 A6 */	mtlr r0
/* 80846710  38 21 00 10 */	addi r1, r1, 0x10
/* 80846714  4E 80 00 20 */	blr 
