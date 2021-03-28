lbl_807CFDAC:
/* 807CFDAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807CFDB0  7C 08 02 A6 */	mflr r0
/* 807CFDB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807CFDB8  39 61 00 40 */	addi r11, r1, 0x40
/* 807CFDBC  4B B9 24 20 */	b _savegpr_29
/* 807CFDC0  7C 7E 1B 78 */	mr r30, r3
/* 807CFDC4  7C 9D 23 78 */	mr r29, r4
/* 807CFDC8  3C 80 80 7D */	lis r4, lit_3864@ha
/* 807CFDCC  3B E4 20 88 */	addi r31, r4, lit_3864@l
/* 807CFDD0  4B 84 8F 10 */	b fopAc_IsActor__FPv
/* 807CFDD4  2C 03 00 00 */	cmpwi r3, 0
/* 807CFDD8  41 82 01 E0 */	beq lbl_807CFFB8
/* 807CFDDC  A8 1E 00 08 */	lha r0, 8(r30)
/* 807CFDE0  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 807CFDE4  40 82 01 D4 */	bne lbl_807CFFB8
/* 807CFDE8  38 61 00 0C */	addi r3, r1, 0xc
/* 807CFDEC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807CFDF0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807CFDF4  4B A9 6D 40 */	b __mi__4cXyzCFRC3Vec
/* 807CFDF8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807CFDFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807CFE00  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807CFE04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807CFE08  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807CFE0C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807CFE10  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807CFE14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807CFE18  38 61 00 18 */	addi r3, r1, 0x18
/* 807CFE1C  4B B7 73 1C */	b PSVECSquareMag
/* 807CFE20  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 807CFE24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CFE28  40 81 00 58 */	ble lbl_807CFE80
/* 807CFE2C  FC 00 08 34 */	frsqrte f0, f1
/* 807CFE30  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 807CFE34  FC 44 00 32 */	fmul f2, f4, f0
/* 807CFE38  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 807CFE3C  FC 00 00 32 */	fmul f0, f0, f0
/* 807CFE40  FC 01 00 32 */	fmul f0, f1, f0
/* 807CFE44  FC 03 00 28 */	fsub f0, f3, f0
/* 807CFE48  FC 02 00 32 */	fmul f0, f2, f0
/* 807CFE4C  FC 44 00 32 */	fmul f2, f4, f0
/* 807CFE50  FC 00 00 32 */	fmul f0, f0, f0
/* 807CFE54  FC 01 00 32 */	fmul f0, f1, f0
/* 807CFE58  FC 03 00 28 */	fsub f0, f3, f0
/* 807CFE5C  FC 02 00 32 */	fmul f0, f2, f0
/* 807CFE60  FC 44 00 32 */	fmul f2, f4, f0
/* 807CFE64  FC 00 00 32 */	fmul f0, f0, f0
/* 807CFE68  FC 01 00 32 */	fmul f0, f1, f0
/* 807CFE6C  FC 03 00 28 */	fsub f0, f3, f0
/* 807CFE70  FC 02 00 32 */	fmul f0, f2, f0
/* 807CFE74  FC 21 00 32 */	fmul f1, f1, f0
/* 807CFE78  FC 20 08 18 */	frsp f1, f1
/* 807CFE7C  48 00 00 88 */	b lbl_807CFF04
lbl_807CFE80:
/* 807CFE80  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 807CFE84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CFE88  40 80 00 10 */	bge lbl_807CFE98
/* 807CFE8C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807CFE90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807CFE94  48 00 00 70 */	b lbl_807CFF04
lbl_807CFE98:
/* 807CFE98  D0 21 00 08 */	stfs f1, 8(r1)
/* 807CFE9C  80 81 00 08 */	lwz r4, 8(r1)
/* 807CFEA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807CFEA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807CFEA8  7C 03 00 00 */	cmpw r3, r0
/* 807CFEAC  41 82 00 14 */	beq lbl_807CFEC0
/* 807CFEB0  40 80 00 40 */	bge lbl_807CFEF0
/* 807CFEB4  2C 03 00 00 */	cmpwi r3, 0
/* 807CFEB8  41 82 00 20 */	beq lbl_807CFED8
/* 807CFEBC  48 00 00 34 */	b lbl_807CFEF0
lbl_807CFEC0:
/* 807CFEC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807CFEC4  41 82 00 0C */	beq lbl_807CFED0
/* 807CFEC8  38 00 00 01 */	li r0, 1
/* 807CFECC  48 00 00 28 */	b lbl_807CFEF4
lbl_807CFED0:
/* 807CFED0  38 00 00 02 */	li r0, 2
/* 807CFED4  48 00 00 20 */	b lbl_807CFEF4
lbl_807CFED8:
/* 807CFED8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807CFEDC  41 82 00 0C */	beq lbl_807CFEE8
/* 807CFEE0  38 00 00 05 */	li r0, 5
/* 807CFEE4  48 00 00 10 */	b lbl_807CFEF4
lbl_807CFEE8:
/* 807CFEE8  38 00 00 03 */	li r0, 3
/* 807CFEEC  48 00 00 08 */	b lbl_807CFEF4
lbl_807CFEF0:
/* 807CFEF0  38 00 00 04 */	li r0, 4
lbl_807CFEF4:
/* 807CFEF4  2C 00 00 01 */	cmpwi r0, 1
/* 807CFEF8  40 82 00 0C */	bne lbl_807CFF04
/* 807CFEFC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807CFF00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807CFF04:
/* 807CFF04  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 807CFF08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CFF0C  40 80 00 AC */	bge lbl_807CFFB8
/* 807CFF10  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807CFF14  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 807CFF18  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807CFF1C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 807CFF20  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807CFF24  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 807CFF28  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 807CFF2C  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 807CFF30  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 807CFF34  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807CFF38  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 807CFF3C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 807CFF40  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 807CFF44  98 1E 04 E2 */	stb r0, 0x4e2(r30)
/* 807CFF48  88 1E 04 BB */	lbz r0, 0x4bb(r30)
/* 807CFF4C  98 1E 04 E3 */	stb r0, 0x4e3(r30)
/* 807CFF50  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 807CFF54  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 807CFF58  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807CFF5C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 807CFF60  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 807CFF64  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 807CFF68  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 807CFF6C  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 807CFF70  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 807CFF74  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 807CFF78  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 807CFF7C  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 807CFF80  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 807CFF84  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 807CFF88  88 1E 04 BB */	lbz r0, 0x4bb(r30)
/* 807CFF8C  98 1E 04 CF */	stb r0, 0x4cf(r30)
/* 807CFF90  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 807CFF94  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807CFF98  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807CFF9C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807CFFA0  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 807CFFA4  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 807CFFA8  38 00 00 14 */	li r0, 0x14
/* 807CFFAC  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807CFFB0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 807CFFB4  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
lbl_807CFFB8:
/* 807CFFB8  38 60 00 00 */	li r3, 0
/* 807CFFBC  39 61 00 40 */	addi r11, r1, 0x40
/* 807CFFC0  4B B9 22 68 */	b _restgpr_29
/* 807CFFC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807CFFC8  7C 08 03 A6 */	mtlr r0
/* 807CFFCC  38 21 00 40 */	addi r1, r1, 0x40
/* 807CFFD0  4E 80 00 20 */	blr 
