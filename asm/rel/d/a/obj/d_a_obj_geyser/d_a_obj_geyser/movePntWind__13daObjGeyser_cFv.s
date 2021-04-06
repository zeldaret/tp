lbl_80BF8660:
/* 80BF8660  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BF8664  7C 08 02 A6 */	mflr r0
/* 80BF8668  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BF866C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BF8670  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BF8674  7C 7E 1B 78 */	mr r30, r3
/* 80BF8678  3C 60 80 C0 */	lis r3, l_dzb@ha /* 0x80BF8FE8@ha */
/* 80BF867C  3B E3 8F E8 */	addi r31, r3, l_dzb@l /* 0x80BF8FE8@l */
/* 80BF8680  C0 1E 07 44 */	lfs f0, 0x744(r30)
/* 80BF8684  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BF8688  C0 1E 07 48 */	lfs f0, 0x748(r30)
/* 80BF868C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BF8690  C0 1E 07 4C */	lfs f0, 0x74c(r30)
/* 80BF8694  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BF8698  C0 1E 07 50 */	lfs f0, 0x750(r30)
/* 80BF869C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BF86A0  C0 1E 07 54 */	lfs f0, 0x754(r30)
/* 80BF86A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BF86A8  C0 1E 07 58 */	lfs f0, 0x758(r30)
/* 80BF86AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BF86B0  38 61 00 24 */	addi r3, r1, 0x24
/* 80BF86B4  38 81 00 18 */	addi r4, r1, 0x18
/* 80BF86B8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80BF86BC  4B 46 30 A5 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 80BF86C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF86C4  D0 1E 07 A0 */	stfs f0, 0x7a0(r30)
/* 80BF86C8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BF86CC  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
/* 80BF86D0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BF86D4  D0 1E 07 A8 */	stfs f0, 0x7a8(r30)
/* 80BF86D8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80BF86DC  C0 1E 07 5C */	lfs f0, 0x75c(r30)
/* 80BF86E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BF86E4  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 80BF86E8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BF86EC  D0 1E 07 B4 */	stfs f0, 0x7b4(r30)
/* 80BF86F0  C0 7E 07 AC */	lfs f3, 0x7ac(r30)
/* 80BF86F4  38 7E 07 94 */	addi r3, r30, 0x794
/* 80BF86F8  C0 3E 07 50 */	lfs f1, 0x750(r30)
/* 80BF86FC  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80BF8700  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80BF8704  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80BF8708  4B 67 72 75 */	bl cLib_addCalc__FPfffff
/* 80BF870C  C0 7E 07 AC */	lfs f3, 0x7ac(r30)
/* 80BF8710  38 7E 07 98 */	addi r3, r30, 0x798
/* 80BF8714  C0 3E 07 54 */	lfs f1, 0x754(r30)
/* 80BF8718  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80BF871C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80BF8720  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80BF8724  4B 67 72 59 */	bl cLib_addCalc__FPfffff
/* 80BF8728  C0 7E 07 AC */	lfs f3, 0x7ac(r30)
/* 80BF872C  38 7E 07 9C */	addi r3, r30, 0x79c
/* 80BF8730  C0 3E 07 58 */	lfs f1, 0x758(r30)
/* 80BF8734  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80BF8738  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80BF873C  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80BF8740  4B 67 72 3D */	bl cLib_addCalc__FPfffff
/* 80BF8744  38 7E 07 94 */	addi r3, r30, 0x794
/* 80BF8748  38 9E 07 50 */	addi r4, r30, 0x750
/* 80BF874C  4B 74 EC 51 */	bl PSVECSquareDistance
/* 80BF8750  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BF8754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF8758  40 81 00 58 */	ble lbl_80BF87B0
/* 80BF875C  FC 00 08 34 */	frsqrte f0, f1
/* 80BF8760  C8 9F 00 40 */	lfd f4, 0x40(r31)
/* 80BF8764  FC 44 00 32 */	fmul f2, f4, f0
/* 80BF8768  C8 7F 00 48 */	lfd f3, 0x48(r31)
/* 80BF876C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF8770  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF8774  FC 03 00 28 */	fsub f0, f3, f0
/* 80BF8778  FC 02 00 32 */	fmul f0, f2, f0
/* 80BF877C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BF8780  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF8784  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF8788  FC 03 00 28 */	fsub f0, f3, f0
/* 80BF878C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BF8790  FC 44 00 32 */	fmul f2, f4, f0
/* 80BF8794  FC 00 00 32 */	fmul f0, f0, f0
/* 80BF8798  FC 01 00 32 */	fmul f0, f1, f0
/* 80BF879C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BF87A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BF87A4  FC 21 00 32 */	fmul f1, f1, f0
/* 80BF87A8  FC 20 08 18 */	frsp f1, f1
/* 80BF87AC  48 00 00 88 */	b lbl_80BF8834
lbl_80BF87B0:
/* 80BF87B0  C8 1F 00 50 */	lfd f0, 0x50(r31)
/* 80BF87B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF87B8  40 80 00 10 */	bge lbl_80BF87C8
/* 80BF87BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF87C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BF87C4  48 00 00 70 */	b lbl_80BF8834
lbl_80BF87C8:
/* 80BF87C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BF87CC  80 81 00 08 */	lwz r4, 8(r1)
/* 80BF87D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BF87D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BF87D8  7C 03 00 00 */	cmpw r3, r0
/* 80BF87DC  41 82 00 14 */	beq lbl_80BF87F0
/* 80BF87E0  40 80 00 40 */	bge lbl_80BF8820
/* 80BF87E4  2C 03 00 00 */	cmpwi r3, 0
/* 80BF87E8  41 82 00 20 */	beq lbl_80BF8808
/* 80BF87EC  48 00 00 34 */	b lbl_80BF8820
lbl_80BF87F0:
/* 80BF87F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF87F4  41 82 00 0C */	beq lbl_80BF8800
/* 80BF87F8  38 00 00 01 */	li r0, 1
/* 80BF87FC  48 00 00 28 */	b lbl_80BF8824
lbl_80BF8800:
/* 80BF8800  38 00 00 02 */	li r0, 2
/* 80BF8804  48 00 00 20 */	b lbl_80BF8824
lbl_80BF8808:
/* 80BF8808  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BF880C  41 82 00 0C */	beq lbl_80BF8818
/* 80BF8810  38 00 00 05 */	li r0, 5
/* 80BF8814  48 00 00 10 */	b lbl_80BF8824
lbl_80BF8818:
/* 80BF8818  38 00 00 03 */	li r0, 3
/* 80BF881C  48 00 00 08 */	b lbl_80BF8824
lbl_80BF8820:
/* 80BF8820  38 00 00 04 */	li r0, 4
lbl_80BF8824:
/* 80BF8824  2C 00 00 01 */	cmpwi r0, 1
/* 80BF8828  40 82 00 0C */	bne lbl_80BF8834
/* 80BF882C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BF8830  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BF8834:
/* 80BF8834  C0 1E 07 AC */	lfs f0, 0x7ac(r30)
/* 80BF8838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BF883C  40 80 00 1C */	bge lbl_80BF8858
/* 80BF8840  C0 1E 07 44 */	lfs f0, 0x744(r30)
/* 80BF8844  D0 1E 07 94 */	stfs f0, 0x794(r30)
/* 80BF8848  C0 1E 07 48 */	lfs f0, 0x748(r30)
/* 80BF884C  D0 1E 07 98 */	stfs f0, 0x798(r30)
/* 80BF8850  C0 1E 07 4C */	lfs f0, 0x74c(r30)
/* 80BF8854  D0 1E 07 9C */	stfs f0, 0x79c(r30)
lbl_80BF8858:
/* 80BF8858  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BF885C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BF8860  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BF8864  7C 08 03 A6 */	mtlr r0
/* 80BF8868  38 21 00 40 */	addi r1, r1, 0x40
/* 80BF886C  4E 80 00 20 */	blr 
