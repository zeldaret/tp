lbl_80C2E320:
/* 80C2E320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E324  7C 08 02 A6 */	mflr r0
/* 80C2E328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2E32C  3C 60 80 C3 */	lis r3, data_80C31138@ha
/* 80C2E330  38 63 11 38 */	addi r3, r3, data_80C31138@l
/* 80C2E334  4B 63 4E 18 */	b ModuleConstructorsX
/* 80C2E338  4B 63 4D 50 */	b ModuleProlog
/* 80C2E33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E340  7C 08 03 A6 */	mtlr r0
/* 80C2E344  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E348  4E 80 00 20 */	blr 
