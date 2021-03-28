lbl_80BF62A0:
/* 80BF62A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF62A4  7C 08 02 A6 */	mflr r0
/* 80BF62A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF62AC  3C 60 80 BF */	lis r3, data_80BF6DB4@ha
/* 80BF62B0  38 63 6D B4 */	addi r3, r3, data_80BF6DB4@l
/* 80BF62B4  4B 66 CE 98 */	b ModuleConstructorsX
/* 80BF62B8  4B 66 CD D0 */	b ModuleProlog
/* 80BF62BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF62C0  7C 08 03 A6 */	mtlr r0
/* 80BF62C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF62C8  4E 80 00 20 */	blr 
