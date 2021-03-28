lbl_80C5F328:
/* 80C5F328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F32C  7C 08 02 A6 */	mflr r0
/* 80C5F330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F334  4B FF F9 B9 */	bl create__11daLv4Gate_cFv
/* 80C5F338  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F33C  7C 08 03 A6 */	mtlr r0
/* 80C5F340  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F344  4E 80 00 20 */	blr 
