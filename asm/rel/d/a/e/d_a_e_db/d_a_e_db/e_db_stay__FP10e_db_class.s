lbl_8069B468:
/* 8069B468  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8069B46C  7C 08 02 A6 */	mflr r0
/* 8069B470  90 01 00 34 */	stw r0, 0x34(r1)
/* 8069B474  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8069B478  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8069B47C  7C 7E 1B 78 */	mr r30, r3
/* 8069B480  3C 60 80 6A */	lis r3, lit_3902@ha /* 0x806A190C@ha */
/* 8069B484  3B E3 19 0C */	addi r31, r3, lit_3902@l /* 0x806A190C@l */
/* 8069B488  38 00 00 0F */	li r0, 0xf
/* 8069B48C  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 8069B490  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 8069B494  2C 00 00 02 */	cmpwi r0, 2
/* 8069B498  41 82 00 80 */	beq lbl_8069B518
/* 8069B49C  40 80 00 14 */	bge lbl_8069B4B0
/* 8069B4A0  2C 00 00 00 */	cmpwi r0, 0
/* 8069B4A4  41 82 00 18 */	beq lbl_8069B4BC
/* 8069B4A8  40 80 00 1C */	bge lbl_8069B4C4
/* 8069B4AC  48 00 02 FC */	b lbl_8069B7A8
lbl_8069B4B0:
/* 8069B4B0  2C 00 00 05 */	cmpwi r0, 5
/* 8069B4B4  41 82 00 90 */	beq lbl_8069B544
/* 8069B4B8  48 00 02 F0 */	b lbl_8069B7A8
lbl_8069B4BC:
/* 8069B4BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069B4C0  D0 1E 06 78 */	stfs f0, 0x678(r30)
lbl_8069B4C4:
/* 8069B4C4  7F C3 F3 78 */	mr r3, r30
/* 8069B4C8  38 80 00 0D */	li r4, 0xd
/* 8069B4CC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8069B4D0  38 A0 00 00 */	li r5, 0
/* 8069B4D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069B4D8  4B FF F6 5D */	bl anm_init__FP10e_db_classifUcf
/* 8069B4DC  7F C3 F3 78 */	mr r3, r30
/* 8069B4E0  38 80 00 14 */	li r4, 0x14
/* 8069B4E4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8069B4E8  38 A0 00 02 */	li r5, 2
/* 8069B4EC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8069B4F0  4B FF F6 F1 */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069B4F4  2C 03 00 00 */	cmpwi r3, 0
/* 8069B4F8  41 82 02 B0 */	beq lbl_8069B7A8
/* 8069B4FC  38 00 00 05 */	li r0, 5
/* 8069B500  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B504  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069B508  D0 1E 06 8C */	stfs f0, 0x68c(r30)
/* 8069B50C  38 00 00 32 */	li r0, 0x32
/* 8069B510  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8069B514  48 00 02 94 */	b lbl_8069B7A8
lbl_8069B518:
/* 8069B518  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069B51C  7C 00 07 75 */	extsb. r0, r0
/* 8069B520  41 82 00 10 */	beq lbl_8069B530
/* 8069B524  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8069B528  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8069B52C  48 00 00 0C */	b lbl_8069B538
lbl_8069B530:
/* 8069B530  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8069B534  D0 1E 06 78 */	stfs f0, 0x678(r30)
lbl_8069B538:
/* 8069B538  38 00 00 01 */	li r0, 1
/* 8069B53C  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069B540  48 00 02 68 */	b lbl_8069B7A8
lbl_8069B544:
/* 8069B544  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069B548  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 8069B54C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8069B550  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8069B554  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069B558  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069B55C  4B BD 44 E1 */	bl cLib_addCalc2__FPffff
/* 8069B560  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8069B564  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 8069B568  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 8069B56C  EC 21 00 2A */	fadds f1, f1, f0
/* 8069B570  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8069B574  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8069B578  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069B57C  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069B580  4B BD 44 BD */	bl cLib_addCalc2__FPffff
/* 8069B584  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8069B588  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 8069B58C  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8069B590  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8069B594  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069B598  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069B59C  4B BD 44 A1 */	bl cLib_addCalc2__FPffff
/* 8069B5A0  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8069B5A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069B5A8  FC 40 08 90 */	fmr f2, f1
/* 8069B5AC  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8069B5B0  4B BD 44 8D */	bl cLib_addCalc2__FPffff
/* 8069B5B4  38 61 00 0C */	addi r3, r1, 0xc
/* 8069B5B8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8069B5BC  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 8069B5C0  4B BC B5 75 */	bl __mi__4cXyzCFRC3Vec
/* 8069B5C4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8069B5C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069B5CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8069B5D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8069B5D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8069B5D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8069B5DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069B5E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8069B5E4  38 61 00 18 */	addi r3, r1, 0x18
/* 8069B5E8  4B CA BB 51 */	bl PSVECSquareMag
/* 8069B5EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069B5F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069B5F4  40 81 00 58 */	ble lbl_8069B64C
/* 8069B5F8  FC 00 08 34 */	frsqrte f0, f1
/* 8069B5FC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8069B600  FC 44 00 32 */	fmul f2, f4, f0
/* 8069B604  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8069B608  FC 00 00 32 */	fmul f0, f0, f0
/* 8069B60C  FC 01 00 32 */	fmul f0, f1, f0
/* 8069B610  FC 03 00 28 */	fsub f0, f3, f0
/* 8069B614  FC 02 00 32 */	fmul f0, f2, f0
/* 8069B618  FC 44 00 32 */	fmul f2, f4, f0
/* 8069B61C  FC 00 00 32 */	fmul f0, f0, f0
/* 8069B620  FC 01 00 32 */	fmul f0, f1, f0
/* 8069B624  FC 03 00 28 */	fsub f0, f3, f0
/* 8069B628  FC 02 00 32 */	fmul f0, f2, f0
/* 8069B62C  FC 44 00 32 */	fmul f2, f4, f0
/* 8069B630  FC 00 00 32 */	fmul f0, f0, f0
/* 8069B634  FC 01 00 32 */	fmul f0, f1, f0
/* 8069B638  FC 03 00 28 */	fsub f0, f3, f0
/* 8069B63C  FC 02 00 32 */	fmul f0, f2, f0
/* 8069B640  FC 21 00 32 */	fmul f1, f1, f0
/* 8069B644  FC 20 08 18 */	frsp f1, f1
/* 8069B648  48 00 00 88 */	b lbl_8069B6D0
lbl_8069B64C:
/* 8069B64C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8069B650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069B654  40 80 00 10 */	bge lbl_8069B664
/* 8069B658  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069B65C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8069B660  48 00 00 70 */	b lbl_8069B6D0
lbl_8069B664:
/* 8069B664  D0 21 00 08 */	stfs f1, 8(r1)
/* 8069B668  80 81 00 08 */	lwz r4, 8(r1)
/* 8069B66C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8069B670  3C 00 7F 80 */	lis r0, 0x7f80
/* 8069B674  7C 03 00 00 */	cmpw r3, r0
/* 8069B678  41 82 00 14 */	beq lbl_8069B68C
/* 8069B67C  40 80 00 40 */	bge lbl_8069B6BC
/* 8069B680  2C 03 00 00 */	cmpwi r3, 0
/* 8069B684  41 82 00 20 */	beq lbl_8069B6A4
/* 8069B688  48 00 00 34 */	b lbl_8069B6BC
lbl_8069B68C:
/* 8069B68C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069B690  41 82 00 0C */	beq lbl_8069B69C
/* 8069B694  38 00 00 01 */	li r0, 1
/* 8069B698  48 00 00 28 */	b lbl_8069B6C0
lbl_8069B69C:
/* 8069B69C  38 00 00 02 */	li r0, 2
/* 8069B6A0  48 00 00 20 */	b lbl_8069B6C0
lbl_8069B6A4:
/* 8069B6A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069B6A8  41 82 00 0C */	beq lbl_8069B6B4
/* 8069B6AC  38 00 00 05 */	li r0, 5
/* 8069B6B0  48 00 00 10 */	b lbl_8069B6C0
lbl_8069B6B4:
/* 8069B6B4  38 00 00 03 */	li r0, 3
/* 8069B6B8  48 00 00 08 */	b lbl_8069B6C0
lbl_8069B6BC:
/* 8069B6BC  38 00 00 04 */	li r0, 4
lbl_8069B6C0:
/* 8069B6C0  2C 00 00 01 */	cmpwi r0, 1
/* 8069B6C4  40 82 00 0C */	bne lbl_8069B6D0
/* 8069B6C8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069B6CC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8069B6D0:
/* 8069B6D0  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8069B6D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069B6D8  40 80 00 7C */	bge lbl_8069B754
/* 8069B6DC  38 7E 06 78 */	addi r3, r30, 0x678
/* 8069B6E0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069B6E4  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 8069B6E8  4B BD 43 99 */	bl cLib_addCalc0__FPfff
/* 8069B6EC  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069B6F0  7C 00 07 75 */	extsb. r0, r0
/* 8069B6F4  41 82 00 1C */	beq lbl_8069B710
/* 8069B6F8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8069B6FC  38 80 40 00 */	li r4, 0x4000
/* 8069B700  38 A0 00 04 */	li r5, 4
/* 8069B704  38 C0 02 00 */	li r6, 0x200
/* 8069B708  4B BD 4F 01 */	bl cLib_addCalcAngleS2__FPssss
/* 8069B70C  48 00 00 18 */	b lbl_8069B724
lbl_8069B710:
/* 8069B710  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8069B714  38 80 C0 00 */	li r4, -16384
/* 8069B718  38 A0 00 04 */	li r5, 4
/* 8069B71C  38 C0 02 00 */	li r6, 0x200
/* 8069B720  4B BD 4E E9 */	bl cLib_addCalcAngleS2__FPssss
lbl_8069B724:
/* 8069B724  38 7E 08 44 */	addi r3, r30, 0x844
/* 8069B728  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8069B72C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069B730  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 8069B734  4B BD 43 09 */	bl cLib_addCalc2__FPffff
/* 8069B738  38 7E 06 90 */	addi r3, r30, 0x690
/* 8069B73C  3C 80 80 6A */	lis r4, l_HIO@ha /* 0x806A1DA8@ha */
/* 8069B740  38 84 1D A8 */	addi r4, r4, l_HIO@l /* 0x806A1DA8@l */
/* 8069B744  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8069B748  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069B74C  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8069B750  4B BD 42 ED */	bl cLib_addCalc2__FPffff
lbl_8069B754:
/* 8069B754  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8069B758  2C 00 00 00 */	cmpwi r0, 0
/* 8069B75C  40 82 00 4C */	bne lbl_8069B7A8
/* 8069B760  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 8069B764  28 00 00 01 */	cmplwi r0, 1
/* 8069B768  41 82 00 18 */	beq lbl_8069B780
/* 8069B76C  7F C3 F3 78 */	mr r3, r30
/* 8069B770  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 8069B774  4B FF F8 41 */	bl pl_check__FP10e_db_classf
/* 8069B778  2C 03 00 00 */	cmpwi r3, 0
/* 8069B77C  41 82 00 2C */	beq lbl_8069B7A8
lbl_8069B780:
/* 8069B780  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069B784  7C 00 07 75 */	extsb. r0, r0
/* 8069B788  41 82 00 10 */	beq lbl_8069B798
/* 8069B78C  38 00 00 02 */	li r0, 2
/* 8069B790  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069B794  48 00 00 0C */	b lbl_8069B7A0
lbl_8069B798:
/* 8069B798  38 00 00 01 */	li r0, 1
/* 8069B79C  B0 1E 06 6A */	sth r0, 0x66a(r30)
lbl_8069B7A0:
/* 8069B7A0  38 00 00 00 */	li r0, 0
/* 8069B7A4  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_8069B7A8:
/* 8069B7A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8069B7AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8069B7B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8069B7B4  7C 08 03 A6 */	mtlr r0
/* 8069B7B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8069B7BC  4E 80 00 20 */	blr 
