lbl_80BCA278:
/* 80BCA278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCA27C  7C 08 02 A6 */	mflr r0
/* 80BCA280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCA284  4B 69 8E 0C */	b ModuleUnresolved
/* 80BCA288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCA28C  7C 08 03 A6 */	mtlr r0
/* 80BCA290  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCA294  4E 80 00 20 */	blr 
