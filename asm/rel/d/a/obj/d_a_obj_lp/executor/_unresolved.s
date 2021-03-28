lbl_80C54178:
/* 80C54178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5417C  7C 08 02 A6 */	mflr r0
/* 80C54180  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C54184  4B 60 EF 0C */	b ModuleUnresolved
/* 80C54188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5418C  7C 08 03 A6 */	mtlr r0
/* 80C54190  38 21 00 10 */	addi r1, r1, 0x10
/* 80C54194  4E 80 00 20 */	blr 
