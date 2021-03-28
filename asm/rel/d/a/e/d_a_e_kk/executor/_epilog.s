lbl_806FA64C:
/* 806FA64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FA650  7C 08 02 A6 */	mflr r0
/* 806FA654  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FA658  4B B6 8A 34 */	b ModuleEpilog
/* 806FA65C  3C 60 80 70 */	lis r3, __destroy_global_chain_reference@ha
/* 806FA660  38 63 F5 DC */	addi r3, r3, __destroy_global_chain_reference@l
/* 806FA664  4B B6 8B 2C */	b ModuleDestructorsX
/* 806FA668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FA66C  7C 08 03 A6 */	mtlr r0
/* 806FA670  38 21 00 10 */	addi r1, r1, 0x10
/* 806FA674  4E 80 00 20 */	blr 
