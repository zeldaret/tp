lbl_80D1C570:
/* 80D1C570  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D1C574  7C 08 02 A6 */	mflr r0
/* 80D1C578  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D1C57C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D1C580  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D1C584  7C 7E 1B 78 */	mr r30, r3
/* 80D1C588  3C 60 80 D2 */	lis r3, l_R02_eff_id@ha
/* 80D1C58C  3B E3 D3 D4 */	addi r31, r3, l_R02_eff_id@l
/* 80D1C590  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 80D1C594  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D1C598  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80D1C59C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D1C5A0  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80D1C5A4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D1C5A8  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 80D1C5AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D1C5B0  C0 1E 06 F8 */	lfs f0, 0x6f8(r30)
/* 80D1C5B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D1C5B8  C0 1E 06 FC */	lfs f0, 0x6fc(r30)
/* 80D1C5BC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D1C5C0  38 61 00 24 */	addi r3, r1, 0x24
/* 80D1C5C4  38 81 00 18 */	addi r4, r1, 0x18
/* 80D1C5C8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80D1C5CC  4B 33 F1 94 */	b dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 80D1C5D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D1C5D4  D0 1E 07 48 */	stfs f0, 0x748(r30)
/* 80D1C5D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D1C5DC  D0 1E 07 4C */	stfs f0, 0x74c(r30)
/* 80D1C5E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D1C5E4  D0 1E 07 50 */	stfs f0, 0x750(r30)
/* 80D1C5E8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80D1C5EC  C0 1E 07 00 */	lfs f0, 0x700(r30)
/* 80D1C5F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1C5F4  D0 1E 07 54 */	stfs f0, 0x754(r30)
/* 80D1C5F8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D1C5FC  D0 1E 07 5C */	stfs f0, 0x75c(r30)
/* 80D1C600  C0 7E 07 54 */	lfs f3, 0x754(r30)
/* 80D1C604  38 7E 07 3C */	addi r3, r30, 0x73c
/* 80D1C608  C0 3E 06 F4 */	lfs f1, 0x6f4(r30)
/* 80D1C60C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80D1C610  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D1C614  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80D1C618  4B 55 33 64 */	b cLib_addCalc__FPfffff
/* 80D1C61C  C0 7E 07 54 */	lfs f3, 0x754(r30)
/* 80D1C620  38 7E 07 40 */	addi r3, r30, 0x740
/* 80D1C624  C0 3E 06 F8 */	lfs f1, 0x6f8(r30)
/* 80D1C628  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80D1C62C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D1C630  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80D1C634  4B 55 33 48 */	b cLib_addCalc__FPfffff
/* 80D1C638  C0 7E 07 54 */	lfs f3, 0x754(r30)
/* 80D1C63C  38 7E 07 44 */	addi r3, r30, 0x744
/* 80D1C640  C0 3E 06 FC */	lfs f1, 0x6fc(r30)
/* 80D1C644  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80D1C648  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D1C64C  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80D1C650  4B 55 33 2C */	b cLib_addCalc__FPfffff
/* 80D1C654  38 7E 07 3C */	addi r3, r30, 0x73c
/* 80D1C658  38 9E 06 F4 */	addi r4, r30, 0x6f4
/* 80D1C65C  4B 62 AD 40 */	b PSVECSquareDistance
/* 80D1C660  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D1C664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1C668  40 81 00 58 */	ble lbl_80D1C6C0
/* 80D1C66C  FC 00 08 34 */	frsqrte f0, f1
/* 80D1C670  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 80D1C674  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1C678  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 80D1C67C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1C680  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1C684  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1C688  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1C68C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1C690  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1C694  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1C698  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1C69C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1C6A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1C6A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1C6A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1C6AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1C6B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1C6B4  FC 21 00 32 */	fmul f1, f1, f0
/* 80D1C6B8  FC 20 08 18 */	frsp f1, f1
/* 80D1C6BC  48 00 00 88 */	b lbl_80D1C744
lbl_80D1C6C0:
/* 80D1C6C0  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80D1C6C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1C6C8  40 80 00 10 */	bge lbl_80D1C6D8
/* 80D1C6CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D1C6D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D1C6D4  48 00 00 70 */	b lbl_80D1C744
lbl_80D1C6D8:
/* 80D1C6D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D1C6DC  80 81 00 08 */	lwz r4, 8(r1)
/* 80D1C6E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D1C6E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D1C6E8  7C 03 00 00 */	cmpw r3, r0
/* 80D1C6EC  41 82 00 14 */	beq lbl_80D1C700
/* 80D1C6F0  40 80 00 40 */	bge lbl_80D1C730
/* 80D1C6F4  2C 03 00 00 */	cmpwi r3, 0
/* 80D1C6F8  41 82 00 20 */	beq lbl_80D1C718
/* 80D1C6FC  48 00 00 34 */	b lbl_80D1C730
lbl_80D1C700:
/* 80D1C700  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1C704  41 82 00 0C */	beq lbl_80D1C710
/* 80D1C708  38 00 00 01 */	li r0, 1
/* 80D1C70C  48 00 00 28 */	b lbl_80D1C734
lbl_80D1C710:
/* 80D1C710  38 00 00 02 */	li r0, 2
/* 80D1C714  48 00 00 20 */	b lbl_80D1C734
lbl_80D1C718:
/* 80D1C718  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1C71C  41 82 00 0C */	beq lbl_80D1C728
/* 80D1C720  38 00 00 05 */	li r0, 5
/* 80D1C724  48 00 00 10 */	b lbl_80D1C734
lbl_80D1C728:
/* 80D1C728  38 00 00 03 */	li r0, 3
/* 80D1C72C  48 00 00 08 */	b lbl_80D1C734
lbl_80D1C730:
/* 80D1C730  38 00 00 04 */	li r0, 4
lbl_80D1C734:
/* 80D1C734  2C 00 00 01 */	cmpwi r0, 1
/* 80D1C738  40 82 00 0C */	bne lbl_80D1C744
/* 80D1C73C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D1C740  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D1C744:
/* 80D1C744  C0 1E 07 54 */	lfs f0, 0x754(r30)
/* 80D1C748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1C74C  40 80 00 1C */	bge lbl_80D1C768
/* 80D1C750  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 80D1C754  D0 1E 07 3C */	stfs f0, 0x73c(r30)
/* 80D1C758  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80D1C75C  D0 1E 07 40 */	stfs f0, 0x740(r30)
/* 80D1C760  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80D1C764  D0 1E 07 44 */	stfs f0, 0x744(r30)
lbl_80D1C768:
/* 80D1C768  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D1C76C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D1C770  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D1C774  7C 08 03 A6 */	mtlr r0
/* 80D1C778  38 21 00 40 */	addi r1, r1, 0x40
/* 80D1C77C  4E 80 00 20 */	blr 
