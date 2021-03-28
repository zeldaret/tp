lbl_80582AAC:
/* 80582AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80582AB0  7C 08 02 A6 */	mflr r0
/* 80582AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80582AB8  7C 68 1B 78 */	mr r8, r3
/* 80582ABC  7C 85 23 78 */	mr r5, r4
/* 80582AC0  38 68 09 E0 */	addi r3, r8, 0x9e0
/* 80582AC4  38 88 09 E4 */	addi r4, r8, 0x9e4
/* 80582AC8  38 C0 00 00 */	li r6, 0
/* 80582ACC  3C E0 80 58 */	lis r7, lit_4555@ha
/* 80582AD0  C8 27 56 88 */	lfd f1, lit_4555@l(r7)
/* 80582AD4  C0 08 06 00 */	lfs f0, 0x600(r8)
/* 80582AD8  FC 21 00 32 */	fmul f1, f1, f0
/* 80582ADC  FC 20 08 18 */	frsp f1, f1
/* 80582AE0  38 E8 01 0C */	addi r7, r8, 0x10c
/* 80582AE4  39 00 00 01 */	li r8, 1
/* 80582AE8  4B A9 A5 38 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80582AEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80582AF0  7C 08 03 A6 */	mtlr r0
/* 80582AF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80582AF8  4E 80 00 20 */	blr 
