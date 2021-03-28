lbl_80D59A80:
/* 80D59A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D59A84  7C 08 02 A6 */	mflr r0
/* 80D59A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59A8C  3C 60 80 D6 */	lis r3, data_80D59B78@ha
/* 80D59A90  38 63 9B 78 */	addi r3, r3, data_80D59B78@l
/* 80D59A94  4B 50 96 B8 */	b ModuleConstructorsX
/* 80D59A98  4B 50 95 F0 */	b ModuleProlog
/* 80D59A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D59AA0  7C 08 03 A6 */	mtlr r0
/* 80D59AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D59AA8  4E 80 00 20 */	blr 
