lbl_80C18278:
/* 80C18278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1827C  7C 08 02 A6 */	mflr r0
/* 80C18280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18284  4B 64 AE 0C */	b ModuleUnresolved
/* 80C18288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1828C  7C 08 03 A6 */	mtlr r0
/* 80C18290  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18294  4E 80 00 20 */	blr 
