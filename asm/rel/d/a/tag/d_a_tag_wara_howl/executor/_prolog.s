lbl_80D63EC0:
/* 80D63EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63EC4  7C 08 02 A6 */	mflr r0
/* 80D63EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63ECC  3C 60 80 D6 */	lis r3, data_80D641F8@ha
/* 80D63ED0  38 63 41 F8 */	addi r3, r3, data_80D641F8@l
/* 80D63ED4  4B 4F F2 78 */	b ModuleConstructorsX
/* 80D63ED8  4B 4F F1 B0 */	b ModuleProlog
/* 80D63EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63EE0  7C 08 03 A6 */	mtlr r0
/* 80D63EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63EE8  4E 80 00 20 */	blr 
