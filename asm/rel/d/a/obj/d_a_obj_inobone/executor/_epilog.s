lbl_80C2766C:
/* 80C2766C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C27670  7C 08 02 A6 */	mflr r0
/* 80C27674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C27678  4B 63 BA 14 */	b ModuleEpilog
/* 80C2767C  3C 60 80 C3 */	lis r3, data_80C2811C@ha
/* 80C27680  38 63 81 1C */	addi r3, r3, data_80C2811C@l
/* 80C27684  4B 63 BB 0C */	b ModuleDestructorsX
/* 80C27688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2768C  7C 08 03 A6 */	mtlr r0
/* 80C27690  38 21 00 10 */	addi r1, r1, 0x10
/* 80C27694  4E 80 00 20 */	blr 
