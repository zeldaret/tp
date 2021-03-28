lbl_80D588C0:
/* 80D588C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D588C4  7C 08 02 A6 */	mflr r0
/* 80D588C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D588CC  3C 60 80 D6 */	lis r3, data_80D594D4@ha
/* 80D588D0  38 63 94 D4 */	addi r3, r3, data_80D594D4@l
/* 80D588D4  4B 50 A8 78 */	b ModuleConstructorsX
/* 80D588D8  4B 50 A7 B0 */	b ModuleProlog
/* 80D588DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D588E0  7C 08 03 A6 */	mtlr r0
/* 80D588E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D588E8  4E 80 00 20 */	blr 
