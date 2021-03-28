lbl_805CFC8C:
/* 805CFC8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805CFC90  7C 08 02 A6 */	mflr r0
/* 805CFC94  90 01 00 54 */	stw r0, 0x54(r1)
/* 805CFC98  39 61 00 50 */	addi r11, r1, 0x50
/* 805CFC9C  4B D9 25 3C */	b _savegpr_28
/* 805CFCA0  7C 7D 1B 78 */	mr r29, r3
/* 805CFCA4  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805CFCA8  3B C3 CA 54 */	addi r30, r3, lit_3932@l
/* 805CFCAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CFCB0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 805CFCB4  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 805CFCB8  A8 1C 05 6C */	lha r0, 0x56c(r28)
/* 805CFCBC  2C 00 00 0A */	cmpwi r0, 0xa
/* 805CFCC0  40 81 00 0C */	ble lbl_805CFCCC
/* 805CFCC4  38 60 00 00 */	li r3, 0
/* 805CFCC8  48 00 03 4C */	b lbl_805D0014
lbl_805CFCCC:
/* 805CFCCC  7F 83 E3 78 */	mr r3, r28
/* 805CFCD0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805CFCD4  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805CFCD8  7D 89 03 A6 */	mtctr r12
/* 805CFCDC  4E 80 04 21 */	bctrl 
/* 805CFCE0  28 03 00 00 */	cmplwi r3, 0
/* 805CFCE4  41 82 02 B0 */	beq lbl_805CFF94
/* 805CFCE8  7F A3 EB 78 */	mr r3, r29
/* 805CFCEC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805CFCF0  4B A4 AA 20 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CFCF4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805CFCF8  7C 00 18 50 */	subf r0, r0, r3
/* 805CFCFC  7C 03 07 34 */	extsh r3, r0
/* 805CFD00  4B D9 53 D0 */	b abs
/* 805CFD04  2C 03 40 00 */	cmpwi r3, 0x4000
/* 805CFD08  40 80 02 8C */	bge lbl_805CFF94
/* 805CFD0C  38 61 00 1C */	addi r3, r1, 0x1c
/* 805CFD10  38 9D 07 60 */	addi r4, r29, 0x760
/* 805CFD14  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805CFD18  4B C9 6E 1C */	b __mi__4cXyzCFRC3Vec
/* 805CFD1C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805CFD20  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805CFD24  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805CFD28  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805CFD2C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805CFD30  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805CFD34  38 61 00 10 */	addi r3, r1, 0x10
/* 805CFD38  38 9D 07 6C */	addi r4, r29, 0x76c
/* 805CFD3C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805CFD40  4B C9 6D F4 */	b __mi__4cXyzCFRC3Vec
/* 805CFD44  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805CFD48  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805CFD4C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805CFD50  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805CFD54  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805CFD58  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805CFD5C  38 61 00 34 */	addi r3, r1, 0x34
/* 805CFD60  4B D7 73 D8 */	b PSVECSquareMag
/* 805CFD64  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805CFD68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFD6C  40 81 00 58 */	ble lbl_805CFDC4
/* 805CFD70  FC 00 08 34 */	frsqrte f0, f1
/* 805CFD74  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 805CFD78  FC 44 00 32 */	fmul f2, f4, f0
/* 805CFD7C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 805CFD80  FC 00 00 32 */	fmul f0, f0, f0
/* 805CFD84  FC 01 00 32 */	fmul f0, f1, f0
/* 805CFD88  FC 03 00 28 */	fsub f0, f3, f0
/* 805CFD8C  FC 02 00 32 */	fmul f0, f2, f0
/* 805CFD90  FC 44 00 32 */	fmul f2, f4, f0
/* 805CFD94  FC 00 00 32 */	fmul f0, f0, f0
/* 805CFD98  FC 01 00 32 */	fmul f0, f1, f0
/* 805CFD9C  FC 03 00 28 */	fsub f0, f3, f0
/* 805CFDA0  FC 02 00 32 */	fmul f0, f2, f0
/* 805CFDA4  FC 44 00 32 */	fmul f2, f4, f0
/* 805CFDA8  FC 00 00 32 */	fmul f0, f0, f0
/* 805CFDAC  FC 01 00 32 */	fmul f0, f1, f0
/* 805CFDB0  FC 03 00 28 */	fsub f0, f3, f0
/* 805CFDB4  FC 02 00 32 */	fmul f0, f2, f0
/* 805CFDB8  FC 21 00 32 */	fmul f1, f1, f0
/* 805CFDBC  FC 20 08 18 */	frsp f1, f1
/* 805CFDC0  48 00 00 88 */	b lbl_805CFE48
lbl_805CFDC4:
/* 805CFDC4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 805CFDC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFDCC  40 80 00 10 */	bge lbl_805CFDDC
/* 805CFDD0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805CFDD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805CFDD8  48 00 00 70 */	b lbl_805CFE48
lbl_805CFDDC:
/* 805CFDDC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805CFDE0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805CFDE4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805CFDE8  3C 00 7F 80 */	lis r0, 0x7f80
/* 805CFDEC  7C 03 00 00 */	cmpw r3, r0
/* 805CFDF0  41 82 00 14 */	beq lbl_805CFE04
/* 805CFDF4  40 80 00 40 */	bge lbl_805CFE34
/* 805CFDF8  2C 03 00 00 */	cmpwi r3, 0
/* 805CFDFC  41 82 00 20 */	beq lbl_805CFE1C
/* 805CFE00  48 00 00 34 */	b lbl_805CFE34
lbl_805CFE04:
/* 805CFE04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CFE08  41 82 00 0C */	beq lbl_805CFE14
/* 805CFE0C  38 00 00 01 */	li r0, 1
/* 805CFE10  48 00 00 28 */	b lbl_805CFE38
lbl_805CFE14:
/* 805CFE14  38 00 00 02 */	li r0, 2
/* 805CFE18  48 00 00 20 */	b lbl_805CFE38
lbl_805CFE1C:
/* 805CFE1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CFE20  41 82 00 0C */	beq lbl_805CFE2C
/* 805CFE24  38 00 00 05 */	li r0, 5
/* 805CFE28  48 00 00 10 */	b lbl_805CFE38
lbl_805CFE2C:
/* 805CFE2C  38 00 00 03 */	li r0, 3
/* 805CFE30  48 00 00 08 */	b lbl_805CFE38
lbl_805CFE34:
/* 805CFE34  38 00 00 04 */	li r0, 4
lbl_805CFE38:
/* 805CFE38  2C 00 00 01 */	cmpwi r0, 1
/* 805CFE3C  40 82 00 0C */	bne lbl_805CFE48
/* 805CFE40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805CFE44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805CFE48:
/* 805CFE48  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805CFE4C  3B 83 DA BC */	addi r28, r3, l_HIO@l
/* 805CFE50  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 805CFE54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFE58  40 80 00 24 */	bge lbl_805CFE7C
/* 805CFE5C  38 00 00 01 */	li r0, 1
/* 805CFE60  98 1D 08 4C */	stb r0, 0x84c(r29)
/* 805CFE64  7F A3 EB 78 */	mr r3, r29
/* 805CFE68  38 80 00 05 */	li r4, 5
/* 805CFE6C  38 A0 00 00 */	li r5, 0
/* 805CFE70  4B FF BD 05 */	bl setActionMode__8daB_DS_cFii
/* 805CFE74  38 60 00 01 */	li r3, 1
/* 805CFE78  48 00 01 9C */	b lbl_805D0014
lbl_805CFE7C:
/* 805CFE7C  38 61 00 28 */	addi r3, r1, 0x28
/* 805CFE80  4B D7 72 B8 */	b PSVECSquareMag
/* 805CFE84  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805CFE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFE8C  40 81 00 58 */	ble lbl_805CFEE4
/* 805CFE90  FC 00 08 34 */	frsqrte f0, f1
/* 805CFE94  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 805CFE98  FC 44 00 32 */	fmul f2, f4, f0
/* 805CFE9C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 805CFEA0  FC 00 00 32 */	fmul f0, f0, f0
/* 805CFEA4  FC 01 00 32 */	fmul f0, f1, f0
/* 805CFEA8  FC 03 00 28 */	fsub f0, f3, f0
/* 805CFEAC  FC 02 00 32 */	fmul f0, f2, f0
/* 805CFEB0  FC 44 00 32 */	fmul f2, f4, f0
/* 805CFEB4  FC 00 00 32 */	fmul f0, f0, f0
/* 805CFEB8  FC 01 00 32 */	fmul f0, f1, f0
/* 805CFEBC  FC 03 00 28 */	fsub f0, f3, f0
/* 805CFEC0  FC 02 00 32 */	fmul f0, f2, f0
/* 805CFEC4  FC 44 00 32 */	fmul f2, f4, f0
/* 805CFEC8  FC 00 00 32 */	fmul f0, f0, f0
/* 805CFECC  FC 01 00 32 */	fmul f0, f1, f0
/* 805CFED0  FC 03 00 28 */	fsub f0, f3, f0
/* 805CFED4  FC 02 00 32 */	fmul f0, f2, f0
/* 805CFED8  FC 21 00 32 */	fmul f1, f1, f0
/* 805CFEDC  FC 20 08 18 */	frsp f1, f1
/* 805CFEE0  48 00 00 88 */	b lbl_805CFF68
lbl_805CFEE4:
/* 805CFEE4  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 805CFEE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFEEC  40 80 00 10 */	bge lbl_805CFEFC
/* 805CFEF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805CFEF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805CFEF8  48 00 00 70 */	b lbl_805CFF68
lbl_805CFEFC:
/* 805CFEFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 805CFF00  80 81 00 08 */	lwz r4, 8(r1)
/* 805CFF04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805CFF08  3C 00 7F 80 */	lis r0, 0x7f80
/* 805CFF0C  7C 03 00 00 */	cmpw r3, r0
/* 805CFF10  41 82 00 14 */	beq lbl_805CFF24
/* 805CFF14  40 80 00 40 */	bge lbl_805CFF54
/* 805CFF18  2C 03 00 00 */	cmpwi r3, 0
/* 805CFF1C  41 82 00 20 */	beq lbl_805CFF3C
/* 805CFF20  48 00 00 34 */	b lbl_805CFF54
lbl_805CFF24:
/* 805CFF24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CFF28  41 82 00 0C */	beq lbl_805CFF34
/* 805CFF2C  38 00 00 01 */	li r0, 1
/* 805CFF30  48 00 00 28 */	b lbl_805CFF58
lbl_805CFF34:
/* 805CFF34  38 00 00 02 */	li r0, 2
/* 805CFF38  48 00 00 20 */	b lbl_805CFF58
lbl_805CFF3C:
/* 805CFF3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805CFF40  41 82 00 0C */	beq lbl_805CFF4C
/* 805CFF44  38 00 00 05 */	li r0, 5
/* 805CFF48  48 00 00 10 */	b lbl_805CFF58
lbl_805CFF4C:
/* 805CFF4C  38 00 00 03 */	li r0, 3
/* 805CFF50  48 00 00 08 */	b lbl_805CFF58
lbl_805CFF54:
/* 805CFF54  38 00 00 04 */	li r0, 4
lbl_805CFF58:
/* 805CFF58  2C 00 00 01 */	cmpwi r0, 1
/* 805CFF5C  40 82 00 0C */	bne lbl_805CFF68
/* 805CFF60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805CFF64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805CFF68:
/* 805CFF68  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 805CFF6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFF70  40 80 00 24 */	bge lbl_805CFF94
/* 805CFF74  38 00 00 00 */	li r0, 0
/* 805CFF78  98 1D 08 4C */	stb r0, 0x84c(r29)
/* 805CFF7C  7F A3 EB 78 */	mr r3, r29
/* 805CFF80  38 80 00 05 */	li r4, 5
/* 805CFF84  38 A0 00 00 */	li r5, 0
/* 805CFF88  4B FF BB ED */	bl setActionMode__8daB_DS_cFii
/* 805CFF8C  38 60 00 01 */	li r3, 1
/* 805CFF90  48 00 00 84 */	b lbl_805D0014
lbl_805CFF94:
/* 805CFF94  38 7D 08 1C */	addi r3, r29, 0x81c
/* 805CFF98  48 00 C9 4D */	bl func_805DC8E4
/* 805CFF9C  2C 03 00 00 */	cmpwi r3, 0
/* 805CFFA0  40 82 00 70 */	bne lbl_805D0010
/* 805CFFA4  7F A3 EB 78 */	mr r3, r29
/* 805CFFA8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805CFFAC  4B A4 A8 34 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CFFB0  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805CFFB4  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805CFFB8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805CFFBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFFC0  40 81 00 50 */	ble lbl_805D0010
/* 805CFFC4  7F A3 EB 78 */	mr r3, r29
/* 805CFFC8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805CFFCC  4B A4 A7 44 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CFFD0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805CFFD4  7C 03 00 50 */	subf r0, r3, r0
/* 805CFFD8  7C 00 07 34 */	extsh r0, r0
/* 805CFFDC  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805CFFE0  40 80 00 18 */	bge lbl_805CFFF8
/* 805CFFE4  7F A3 EB 78 */	mr r3, r29
/* 805CFFE8  38 80 00 06 */	li r4, 6
/* 805CFFEC  38 A0 00 00 */	li r5, 0
/* 805CFFF0  4B FF BB 85 */	bl setActionMode__8daB_DS_cFii
/* 805CFFF4  48 00 00 14 */	b lbl_805D0008
lbl_805CFFF8:
/* 805CFFF8  7F A3 EB 78 */	mr r3, r29
/* 805CFFFC  38 80 00 07 */	li r4, 7
/* 805D0000  38 A0 00 00 */	li r5, 0
/* 805D0004  4B FF BB 71 */	bl setActionMode__8daB_DS_cFii
lbl_805D0008:
/* 805D0008  38 60 00 01 */	li r3, 1
/* 805D000C  48 00 00 08 */	b lbl_805D0014
lbl_805D0010:
/* 805D0010  38 60 00 00 */	li r3, 0
lbl_805D0014:
/* 805D0014  39 61 00 50 */	addi r11, r1, 0x50
/* 805D0018  4B D9 22 0C */	b _restgpr_28
/* 805D001C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805D0020  7C 08 03 A6 */	mtlr r0
/* 805D0024  38 21 00 50 */	addi r1, r1, 0x50
/* 805D0028  4E 80 00 20 */	blr 
