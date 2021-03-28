lbl_80C5A320:
/* 80C5A320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5A324  7C 08 02 A6 */	mflr r0
/* 80C5A328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5A32C  3C 60 80 C6 */	lis r3, data_80C5B350@ha
/* 80C5A330  38 63 B3 50 */	addi r3, r3, data_80C5B350@l
/* 80C5A334  4B 60 8E 18 */	b ModuleConstructorsX
/* 80C5A338  4B 60 8D 50 */	b ModuleProlog
/* 80C5A33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5A340  7C 08 03 A6 */	mtlr r0
/* 80C5A344  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5A348  4E 80 00 20 */	blr 
