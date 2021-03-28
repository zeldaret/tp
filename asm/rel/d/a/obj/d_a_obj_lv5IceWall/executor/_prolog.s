lbl_80C6B340:
/* 80C6B340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6B344  7C 08 02 A6 */	mflr r0
/* 80C6B348  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6B34C  3C 60 80 C7 */	lis r3, data_80C6C62C@ha
/* 80C6B350  38 63 C6 2C */	addi r3, r3, data_80C6C62C@l
/* 80C6B354  4B 5F 7D F8 */	b ModuleConstructorsX
/* 80C6B358  4B 5F 7D 30 */	b ModuleProlog
/* 80C6B35C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6B360  7C 08 03 A6 */	mtlr r0
/* 80C6B364  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6B368  4E 80 00 20 */	blr 
