lbl_805EBB7C:
/* 805EBB7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EBB80  7C 08 02 A6 */	mflr r0
/* 805EBB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EBB88  4B FF FA 59 */	bl Draw__8daB_GG_cFv
/* 805EBB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EBB90  7C 08 03 A6 */	mtlr r0
/* 805EBB94  38 21 00 10 */	addi r1, r1, 0x10
/* 805EBB98  4E 80 00 20 */	blr 
