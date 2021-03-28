lbl_80BEC5E0:
/* 80BEC5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEC5E4  7C 08 02 A6 */	mflr r0
/* 80BEC5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEC5EC  3C 60 80 BF */	lis r3, data_80BEE0D4@ha
/* 80BEC5F0  38 63 E0 D4 */	addi r3, r3, data_80BEE0D4@l
/* 80BEC5F4  4B 67 6B 58 */	b ModuleConstructorsX
/* 80BEC5F8  4B 67 6A 90 */	b ModuleProlog
/* 80BEC5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEC600  7C 08 03 A6 */	mtlr r0
/* 80BEC604  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEC608  4E 80 00 20 */	blr 
