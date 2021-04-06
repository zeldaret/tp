lbl_804CFCE8:
/* 804CFCE8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804CFCEC  7C 08 02 A6 */	mflr r0
/* 804CFCF0  90 01 00 74 */	stw r0, 0x74(r1)
/* 804CFCF4  39 61 00 70 */	addi r11, r1, 0x70
/* 804CFCF8  4B E9 24 E1 */	bl _savegpr_28
/* 804CFCFC  7C 7C 1B 78 */	mr r28, r3
/* 804CFD00  3C 60 80 4D */	lis r3, ccSphSrc@ha /* 0x804D15F0@ha */
/* 804CFD04  3B E3 15 F0 */	addi r31, r3, ccSphSrc@l /* 0x804D15F0@l */
/* 804CFD08  3B A0 00 00 */	li r29, 0
/* 804CFD0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CFD10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CFD14  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 804CFD18  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 804CFD1C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804CFD20  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 804CFD24  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804CFD28  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CFD2C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804CFD30  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804CFD34  38 80 00 09 */	li r4, 9
/* 804CFD38  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804CFD3C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 804CFD40  7D 89 03 A6 */	mtctr r12
/* 804CFD44  4E 80 04 21 */	bctrl 
/* 804CFD48  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804CFD4C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804CFD50  80 84 00 00 */	lwz r4, 0(r4)
/* 804CFD54  4B E7 67 5D */	bl PSMTXCopy
/* 804CFD58  38 61 00 50 */	addi r3, r1, 0x50
/* 804CFD5C  38 81 00 44 */	addi r4, r1, 0x44
/* 804CFD60  4B DA 11 8D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804CFD64  A8 1C 05 CC */	lha r0, 0x5cc(r28)
/* 804CFD68  2C 00 00 02 */	cmpwi r0, 2
/* 804CFD6C  41 82 03 C8 */	beq lbl_804D0134
/* 804CFD70  40 80 00 14 */	bge lbl_804CFD84
/* 804CFD74  2C 00 00 00 */	cmpwi r0, 0
/* 804CFD78  41 82 00 18 */	beq lbl_804CFD90
/* 804CFD7C  40 80 01 C8 */	bge lbl_804CFF44
/* 804CFD80  48 00 06 64 */	b lbl_804D03E4
lbl_804CFD84:
/* 804CFD84  2C 00 00 04 */	cmpwi r0, 4
/* 804CFD88  40 80 06 5C */	bge lbl_804D03E4
/* 804CFD8C  48 00 04 68 */	b lbl_804D01F4
lbl_804CFD90:
/* 804CFD90  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 804CFD94  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804CFD98  EC 01 00 2A */	fadds f0, f1, f0
/* 804CFD9C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804CFDA0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804CFDA4  38 81 00 44 */	addi r4, r1, 0x44
/* 804CFDA8  4B DA 0E 5D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 804CFDAC  B0 7C 05 DA */	sth r3, 0x5da(r28)
/* 804CFDB0  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 804CFDB4  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 804CFDB8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804CFDBC  38 81 00 44 */	addi r4, r1, 0x44
/* 804CFDC0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 804CFDC4  4B DA 09 E9 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 804CFDC8  2C 03 00 00 */	cmpwi r3, 0
/* 804CFDCC  41 82 00 24 */	beq lbl_804CFDF0
/* 804CFDD0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CFDD4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 804CFDD8  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 804CFDDC  38 00 00 C8 */	li r0, 0xc8
/* 804CFDE0  B0 1C 05 CE */	sth r0, 0x5ce(r28)
/* 804CFDE4  A8 7C 05 CC */	lha r3, 0x5cc(r28)
/* 804CFDE8  38 03 00 01 */	addi r0, r3, 1
/* 804CFDEC  B0 1C 05 CC */	sth r0, 0x5cc(r28)
lbl_804CFDF0:
/* 804CFDF0  7F C3 F3 78 */	mr r3, r30
/* 804CFDF4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 804CFDF8  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 804CFDFC  7D 89 03 A6 */	mtctr r12
/* 804CFE00  4E 80 04 21 */	bctrl 
/* 804CFE04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CFE08  41 82 01 00 */	beq lbl_804CFF08
/* 804CFE0C  38 61 00 44 */	addi r3, r1, 0x44
/* 804CFE10  38 9C 05 F8 */	addi r4, r28, 0x5f8
/* 804CFE14  4B E7 75 89 */	bl PSVECSquareDistance
/* 804CFE18  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CFE1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CFE20  40 81 00 58 */	ble lbl_804CFE78
/* 804CFE24  FC 00 08 34 */	frsqrte f0, f1
/* 804CFE28  C8 9F 00 B0 */	lfd f4, 0xb0(r31)
/* 804CFE2C  FC 44 00 32 */	fmul f2, f4, f0
/* 804CFE30  C8 7F 00 B8 */	lfd f3, 0xb8(r31)
/* 804CFE34  FC 00 00 32 */	fmul f0, f0, f0
/* 804CFE38  FC 01 00 32 */	fmul f0, f1, f0
/* 804CFE3C  FC 03 00 28 */	fsub f0, f3, f0
/* 804CFE40  FC 02 00 32 */	fmul f0, f2, f0
/* 804CFE44  FC 44 00 32 */	fmul f2, f4, f0
/* 804CFE48  FC 00 00 32 */	fmul f0, f0, f0
/* 804CFE4C  FC 01 00 32 */	fmul f0, f1, f0
/* 804CFE50  FC 03 00 28 */	fsub f0, f3, f0
/* 804CFE54  FC 02 00 32 */	fmul f0, f2, f0
/* 804CFE58  FC 44 00 32 */	fmul f2, f4, f0
/* 804CFE5C  FC 00 00 32 */	fmul f0, f0, f0
/* 804CFE60  FC 01 00 32 */	fmul f0, f1, f0
/* 804CFE64  FC 03 00 28 */	fsub f0, f3, f0
/* 804CFE68  FC 02 00 32 */	fmul f0, f2, f0
/* 804CFE6C  FC 21 00 32 */	fmul f1, f1, f0
/* 804CFE70  FC 20 08 18 */	frsp f1, f1
/* 804CFE74  48 00 00 88 */	b lbl_804CFEFC
lbl_804CFE78:
/* 804CFE78  C8 1F 00 C0 */	lfd f0, 0xc0(r31)
/* 804CFE7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CFE80  40 80 00 10 */	bge lbl_804CFE90
/* 804CFE84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804CFE88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804CFE8C  48 00 00 70 */	b lbl_804CFEFC
lbl_804CFE90:
/* 804CFE90  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804CFE94  80 81 00 28 */	lwz r4, 0x28(r1)
/* 804CFE98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CFE9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CFEA0  7C 03 00 00 */	cmpw r3, r0
/* 804CFEA4  41 82 00 14 */	beq lbl_804CFEB8
/* 804CFEA8  40 80 00 40 */	bge lbl_804CFEE8
/* 804CFEAC  2C 03 00 00 */	cmpwi r3, 0
/* 804CFEB0  41 82 00 20 */	beq lbl_804CFED0
/* 804CFEB4  48 00 00 34 */	b lbl_804CFEE8
lbl_804CFEB8:
/* 804CFEB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CFEBC  41 82 00 0C */	beq lbl_804CFEC8
/* 804CFEC0  38 00 00 01 */	li r0, 1
/* 804CFEC4  48 00 00 28 */	b lbl_804CFEEC
lbl_804CFEC8:
/* 804CFEC8  38 00 00 02 */	li r0, 2
/* 804CFECC  48 00 00 20 */	b lbl_804CFEEC
lbl_804CFED0:
/* 804CFED0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CFED4  41 82 00 0C */	beq lbl_804CFEE0
/* 804CFED8  38 00 00 05 */	li r0, 5
/* 804CFEDC  48 00 00 10 */	b lbl_804CFEEC
lbl_804CFEE0:
/* 804CFEE0  38 00 00 03 */	li r0, 3
/* 804CFEE4  48 00 00 08 */	b lbl_804CFEEC
lbl_804CFEE8:
/* 804CFEE8  38 00 00 04 */	li r0, 4
lbl_804CFEEC:
/* 804CFEEC  2C 00 00 01 */	cmpwi r0, 1
/* 804CFEF0  40 82 00 0C */	bne lbl_804CFEFC
/* 804CFEF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804CFEF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804CFEFC:
/* 804CFEFC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 804CFF00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CFF04  40 81 00 30 */	ble lbl_804CFF34
lbl_804CFF08:
/* 804CFF08  38 80 00 00 */	li r4, 0
/* 804CFF0C  B0 9C 05 CA */	sth r4, 0x5ca(r28)
/* 804CFF10  B0 9C 05 CC */	sth r4, 0x5cc(r28)
/* 804CFF14  38 00 00 50 */	li r0, 0x50
/* 804CFF18  B0 1C 05 D2 */	sth r0, 0x5d2(r28)
/* 804CFF1C  38 00 00 64 */	li r0, 0x64
/* 804CFF20  B0 1C 05 D4 */	sth r0, 0x5d4(r28)
/* 804CFF24  B0 9C 05 D0 */	sth r4, 0x5d0(r28)
/* 804CFF28  3C 60 80 4D */	lis r3, struct_804D1830+0x0@ha /* 0x804D1830@ha */
/* 804CFF2C  98 83 18 30 */	stb r4, struct_804D1830+0x0@l(r3)  /* 0x804D1830@l */
/* 804CFF30  98 9C 05 AC */	stb r4, 0x5ac(r28)
lbl_804CFF34:
/* 804CFF34  C0 1C 05 F0 */	lfs f0, 0x5f0(r28)
/* 804CFF38  80 7C 06 B0 */	lwz r3, 0x6b0(r28)
/* 804CFF3C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804CFF40  48 00 04 A4 */	b lbl_804D03E4
lbl_804CFF44:
/* 804CFF44  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 804CFF48  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804CFF4C  EC 01 00 2A */	fadds f0, f1, f0
/* 804CFF50  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804CFF54  A8 1C 05 CE */	lha r0, 0x5ce(r28)
/* 804CFF58  2C 00 00 64 */	cmpwi r0, 0x64
/* 804CFF5C  40 80 00 28 */	bge lbl_804CFF84
/* 804CFF60  80 7C 06 B0 */	lwz r3, 0x6b0(r28)
/* 804CFF64  38 63 00 0C */	addi r3, r3, 0xc
/* 804CFF68  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804CFF6C  4B E5 84 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 804CFF70  2C 03 00 00 */	cmpwi r3, 0
/* 804CFF74  41 82 00 24 */	beq lbl_804CFF98
/* 804CFF78  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CFF7C  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 804CFF80  48 00 00 18 */	b lbl_804CFF98
lbl_804CFF84:
/* 804CFF84  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 804CFF88  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 804CFF8C  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 804CFF90  C0 7F 01 18 */	lfs f3, 0x118(r31)
/* 804CFF94  4B D9 FA A9 */	bl cLib_addCalc2__FPffff
lbl_804CFF98:
/* 804CFF98  C0 1C 05 F0 */	lfs f0, 0x5f0(r28)
/* 804CFF9C  80 7C 06 B0 */	lwz r3, 0x6b0(r28)
/* 804CFFA0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804CFFA4  A8 1C 05 CE */	lha r0, 0x5ce(r28)
/* 804CFFA8  2C 00 00 00 */	cmpwi r0, 0
/* 804CFFAC  40 82 00 30 */	bne lbl_804CFFDC
/* 804CFFB0  38 80 00 00 */	li r4, 0
/* 804CFFB4  B0 9C 05 CA */	sth r4, 0x5ca(r28)
/* 804CFFB8  B0 9C 05 CC */	sth r4, 0x5cc(r28)
/* 804CFFBC  38 00 00 50 */	li r0, 0x50
/* 804CFFC0  B0 1C 05 D2 */	sth r0, 0x5d2(r28)
/* 804CFFC4  38 00 00 64 */	li r0, 0x64
/* 804CFFC8  B0 1C 05 D4 */	sth r0, 0x5d4(r28)
/* 804CFFCC  B0 9C 05 D0 */	sth r4, 0x5d0(r28)
/* 804CFFD0  3C 60 80 4D */	lis r3, struct_804D1830+0x0@ha /* 0x804D1830@ha */
/* 804CFFD4  98 83 18 30 */	stb r4, struct_804D1830+0x0@l(r3)  /* 0x804D1830@l */
/* 804CFFD8  98 9C 05 AC */	stb r4, 0x5ac(r28)
lbl_804CFFDC:
/* 804CFFDC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804CFFE0  38 81 00 44 */	addi r4, r1, 0x44
/* 804CFFE4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804CFFE8  4B DA 07 C5 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 804CFFEC  7F C3 F3 78 */	mr r3, r30
/* 804CFFF0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 804CFFF4  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 804CFFF8  7D 89 03 A6 */	mtctr r12
/* 804CFFFC  4E 80 04 21 */	bctrl 
/* 804D0000  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D0004  41 82 01 00 */	beq lbl_804D0104
/* 804D0008  38 61 00 44 */	addi r3, r1, 0x44
/* 804D000C  38 9C 05 F8 */	addi r4, r28, 0x5f8
/* 804D0010  4B E7 73 8D */	bl PSVECSquareDistance
/* 804D0014  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804D0018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D001C  40 81 00 58 */	ble lbl_804D0074
/* 804D0020  FC 00 08 34 */	frsqrte f0, f1
/* 804D0024  C8 9F 00 B0 */	lfd f4, 0xb0(r31)
/* 804D0028  FC 44 00 32 */	fmul f2, f4, f0
/* 804D002C  C8 7F 00 B8 */	lfd f3, 0xb8(r31)
/* 804D0030  FC 00 00 32 */	fmul f0, f0, f0
/* 804D0034  FC 01 00 32 */	fmul f0, f1, f0
/* 804D0038  FC 03 00 28 */	fsub f0, f3, f0
/* 804D003C  FC 02 00 32 */	fmul f0, f2, f0
/* 804D0040  FC 44 00 32 */	fmul f2, f4, f0
/* 804D0044  FC 00 00 32 */	fmul f0, f0, f0
/* 804D0048  FC 01 00 32 */	fmul f0, f1, f0
/* 804D004C  FC 03 00 28 */	fsub f0, f3, f0
/* 804D0050  FC 02 00 32 */	fmul f0, f2, f0
/* 804D0054  FC 44 00 32 */	fmul f2, f4, f0
/* 804D0058  FC 00 00 32 */	fmul f0, f0, f0
/* 804D005C  FC 01 00 32 */	fmul f0, f1, f0
/* 804D0060  FC 03 00 28 */	fsub f0, f3, f0
/* 804D0064  FC 02 00 32 */	fmul f0, f2, f0
/* 804D0068  FC 21 00 32 */	fmul f1, f1, f0
/* 804D006C  FC 20 08 18 */	frsp f1, f1
/* 804D0070  48 00 00 88 */	b lbl_804D00F8
lbl_804D0074:
/* 804D0074  C8 1F 00 C0 */	lfd f0, 0xc0(r31)
/* 804D0078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D007C  40 80 00 10 */	bge lbl_804D008C
/* 804D0080  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D0084  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804D0088  48 00 00 70 */	b lbl_804D00F8
lbl_804D008C:
/* 804D008C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804D0090  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804D0094  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D0098  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D009C  7C 03 00 00 */	cmpw r3, r0
/* 804D00A0  41 82 00 14 */	beq lbl_804D00B4
/* 804D00A4  40 80 00 40 */	bge lbl_804D00E4
/* 804D00A8  2C 03 00 00 */	cmpwi r3, 0
/* 804D00AC  41 82 00 20 */	beq lbl_804D00CC
/* 804D00B0  48 00 00 34 */	b lbl_804D00E4
lbl_804D00B4:
/* 804D00B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D00B8  41 82 00 0C */	beq lbl_804D00C4
/* 804D00BC  38 00 00 01 */	li r0, 1
/* 804D00C0  48 00 00 28 */	b lbl_804D00E8
lbl_804D00C4:
/* 804D00C4  38 00 00 02 */	li r0, 2
/* 804D00C8  48 00 00 20 */	b lbl_804D00E8
lbl_804D00CC:
/* 804D00CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D00D0  41 82 00 0C */	beq lbl_804D00DC
/* 804D00D4  38 00 00 05 */	li r0, 5
/* 804D00D8  48 00 00 10 */	b lbl_804D00E8
lbl_804D00DC:
/* 804D00DC  38 00 00 03 */	li r0, 3
/* 804D00E0  48 00 00 08 */	b lbl_804D00E8
lbl_804D00E4:
/* 804D00E4  38 00 00 04 */	li r0, 4
lbl_804D00E8:
/* 804D00E8  2C 00 00 01 */	cmpwi r0, 1
/* 804D00EC  40 82 00 0C */	bne lbl_804D00F8
/* 804D00F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D00F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804D00F8:
/* 804D00F8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804D00FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D0100  40 81 02 E4 */	ble lbl_804D03E4
lbl_804D0104:
/* 804D0104  38 80 00 00 */	li r4, 0
/* 804D0108  B0 9C 05 CA */	sth r4, 0x5ca(r28)
/* 804D010C  B0 9C 05 CC */	sth r4, 0x5cc(r28)
/* 804D0110  38 00 00 50 */	li r0, 0x50
/* 804D0114  B0 1C 05 D2 */	sth r0, 0x5d2(r28)
/* 804D0118  38 00 00 64 */	li r0, 0x64
/* 804D011C  B0 1C 05 D4 */	sth r0, 0x5d4(r28)
/* 804D0120  B0 9C 05 D0 */	sth r4, 0x5d0(r28)
/* 804D0124  3C 60 80 4D */	lis r3, struct_804D1830+0x0@ha /* 0x804D1830@ha */
/* 804D0128  98 83 18 30 */	stb r4, struct_804D1830+0x0@l(r3)  /* 0x804D1830@l */
/* 804D012C  98 9C 05 AC */	stb r4, 0x5ac(r28)
/* 804D0130  48 00 02 B4 */	b lbl_804D03E4
lbl_804D0134:
/* 804D0134  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 804D0138  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 804D013C  38 61 00 38 */	addi r3, r1, 0x38
/* 804D0140  7F C4 F3 78 */	mr r4, r30
/* 804D0144  48 00 14 89 */	bl getHeadTopPos__9daPy_py_cCFv
/* 804D0148  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804D014C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804D0150  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 804D0154  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804D0158  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804D015C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804D0160  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804D0164  EC 01 00 2A */	fadds f0, f1, f0
/* 804D0168  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804D016C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804D0170  38 81 00 44 */	addi r4, r1, 0x44
/* 804D0174  4B DA 0A 91 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 804D0178  B0 7C 05 DA */	sth r3, 0x5da(r28)
/* 804D017C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804D0180  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 804D0184  38 7C 05 2C */	addi r3, r28, 0x52c
/* 804D0188  C0 3C 05 E4 */	lfs f1, 0x5e4(r28)
/* 804D018C  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 804D0190  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 804D0194  4B D9 F8 A9 */	bl cLib_addCalc2__FPffff
/* 804D0198  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804D019C  38 81 00 44 */	addi r4, r1, 0x44
/* 804D01A0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 804D01A4  4B DA 06 09 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 804D01A8  2C 03 00 00 */	cmpwi r3, 0
/* 804D01AC  41 82 00 24 */	beq lbl_804D01D0
/* 804D01B0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804D01B4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 804D01B8  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 804D01BC  38 00 00 C8 */	li r0, 0xc8
/* 804D01C0  B0 1C 05 CE */	sth r0, 0x5ce(r28)
/* 804D01C4  A8 7C 05 CC */	lha r3, 0x5cc(r28)
/* 804D01C8  38 03 00 01 */	addi r0, r3, 1
/* 804D01CC  B0 1C 05 CC */	sth r0, 0x5cc(r28)
lbl_804D01D0:
/* 804D01D0  38 7C 04 DE */	addi r3, r28, 0x4de
/* 804D01D4  A8 9C 05 DA */	lha r4, 0x5da(r28)
/* 804D01D8  38 A0 00 02 */	li r5, 2
/* 804D01DC  38 C0 04 00 */	li r6, 0x400
/* 804D01E0  4B DA 04 29 */	bl cLib_addCalcAngleS2__FPssss
/* 804D01E4  C0 1C 05 F0 */	lfs f0, 0x5f0(r28)
/* 804D01E8  80 7C 06 B0 */	lwz r3, 0x6b0(r28)
/* 804D01EC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804D01F0  48 00 01 F4 */	b lbl_804D03E4
lbl_804D01F4:
/* 804D01F4  A8 1C 05 CE */	lha r0, 0x5ce(r28)
/* 804D01F8  2C 00 00 64 */	cmpwi r0, 0x64
/* 804D01FC  40 80 00 28 */	bge lbl_804D0224
/* 804D0200  80 7C 06 B0 */	lwz r3, 0x6b0(r28)
/* 804D0204  38 63 00 0C */	addi r3, r3, 0xc
/* 804D0208  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804D020C  4B E5 82 21 */	bl checkPass__12J3DFrameCtrlFf
/* 804D0210  2C 03 00 00 */	cmpwi r3, 0
/* 804D0214  41 82 00 24 */	beq lbl_804D0238
/* 804D0218  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804D021C  D0 1C 05 F0 */	stfs f0, 0x5f0(r28)
/* 804D0220  48 00 00 18 */	b lbl_804D0238
lbl_804D0224:
/* 804D0224  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 804D0228  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 804D022C  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 804D0230  C0 7F 01 18 */	lfs f3, 0x118(r31)
/* 804D0234  4B D9 F8 09 */	bl cLib_addCalc2__FPffff
lbl_804D0238:
/* 804D0238  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D023C  7F C4 F3 78 */	mr r4, r30
/* 804D0240  48 00 13 8D */	bl getHeadTopPos__9daPy_py_cCFv
/* 804D0244  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804D0248  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804D024C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 804D0250  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804D0254  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804D0258  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804D025C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 804D0260  EC 01 00 2A */	fadds f0, f1, f0
/* 804D0264  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804D0268  C0 1C 05 F0 */	lfs f0, 0x5f0(r28)
/* 804D026C  80 7C 06 B0 */	lwz r3, 0x6b0(r28)
/* 804D0270  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804D0274  A8 1C 05 CE */	lha r0, 0x5ce(r28)
/* 804D0278  2C 00 00 00 */	cmpwi r0, 0
/* 804D027C  40 82 00 30 */	bne lbl_804D02AC
/* 804D0280  38 80 00 00 */	li r4, 0
/* 804D0284  B0 9C 05 CA */	sth r4, 0x5ca(r28)
/* 804D0288  B0 9C 05 CC */	sth r4, 0x5cc(r28)
/* 804D028C  38 00 00 50 */	li r0, 0x50
/* 804D0290  B0 1C 05 D2 */	sth r0, 0x5d2(r28)
/* 804D0294  38 00 00 64 */	li r0, 0x64
/* 804D0298  B0 1C 05 D4 */	sth r0, 0x5d4(r28)
/* 804D029C  B0 9C 05 D0 */	sth r4, 0x5d0(r28)
/* 804D02A0  3C 60 80 4D */	lis r3, struct_804D1830+0x1@ha /* 0x804D1831@ha */
/* 804D02A4  98 83 18 31 */	stb r4, struct_804D1830+0x1@l(r3)  /* 0x804D1831@l */
/* 804D02A8  98 9C 05 AD */	stb r4, 0x5ad(r28)
lbl_804D02AC:
/* 804D02AC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804D02B0  38 81 00 44 */	addi r4, r1, 0x44
/* 804D02B4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804D02B8  4B DA 04 F5 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 804D02BC  38 61 00 44 */	addi r3, r1, 0x44
/* 804D02C0  38 9C 05 F8 */	addi r4, r28, 0x5f8
/* 804D02C4  4B E7 70 D9 */	bl PSVECSquareDistance
/* 804D02C8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804D02CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D02D0  40 81 00 58 */	ble lbl_804D0328
/* 804D02D4  FC 00 08 34 */	frsqrte f0, f1
/* 804D02D8  C8 9F 00 B0 */	lfd f4, 0xb0(r31)
/* 804D02DC  FC 44 00 32 */	fmul f2, f4, f0
/* 804D02E0  C8 7F 00 B8 */	lfd f3, 0xb8(r31)
/* 804D02E4  FC 00 00 32 */	fmul f0, f0, f0
/* 804D02E8  FC 01 00 32 */	fmul f0, f1, f0
/* 804D02EC  FC 03 00 28 */	fsub f0, f3, f0
/* 804D02F0  FC 02 00 32 */	fmul f0, f2, f0
/* 804D02F4  FC 44 00 32 */	fmul f2, f4, f0
/* 804D02F8  FC 00 00 32 */	fmul f0, f0, f0
/* 804D02FC  FC 01 00 32 */	fmul f0, f1, f0
/* 804D0300  FC 03 00 28 */	fsub f0, f3, f0
/* 804D0304  FC 02 00 32 */	fmul f0, f2, f0
/* 804D0308  FC 44 00 32 */	fmul f2, f4, f0
/* 804D030C  FC 00 00 32 */	fmul f0, f0, f0
/* 804D0310  FC 01 00 32 */	fmul f0, f1, f0
/* 804D0314  FC 03 00 28 */	fsub f0, f3, f0
/* 804D0318  FC 02 00 32 */	fmul f0, f2, f0
/* 804D031C  FC 21 00 32 */	fmul f1, f1, f0
/* 804D0320  FC 20 08 18 */	frsp f1, f1
/* 804D0324  48 00 00 88 */	b lbl_804D03AC
lbl_804D0328:
/* 804D0328  C8 1F 00 C0 */	lfd f0, 0xc0(r31)
/* 804D032C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D0330  40 80 00 10 */	bge lbl_804D0340
/* 804D0334  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D0338  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804D033C  48 00 00 70 */	b lbl_804D03AC
lbl_804D0340:
/* 804D0340  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804D0344  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804D0348  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804D034C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804D0350  7C 03 00 00 */	cmpw r3, r0
/* 804D0354  41 82 00 14 */	beq lbl_804D0368
/* 804D0358  40 80 00 40 */	bge lbl_804D0398
/* 804D035C  2C 03 00 00 */	cmpwi r3, 0
/* 804D0360  41 82 00 20 */	beq lbl_804D0380
/* 804D0364  48 00 00 34 */	b lbl_804D0398
lbl_804D0368:
/* 804D0368  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D036C  41 82 00 0C */	beq lbl_804D0378
/* 804D0370  38 00 00 01 */	li r0, 1
/* 804D0374  48 00 00 28 */	b lbl_804D039C
lbl_804D0378:
/* 804D0378  38 00 00 02 */	li r0, 2
/* 804D037C  48 00 00 20 */	b lbl_804D039C
lbl_804D0380:
/* 804D0380  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804D0384  41 82 00 0C */	beq lbl_804D0390
/* 804D0388  38 00 00 05 */	li r0, 5
/* 804D038C  48 00 00 10 */	b lbl_804D039C
lbl_804D0390:
/* 804D0390  38 00 00 03 */	li r0, 3
/* 804D0394  48 00 00 08 */	b lbl_804D039C
lbl_804D0398:
/* 804D0398  38 00 00 04 */	li r0, 4
lbl_804D039C:
/* 804D039C  2C 00 00 01 */	cmpwi r0, 1
/* 804D03A0  40 82 00 0C */	bne lbl_804D03AC
/* 804D03A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804D03A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804D03AC:
/* 804D03AC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804D03B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D03B4  40 81 00 30 */	ble lbl_804D03E4
/* 804D03B8  38 80 00 00 */	li r4, 0
/* 804D03BC  B0 9C 05 CA */	sth r4, 0x5ca(r28)
/* 804D03C0  B0 9C 05 CC */	sth r4, 0x5cc(r28)
/* 804D03C4  38 00 00 50 */	li r0, 0x50
/* 804D03C8  B0 1C 05 D2 */	sth r0, 0x5d2(r28)
/* 804D03CC  38 00 00 64 */	li r0, 0x64
/* 804D03D0  B0 1C 05 D4 */	sth r0, 0x5d4(r28)
/* 804D03D4  B0 9C 05 D0 */	sth r4, 0x5d0(r28)
/* 804D03D8  3C 60 80 4D */	lis r3, struct_804D1830+0x1@ha /* 0x804D1831@ha */
/* 804D03DC  98 83 18 31 */	stb r4, struct_804D1830+0x1@l(r3)  /* 0x804D1831@l */
/* 804D03E0  98 9C 05 AD */	stb r4, 0x5ad(r28)
lbl_804D03E4:
/* 804D03E4  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 804D03E8  28 00 00 06 */	cmplwi r0, 6
/* 804D03EC  40 82 00 78 */	bne lbl_804D0464
/* 804D03F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D03F4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D03F8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804D03FC  38 63 02 10 */	addi r3, r3, 0x210
/* 804D0400  80 9C 06 04 */	lwz r4, 0x604(r28)
/* 804D0404  4B B7 B5 15 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804D0408  4B DA E8 59 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 804D040C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804D0410  38 63 02 10 */	addi r3, r3, 0x210
/* 804D0414  80 9C 06 04 */	lwz r4, 0x604(r28)
/* 804D0418  4B B7 B4 9D */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 804D041C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804D0420  38 63 02 10 */	addi r3, r3, 0x210
/* 804D0424  80 9C 06 08 */	lwz r4, 0x608(r28)
/* 804D0428  4B B7 B4 F1 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804D042C  4B DA E8 35 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 804D0430  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804D0434  38 63 02 10 */	addi r3, r3, 0x210
/* 804D0438  80 9C 06 08 */	lwz r4, 0x608(r28)
/* 804D043C  4B B7 B4 79 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 804D0440  3B A0 00 01 */	li r29, 1
/* 804D0444  38 00 00 00 */	li r0, 0
/* 804D0448  3C 60 80 4D */	lis r3, struct_804D1830+0x1@ha /* 0x804D1831@ha */
/* 804D044C  98 03 18 31 */	stb r0, struct_804D1830+0x1@l(r3)  /* 0x804D1831@l */
/* 804D0450  3C 60 80 4D */	lis r3, struct_804D1830+0x0@ha /* 0x804D1830@ha */
/* 804D0454  98 03 18 30 */	stb r0, struct_804D1830+0x0@l(r3)  /* 0x804D1830@l */
/* 804D0458  7F 83 E3 78 */	mr r3, r28
/* 804D045C  4B B4 98 21 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 804D0460  48 00 00 3C */	b lbl_804D049C
lbl_804D0464:
/* 804D0464  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D0468  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D046C  38 63 5B 54 */	addi r3, r3, 0x5b54
/* 804D0470  7F 84 E3 78 */	mr r4, r28
/* 804D0474  38 A0 00 6C */	li r5, 0x6c
/* 804D0478  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 804D047C  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 804D0480  C0 7F 01 0C */	lfs f3, 0x10c(r31)
/* 804D0484  38 C0 50 00 */	li r6, 0x5000
/* 804D0488  38 E0 00 01 */	li r7, 1
/* 804D048C  4B BA 35 7D */	bl request__11dAttCatch_cFP10fopAc_ac_cUcfffsi
/* 804D0490  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 804D0494  60 00 00 40 */	ori r0, r0, 0x40
/* 804D0498  B0 1C 00 FA */	sth r0, 0xfa(r28)
lbl_804D049C:
/* 804D049C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 804D04A0  40 82 00 AC */	bne lbl_804D054C
/* 804D04A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D04A8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D04AC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804D04B0  38 00 00 FF */	li r0, 0xff
/* 804D04B4  90 01 00 08 */	stw r0, 8(r1)
/* 804D04B8  38 80 00 00 */	li r4, 0
/* 804D04BC  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D04C0  38 00 FF FF */	li r0, -1
/* 804D04C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D04C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804D04CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804D04D0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804D04D4  80 9C 06 04 */	lwz r4, 0x604(r28)
/* 804D04D8  38 A0 00 00 */	li r5, 0
/* 804D04DC  38 C0 07 2F */	li r6, 0x72f
/* 804D04E0  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 804D04E4  39 1C 01 0C */	addi r8, r28, 0x10c
/* 804D04E8  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 804D04EC  39 40 00 00 */	li r10, 0
/* 804D04F0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804D04F4  4B B7 CF D9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804D04F8  90 7C 06 04 */	stw r3, 0x604(r28)
/* 804D04FC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804D0500  38 00 00 FF */	li r0, 0xff
/* 804D0504  90 01 00 08 */	stw r0, 8(r1)
/* 804D0508  38 80 00 00 */	li r4, 0
/* 804D050C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804D0510  38 00 FF FF */	li r0, -1
/* 804D0514  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D0518  90 81 00 14 */	stw r4, 0x14(r1)
/* 804D051C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804D0520  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804D0524  80 9C 06 08 */	lwz r4, 0x608(r28)
/* 804D0528  38 A0 00 00 */	li r5, 0
/* 804D052C  38 C0 07 31 */	li r6, 0x731
/* 804D0530  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 804D0534  39 1C 01 0C */	addi r8, r28, 0x10c
/* 804D0538  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 804D053C  39 40 00 00 */	li r10, 0
/* 804D0540  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804D0544  4B B7 CF 89 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804D0548  90 7C 06 08 */	stw r3, 0x608(r28)
lbl_804D054C:
/* 804D054C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804D0550  D0 1C 05 F8 */	stfs f0, 0x5f8(r28)
/* 804D0554  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804D0558  D0 1C 05 FC */	stfs f0, 0x5fc(r28)
/* 804D055C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804D0560  D0 1C 06 00 */	stfs f0, 0x600(r28)
/* 804D0564  39 61 00 70 */	addi r11, r1, 0x70
/* 804D0568  4B E9 1C BD */	bl _restgpr_28
/* 804D056C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804D0570  7C 08 03 A6 */	mtlr r0
/* 804D0574  38 21 00 70 */	addi r1, r1, 0x70
/* 804D0578  4E 80 00 20 */	blr 
