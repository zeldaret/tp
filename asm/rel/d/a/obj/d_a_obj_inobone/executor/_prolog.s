lbl_80C27640:
/* 80C27640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C27644  7C 08 02 A6 */	mflr r0
/* 80C27648  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2764C  3C 60 80 C3 */	lis r3, data_80C28118@ha
/* 80C27650  38 63 81 18 */	addi r3, r3, data_80C28118@l
/* 80C27654  4B 63 BA F8 */	b ModuleConstructorsX
/* 80C27658  4B 63 BA 30 */	b ModuleProlog
/* 80C2765C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C27660  7C 08 03 A6 */	mtlr r0
/* 80C27664  38 21 00 10 */	addi r1, r1, 0x10
/* 80C27668  4E 80 00 20 */	blr 
