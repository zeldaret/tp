lbl_80C6EBAC:
/* 80C6EBAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6EBB0  7C 08 02 A6 */	mflr r0
/* 80C6EBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6EBB8  4B 5F 44 D4 */	b ModuleEpilog
/* 80C6EBBC  3C 60 80 C7 */	lis r3, data_80C7099C@ha
/* 80C6EBC0  38 63 09 9C */	addi r3, r3, data_80C7099C@l
/* 80C6EBC4  4B 5F 45 CC */	b ModuleDestructorsX
/* 80C6EBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6EBCC  7C 08 03 A6 */	mtlr r0
/* 80C6EBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6EBD4  4E 80 00 20 */	blr 
