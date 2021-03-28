lbl_80C9EAC0:
/* 80C9EAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9EAC4  7C 08 02 A6 */	mflr r0
/* 80C9EAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9EACC  3C 60 80 CA */	lis r3, data_80C9F274@ha
/* 80C9EAD0  38 63 F2 74 */	addi r3, r3, data_80C9F274@l
/* 80C9EAD4  4B 5C 46 78 */	b ModuleConstructorsX
/* 80C9EAD8  4B 5C 45 B0 */	b ModuleProlog
/* 80C9EADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9EAE0  7C 08 03 A6 */	mtlr r0
/* 80C9EAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9EAE8  4E 80 00 20 */	blr 
