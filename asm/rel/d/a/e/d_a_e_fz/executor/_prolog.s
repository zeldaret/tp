lbl_806BE860:
/* 806BE860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BE864  7C 08 02 A6 */	mflr r0
/* 806BE868  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BE86C  3C 60 80 6C */	lis r3, data_806C1924@ha
/* 806BE870  38 63 19 24 */	addi r3, r3, data_806C1924@l
/* 806BE874  4B BA 48 D8 */	b ModuleConstructorsX
/* 806BE878  4B BA 48 10 */	b ModuleProlog
/* 806BE87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BE880  7C 08 03 A6 */	mtlr r0
/* 806BE884  38 21 00 10 */	addi r1, r1, 0x10
/* 806BE888  4E 80 00 20 */	blr 
