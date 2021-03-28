lbl_80C9D020:
/* 80C9D020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D024  7C 08 02 A6 */	mflr r0
/* 80C9D028  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D02C  3C 60 80 CA */	lis r3, data_80C9E8A4@ha
/* 80C9D030  38 63 E8 A4 */	addi r3, r3, data_80C9E8A4@l
/* 80C9D034  4B 5C 61 18 */	b ModuleConstructorsX
/* 80C9D038  4B 5C 60 50 */	b ModuleProlog
/* 80C9D03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D040  7C 08 03 A6 */	mtlr r0
/* 80C9D044  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D048  4E 80 00 20 */	blr 
