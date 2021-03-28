lbl_80C6EB80:
/* 80C6EB80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6EB84  7C 08 02 A6 */	mflr r0
/* 80C6EB88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6EB8C  3C 60 80 C7 */	lis r3, data_80C70998@ha
/* 80C6EB90  38 63 09 98 */	addi r3, r3, data_80C70998@l
/* 80C6EB94  4B 5F 45 B8 */	b ModuleConstructorsX
/* 80C6EB98  4B 5F 44 F0 */	b ModuleProlog
/* 80C6EB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6EBA0  7C 08 03 A6 */	mtlr r0
/* 80C6EBA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6EBA8  4E 80 00 20 */	blr 
