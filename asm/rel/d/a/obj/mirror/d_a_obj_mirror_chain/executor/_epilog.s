lbl_80C9664C:
/* 80C9664C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C96650  7C 08 02 A6 */	mflr r0
/* 80C96654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C96658  4B 5C CA 34 */	b ModuleEpilog
/* 80C9665C  3C 60 80 CA */	lis r3, data_80C98024@ha
/* 80C96660  38 63 80 24 */	addi r3, r3, data_80C98024@l
/* 80C96664  4B 5C CB 2C */	b ModuleDestructorsX
/* 80C96668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9666C  7C 08 03 A6 */	mtlr r0
/* 80C96670  38 21 00 10 */	addi r1, r1, 0x10
/* 80C96674  4E 80 00 20 */	blr 
