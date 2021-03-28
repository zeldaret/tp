lbl_80C9818C:
/* 80C9818C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C98190  7C 08 02 A6 */	mflr r0
/* 80C98194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C98198  4B 5C AE F4 */	b ModuleEpilog
/* 80C9819C  3C 60 80 CA */	lis r3, data_80C989D4@ha
/* 80C981A0  38 63 89 D4 */	addi r3, r3, data_80C989D4@l
/* 80C981A4  4B 5C AF EC */	b ModuleDestructorsX
/* 80C981A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C981AC  7C 08 03 A6 */	mtlr r0
/* 80C981B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C981B4  4E 80 00 20 */	blr 
