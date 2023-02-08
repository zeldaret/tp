lbl_80B2E544:
/* 80B2E544  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B2E548  7C 08 02 A6 */	mflr r0
/* 80B2E54C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B2E550  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B2E554  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B2E558  7C 7E 1B 78 */	mr r30, r3
/* 80B2E55C  3C 60 80 B3 */	lis r3, lit_3717@ha /* 0x80B2F080@ha */
/* 80B2E560  3B E3 F0 80 */	addi r31, r3, lit_3717@l /* 0x80B2F080@l */
/* 80B2E564  A8 1E 05 A8 */	lha r0, 0x5a8(r30)
/* 80B2E568  2C 00 00 01 */	cmpwi r0, 1
/* 80B2E56C  41 82 00 38 */	beq lbl_80B2E5A4
/* 80B2E570  40 80 00 58 */	bge lbl_80B2E5C8
/* 80B2E574  2C 00 00 00 */	cmpwi r0, 0
/* 80B2E578  40 80 00 08 */	bge lbl_80B2E580
/* 80B2E57C  48 00 00 4C */	b lbl_80B2E5C8
lbl_80B2E580:
/* 80B2E580  38 00 00 01 */	li r0, 1
/* 80B2E584  B0 1E 05 A8 */	sth r0, 0x5a8(r30)
/* 80B2E588  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B2E58C  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80B2E590  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80B2E594  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 80B2E598  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B2E59C  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80B2E5A0  48 00 00 28 */	b lbl_80B2E5C8
lbl_80B2E5A4:
/* 80B2E5A4  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 80B2E5A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B2E5AC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B2E5B0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80B2E5B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2E5B8  40 81 00 10 */	ble lbl_80B2E5C8
/* 80B2E5BC  38 00 00 00 */	li r0, 0
/* 80B2E5C0  B0 1E 05 A6 */	sth r0, 0x5a6(r30)
/* 80B2E5C4  B0 1E 05 A8 */	sth r0, 0x5a8(r30)
lbl_80B2E5C8:
/* 80B2E5C8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80B2E5CC  38 03 03 E8 */	addi r0, r3, 0x3e8
/* 80B2E5D0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B2E5D4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80B2E5D8  38 80 3F F0 */	li r4, 0x3ff0
/* 80B2E5DC  38 A0 00 08 */	li r5, 8
/* 80B2E5E0  38 C0 04 00 */	li r6, 0x400
/* 80B2E5E4  4B 74 20 25 */	bl cLib_addCalcAngleS2__FPssss
/* 80B2E5E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B2E5EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B2E5F0  A8 9E 05 C6 */	lha r4, 0x5c6(r30)
/* 80B2E5F4  4B 4D DD 51 */	bl mDoMtx_XrotS__FPA4_fs
/* 80B2E5F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B2E5FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B2E600  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 80B2E604  4B 4D DE C9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80B2E608  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80B2E60C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B2E610  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80B2E614  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B2E618  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80B2E61C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B2E620  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B2E624  38 81 00 14 */	addi r4, r1, 0x14
/* 80B2E628  38 A1 00 08 */	addi r5, r1, 8
/* 80B2E62C  4B 81 87 41 */	bl PSMTXMultVec
/* 80B2E630  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B2E634  38 81 00 08 */	addi r4, r1, 8
/* 80B2E638  7C 65 1B 78 */	mr r5, r3
/* 80B2E63C  4B 81 8A 55 */	bl PSVECAdd
/* 80B2E640  A8 7E 05 E4 */	lha r3, 0x5e4(r30)
/* 80B2E644  38 03 0A 00 */	addi r0, r3, 0xa00
/* 80B2E648  B0 1E 05 E4 */	sth r0, 0x5e4(r30)
/* 80B2E64C  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 80B2E650  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B2E654  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80B2E658  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80B2E65C  4B 74 13 E1 */	bl cLib_addCalc2__FPffff
/* 80B2E660  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B2E664  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B2E668  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B2E66C  7C 08 03 A6 */	mtlr r0
/* 80B2E670  38 21 00 30 */	addi r1, r1, 0x30
/* 80B2E674  4E 80 00 20 */	blr 
