lbl_80C338D0:
/* 80C338D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C338D4  7C 08 02 A6 */	mflr r0
/* 80C338D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C338DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C338E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C338E4  7C 7E 1B 78 */	mr r30, r3
/* 80C338E8  88 03 0B 9F */	lbz r0, 0xb9f(r3)
/* 80C338EC  28 00 00 00 */	cmplwi r0, 0
/* 80C338F0  40 82 00 50 */	bne lbl_80C33940
/* 80C338F4  38 7E 0B 94 */	addi r3, r30, 0xb94
/* 80C338F8  38 9E 0B 98 */	addi r4, r30, 0xb98
/* 80C338FC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C33900  38 C0 00 00 */	li r6, 0
/* 80C33904  3C E0 80 C3 */	lis r7, lit_4540@ha
/* 80C33908  C0 27 3D 44 */	lfs f1, lit_4540@l(r7)
/* 80C3390C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C33910  39 00 00 01 */	li r8, 1
/* 80C33914  4B 3E 97 0C */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80C33918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3391C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C33920  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C33924  38 63 02 10 */	addi r3, r3, 0x210
/* 80C33928  80 9E 0B 94 */	lwz r4, 0xb94(r30)
/* 80C3392C  4B 41 7F 88 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80C33930  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C33934  38 63 02 10 */	addi r3, r3, 0x210
/* 80C33938  80 9E 0B 98 */	lwz r4, 0xb98(r30)
/* 80C3393C  4B 41 7F 78 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
lbl_80C33940:
/* 80C33940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C33944  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C33948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3394C  7C 08 03 A6 */	mtlr r0
/* 80C33950  38 21 00 10 */	addi r1, r1, 0x10
/* 80C33954  4E 80 00 20 */	blr 
