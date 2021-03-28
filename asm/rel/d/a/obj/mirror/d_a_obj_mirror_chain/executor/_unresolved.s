lbl_80C96678:
/* 80C96678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9667C  7C 08 02 A6 */	mflr r0
/* 80C96680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C96684  4B 5C CA 0C */	b ModuleUnresolved
/* 80C96688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9668C  7C 08 03 A6 */	mtlr r0
/* 80C96690  38 21 00 10 */	addi r1, r1, 0x10
/* 80C96694  4E 80 00 20 */	blr 
