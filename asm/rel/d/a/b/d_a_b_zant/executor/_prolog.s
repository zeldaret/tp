lbl_8063E020:
/* 8063E020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063E024  7C 08 02 A6 */	mflr r0
/* 8063E028  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063E02C  3C 60 80 65 */	lis r3, data_8064EB08@ha
/* 8063E030  38 63 EB 08 */	addi r3, r3, data_8064EB08@l
/* 8063E034  4B C2 51 18 */	b ModuleConstructorsX
/* 8063E038  4B C2 50 50 */	b ModuleProlog
/* 8063E03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063E040  7C 08 03 A6 */	mtlr r0
/* 8063E044  38 21 00 10 */	addi r1, r1, 0x10
/* 8063E048  4E 80 00 20 */	blr 
