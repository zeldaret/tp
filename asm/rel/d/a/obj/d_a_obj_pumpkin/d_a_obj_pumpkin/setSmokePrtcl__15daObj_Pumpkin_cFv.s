lbl_80CB7D14:
/* 80CB7D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB7D18  7C 08 02 A6 */	mflr r0
/* 80CB7D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB7D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB7D24  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB7D28  7C 7E 1B 78 */	mr r30, r3
/* 80CB7D2C  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 80CB7D30  38 9E 0B A4 */	addi r4, r30, 0xba4
/* 80CB7D34  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CB7D38  38 C0 00 00 */	li r6, 0
/* 80CB7D3C  3C E0 80 CC */	lis r7, lit_5106@ha
/* 80CB7D40  C0 27 84 58 */	lfs f1, lit_5106@l(r7)
/* 80CB7D44  C0 1E 0B 18 */	lfs f0, 0xb18(r30)
/* 80CB7D48  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CB7D4C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80CB7D50  39 00 00 01 */	li r8, 1
/* 80CB7D54  4B 36 52 CC */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80CB7D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB7D5C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CB7D60  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CB7D64  38 63 02 10 */	addi r3, r3, 0x210
/* 80CB7D68  80 9E 0B A0 */	lwz r4, 0xba0(r30)
/* 80CB7D6C  4B 39 3B 48 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CB7D70  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CB7D74  38 63 02 10 */	addi r3, r3, 0x210
/* 80CB7D78  80 9E 0B A4 */	lwz r4, 0xba4(r30)
/* 80CB7D7C  4B 39 3B 38 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CB7D80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB7D84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB7D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB7D8C  7C 08 03 A6 */	mtlr r0
/* 80CB7D90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB7D94  4E 80 00 20 */	blr 
