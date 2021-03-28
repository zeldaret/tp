lbl_809BB578:
/* 809BB578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB57C  7C 08 02 A6 */	mflr r0
/* 809BB580  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB584  4B 8A 7B 0C */	b ModuleUnresolved
/* 809BB588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB58C  7C 08 03 A6 */	mtlr r0
/* 809BB590  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB594  4E 80 00 20 */	blr 
