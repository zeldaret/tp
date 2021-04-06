lbl_80C956EC:
/* 80C956EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C956F0  7C 08 02 A6 */	mflr r0
/* 80C956F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C956F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C956FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C95700  7C 7E 1B 78 */	mr r30, r3
/* 80C95704  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 80C95708  38 9E 0A 3C */	addi r4, r30, 0xa3c
/* 80C9570C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C95710  38 C0 00 00 */	li r6, 0
/* 80C95714  3C E0 80 C9 */	lis r7, lit_4594@ha /* 0x80C95B78@ha */
/* 80C95718  C0 27 5B 78 */	lfs f1, lit_4594@l(r7)  /* 0x80C95B78@l */
/* 80C9571C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C95720  39 00 00 01 */	li r8, 1
/* 80C95724  4B 38 78 FD */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80C95728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9572C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C95730  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C95734  38 63 02 10 */	addi r3, r3, 0x210
/* 80C95738  80 9E 0A 38 */	lwz r4, 0xa38(r30)
/* 80C9573C  4B 3B 61 79 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80C95740  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C95744  38 63 02 10 */	addi r3, r3, 0x210
/* 80C95748  80 9E 0A 3C */	lwz r4, 0xa3c(r30)
/* 80C9574C  4B 3B 61 69 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80C95750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C95754  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C95758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9575C  7C 08 03 A6 */	mtlr r0
/* 80C95760  38 21 00 10 */	addi r1, r1, 0x10
/* 80C95764  4E 80 00 20 */	blr 
