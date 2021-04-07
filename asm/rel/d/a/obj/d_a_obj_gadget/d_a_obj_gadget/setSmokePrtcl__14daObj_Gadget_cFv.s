lbl_80BF4584:
/* 80BF4584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF4588  7C 08 02 A6 */	mflr r0
/* 80BF458C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF4590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF4594  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF4598  7C 7E 1B 78 */	mr r30, r3
/* 80BF459C  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 80BF45A0  38 9E 0A 3C */	addi r4, r30, 0xa3c
/* 80BF45A4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BF45A8  38 C0 00 00 */	li r6, 0
/* 80BF45AC  3C E0 80 BF */	lis r7, lit_4545@ha /* 0x80BF4A1C@ha */
/* 80BF45B0  C0 27 4A 1C */	lfs f1, lit_4545@l(r7)  /* 0x80BF4A1C@l */
/* 80BF45B4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80BF45B8  39 00 00 01 */	li r8, 1
/* 80BF45BC  4B 42 8A 65 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80BF45C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF45C4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF45C8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80BF45CC  38 63 02 10 */	addi r3, r3, 0x210
/* 80BF45D0  80 9E 0A 38 */	lwz r4, 0xa38(r30)
/* 80BF45D4  4B 45 72 E1 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80BF45D8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80BF45DC  38 63 02 10 */	addi r3, r3, 0x210
/* 80BF45E0  80 9E 0A 3C */	lwz r4, 0xa3c(r30)
/* 80BF45E4  4B 45 72 D1 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80BF45E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF45EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF45F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF45F4  7C 08 03 A6 */	mtlr r0
/* 80BF45F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF45FC  4E 80 00 20 */	blr 
