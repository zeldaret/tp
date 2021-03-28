lbl_80BFFE20:
/* 80BFFE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFFE24  7C 08 02 A6 */	mflr r0
/* 80BFFE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFFE2C  3C 60 80 C1 */	lis r3, data_80C0FA68@ha
/* 80BFFE30  38 63 FA 68 */	addi r3, r3, data_80C0FA68@l
/* 80BFFE34  4B 66 33 18 */	b ModuleConstructorsX
/* 80BFFE38  4B 66 32 50 */	b ModuleProlog
/* 80BFFE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFFE40  7C 08 03 A6 */	mtlr r0
/* 80BFFE44  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFFE48  4E 80 00 20 */	blr 
