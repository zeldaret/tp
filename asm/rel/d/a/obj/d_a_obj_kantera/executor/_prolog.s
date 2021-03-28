lbl_80C38600:
/* 80C38600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C38604  7C 08 02 A6 */	mflr r0
/* 80C38608  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3860C  3C 60 80 C4 */	lis r3, data_80C39640@ha
/* 80C38610  38 63 96 40 */	addi r3, r3, data_80C39640@l
/* 80C38614  4B 62 AB 38 */	b ModuleConstructorsX
/* 80C38618  4B 62 AA 70 */	b ModuleProlog
/* 80C3861C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C38620  7C 08 03 A6 */	mtlr r0
/* 80C38624  38 21 00 10 */	addi r1, r1, 0x10
/* 80C38628  4E 80 00 20 */	blr 
