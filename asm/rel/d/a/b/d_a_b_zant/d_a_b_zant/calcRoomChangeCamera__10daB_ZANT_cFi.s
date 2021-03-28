lbl_8064B49C:
/* 8064B49C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8064B4A0  7C 08 02 A6 */	mflr r0
/* 8064B4A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8064B4A8  39 61 00 40 */	addi r11, r1, 0x40
/* 8064B4AC  4B D1 6D 2C */	b _savegpr_28
/* 8064B4B0  7C 7C 1B 78 */	mr r28, r3
/* 8064B4B4  7C 9D 23 78 */	mr r29, r4
/* 8064B4B8  3C 60 80 65 */	lis r3, lit_3757@ha
/* 8064B4BC  3B C3 EB 1C */	addi r30, r3, lit_3757@l
/* 8064B4C0  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8064B4C4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8064B4C8  C0 1E 03 0C */	lfs f0, 0x30c(r30)
/* 8064B4CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8064B4D0  C0 1E 03 10 */	lfs f0, 0x310(r30)
/* 8064B4D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8064B4D8  C0 1E 03 14 */	lfs f0, 0x314(r30)
/* 8064B4DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8064B4E0  C0 1E 03 18 */	lfs f0, 0x318(r30)
/* 8064B4E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8064B4E8  C0 1E 03 1C */	lfs f0, 0x31c(r30)
/* 8064B4EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8064B4F0  2C 1D 00 01 */	cmpwi r29, 1
/* 8064B4F4  40 82 00 38 */	bne lbl_8064B52C
/* 8064B4F8  C0 1E 03 20 */	lfs f0, 0x320(r30)
/* 8064B4FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8064B500  C0 1E 03 24 */	lfs f0, 0x324(r30)
/* 8064B504  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8064B508  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8064B50C  38 61 00 20 */	addi r3, r1, 0x20
/* 8064B510  38 81 00 08 */	addi r4, r1, 8
/* 8064B514  7C 65 1B 78 */	mr r5, r3
/* 8064B518  4B CF BB 78 */	b PSVECAdd
/* 8064B51C  38 61 00 14 */	addi r3, r1, 0x14
/* 8064B520  38 81 00 08 */	addi r4, r1, 8
/* 8064B524  7C 65 1B 78 */	mr r5, r3
/* 8064B528  4B CF BB 68 */	b PSVECAdd
lbl_8064B52C:
/* 8064B52C  88 1C 06 FB */	lbz r0, 0x6fb(r28)
/* 8064B530  28 00 00 00 */	cmplwi r0, 0
/* 8064B534  40 82 00 B4 */	bne lbl_8064B5E8
/* 8064B538  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8064B53C  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 8064B540  EC 00 08 2A */	fadds f0, f0, f1
/* 8064B544  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8064B548  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8064B54C  EC 00 08 2A */	fadds f0, f0, f1
/* 8064B550  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8064B554  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8064B558  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8064B55C  38 80 80 00 */	li r4, -32768
/* 8064B560  4B 9C 0E 7C */	b mDoMtx_YrotS__FPA4_fs
/* 8064B564  38 61 00 20 */	addi r3, r1, 0x20
/* 8064B568  4B 9C 18 6C */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 8064B56C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8064B570  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 8064B574  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064B578  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8064B57C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8064B580  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8064B584  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8064B588  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8064B58C  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8064B590  EC 02 00 2A */	fadds f0, f2, f0
/* 8064B594  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8064B598  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8064B59C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8064B5A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8064B5A4  7F E3 FB 78 */	mr r3, r31
/* 8064B5A8  38 80 80 00 */	li r4, -32768
/* 8064B5AC  4B 9C 0E 30 */	b mDoMtx_YrotS__FPA4_fs
/* 8064B5B0  38 61 00 14 */	addi r3, r1, 0x14
/* 8064B5B4  4B 9C 18 20 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 8064B5B8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8064B5BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8064B5C0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8064B5C4  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8064B5C8  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8064B5CC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8064B5D0  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8064B5D4  EC 02 00 2A */	fadds f0, f2, f0
/* 8064B5D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8064B5DC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8064B5E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8064B5E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_8064B5E8:
/* 8064B5E8  2C 1D 00 01 */	cmpwi r29, 1
/* 8064B5EC  41 82 00 68 */	beq lbl_8064B654
/* 8064B5F0  40 80 00 94 */	bge lbl_8064B684
/* 8064B5F4  2C 1D 00 00 */	cmpwi r29, 0
/* 8064B5F8  40 80 00 08 */	bge lbl_8064B600
/* 8064B5FC  48 00 00 88 */	b lbl_8064B684
lbl_8064B600:
/* 8064B600  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 8064B604  D0 1C 07 78 */	stfs f0, 0x778(r28)
/* 8064B608  38 7C 07 7C */	addi r3, r28, 0x77c
/* 8064B60C  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8064B610  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8064B614  4B C2 51 2C */	b cLib_chaseF__FPfff
/* 8064B618  38 7C 07 60 */	addi r3, r28, 0x760
/* 8064B61C  38 81 00 20 */	addi r4, r1, 0x20
/* 8064B620  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 8064B624  C0 5E 03 28 */	lfs f2, 0x328(r30)
/* 8064B628  C0 1C 07 7C */	lfs f0, 0x77c(r28)
/* 8064B62C  EC 42 00 32 */	fmuls f2, f2, f0
/* 8064B630  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 8064B634  4B C2 44 84 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8064B638  38 7C 07 6C */	addi r3, r28, 0x76c
/* 8064B63C  38 81 00 14 */	addi r4, r1, 0x14
/* 8064B640  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 8064B644  C0 5C 07 7C */	lfs f2, 0x77c(r28)
/* 8064B648  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 8064B64C  4B C2 44 6C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8064B650  48 00 00 34 */	b lbl_8064B684
lbl_8064B654:
/* 8064B654  38 7C 07 60 */	addi r3, r28, 0x760
/* 8064B658  38 81 00 20 */	addi r4, r1, 0x20
/* 8064B65C  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8064B660  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8064B664  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 8064B668  4B C2 44 50 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8064B66C  38 7C 07 6C */	addi r3, r28, 0x76c
/* 8064B670  38 81 00 14 */	addi r4, r1, 0x14
/* 8064B674  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8064B678  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8064B67C  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 8064B680  4B C2 44 38 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_8064B684:
/* 8064B684  39 61 00 40 */	addi r11, r1, 0x40
/* 8064B688  4B D1 6B 9C */	b _restgpr_28
/* 8064B68C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8064B690  7C 08 03 A6 */	mtlr r0
/* 8064B694  38 21 00 40 */	addi r1, r1, 0x40
/* 8064B698  4E 80 00 20 */	blr 
