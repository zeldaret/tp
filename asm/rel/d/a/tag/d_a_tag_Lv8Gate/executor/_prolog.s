lbl_80D51BC0:
/* 80D51BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D51BC4  7C 08 02 A6 */	mflr r0
/* 80D51BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D51BCC  3C 60 80 D5 */	lis r3, data_80D524C4@ha
/* 80D51BD0  38 63 24 C4 */	addi r3, r3, data_80D524C4@l
/* 80D51BD4  4B 51 15 78 */	b ModuleConstructorsX
/* 80D51BD8  4B 51 14 B0 */	b ModuleProlog
/* 80D51BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D51BE0  7C 08 03 A6 */	mtlr r0
/* 80D51BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D51BE8  4E 80 00 20 */	blr 
