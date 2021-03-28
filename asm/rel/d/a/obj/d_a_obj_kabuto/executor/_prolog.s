lbl_80C2AD80:
/* 80C2AD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2AD84  7C 08 02 A6 */	mflr r0
/* 80C2AD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2AD8C  3C 60 80 C3 */	lis r3, data_80C2E0FC@ha
/* 80C2AD90  38 63 E0 FC */	addi r3, r3, data_80C2E0FC@l
/* 80C2AD94  4B 63 83 B8 */	b ModuleConstructorsX
/* 80C2AD98  4B 63 82 F0 */	b ModuleProlog
/* 80C2AD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2ADA0  7C 08 03 A6 */	mtlr r0
/* 80C2ADA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2ADA8  4E 80 00 20 */	blr 
