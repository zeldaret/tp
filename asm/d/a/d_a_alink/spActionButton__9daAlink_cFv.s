lbl_800B2664:
/* 800B2664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B2668  7C 08 02 A6 */	mflr r0
/* 800B266C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B2670  38 80 00 40 */	li r4, 0x40
/* 800B2674  4B FF FF 75 */	bl itemButtonCheck__9daAlink_cFUc
/* 800B2678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B267C  7C 08 03 A6 */	mtlr r0
/* 800B2680  38 21 00 10 */	addi r1, r1, 0x10
/* 800B2684  4E 80 00 20 */	blr 
