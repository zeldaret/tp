lbl_80C9B320:
/* 80C9B320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9B324  7C 08 02 A6 */	mflr r0
/* 80C9B328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9B32C  3C 60 80 CA */	lis r3, data_80C9CD38@ha
/* 80C9B330  38 63 CD 38 */	addi r3, r3, data_80C9CD38@l
/* 80C9B334  4B 5C 7E 18 */	b ModuleConstructorsX
/* 80C9B338  4B 5C 7D 50 */	b ModuleProlog
/* 80C9B33C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9B340  7C 08 03 A6 */	mtlr r0
/* 80C9B344  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9B348  4E 80 00 20 */	blr 
