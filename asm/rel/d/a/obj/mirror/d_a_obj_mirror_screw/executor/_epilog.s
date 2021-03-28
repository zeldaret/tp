lbl_80C98A8C:
/* 80C98A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C98A90  7C 08 02 A6 */	mflr r0
/* 80C98A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C98A98  4B 5C A5 F4 */	b ModuleEpilog
/* 80C98A9C  3C 60 80 CA */	lis r3, data_80C99758@ha
/* 80C98AA0  38 63 97 58 */	addi r3, r3, data_80C99758@l
/* 80C98AA4  4B 5C A6 EC */	b ModuleDestructorsX
/* 80C98AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C98AAC  7C 08 03 A6 */	mtlr r0
/* 80C98AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C98AB4  4E 80 00 20 */	blr 
