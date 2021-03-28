lbl_80C90A80:
/* 80C90A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C90A84  7C 08 02 A6 */	mflr r0
/* 80C90A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C90A8C  3C 60 80 C9 */	lis r3, data_80C91934@ha
/* 80C90A90  38 63 19 34 */	addi r3, r3, data_80C91934@l
/* 80C90A94  4B 5D 26 B8 */	b ModuleConstructorsX
/* 80C90A98  4B 5D 25 F0 */	b ModuleProlog
/* 80C90A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C90AA0  7C 08 03 A6 */	mtlr r0
/* 80C90AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C90AA8  4E 80 00 20 */	blr 
