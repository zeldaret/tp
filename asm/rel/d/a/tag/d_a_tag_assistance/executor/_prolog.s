lbl_80D55DC0:
/* 80D55DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55DC4  7C 08 02 A6 */	mflr r0
/* 80D55DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55DCC  3C 60 80 D5 */	lis r3, data_80D55F00@ha
/* 80D55DD0  38 63 5F 00 */	addi r3, r3, data_80D55F00@l
/* 80D55DD4  4B 50 D3 78 */	b ModuleConstructorsX
/* 80D55DD8  4B 50 D2 B0 */	b ModuleProlog
/* 80D55DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55DE0  7C 08 03 A6 */	mtlr r0
/* 80D55DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55DE8  4E 80 00 20 */	blr 
