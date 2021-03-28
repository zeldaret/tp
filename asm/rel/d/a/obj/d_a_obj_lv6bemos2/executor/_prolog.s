lbl_80C7E140:
/* 80C7E140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7E144  7C 08 02 A6 */	mflr r0
/* 80C7E148  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7E14C  3C 60 80 C8 */	lis r3, data_80C81C20@ha
/* 80C7E150  38 63 1C 20 */	addi r3, r3, data_80C81C20@l
/* 80C7E154  4B 5E 4F F8 */	b ModuleConstructorsX
/* 80C7E158  4B 5E 4F 30 */	b ModuleProlog
/* 80C7E15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7E160  7C 08 03 A6 */	mtlr r0
/* 80C7E164  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7E168  4E 80 00 20 */	blr 
