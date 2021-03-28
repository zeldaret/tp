lbl_8069CED8:
/* 8069CED8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8069CEDC  7C 08 02 A6 */	mflr r0
/* 8069CEE0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8069CEE4  39 61 00 50 */	addi r11, r1, 0x50
/* 8069CEE8  4B CC 52 F0 */	b _savegpr_28
/* 8069CEEC  7C 7D 1B 78 */	mr r29, r3
/* 8069CEF0  3C 60 80 6A */	lis r3, lit_3902@ha
/* 8069CEF4  3B E3 19 0C */	addi r31, r3, lit_3902@l
/* 8069CEF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069CEFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069CF00  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 8069CF04  38 61 00 20 */	addi r3, r1, 0x20
/* 8069CF08  38 9C 05 38 */	addi r4, r28, 0x538
/* 8069CF0C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8069CF10  4B BC 9C 24 */	b __mi__4cXyzCFRC3Vec
/* 8069CF14  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8069CF18  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8069CF1C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8069CF20  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8069CF24  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8069CF28  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8069CF2C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8069CF30  EC 00 00 32 */	fmuls f0, f0, f0
/* 8069CF34  EC 41 00 2A */	fadds f2, f1, f0
/* 8069CF38  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069CF3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8069CF40  40 81 00 0C */	ble lbl_8069CF4C
/* 8069CF44  FC 00 10 34 */	frsqrte f0, f2
/* 8069CF48  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8069CF4C:
/* 8069CF4C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8069CF50  4B BC A7 24 */	b cM_atan2s__Fff
/* 8069CF54  7C 7E 07 34 */	extsh r30, r3
/* 8069CF58  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 8069CF5C  2C 00 00 01 */	cmpwi r0, 1
/* 8069CF60  41 82 00 BC */	beq lbl_8069D01C
/* 8069CF64  40 80 02 74 */	bge lbl_8069D1D8
/* 8069CF68  2C 00 00 00 */	cmpwi r0, 0
/* 8069CF6C  40 80 00 08 */	bge lbl_8069CF74
/* 8069CF70  48 00 02 68 */	b lbl_8069D1D8
lbl_8069CF74:
/* 8069CF74  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 8069CF78  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 8069CF7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8069CF80  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069CF84  38 81 00 10 */	addi r4, r1, 0x10
/* 8069CF88  38 A0 00 00 */	li r5, 0
/* 8069CF8C  38 C0 FF FF */	li r6, -1
/* 8069CF90  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069CF94  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069CF98  7D 89 03 A6 */	mtctr r12
/* 8069CF9C  4E 80 04 21 */	bctrl 
/* 8069CFA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070083@ha */
/* 8069CFA4  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00070083@l */
/* 8069CFA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069CFAC  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069CFB0  38 81 00 0C */	addi r4, r1, 0xc
/* 8069CFB4  38 A0 FF FF */	li r5, -1
/* 8069CFB8  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069CFBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069CFC0  7D 89 03 A6 */	mtctr r12
/* 8069CFC4  4E 80 04 21 */	bctrl 
/* 8069CFC8  7F A3 EB 78 */	mr r3, r29
/* 8069CFCC  38 80 00 13 */	li r4, 0x13
/* 8069CFD0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8069CFD4  38 A0 00 02 */	li r5, 2
/* 8069CFD8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069CFDC  4B FF DC 05 */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069CFE0  7F A3 EB 78 */	mr r3, r29
/* 8069CFE4  38 80 00 06 */	li r4, 6
/* 8069CFE8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8069CFEC  38 A0 00 00 */	li r5, 0
/* 8069CFF0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069CFF4  4B FF DB 41 */	bl anm_init__FP10e_db_classifUcf
/* 8069CFF8  38 7D 09 DC */	addi r3, r29, 0x9dc
/* 8069CFFC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8069D000  4B 9E 7A 78 */	b StartCAt__8dCcD_SphFR4cXyz
/* 8069D004  38 00 00 0F */	li r0, 0xf
/* 8069D008  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 8069D00C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069D010  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 8069D014  38 00 00 01 */	li r0, 1
/* 8069D018  B0 1D 06 6C */	sth r0, 0x66c(r29)
lbl_8069D01C:
/* 8069D01C  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 8069D020  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 8069D024  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8069D028  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8069D02C  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 8069D030  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8069D034  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8069D038  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 8069D03C  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 8069D040  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8069D044  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8069D048  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069D04C  4B BD 29 F0 */	b cLib_addCalc2__FPffff
/* 8069D050  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8069D054  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 8069D058  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 8069D05C  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8069D060  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8069D064  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069D068  4B BD 29 D4 */	b cLib_addCalc2__FPffff
/* 8069D06C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8069D070  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 8069D074  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 8069D078  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 8069D07C  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 8069D080  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069D084  4B BD 29 B8 */	b cLib_addCalc2__FPffff
/* 8069D088  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8069D08C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069D090  FC 40 08 90 */	fmr f2, f1
/* 8069D094  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 8069D098  4B BD 29 A4 */	b cLib_addCalc2__FPffff
/* 8069D09C  38 61 00 14 */	addi r3, r1, 0x14
/* 8069D0A0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8069D0A4  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 8069D0A8  4B BC 9A 8C */	b __mi__4cXyzCFRC3Vec
/* 8069D0AC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8069D0B0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8069D0B4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8069D0B8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8069D0BC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8069D0C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8069D0C4  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 8069D0C8  2C 00 00 00 */	cmpwi r0, 0
/* 8069D0CC  41 82 00 FC */	beq lbl_8069D1C8
/* 8069D0D0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8069D0D4  4B CA A0 64 */	b PSVECSquareMag
/* 8069D0D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069D0DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069D0E0  40 81 00 58 */	ble lbl_8069D138
/* 8069D0E4  FC 00 08 34 */	frsqrte f0, f1
/* 8069D0E8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8069D0EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8069D0F0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8069D0F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8069D0F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8069D0FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8069D100  FC 02 00 32 */	fmul f0, f2, f0
/* 8069D104  FC 44 00 32 */	fmul f2, f4, f0
/* 8069D108  FC 00 00 32 */	fmul f0, f0, f0
/* 8069D10C  FC 01 00 32 */	fmul f0, f1, f0
/* 8069D110  FC 03 00 28 */	fsub f0, f3, f0
/* 8069D114  FC 02 00 32 */	fmul f0, f2, f0
/* 8069D118  FC 44 00 32 */	fmul f2, f4, f0
/* 8069D11C  FC 00 00 32 */	fmul f0, f0, f0
/* 8069D120  FC 01 00 32 */	fmul f0, f1, f0
/* 8069D124  FC 03 00 28 */	fsub f0, f3, f0
/* 8069D128  FC 02 00 32 */	fmul f0, f2, f0
/* 8069D12C  FC 21 00 32 */	fmul f1, f1, f0
/* 8069D130  FC 20 08 18 */	frsp f1, f1
/* 8069D134  48 00 00 88 */	b lbl_8069D1BC
lbl_8069D138:
/* 8069D138  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8069D13C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069D140  40 80 00 10 */	bge lbl_8069D150
/* 8069D144  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8069D148  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8069D14C  48 00 00 70 */	b lbl_8069D1BC
lbl_8069D150:
/* 8069D150  D0 21 00 08 */	stfs f1, 8(r1)
/* 8069D154  80 81 00 08 */	lwz r4, 8(r1)
/* 8069D158  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8069D15C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8069D160  7C 03 00 00 */	cmpw r3, r0
/* 8069D164  41 82 00 14 */	beq lbl_8069D178
/* 8069D168  40 80 00 40 */	bge lbl_8069D1A8
/* 8069D16C  2C 03 00 00 */	cmpwi r3, 0
/* 8069D170  41 82 00 20 */	beq lbl_8069D190
/* 8069D174  48 00 00 34 */	b lbl_8069D1A8
lbl_8069D178:
/* 8069D178  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069D17C  41 82 00 0C */	beq lbl_8069D188
/* 8069D180  38 00 00 01 */	li r0, 1
/* 8069D184  48 00 00 28 */	b lbl_8069D1AC
lbl_8069D188:
/* 8069D188  38 00 00 02 */	li r0, 2
/* 8069D18C  48 00 00 20 */	b lbl_8069D1AC
lbl_8069D190:
/* 8069D190  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069D194  41 82 00 0C */	beq lbl_8069D1A0
/* 8069D198  38 00 00 05 */	li r0, 5
/* 8069D19C  48 00 00 10 */	b lbl_8069D1AC
lbl_8069D1A0:
/* 8069D1A0  38 00 00 03 */	li r0, 3
/* 8069D1A4  48 00 00 08 */	b lbl_8069D1AC
lbl_8069D1A8:
/* 8069D1A8  38 00 00 04 */	li r0, 4
lbl_8069D1AC:
/* 8069D1AC  2C 00 00 01 */	cmpwi r0, 1
/* 8069D1B0  40 82 00 0C */	bne lbl_8069D1BC
/* 8069D1B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8069D1B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8069D1BC:
/* 8069D1BC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8069D1C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069D1C4  40 81 00 14 */	ble lbl_8069D1D8
lbl_8069D1C8:
/* 8069D1C8  38 00 00 03 */	li r0, 3
/* 8069D1CC  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 8069D1D0  38 00 00 00 */	li r0, 0
/* 8069D1D4  B0 1D 06 6C */	sth r0, 0x66c(r29)
lbl_8069D1D8:
/* 8069D1D8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8069D1DC  A8 9D 06 84 */	lha r4, 0x684(r29)
/* 8069D1E0  3C 84 00 01 */	addis r4, r4, 1
/* 8069D1E4  38 04 80 00 */	addi r0, r4, -32768
/* 8069D1E8  7C 04 07 34 */	extsh r4, r0
/* 8069D1EC  38 A0 00 08 */	li r5, 8
/* 8069D1F0  38 C0 08 00 */	li r6, 0x800
/* 8069D1F4  4B BD 34 14 */	b cLib_addCalcAngleS2__FPssss
/* 8069D1F8  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8069D1FC  3C 9E 00 01 */	addis r4, r30, 1
/* 8069D200  38 04 80 00 */	addi r0, r4, -32768
/* 8069D204  7C 04 07 34 */	extsh r4, r0
/* 8069D208  38 A0 00 08 */	li r5, 8
/* 8069D20C  38 C0 04 00 */	li r6, 0x400
/* 8069D210  4B BD 33 F8 */	b cLib_addCalcAngleS2__FPssss
/* 8069D214  38 00 00 01 */	li r0, 1
/* 8069D218  98 1D 0B 14 */	stb r0, 0xb14(r29)
/* 8069D21C  39 61 00 50 */	addi r11, r1, 0x50
/* 8069D220  4B CC 50 04 */	b _restgpr_28
/* 8069D224  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8069D228  7C 08 03 A6 */	mtlr r0
/* 8069D22C  38 21 00 50 */	addi r1, r1, 0x50
/* 8069D230  4E 80 00 20 */	blr 
