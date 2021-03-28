lbl_807E6728:
/* 807E6728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E672C  7C 08 02 A6 */	mflr r0
/* 807E6730  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6734  4B FF FF 81 */	bl _delete__8daE_WS_cFv
/* 807E6738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E673C  7C 08 03 A6 */	mtlr r0
/* 807E6740  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6744  4E 80 00 20 */	blr 
