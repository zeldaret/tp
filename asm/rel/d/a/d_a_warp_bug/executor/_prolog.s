lbl_80D67DC0:
/* 80D67DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D67DC4  7C 08 02 A6 */	mflr r0
/* 80D67DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D67DCC  3C 60 80 D7 */	lis r3, data_80D681D4@ha
/* 80D67DD0  38 63 81 D4 */	addi r3, r3, data_80D681D4@l
/* 80D67DD4  4B 4F B3 78 */	b ModuleConstructorsX
/* 80D67DD8  4B 4F B2 B0 */	b ModuleProlog
/* 80D67DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D67DE0  7C 08 03 A6 */	mtlr r0
/* 80D67DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D67DE8  4E 80 00 20 */	blr 
