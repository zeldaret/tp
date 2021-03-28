lbl_80CFD4E0:
/* 80CFD4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD4E4  7C 08 02 A6 */	mflr r0
/* 80CFD4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD4EC  3C 60 80 D0 */	lis r3, data_80CFDE7C@ha
/* 80CFD4F0  38 63 DE 7C */	addi r3, r3, data_80CFDE7C@l
/* 80CFD4F4  4B 56 5C 58 */	b ModuleConstructorsX
/* 80CFD4F8  4B 56 5B 90 */	b ModuleProlog
/* 80CFD4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFD500  7C 08 03 A6 */	mtlr r0
/* 80CFD504  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFD508  4E 80 00 20 */	blr 
