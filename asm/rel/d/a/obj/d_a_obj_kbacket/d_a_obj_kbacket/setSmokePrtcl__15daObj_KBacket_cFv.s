lbl_805879F4:
/* 805879F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805879F8  7C 08 02 A6 */	mflr r0
/* 805879FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80587A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80587A04  93 C1 00 08 */	stw r30, 8(r1)
/* 80587A08  7C 7E 1B 78 */	mr r30, r3
/* 80587A0C  38 7E 0A 3C */	addi r3, r30, 0xa3c
/* 80587A10  38 9E 0A 40 */	addi r4, r30, 0xa40
/* 80587A14  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80587A18  38 C0 00 00 */	li r6, 0
/* 80587A1C  3C E0 80 58 */	lis r7, lit_4666@ha /* 0x80587E6C@ha */
/* 80587A20  C0 27 7E 6C */	lfs f1, lit_4666@l(r7)  /* 0x80587E6C@l */
/* 80587A24  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80587A28  39 00 00 01 */	li r8, 1
/* 80587A2C  4B A9 55 F5 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80587A30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80587A34  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80587A38  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80587A3C  38 63 02 10 */	addi r3, r3, 0x210
/* 80587A40  80 9E 0A 3C */	lwz r4, 0xa3c(r30)
/* 80587A44  4B AC 3E 71 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80587A48  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80587A4C  38 63 02 10 */	addi r3, r3, 0x210
/* 80587A50  80 9E 0A 40 */	lwz r4, 0xa40(r30)
/* 80587A54  4B AC 3E 61 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80587A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80587A5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80587A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80587A64  7C 08 03 A6 */	mtlr r0
/* 80587A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80587A6C  4E 80 00 20 */	blr 
