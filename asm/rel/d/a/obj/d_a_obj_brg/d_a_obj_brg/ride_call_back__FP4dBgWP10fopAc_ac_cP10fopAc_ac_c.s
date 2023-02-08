lbl_80BBC90C:
/* 80BBC90C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80BBC910  7C 08 02 A6 */	mflr r0
/* 80BBC914  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80BBC918  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80BBC91C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80BBC920  39 61 00 90 */	addi r11, r1, 0x90
/* 80BBC924  4B 7A 58 B5 */	bl _savegpr_28
/* 80BBC928  7C 9C 23 78 */	mr r28, r4
/* 80BBC92C  7C BD 2B 78 */	mr r29, r5
/* 80BBC930  3C 60 80 BC */	lis r3, lit_3896@ha /* 0x80BC2148@ha */
/* 80BBC934  3B E3 21 48 */	addi r31, r3, lit_3896@l /* 0x80BC2148@l */
/* 80BBC938  38 61 00 30 */	addi r3, r1, 0x30
/* 80BBC93C  38 9C 06 2C */	addi r4, r28, 0x62c
/* 80BBC940  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BBC944  4B 6A A1 F1 */	bl __mi__4cXyzCFRC3Vec
/* 80BBC948  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80BBC94C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80BBC950  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BBC954  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BBC958  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BBC95C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BBC960  EC 21 00 72 */	fmuls f1, f1, f1
/* 80BBC964  EC 00 00 32 */	fmuls f0, f0, f0
/* 80BBC968  EC 41 00 2A */	fadds f2, f1, f0
/* 80BBC96C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BBC970  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BBC974  40 81 00 0C */	ble lbl_80BBC980
/* 80BBC978  FC 00 10 34 */	frsqrte f0, f2
/* 80BBC97C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80BBC980:
/* 80BBC980  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BBC984  3C 7C 00 01 */	addis r3, r28, 1
/* 80BBC988  C0 03 AE DC */	lfs f0, -0x5124(r3)
/* 80BBC98C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBC990  EC 22 00 24 */	fdivs f1, f2, f0
/* 80BBC994  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BBC998  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BBC99C  FC 00 00 1E */	fctiwz f0, f0
/* 80BBC9A0  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80BBC9A4  80 81 00 74 */	lwz r4, 0x74(r1)
/* 80BBC9A8  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BBC9AC  7C 03 07 74 */	extsb r3, r0
/* 80BBC9B0  38 03 FF FF */	addi r0, r3, -1
/* 80BBC9B4  7C 04 00 00 */	cmpw r4, r0
/* 80BBC9B8  40 81 00 0C */	ble lbl_80BBC9C4
/* 80BBC9BC  7C 04 03 78 */	mr r4, r0
/* 80BBC9C0  48 00 00 10 */	b lbl_80BBC9D0
lbl_80BBC9C4:
/* 80BBC9C4  2C 04 00 00 */	cmpwi r4, 0
/* 80BBC9C8  40 80 00 08 */	bge lbl_80BBC9D0
/* 80BBC9CC  38 80 00 00 */	li r4, 0
lbl_80BBC9D0:
/* 80BBC9D0  1C 64 07 0C */	mulli r3, r4, 0x70c
/* 80BBC9D4  3B C3 05 70 */	addi r30, r3, 0x570
/* 80BBC9D8  7F DC F2 14 */	add r30, r28, r30
/* 80BBC9DC  3C 7C 00 01 */	addis r3, r28, 1
/* 80BBC9E0  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BBC9E4  70 00 00 05 */	andi. r0, r0, 5
/* 80BBC9E8  41 82 00 0C */	beq lbl_80BBC9F4
/* 80BBC9EC  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 80BBC9F0  48 00 00 1C */	b lbl_80BBCA0C
lbl_80BBC9F4:
/* 80BBC9F4  88 03 B1 ED */	lbz r0, -0x4e13(r3)
/* 80BBC9F8  2C 00 00 02 */	cmpwi r0, 2
/* 80BBC9FC  40 82 00 0C */	bne lbl_80BBCA08
/* 80BBCA00  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 80BBCA04  48 00 00 08 */	b lbl_80BBCA0C
lbl_80BBCA08:
/* 80BBCA08  C3 FF 00 14 */	lfs f31, 0x14(r31)
lbl_80BBCA0C:
/* 80BBCA0C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBCA10  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBCA14  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBCA18  A8 1E 00 D6 */	lha r0, 0xd6(r30)
/* 80BBCA1C  7C 00 00 D0 */	neg r0, r0
/* 80BBCA20  7C 04 07 34 */	extsh r4, r0
/* 80BBCA24  4B 44 F9 B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBCA28  38 61 00 24 */	addi r3, r1, 0x24
/* 80BBCA2C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BBCA30  38 BE 00 BC */	addi r5, r30, 0xbc
/* 80BBCA34  4B 6A A1 01 */	bl __mi__4cXyzCFRC3Vec
/* 80BBCA38  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BBCA3C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BBCA40  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BBCA44  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BBCA48  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BBCA4C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BBCA50  38 61 00 54 */	addi r3, r1, 0x54
/* 80BBCA54  38 81 00 48 */	addi r4, r1, 0x48
/* 80BBCA58  4B 6B 44 95 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBCA5C  38 61 00 18 */	addi r3, r1, 0x18
/* 80BBCA60  38 9D 04 BC */	addi r4, r29, 0x4bc
/* 80BBCA64  38 BE 00 BC */	addi r5, r30, 0xbc
/* 80BBCA68  4B 6A A0 CD */	bl __mi__4cXyzCFRC3Vec
/* 80BBCA6C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BBCA70  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BBCA74  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BBCA78  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BBCA7C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BBCA80  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BBCA84  38 61 00 54 */	addi r3, r1, 0x54
/* 80BBCA88  38 81 00 3C */	addi r4, r1, 0x3c
/* 80BBCA8C  4B 6B 44 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBCA90  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BBCA94  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80BBCA98  A8 1D 00 08 */	lha r0, 8(r29)
/* 80BBCA9C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80BBCAA0  40 82 00 20 */	bne lbl_80BBCAC0
/* 80BBCAA4  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80BBCAA8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BBCAAC  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 80BBCAB0  38 00 00 05 */	li r0, 5
/* 80BBCAB4  3C 7C 00 01 */	addis r3, r28, 1
/* 80BBCAB8  98 03 B1 EF */	stb r0, -0x4e11(r3)
/* 80BBCABC  48 00 00 2C */	b lbl_80BBCAE8
lbl_80BBCAC0:
/* 80BBCAC0  2C 00 00 60 */	cmpwi r0, 0x60
/* 80BBCAC4  40 82 00 18 */	bne lbl_80BBCADC
/* 80BBCAC8  C0 9F 00 24 */	lfs f4, 0x24(r31)
/* 80BBCACC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80BBCAD0  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 80BBCAD4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80BBCAD8  48 00 00 10 */	b lbl_80BBCAE8
lbl_80BBCADC:
/* 80BBCADC  C0 9F 00 2C */	lfs f4, 0x2c(r31)
/* 80BBCAE0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80BBCAE4  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
lbl_80BBCAE8:
/* 80BBCAE8  EC 84 07 F2 */	fmuls f4, f4, f31
/* 80BBCAEC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80BBCAF0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80BBCAF4  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 80BBCAF8  3C 9C 00 01 */	addis r4, r28, 1
/* 80BBCAFC  A8 04 AF 1E */	lha r0, -0x50e2(r4)
/* 80BBCB00  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBCB04  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBCB08  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBCB0C  7C 63 04 2E */	lfsx f3, r3, r0
/* 80BBCB10  C0 5E 00 E4 */	lfs f2, 0xe4(r30)
/* 80BBCB14  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80BBCB18  C0 04 AE F0 */	lfs f0, -0x5110(r4)
/* 80BBCB1C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80BBCB20  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBCB24  EC 04 00 32 */	fmuls f0, f4, f0
/* 80BBCB28  EC 02 00 2A */	fadds f0, f2, f0
/* 80BBCB2C  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 80BBCB30  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80BBCB34  FC 00 00 50 */	fneg f0, f0
/* 80BBCB38  EC 00 01 32 */	fmuls f0, f0, f4
/* 80BBCB3C  FC 00 00 1E */	fctiwz f0, f0
/* 80BBCB40  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80BBCB44  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BBCB48  B0 1E 00 F2 */	sth r0, 0xf2(r30)
/* 80BBCB4C  38 00 00 02 */	li r0, 2
/* 80BBCB50  98 1E 07 06 */	stb r0, 0x706(r30)
/* 80BBCB54  38 61 00 0C */	addi r3, r1, 0xc
/* 80BBCB58  38 81 00 48 */	addi r4, r1, 0x48
/* 80BBCB5C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80BBCB60  4B 6A 9F D5 */	bl __mi__4cXyzCFRC3Vec
/* 80BBCB64  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BBCB68  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BBCB6C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BBCB70  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BBCB74  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BBCB78  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BBCB7C  38 61 00 60 */	addi r3, r1, 0x60
/* 80BBCB80  4B 78 A5 B9 */	bl PSVECSquareMag
/* 80BBCB84  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BBCB88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBCB8C  40 81 00 58 */	ble lbl_80BBCBE4
/* 80BBCB90  FC 00 08 34 */	frsqrte f0, f1
/* 80BBCB94  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BBCB98  FC 44 00 32 */	fmul f2, f4, f0
/* 80BBCB9C  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BBCBA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BBCBA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BBCBA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BBCBAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BBCBB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BBCBB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BBCBB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BBCBBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BBCBC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BBCBC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BBCBC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BBCBCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BBCBD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BBCBD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BBCBD8  FC 21 00 32 */	fmul f1, f1, f0
/* 80BBCBDC  FC 20 08 18 */	frsp f1, f1
/* 80BBCBE0  48 00 00 88 */	b lbl_80BBCC68
lbl_80BBCBE4:
/* 80BBCBE4  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BBCBE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBCBEC  40 80 00 10 */	bge lbl_80BBCBFC
/* 80BBCBF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BBCBF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BBCBF8  48 00 00 70 */	b lbl_80BBCC68
lbl_80BBCBFC:
/* 80BBCBFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BBCC00  80 81 00 08 */	lwz r4, 8(r1)
/* 80BBCC04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BBCC08  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BBCC0C  7C 03 00 00 */	cmpw r3, r0
/* 80BBCC10  41 82 00 14 */	beq lbl_80BBCC24
/* 80BBCC14  40 80 00 40 */	bge lbl_80BBCC54
/* 80BBCC18  2C 03 00 00 */	cmpwi r3, 0
/* 80BBCC1C  41 82 00 20 */	beq lbl_80BBCC3C
/* 80BBCC20  48 00 00 34 */	b lbl_80BBCC54
lbl_80BBCC24:
/* 80BBCC24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BBCC28  41 82 00 0C */	beq lbl_80BBCC34
/* 80BBCC2C  38 00 00 01 */	li r0, 1
/* 80BBCC30  48 00 00 28 */	b lbl_80BBCC58
lbl_80BBCC34:
/* 80BBCC34  38 00 00 02 */	li r0, 2
/* 80BBCC38  48 00 00 20 */	b lbl_80BBCC58
lbl_80BBCC3C:
/* 80BBCC3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BBCC40  41 82 00 0C */	beq lbl_80BBCC4C
/* 80BBCC44  38 00 00 05 */	li r0, 5
/* 80BBCC48  48 00 00 10 */	b lbl_80BBCC58
lbl_80BBCC4C:
/* 80BBCC4C  38 00 00 03 */	li r0, 3
/* 80BBCC50  48 00 00 08 */	b lbl_80BBCC58
lbl_80BBCC54:
/* 80BBCC54  38 00 00 04 */	li r0, 4
lbl_80BBCC58:
/* 80BBCC58  2C 00 00 01 */	cmpwi r0, 1
/* 80BBCC5C  40 82 00 0C */	bne lbl_80BBCC68
/* 80BBCC60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BBCC64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BBCC68:
/* 80BBCC68  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BBCC6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BBCC70  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80BBCC74  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BBCC78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBCC7C  40 81 00 08 */	ble lbl_80BBCC84
/* 80BBCC80  FC 20 00 90 */	fmr f1, f0
lbl_80BBCC84:
/* 80BBCC84  3C 7C 00 01 */	addis r3, r28, 1
/* 80BBCC88  C0 03 AE E0 */	lfs f0, -0x5120(r3)
/* 80BBCC8C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BBCC90  4C 40 13 82 */	cror 2, 0, 2
/* 80BBCC94  40 82 00 08 */	bne lbl_80BBCC9C
/* 80BBCC98  D0 23 AE E0 */	stfs f1, -0x5120(r3)
lbl_80BBCC9C:
/* 80BBCC9C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80BBCCA0  FC 00 02 10 */	fabs f0, f0
/* 80BBCCA4  FC 00 00 18 */	frsp f0, f0
/* 80BBCCA8  EC 5F 00 32 */	fmuls f2, f31, f0
/* 80BBCCAC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BBCCB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BBCCB4  40 81 00 08 */	ble lbl_80BBCCBC
/* 80BBCCB8  FC 40 00 90 */	fmr f2, f0
lbl_80BBCCBC:
/* 80BBCCBC  3C 7C 00 01 */	addis r3, r28, 1
/* 80BBCCC0  C0 23 AE E4 */	lfs f1, -0x511c(r3)
/* 80BBCCC4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80BBCCC8  4C 40 13 82 */	cror 2, 0, 2
/* 80BBCCCC  40 82 00 10 */	bne lbl_80BBCCDC
/* 80BBCCD0  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BBCCD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBCCD8  D0 03 AE E4 */	stfs f0, -0x511c(r3)
lbl_80BBCCDC:
/* 80BBCCDC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80BBCCE0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80BBCCE4  39 61 00 90 */	addi r11, r1, 0x90
/* 80BBCCE8  4B 7A 55 3D */	bl _restgpr_28
/* 80BBCCEC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80BBCCF0  7C 08 03 A6 */	mtlr r0
/* 80BBCCF4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80BBCCF8  4E 80 00 20 */	blr 
