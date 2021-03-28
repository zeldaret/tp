lbl_80B9EBE0:
/* 80B9EBE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9EBE4  7C 08 02 A6 */	mflr r0
/* 80B9EBE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9EBEC  3C 60 80 BA */	lis r3, data_80B9F87C@ha
/* 80B9EBF0  38 63 F8 7C */	addi r3, r3, data_80B9F87C@l
/* 80B9EBF4  4B 6C 45 58 */	b ModuleConstructorsX
/* 80B9EBF8  4B 6C 44 90 */	b ModuleProlog
/* 80B9EBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9EC00  7C 08 03 A6 */	mtlr r0
/* 80B9EC04  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9EC08  4E 80 00 20 */	blr 
