lbl_80C67EA0:
/* 80C67EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67EA4  7C 08 02 A6 */	mflr r0
/* 80C67EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67EAC  3C 60 80 C7 */	lis r3, data_80C684F8@ha
/* 80C67EB0  38 63 84 F8 */	addi r3, r3, data_80C684F8@l
/* 80C67EB4  4B 5F B2 98 */	b ModuleConstructorsX
/* 80C67EB8  4B 5F B1 D0 */	b ModuleProlog
/* 80C67EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67EC0  7C 08 03 A6 */	mtlr r0
/* 80C67EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67EC8  4E 80 00 20 */	blr 
