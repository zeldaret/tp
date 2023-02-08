lbl_80D3D8CC:
/* 80D3D8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3D8D0  7C 08 02 A6 */	mflr r0
/* 80D3D8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3D8D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3D8DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3D8E0  7C 7E 1B 78 */	mr r30, r3
/* 80D3D8E4  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 80D3D8E8  38 9E 0A 14 */	addi r4, r30, 0xa14
/* 80D3D8EC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D3D8F0  38 C0 00 00 */	li r6, 0
/* 80D3D8F4  3C E0 80 D4 */	lis r7, lit_4503@ha /* 0x80D3DD64@ha */
/* 80D3D8F8  C0 27 DD 64 */	lfs f1, lit_4503@l(r7)  /* 0x80D3DD64@l */
/* 80D3D8FC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80D3D900  39 00 00 01 */	li r8, 1
/* 80D3D904  4B 2D F7 1D */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80D3D908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3D90C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3D910  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D3D914  38 63 02 10 */	addi r3, r3, 0x210
/* 80D3D918  80 9E 0A 10 */	lwz r4, 0xa10(r30)
/* 80D3D91C  4B 30 DF 99 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80D3D920  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D3D924  38 63 02 10 */	addi r3, r3, 0x210
/* 80D3D928  80 9E 0A 14 */	lwz r4, 0xa14(r30)
/* 80D3D92C  4B 30 DF 89 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80D3D930  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3D934  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3D938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3D93C  7C 08 03 A6 */	mtlr r0
/* 80D3D940  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3D944  4E 80 00 20 */	blr 
