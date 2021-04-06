lbl_807FEE0C:
/* 807FEE0C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807FEE10  7C 08 02 A6 */	mflr r0
/* 807FEE14  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807FEE18  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807FEE1C  4B B6 33 B5 */	bl _savegpr_26
/* 807FEE20  7C 7D 1B 78 */	mr r29, r3
/* 807FEE24  3C 60 80 80 */	lis r3, lit_3902@ha /* 0x8080427C@ha */
/* 807FEE28  3B C3 42 7C */	addi r30, r3, lit_3902@l /* 0x8080427C@l */
/* 807FEE2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FEE30  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FEE34  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 807FEE38  3B 60 00 00 */	li r27, 0
/* 807FEE3C  88 1D 08 54 */	lbz r0, 0x854(r29)
/* 807FEE40  7C 00 07 75 */	extsb. r0, r0
/* 807FEE44  41 82 00 58 */	beq lbl_807FEE9C
/* 807FEE48  38 61 00 68 */	addi r3, r1, 0x68
/* 807FEE4C  38 9C 05 38 */	addi r4, r28, 0x538
/* 807FEE50  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 807FEE54  4B A6 7C E1 */	bl __mi__4cXyzCFRC3Vec
/* 807FEE58  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 807FEE5C  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 807FEE60  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807FEE64  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807FEE68  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 807FEE6C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807FEE70  EC 21 00 72 */	fmuls f1, f1, f1
/* 807FEE74  EC 00 00 32 */	fmuls f0, f0, f0
/* 807FEE78  EC 41 00 2A */	fadds f2, f1, f0
/* 807FEE7C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FEE80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807FEE84  40 81 00 0C */	ble lbl_807FEE90
/* 807FEE88  FC 00 10 34 */	frsqrte f0, f2
/* 807FEE8C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807FEE90:
/* 807FEE90  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 807FEE94  4B A6 87 E1 */	bl cM_atan2s__Fff
/* 807FEE98  7C 7B 07 34 */	extsh r27, r3
lbl_807FEE9C:
/* 807FEE9C  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 807FEEA0  2C 00 00 03 */	cmpwi r0, 3
/* 807FEEA4  41 82 05 58 */	beq lbl_807FF3FC
/* 807FEEA8  40 80 00 1C */	bge lbl_807FEEC4
/* 807FEEAC  2C 00 00 01 */	cmpwi r0, 1
/* 807FEEB0  41 82 00 C4 */	beq lbl_807FEF74
/* 807FEEB4  40 80 03 B8 */	bge lbl_807FF26C
/* 807FEEB8  2C 00 00 00 */	cmpwi r0, 0
/* 807FEEBC  40 80 00 14 */	bge lbl_807FEED0
/* 807FEEC0  48 00 09 60 */	b lbl_807FF820
lbl_807FEEC4:
/* 807FEEC4  2C 00 00 05 */	cmpwi r0, 5
/* 807FEEC8  41 82 05 54 */	beq lbl_807FF41C
/* 807FEECC  48 00 09 54 */	b lbl_807FF820
lbl_807FEED0:
/* 807FEED0  38 00 00 01 */	li r0, 1
/* 807FEED4  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807FEED8  38 00 00 11 */	li r0, 0x11
/* 807FEEDC  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807FEEE0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FEEE4  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807FEEE8  38 00 00 00 */	li r0, 0
/* 807FEEEC  98 1D 0B 19 */	stb r0, 0xb19(r29)
/* 807FEEF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 807FEEF4  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 807FEEF8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807FEEFC  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807FEF00  38 81 00 1C */	addi r4, r1, 0x1c
/* 807FEF04  38 A0 00 00 */	li r5, 0
/* 807FEF08  38 C0 FF FF */	li r6, -1
/* 807FEF0C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807FEF10  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807FEF14  7D 89 03 A6 */	mtctr r12
/* 807FEF18  4E 80 04 21 */	bctrl 
/* 807FEF1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070083@ha */
/* 807FEF20  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00070083@l */
/* 807FEF24  90 01 00 18 */	stw r0, 0x18(r1)
/* 807FEF28  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807FEF2C  38 81 00 18 */	addi r4, r1, 0x18
/* 807FEF30  38 A0 FF FF */	li r5, -1
/* 807FEF34  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807FEF38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FEF3C  7D 89 03 A6 */	mtctr r12
/* 807FEF40  4E 80 04 21 */	bctrl 
/* 807FEF44  7F A3 EB 78 */	mr r3, r29
/* 807FEF48  38 80 00 14 */	li r4, 0x14
/* 807FEF4C  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 807FEF50  38 A0 00 02 */	li r5, 2
/* 807FEF54  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FEF58  4B FF E8 11 */	bl leaf_anm_init__FP10e_yh_classifUcf
/* 807FEF5C  7F A3 EB 78 */	mr r3, r29
/* 807FEF60  38 80 00 07 */	li r4, 7
/* 807FEF64  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 807FEF68  38 A0 00 00 */	li r5, 0
/* 807FEF6C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FEF70  4B FF E7 4D */	bl anm_init__FP10e_yh_classifUcf
lbl_807FEF74:
/* 807FEF74  88 1D 08 54 */	lbz r0, 0x854(r29)
/* 807FEF78  7C 00 07 75 */	extsb. r0, r0
/* 807FEF7C  41 82 00 40 */	beq lbl_807FEFBC
/* 807FEF80  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807FEF84  A8 9D 06 88 */	lha r4, 0x688(r29)
/* 807FEF88  3C 84 00 01 */	addis r4, r4, 1
/* 807FEF8C  38 04 80 00 */	addi r0, r4, -32768
/* 807FEF90  7C 04 07 34 */	extsh r4, r0
/* 807FEF94  38 A0 00 08 */	li r5, 8
/* 807FEF98  38 C0 08 00 */	li r6, 0x800
/* 807FEF9C  4B A7 16 6D */	bl cLib_addCalcAngleS2__FPssss
/* 807FEFA0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FEFA4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807FEFA8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807FEFAC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807FEFB0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807FEFB4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807FEFB8  48 00 00 30 */	b lbl_807FEFE8
lbl_807FEFBC:
/* 807FEFBC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807FEFC0  A8 9D 06 88 */	lha r4, 0x688(r29)
/* 807FEFC4  38 A0 00 08 */	li r5, 8
/* 807FEFC8  38 C0 08 00 */	li r6, 0x800
/* 807FEFCC  4B A7 16 3D */	bl cLib_addCalcAngleS2__FPssss
/* 807FEFD0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FEFD4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807FEFD8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807FEFDC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807FEFE0  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 807FEFE4  D0 01 00 88 */	stfs f0, 0x88(r1)
lbl_807FEFE8:
/* 807FEFE8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807FEFEC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807FEFF0  80 63 00 00 */	lwz r3, 0(r3)
/* 807FEFF4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807FEFF8  4B 80 D3 E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 807FEFFC  38 61 00 80 */	addi r3, r1, 0x80
/* 807FF000  38 81 00 74 */	addi r4, r1, 0x74
/* 807FF004  4B A7 1E E9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807FF008  38 61 00 5C */	addi r3, r1, 0x5c
/* 807FF00C  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 807FF010  38 A1 00 74 */	addi r5, r1, 0x74
/* 807FF014  4B A6 7A D1 */	bl __pl__4cXyzCFRC3Vec
/* 807FF018  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807FF01C  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807FF020  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807FF024  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807FF028  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 807FF02C  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 807FF030  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807FF034  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807FF038  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 807FF03C  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 807FF040  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807FF044  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FF048  4B A7 09 F5 */	bl cLib_addCalc2__FPffff
/* 807FF04C  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 807FF050  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 807FF054  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 807FF058  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 807FF05C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807FF060  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FF064  4B A7 09 D9 */	bl cLib_addCalc2__FPffff
/* 807FF068  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807FF06C  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807FF070  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 807FF074  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 807FF078  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807FF07C  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FF080  4B A7 09 BD */	bl cLib_addCalc2__FPffff
/* 807FF084  38 7D 06 90 */	addi r3, r29, 0x690
/* 807FF088  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FF08C  FC 40 08 90 */	fmr f2, f1
/* 807FF090  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 807FF094  4B A7 09 A9 */	bl cLib_addCalc2__FPffff
/* 807FF098  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807FF09C  2C 00 00 00 */	cmpwi r0, 0
/* 807FF0A0  40 82 07 80 */	bne lbl_807FF820
/* 807FF0A4  38 00 00 02 */	li r0, 2
/* 807FF0A8  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807FF0AC  38 00 00 0A */	li r0, 0xa
/* 807FF0B0  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 807FF0B4  88 1D 08 54 */	lbz r0, 0x854(r29)
/* 807FF0B8  7C 00 07 75 */	extsb. r0, r0
/* 807FF0BC  41 82 00 88 */	beq lbl_807FF144
/* 807FF0C0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807FF0C4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807FF0C8  80 63 00 00 */	lwz r3, 0(r3)
/* 807FF0CC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807FF0D0  3C 84 00 01 */	addis r4, r4, 1
/* 807FF0D4  38 04 80 00 */	addi r0, r4, -32768
/* 807FF0D8  7C 04 07 34 */	extsh r4, r0
/* 807FF0DC  4B 80 D3 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 807FF0E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807FF0E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807FF0E8  80 63 00 00 */	lwz r3, 0(r3)
/* 807FF0EC  7C 1B 00 D0 */	neg r0, r27
/* 807FF0F0  7C 04 07 34 */	extsh r4, r0
/* 807FF0F4  4B 80 D2 A9 */	bl mDoMtx_XrotM__FPA4_fs
/* 807FF0F8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FF0FC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807FF100  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807FF104  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 807FF108  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807FF10C  38 61 00 80 */	addi r3, r1, 0x80
/* 807FF110  38 81 00 74 */	addi r4, r1, 0x74
/* 807FF114  4B A7 1D D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807FF118  38 61 00 50 */	addi r3, r1, 0x50
/* 807FF11C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807FF120  38 A1 00 74 */	addi r5, r1, 0x74
/* 807FF124  4B A6 79 C1 */	bl __pl__4cXyzCFRC3Vec
/* 807FF128  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807FF12C  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807FF130  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807FF134  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807FF138  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807FF13C  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 807FF140  48 00 00 70 */	b lbl_807FF1B0
lbl_807FF144:
/* 807FF144  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807FF148  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807FF14C  80 63 00 00 */	lwz r3, 0(r3)
/* 807FF150  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807FF154  4B 80 D2 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 807FF158  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FF15C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807FF160  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807FF164  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 807FF168  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807FF16C  38 61 00 80 */	addi r3, r1, 0x80
/* 807FF170  38 81 00 74 */	addi r4, r1, 0x74
/* 807FF174  4B A7 1D 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807FF178  38 61 00 44 */	addi r3, r1, 0x44
/* 807FF17C  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 807FF180  38 A1 00 74 */	addi r5, r1, 0x74
/* 807FF184  4B A6 79 61 */	bl __pl__4cXyzCFRC3Vec
/* 807FF188  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807FF18C  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807FF190  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807FF194  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807FF198  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807FF19C  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 807FF1A0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807FF1A4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807FF1A8  EC 01 00 2A */	fadds f0, f1, f0
/* 807FF1AC  D0 1D 06 7C */	stfs f0, 0x67c(r29)
lbl_807FF1B0:
/* 807FF1B0  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807FF1B4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807FF1B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FF1BC  FC 00 02 10 */	fabs f0, f0
/* 807FF1C0  FC 00 00 18 */	frsp f0, f0
/* 807FF1C4  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 807FF1C8  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807FF1CC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807FF1D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FF1D4  FC 00 02 10 */	fabs f0, f0
/* 807FF1D8  FC 00 00 18 */	frsp f0, f0
/* 807FF1DC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807FF1E0  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 807FF1E4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807FF1E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807FF1EC  FC 00 02 10 */	fabs f0, f0
/* 807FF1F0  FC 00 00 18 */	frsp f0, f0
/* 807FF1F4  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 807FF1F8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FF1FC  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807FF200  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 807FF204  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807FF208  4B 88 58 71 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 807FF20C  88 1D 08 54 */	lbz r0, 0x854(r29)
/* 807FF210  7C 00 07 75 */	extsb. r0, r0
/* 807FF214  40 82 00 2C */	bne lbl_807FF240
/* 807FF218  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FF21C  4B A6 87 39 */	bl cM_rndF__Ff
/* 807FF220  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807FF224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FF228  40 80 00 10 */	bge lbl_807FF238
/* 807FF22C  38 00 40 00 */	li r0, 0x4000
/* 807FF230  B0 1D 08 64 */	sth r0, 0x864(r29)
/* 807FF234  48 00 00 0C */	b lbl_807FF240
lbl_807FF238:
/* 807FF238  38 00 C0 00 */	li r0, -16384
/* 807FF23C  B0 1D 08 64 */	sth r0, 0x864(r29)
lbl_807FF240:
/* 807FF240  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015D@ha */
/* 807FF244  38 03 01 5D */	addi r0, r3, 0x015D /* 0x0007015D@l */
/* 807FF248  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FF24C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807FF250  38 81 00 14 */	addi r4, r1, 0x14
/* 807FF254  38 A0 FF FF */	li r5, -1
/* 807FF258  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807FF25C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FF260  7D 89 03 A6 */	mtctr r12
/* 807FF264  4E 80 04 21 */	bctrl 
/* 807FF268  48 00 05 B8 */	b lbl_807FF820
lbl_807FF26C:
/* 807FF26C  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 807FF270  2C 00 00 00 */	cmpwi r0, 0
/* 807FF274  41 82 00 0C */	beq lbl_807FF280
/* 807FF278  38 00 00 01 */	li r0, 1
/* 807FF27C  98 1D 0B 18 */	stb r0, 0xb18(r29)
lbl_807FF280:
/* 807FF280  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807FF284  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807FF288  C0 5E 00 BC */	lfs f2, 0xbc(r30)
/* 807FF28C  C0 7D 04 F8 */	lfs f3, 0x4f8(r29)
/* 807FF290  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807FF294  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FF298  4B A7 07 A5 */	bl cLib_addCalc2__FPffff
/* 807FF29C  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 807FF2A0  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 807FF2A4  C0 5E 00 BC */	lfs f2, 0xbc(r30)
/* 807FF2A8  C0 7D 05 00 */	lfs f3, 0x500(r29)
/* 807FF2AC  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807FF2B0  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FF2B4  4B A7 07 89 */	bl cLib_addCalc2__FPffff
/* 807FF2B8  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807FF2BC  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807FF2C0  C0 5E 00 BC */	lfs f2, 0xbc(r30)
/* 807FF2C4  C0 7D 04 FC */	lfs f3, 0x4fc(r29)
/* 807FF2C8  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807FF2CC  EC 63 00 32 */	fmuls f3, f3, f0
/* 807FF2D0  4B A7 07 6D */	bl cLib_addCalc2__FPffff
/* 807FF2D4  38 7D 06 90 */	addi r3, r29, 0x690
/* 807FF2D8  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 807FF2DC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FF2E0  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 807FF2E4  4B A7 07 59 */	bl cLib_addCalc2__FPffff
/* 807FF2E8  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 807FF2EC  A8 9D 08 64 */	lha r4, 0x864(r29)
/* 807FF2F0  38 A0 00 02 */	li r5, 2
/* 807FF2F4  38 C0 20 00 */	li r6, 0x2000
/* 807FF2F8  4B A7 13 11 */	bl cLib_addCalcAngleS2__FPssss
/* 807FF2FC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807FF300  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807FF304  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807FF308  40 82 00 B0 */	bne lbl_807FF3B8
/* 807FF30C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 807FF310  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 807FF314  40 82 00 A4 */	bne lbl_807FF3B8
/* 807FF318  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 807FF31C  4B 88 4F A5 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 807FF320  28 03 00 00 */	cmplwi r3, 0
/* 807FF324  41 82 00 94 */	beq lbl_807FF3B8
/* 807FF328  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 807FF32C  4B 88 50 2D */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 807FF330  4B A6 47 19 */	bl GetAc__8cCcD_ObjFv
/* 807FF334  7C 1C 18 40 */	cmplw r28, r3
/* 807FF338  40 82 00 80 */	bne lbl_807FF3B8
/* 807FF33C  38 00 00 05 */	li r0, 5
/* 807FF340  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807FF344  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 807FF348  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 807FF34C  7F A3 EB 78 */	mr r3, r29
/* 807FF350  38 80 00 08 */	li r4, 8
/* 807FF354  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 807FF358  38 A0 00 02 */	li r5, 2
/* 807FF35C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FF360  4B FF E3 5D */	bl anm_init__FP10e_yh_classifUcf
/* 807FF364  38 00 00 78 */	li r0, 0x78
/* 807FF368  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807FF36C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807FF370  7F A4 EB 78 */	mr r4, r29
/* 807FF374  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807FF378  81 8C 01 D0 */	lwz r12, 0x1d0(r12)
/* 807FF37C  7D 89 03 A6 */	mtctr r12
/* 807FF380  4E 80 04 21 */	bctrl 
/* 807FF384  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807FF388  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807FF38C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807FF390  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807FF394  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807FF398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FF39C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FF3A0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807FF3A4  38 80 00 06 */	li r4, 6
/* 807FF3A8  38 A0 00 1F */	li r5, 0x1f
/* 807FF3AC  38 C1 00 38 */	addi r6, r1, 0x38
/* 807FF3B0  4B 87 06 75 */	bl StartShock__12dVibration_cFii4cXyz
/* 807FF3B4  48 00 04 6C */	b lbl_807FF820
lbl_807FF3B8:
/* 807FF3B8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807FF3BC  38 80 00 01 */	li r4, 1
/* 807FF3C0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807FF3C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807FF3C8  40 82 00 18 */	bne lbl_807FF3E0
/* 807FF3CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807FF3D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807FF3D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807FF3D8  41 82 00 08 */	beq lbl_807FF3E0
/* 807FF3DC  38 80 00 00 */	li r4, 0
lbl_807FF3E0:
/* 807FF3E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807FF3E4  41 82 04 3C */	beq lbl_807FF820
/* 807FF3E8  38 00 00 03 */	li r0, 3
/* 807FF3EC  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807FF3F0  38 00 00 00 */	li r0, 0
/* 807FF3F4  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 807FF3F8  48 00 04 28 */	b lbl_807FF820
lbl_807FF3FC:
/* 807FF3FC  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807FF400  2C 00 00 00 */	cmpwi r0, 0
/* 807FF404  40 82 04 1C */	bne lbl_807FF820
/* 807FF408  38 00 00 03 */	li r0, 3
/* 807FF40C  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807FF410  38 00 00 00 */	li r0, 0
/* 807FF414  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807FF418  48 00 04 08 */	b lbl_807FF820
lbl_807FF41C:
/* 807FF41C  38 00 00 01 */	li r0, 1
/* 807FF420  98 1D 08 55 */	stb r0, 0x855(r29)
/* 807FF424  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015E@ha */
/* 807FF428  38 03 01 5E */	addi r0, r3, 0x015E /* 0x0007015E@l */
/* 807FF42C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807FF430  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807FF434  38 81 00 10 */	addi r4, r1, 0x10
/* 807FF438  38 A0 FF FF */	li r5, -1
/* 807FF43C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807FF440  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 807FF444  7D 89 03 A6 */	mtctr r12
/* 807FF448  4E 80 04 21 */	bctrl 
/* 807FF44C  80 1D 08 D4 */	lwz r0, 0x8d4(r29)
/* 807FF450  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807FF454  90 1D 08 D4 */	stw r0, 0x8d4(r29)
/* 807FF458  3B 60 00 00 */	li r27, 0
/* 807FF45C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807FF460  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807FF464  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807FF468  41 82 03 58 */	beq lbl_807FF7C0
/* 807FF46C  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 807FF470  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807FF474  40 82 00 24 */	bne lbl_807FF498
/* 807FF478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FF47C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FF480  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 807FF484  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807FF488  EC 01 00 2A */	fadds f0, f1, f0
/* 807FF48C  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 807FF490  38 00 00 00 */	li r0, 0
/* 807FF494  98 03 5E B6 */	stb r0, 0x5eb6(r3)
lbl_807FF498:
/* 807FF498  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 807FF49C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807FF4A0  40 82 00 34 */	bne lbl_807FF4D4
/* 807FF4A4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807FF4A8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807FF4AC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807FF4B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807FF4B4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807FF4B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FF4BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FF4C0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807FF4C4  38 80 00 03 */	li r4, 3
/* 807FF4C8  38 A0 00 1F */	li r5, 0x1f
/* 807FF4CC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 807FF4D0  4B 87 05 55 */	bl StartShock__12dVibration_cFii4cXyz
lbl_807FF4D4:
/* 807FF4D4  38 61 00 20 */	addi r3, r1, 0x20
/* 807FF4D8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807FF4DC  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 807FF4E0  4B A6 76 55 */	bl __mi__4cXyzCFRC3Vec
/* 807FF4E4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 807FF4E8  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 807FF4EC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807FF4F0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807FF4F4  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 807FF4F8  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 807FF4FC  4B A6 81 79 */	bl cM_atan2s__Fff
/* 807FF500  7C 7A 1B 78 */	mr r26, r3
/* 807FF504  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FF508  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807FF50C  38 61 00 80 */	addi r3, r1, 0x80
/* 807FF510  4B B4 7C 29 */	bl PSVECSquareMag
/* 807FF514  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FF518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FF51C  40 81 00 58 */	ble lbl_807FF574
/* 807FF520  FC 00 08 34 */	frsqrte f0, f1
/* 807FF524  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807FF528  FC 44 00 32 */	fmul f2, f4, f0
/* 807FF52C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807FF530  FC 00 00 32 */	fmul f0, f0, f0
/* 807FF534  FC 01 00 32 */	fmul f0, f1, f0
/* 807FF538  FC 03 00 28 */	fsub f0, f3, f0
/* 807FF53C  FC 02 00 32 */	fmul f0, f2, f0
/* 807FF540  FC 44 00 32 */	fmul f2, f4, f0
/* 807FF544  FC 00 00 32 */	fmul f0, f0, f0
/* 807FF548  FC 01 00 32 */	fmul f0, f1, f0
/* 807FF54C  FC 03 00 28 */	fsub f0, f3, f0
/* 807FF550  FC 02 00 32 */	fmul f0, f2, f0
/* 807FF554  FC 44 00 32 */	fmul f2, f4, f0
/* 807FF558  FC 00 00 32 */	fmul f0, f0, f0
/* 807FF55C  FC 01 00 32 */	fmul f0, f1, f0
/* 807FF560  FC 03 00 28 */	fsub f0, f3, f0
/* 807FF564  FC 02 00 32 */	fmul f0, f2, f0
/* 807FF568  FC 21 00 32 */	fmul f1, f1, f0
/* 807FF56C  FC 20 08 18 */	frsp f1, f1
/* 807FF570  48 00 00 88 */	b lbl_807FF5F8
lbl_807FF574:
/* 807FF574  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807FF578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FF57C  40 80 00 10 */	bge lbl_807FF58C
/* 807FF580  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807FF584  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807FF588  48 00 00 70 */	b lbl_807FF5F8
lbl_807FF58C:
/* 807FF58C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807FF590  80 81 00 08 */	lwz r4, 8(r1)
/* 807FF594  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807FF598  3C 00 7F 80 */	lis r0, 0x7f80
/* 807FF59C  7C 03 00 00 */	cmpw r3, r0
/* 807FF5A0  41 82 00 14 */	beq lbl_807FF5B4
/* 807FF5A4  40 80 00 40 */	bge lbl_807FF5E4
/* 807FF5A8  2C 03 00 00 */	cmpwi r3, 0
/* 807FF5AC  41 82 00 20 */	beq lbl_807FF5CC
/* 807FF5B0  48 00 00 34 */	b lbl_807FF5E4
lbl_807FF5B4:
/* 807FF5B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FF5B8  41 82 00 0C */	beq lbl_807FF5C4
/* 807FF5BC  38 00 00 01 */	li r0, 1
/* 807FF5C0  48 00 00 28 */	b lbl_807FF5E8
lbl_807FF5C4:
/* 807FF5C4  38 00 00 02 */	li r0, 2
/* 807FF5C8  48 00 00 20 */	b lbl_807FF5E8
lbl_807FF5CC:
/* 807FF5CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807FF5D0  41 82 00 0C */	beq lbl_807FF5DC
/* 807FF5D4  38 00 00 05 */	li r0, 5
/* 807FF5D8  48 00 00 10 */	b lbl_807FF5E8
lbl_807FF5DC:
/* 807FF5DC  38 00 00 03 */	li r0, 3
/* 807FF5E0  48 00 00 08 */	b lbl_807FF5E8
lbl_807FF5E4:
/* 807FF5E4  38 00 00 04 */	li r0, 4
lbl_807FF5E8:
/* 807FF5E8  2C 00 00 01 */	cmpwi r0, 1
/* 807FF5EC  40 82 00 0C */	bne lbl_807FF5F8
/* 807FF5F0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807FF5F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807FF5F8:
/* 807FF5F8  C0 7E 00 00 */	lfs f3, 0(r30)
/* 807FF5FC  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 807FF600  40 81 00 40 */	ble lbl_807FF640
/* 807FF604  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 807FF608  EC 01 18 28 */	fsubs f0, f1, f3
/* 807FF60C  EC 22 00 32 */	fmuls f1, f2, f0
/* 807FF610  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 807FF614  40 81 00 08 */	ble lbl_807FF61C
/* 807FF618  FC 20 18 90 */	fmr f1, f3
lbl_807FF61C:
/* 807FF61C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807FF620  3C 9A 00 01 */	addis r4, r26, 1
/* 807FF624  38 04 80 00 */	addi r0, r4, -32768
/* 807FF628  7C 04 07 34 */	extsh r4, r0
/* 807FF62C  38 A0 00 00 */	li r5, 0
/* 807FF630  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807FF634  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 807FF638  7D 89 03 A6 */	mtctr r12
/* 807FF63C  4E 80 04 21 */	bctrl 
lbl_807FF640:
/* 807FF640  88 1D 08 54 */	lbz r0, 0x854(r29)
/* 807FF644  7C 00 07 75 */	extsb. r0, r0
/* 807FF648  40 82 00 F8 */	bne lbl_807FF740
/* 807FF64C  A8 1D 08 64 */	lha r0, 0x864(r29)
/* 807FF650  2C 00 00 00 */	cmpwi r0, 0
/* 807FF654  40 82 00 2C */	bne lbl_807FF680
/* 807FF658  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FF65C  4B A6 82 F9 */	bl cM_rndF__Ff
/* 807FF660  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 807FF664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FF668  40 80 00 10 */	bge lbl_807FF678
/* 807FF66C  38 00 40 00 */	li r0, 0x4000
/* 807FF670  B0 1D 08 64 */	sth r0, 0x864(r29)
/* 807FF674  48 00 00 0C */	b lbl_807FF680
lbl_807FF678:
/* 807FF678  38 00 C0 00 */	li r0, -16384
/* 807FF67C  B0 1D 08 64 */	sth r0, 0x864(r29)
lbl_807FF680:
/* 807FF680  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807FF684  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807FF688  80 63 00 00 */	lwz r3, 0(r3)
/* 807FF68C  7F 44 D3 78 */	mr r4, r26
/* 807FF690  4B 80 CD 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 807FF694  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 807FF698  1C 00 2E E0 */	mulli r0, r0, 0x2ee0
/* 807FF69C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807FF6A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807FF6A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807FF6A8  7C 43 04 2E */	lfsx f2, r3, r0
/* 807FF6AC  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 807FF6B0  A8 1D 08 64 */	lha r0, 0x864(r29)
/* 807FF6B4  C8 3E 00 A8 */	lfd f1, 0xa8(r30)
/* 807FF6B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807FF6BC  90 01 00 94 */	stw r0, 0x94(r1)
/* 807FF6C0  3C 00 43 30 */	lis r0, 0x4330
/* 807FF6C4  90 01 00 90 */	stw r0, 0x90(r1)
/* 807FF6C8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 807FF6CC  EC 20 08 28 */	fsubs f1, f0, f1
/* 807FF6D0  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 807FF6D4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807FF6D8  EC 01 00 2A */	fadds f0, f1, f0
/* 807FF6DC  FC 00 00 1E */	fctiwz f0, f0
/* 807FF6E0  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 807FF6E4  80 81 00 9C */	lwz r4, 0x9c(r1)
/* 807FF6E8  38 A0 00 02 */	li r5, 2
/* 807FF6EC  38 C0 20 00 */	li r6, 0x2000
/* 807FF6F0  4B A7 0F 19 */	bl cLib_addCalcAngleS2__FPssss
/* 807FF6F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FF6F8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 807FF6FC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807FF700  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807FF704  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 807FF708  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807FF70C  38 61 00 80 */	addi r3, r1, 0x80
/* 807FF710  38 9D 06 78 */	addi r4, r29, 0x678
/* 807FF714  4B A7 17 D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807FF718  38 7D 06 78 */	addi r3, r29, 0x678
/* 807FF71C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807FF720  7C 65 1B 78 */	mr r5, r3
/* 807FF724  4B B4 79 6D */	bl PSVECAdd
/* 807FF728  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 807FF72C  7F 44 D3 78 */	mr r4, r26
/* 807FF730  38 A0 00 02 */	li r5, 2
/* 807FF734  38 C0 10 00 */	li r6, 0x1000
/* 807FF738  4B A7 0E D1 */	bl cLib_addCalcAngleS2__FPssss
/* 807FF73C  48 00 00 30 */	b lbl_807FF76C
lbl_807FF740:
/* 807FF740  3B 60 C0 00 */	li r27, -16384
/* 807FF744  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807FF748  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 807FF74C  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807FF750  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 807FF754  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807FF758  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 807FF75C  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807FF760  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 807FF764  EC 01 00 2A */	fadds f0, f1, f0
/* 807FF768  D0 1D 06 7C */	stfs f0, 0x67c(r29)
lbl_807FF76C:
/* 807FF76C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807FF770  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 807FF774  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FF778  C0 7D 06 90 */	lfs f3, 0x690(r29)
/* 807FF77C  4B A7 02 C1 */	bl cLib_addCalc2__FPffff
/* 807FF780  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 807FF784  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 807FF788  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FF78C  C0 7D 06 90 */	lfs f3, 0x690(r29)
/* 807FF790  4B A7 02 AD */	bl cLib_addCalc2__FPffff
/* 807FF794  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807FF798  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 807FF79C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FF7A0  C0 7D 06 90 */	lfs f3, 0x690(r29)
/* 807FF7A4  4B A7 02 99 */	bl cLib_addCalc2__FPffff
/* 807FF7A8  38 7D 06 90 */	addi r3, r29, 0x690
/* 807FF7AC  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 807FF7B0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FF7B4  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 807FF7B8  4B A7 02 85 */	bl cLib_addCalc2__FPffff
/* 807FF7BC  48 00 00 64 */	b lbl_807FF820
lbl_807FF7C0:
/* 807FF7C0  38 00 00 03 */	li r0, 3
/* 807FF7C4  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807FF7C8  38 00 FF FF */	li r0, -1
/* 807FF7CC  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807FF7D0  7F A3 EB 78 */	mr r3, r29
/* 807FF7D4  38 80 00 11 */	li r4, 0x11
/* 807FF7D8  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 807FF7DC  38 A0 00 00 */	li r5, 0
/* 807FF7E0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807FF7E4  4B FF DE D9 */	bl anm_init__FP10e_yh_classifUcf
/* 807FF7E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015F@ha */
/* 807FF7EC  38 03 01 5F */	addi r0, r3, 0x015F /* 0x0007015F@l */
/* 807FF7F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FF7F4  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807FF7F8  38 81 00 0C */	addi r4, r1, 0xc
/* 807FF7FC  38 A0 FF FF */	li r5, -1
/* 807FF800  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807FF804  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FF808  7D 89 03 A6 */	mtctr r12
/* 807FF80C  4E 80 04 21 */	bctrl 
/* 807FF810  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 807FF814  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 807FF818  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807FF81C  B0 1D 08 60 */	sth r0, 0x860(r29)
lbl_807FF820:
/* 807FF820  88 1D 0B 18 */	lbz r0, 0xb18(r29)
/* 807FF824  7C 00 07 75 */	extsb. r0, r0
/* 807FF828  41 82 00 50 */	beq lbl_807FF878
/* 807FF82C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807FF830  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 807FF834  EC 00 08 28 */	fsubs f0, f0, f1
/* 807FF838  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807FF83C  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 807FF840  EC 00 08 28 */	fsubs f0, f0, f1
/* 807FF844  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 807FF848  38 7D 10 60 */	addi r3, r29, 0x1060
/* 807FF84C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807FF850  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807FF854  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807FF858  4B 87 72 55 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807FF85C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807FF860  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 807FF864  EC 00 08 2A */	fadds f0, f0, f1
/* 807FF868  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807FF86C  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 807FF870  EC 00 08 2A */	fadds f0, f0, f1
/* 807FF874  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
lbl_807FF878:
/* 807FF878  88 1D 08 54 */	lbz r0, 0x854(r29)
/* 807FF87C  7C 00 07 75 */	extsb. r0, r0
/* 807FF880  41 82 00 2C */	beq lbl_807FF8AC
/* 807FF884  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807FF888  3C 9B 00 01 */	addis r4, r27, 1
/* 807FF88C  38 04 80 00 */	addi r0, r4, -32768
/* 807FF890  7C 04 07 34 */	extsh r4, r0
/* 807FF894  38 A0 00 08 */	li r5, 8
/* 807FF898  38 C0 04 00 */	li r6, 0x400
/* 807FF89C  4B A7 0D 6D */	bl cLib_addCalcAngleS2__FPssss
/* 807FF8A0  38 00 00 01 */	li r0, 1
/* 807FF8A4  98 1D 0B 18 */	stb r0, 0xb18(r29)
/* 807FF8A8  48 00 00 1C */	b lbl_807FF8C4
lbl_807FF8AC:
/* 807FF8AC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 807FF8B0  7C 1B 00 D0 */	neg r0, r27
/* 807FF8B4  7C 04 07 34 */	extsh r4, r0
/* 807FF8B8  38 A0 00 08 */	li r5, 8
/* 807FF8BC  38 C0 04 00 */	li r6, 0x400
/* 807FF8C0  4B A7 0D 49 */	bl cLib_addCalcAngleS2__FPssss
lbl_807FF8C4:
/* 807FF8C4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807FF8C8  4B B6 29 55 */	bl _restgpr_26
/* 807FF8CC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 807FF8D0  7C 08 03 A6 */	mtlr r0
/* 807FF8D4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 807FF8D8  4E 80 00 20 */	blr 
