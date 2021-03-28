lbl_8048EBC0:
/* 8048EBC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EBC4  7C 08 02 A6 */	mflr r0
/* 8048EBC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EBCC  3C 60 80 49 */	lis r3, data_8048F134@ha
/* 8048EBD0  38 63 F1 34 */	addi r3, r3, data_8048F134@l
/* 8048EBD4  4B DD 45 78 */	b ModuleConstructorsX
/* 8048EBD8  4B DD 44 B0 */	b ModuleProlog
/* 8048EBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EBE0  7C 08 03 A6 */	mtlr r0
/* 8048EBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EBE8  4E 80 00 20 */	blr 
