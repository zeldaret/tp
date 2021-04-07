lbl_8094CE7C:
/* 8094CE7C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8094CE80  7C 08 02 A6 */	mflr r0
/* 8094CE84  90 01 00 84 */	stw r0, 0x84(r1)
/* 8094CE88  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8094CE8C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8094CE90  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8094CE94  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8094CE98  39 61 00 60 */	addi r11, r1, 0x60
/* 8094CE9C  4B A1 53 39 */	bl _savegpr_27
/* 8094CEA0  7C 7D 1B 78 */	mr r29, r3
/* 8094CEA4  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094CEA8  3B C3 11 C0 */	addi r30, r3, lit_3958@l /* 0x809511C0@l */
/* 8094CEAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094CEB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094CEB4  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 8094CEB8  C3 FE 00 24 */	lfs f31, 0x24(r30)
/* 8094CEBC  C3 DE 00 98 */	lfs f30, 0x98(r30)
/* 8094CEC0  3B 80 18 00 */	li r28, 0x1800
/* 8094CEC4  80 1D 06 2C */	lwz r0, 0x62c(r29)
/* 8094CEC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8094CECC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8094CED0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8094CED4  38 81 00 0C */	addi r4, r1, 0xc
/* 8094CED8  4B 6C C9 21 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8094CEDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8094CEE0  41 82 01 20 */	beq lbl_8094D000
/* 8094CEE4  38 61 00 20 */	addi r3, r1, 0x20
/* 8094CEE8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8094CEEC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8094CEF0  4B 91 9C 45 */	bl __mi__4cXyzCFRC3Vec
/* 8094CEF4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8094CEF8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8094CEFC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8094CF00  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8094CF04  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8094CF08  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8094CF0C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8094CF10  4B 9F A2 29 */	bl PSVECSquareMag
/* 8094CF14  FC 00 F8 90 */	fmr f0, f31
/* 8094CF18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CF1C  40 81 00 58 */	ble lbl_8094CF74
/* 8094CF20  FC 00 08 34 */	frsqrte f0, f1
/* 8094CF24  C8 9E 00 70 */	lfd f4, 0x70(r30)
/* 8094CF28  FC 44 00 32 */	fmul f2, f4, f0
/* 8094CF2C  C8 7E 00 78 */	lfd f3, 0x78(r30)
/* 8094CF30  FC 00 00 32 */	fmul f0, f0, f0
/* 8094CF34  FC 01 00 32 */	fmul f0, f1, f0
/* 8094CF38  FC 03 00 28 */	fsub f0, f3, f0
/* 8094CF3C  FC 02 00 32 */	fmul f0, f2, f0
/* 8094CF40  FC 44 00 32 */	fmul f2, f4, f0
/* 8094CF44  FC 00 00 32 */	fmul f0, f0, f0
/* 8094CF48  FC 01 00 32 */	fmul f0, f1, f0
/* 8094CF4C  FC 03 00 28 */	fsub f0, f3, f0
/* 8094CF50  FC 02 00 32 */	fmul f0, f2, f0
/* 8094CF54  FC 44 00 32 */	fmul f2, f4, f0
/* 8094CF58  FC 00 00 32 */	fmul f0, f0, f0
/* 8094CF5C  FC 01 00 32 */	fmul f0, f1, f0
/* 8094CF60  FC 03 00 28 */	fsub f0, f3, f0
/* 8094CF64  FC 02 00 32 */	fmul f0, f2, f0
/* 8094CF68  FC 21 00 32 */	fmul f1, f1, f0
/* 8094CF6C  FC 20 08 18 */	frsp f1, f1
/* 8094CF70  48 00 00 88 */	b lbl_8094CFF8
lbl_8094CF74:
/* 8094CF74  C8 1E 00 80 */	lfd f0, 0x80(r30)
/* 8094CF78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094CF7C  40 80 00 10 */	bge lbl_8094CF8C
/* 8094CF80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8094CF84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8094CF88  48 00 00 70 */	b lbl_8094CFF8
lbl_8094CF8C:
/* 8094CF8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8094CF90  80 81 00 08 */	lwz r4, 8(r1)
/* 8094CF94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094CF98  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094CF9C  7C 03 00 00 */	cmpw r3, r0
/* 8094CFA0  41 82 00 14 */	beq lbl_8094CFB4
/* 8094CFA4  40 80 00 40 */	bge lbl_8094CFE4
/* 8094CFA8  2C 03 00 00 */	cmpwi r3, 0
/* 8094CFAC  41 82 00 20 */	beq lbl_8094CFCC
/* 8094CFB0  48 00 00 34 */	b lbl_8094CFE4
lbl_8094CFB4:
/* 8094CFB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094CFB8  41 82 00 0C */	beq lbl_8094CFC4
/* 8094CFBC  38 00 00 01 */	li r0, 1
/* 8094CFC0  48 00 00 28 */	b lbl_8094CFE8
lbl_8094CFC4:
/* 8094CFC4  38 00 00 02 */	li r0, 2
/* 8094CFC8  48 00 00 20 */	b lbl_8094CFE8
lbl_8094CFCC:
/* 8094CFCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094CFD0  41 82 00 0C */	beq lbl_8094CFDC
/* 8094CFD4  38 00 00 05 */	li r0, 5
/* 8094CFD8  48 00 00 10 */	b lbl_8094CFE8
lbl_8094CFDC:
/* 8094CFDC  38 00 00 03 */	li r0, 3
/* 8094CFE0  48 00 00 08 */	b lbl_8094CFE8
lbl_8094CFE4:
/* 8094CFE4  38 00 00 04 */	li r0, 4
lbl_8094CFE8:
/* 8094CFE8  2C 00 00 01 */	cmpwi r0, 1
/* 8094CFEC  40 82 00 0C */	bne lbl_8094CFF8
/* 8094CFF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8094CFF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8094CFF8:
/* 8094CFF8  D0 3D 05 E0 */	stfs f1, 0x5e0(r29)
/* 8094CFFC  48 00 00 2C */	b lbl_8094D028
lbl_8094D000:
/* 8094D000  38 61 00 14 */	addi r3, r1, 0x14
/* 8094D004  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8094D008  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8094D00C  4B 91 9B 29 */	bl __mi__4cXyzCFRC3Vec
/* 8094D010  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8094D014  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8094D018  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8094D01C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8094D020  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8094D024  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_8094D028:
/* 8094D028  A8 1D 05 FC */	lha r0, 0x5fc(r29)
/* 8094D02C  2C 00 00 01 */	cmpwi r0, 1
/* 8094D030  41 82 00 60 */	beq lbl_8094D090
/* 8094D034  40 80 00 10 */	bge lbl_8094D044
/* 8094D038  2C 00 00 00 */	cmpwi r0, 0
/* 8094D03C  40 80 00 14 */	bge lbl_8094D050
/* 8094D040  48 00 02 14 */	b lbl_8094D254
lbl_8094D044:
/* 8094D044  2C 00 00 03 */	cmpwi r0, 3
/* 8094D048  40 80 02 0C */	bge lbl_8094D254
/* 8094D04C  48 00 01 B8 */	b lbl_8094D204
lbl_8094D050:
/* 8094D050  7F A3 EB 78 */	mr r3, r29
/* 8094D054  38 80 00 0D */	li r4, 0xd
/* 8094D058  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 8094D05C  38 A0 00 02 */	li r5, 2
/* 8094D060  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8094D064  4B FF EC 45 */	bl anm_init__FP8ni_classifUcf
/* 8094D068  A8 7D 05 FC */	lha r3, 0x5fc(r29)
/* 8094D06C  38 03 00 01 */	addi r0, r3, 1
/* 8094D070  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8094D074  28 1F 00 00 */	cmplwi r31, 0
/* 8094D078  40 82 00 10 */	bne lbl_8094D088
/* 8094D07C  38 00 00 14 */	li r0, 0x14
/* 8094D080  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 8094D084  48 00 00 0C */	b lbl_8094D090
lbl_8094D088:
/* 8094D088  38 00 00 14 */	li r0, 0x14
/* 8094D08C  B0 1D 06 04 */	sth r0, 0x604(r29)
lbl_8094D090:
/* 8094D090  3C 60 80 95 */	lis r3, l_HIO@ha /* 0x8095159C@ha */
/* 8094D094  38 63 15 9C */	addi r3, r3, l_HIO@l /* 0x8095159C@l */
/* 8094D098  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 8094D09C  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 8094D0A0  38 63 00 0C */	addi r3, r3, 0xc
/* 8094D0A4  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8094D0A8  4B 9D B3 85 */	bl checkPass__12J3DFrameCtrlFf
/* 8094D0AC  2C 03 00 00 */	cmpwi r3, 0
/* 8094D0B0  40 82 00 1C */	bne lbl_8094D0CC
/* 8094D0B4  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 8094D0B8  38 63 00 0C */	addi r3, r3, 0xc
/* 8094D0BC  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8094D0C0  4B 9D B3 6D */	bl checkPass__12J3DFrameCtrlFf
/* 8094D0C4  2C 03 00 00 */	cmpwi r3, 0
/* 8094D0C8  41 82 00 30 */	beq lbl_8094D0F8
lbl_8094D0CC:
/* 8094D0CC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050006@ha */
/* 8094D0D0  38 03 00 06 */	addi r0, r3, 0x0006 /* 0x00050006@l */
/* 8094D0D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8094D0D8  38 7D 0A 28 */	addi r3, r29, 0xa28
/* 8094D0DC  38 81 00 10 */	addi r4, r1, 0x10
/* 8094D0E0  38 A0 00 00 */	li r5, 0
/* 8094D0E4  38 C0 FF FF */	li r6, -1
/* 8094D0E8  81 9D 0A 38 */	lwz r12, 0xa38(r29)
/* 8094D0EC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8094D0F0  7D 89 03 A6 */	mtctr r12
/* 8094D0F4  4E 80 04 21 */	bctrl 
lbl_8094D0F8:
/* 8094D0F8  A8 1D 06 04 */	lha r0, 0x604(r29)
/* 8094D0FC  2C 00 00 00 */	cmpwi r0, 0
/* 8094D100  40 82 00 9C */	bne lbl_8094D19C
/* 8094D104  C0 5D 05 E0 */	lfs f2, 0x5e0(r29)
/* 8094D108  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8094D10C  3C 60 80 95 */	lis r3, l_HIO@ha /* 0x8095159C@ha */
/* 8094D110  38 63 15 9C */	addi r3, r3, l_HIO@l /* 0x8095159C@l */
/* 8094D114  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8094D118  EC 00 08 2A */	fadds f0, f0, f1
/* 8094D11C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8094D120  40 81 00 14 */	ble lbl_8094D134
/* 8094D124  38 00 00 00 */	li r0, 0
/* 8094D128  B0 1D 05 FA */	sth r0, 0x5fa(r29)
/* 8094D12C  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8094D130  48 00 00 6C */	b lbl_8094D19C
lbl_8094D134:
/* 8094D134  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 8094D138  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8094D13C  41 82 00 60 */	beq lbl_8094D19C
/* 8094D140  28 1F 00 00 */	cmplwi r31, 0
/* 8094D144  40 82 00 14 */	bne lbl_8094D158
/* 8094D148  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8094D14C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8094D150  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8094D154  40 80 00 48 */	bge lbl_8094D19C
lbl_8094D158:
/* 8094D158  7F A3 EB 78 */	mr r3, r29
/* 8094D15C  38 80 00 06 */	li r4, 6
/* 8094D160  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8094D164  38 A0 00 02 */	li r5, 2
/* 8094D168  FC 40 08 90 */	fmr f2, f1
/* 8094D16C  4B FF EB 3D */	bl anm_init__FP8ni_classifUcf
/* 8094D170  3C 60 80 95 */	lis r3, l_HIO@ha /* 0x8095159C@ha */
/* 8094D174  38 63 15 9C */	addi r3, r3, l_HIO@l /* 0x8095159C@l */
/* 8094D178  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8094D17C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8094D180  A8 7D 05 FC */	lha r3, 0x5fc(r29)
/* 8094D184  38 03 00 01 */	addi r0, r3, 1
/* 8094D188  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 8094D18C  7F A3 EB 78 */	mr r3, r29
/* 8094D190  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 8094D194  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 8094D198  4B FF EB D1 */	bl hane_set__FP8ni_classff
lbl_8094D19C:
/* 8094D19C  A8 1D 06 06 */	lha r0, 0x606(r29)
/* 8094D1A0  2C 00 00 00 */	cmpwi r0, 0
/* 8094D1A4  40 82 00 B0 */	bne lbl_8094D254
/* 8094D1A8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8094D1AC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8094D1B0  4B 91 A4 C5 */	bl cM_atan2s__Fff
/* 8094D1B4  B0 7D 05 DC */	sth r3, 0x5dc(r29)
/* 8094D1B8  7F A3 EB 78 */	mr r3, r29
/* 8094D1BC  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8094D1C0  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8094D1C4  4B 6C FD 0D */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 8094D1C8  2C 03 00 00 */	cmpwi r3, 0
/* 8094D1CC  41 82 00 88 */	beq lbl_8094D254
/* 8094D1D0  38 00 00 1E */	li r0, 0x1e
/* 8094D1D4  B0 1D 06 06 */	sth r0, 0x606(r29)
/* 8094D1D8  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 8094D1DC  4B 91 A7 B1 */	bl cM_rndFX__Ff
/* 8094D1E0  FC 00 08 1E */	fctiwz f0, f1
/* 8094D1E4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8094D1E8  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8094D1EC  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8094D1F0  3C 03 00 01 */	addis r0, r3, 1
/* 8094D1F4  7C 60 22 14 */	add r3, r0, r4
/* 8094D1F8  38 03 80 00 */	addi r0, r3, -32768
/* 8094D1FC  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 8094D200  48 00 00 54 */	b lbl_8094D254
lbl_8094D204:
/* 8094D204  3C 60 80 95 */	lis r3, l_HIO@ha /* 0x8095159C@ha */
/* 8094D208  38 63 15 9C */	addi r3, r3, l_HIO@l /* 0x8095159C@l */
/* 8094D20C  C3 E3 00 20 */	lfs f31, 0x20(r3)
/* 8094D210  3B 80 04 00 */	li r28, 0x400
/* 8094D214  C3 DE 00 38 */	lfs f30, 0x38(r30)
/* 8094D218  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8094D21C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8094D220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094D224  4C 40 13 82 */	cror 2, 0, 2
/* 8094D228  40 82 00 2C */	bne lbl_8094D254
/* 8094D22C  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8094D230  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8094D234  80 1D 06 9C */	lwz r0, 0x69c(r29)
/* 8094D238  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8094D23C  40 82 00 10 */	bne lbl_8094D24C
/* 8094D240  88 1D 08 48 */	lbz r0, 0x848(r29)
/* 8094D244  7C 00 07 75 */	extsb. r0, r0
/* 8094D248  41 82 00 0C */	beq lbl_8094D254
lbl_8094D24C:
/* 8094D24C  38 00 00 00 */	li r0, 0
/* 8094D250  B0 1D 05 FC */	sth r0, 0x5fc(r29)
lbl_8094D254:
/* 8094D254  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8094D258  FC 20 F8 90 */	fmr f1, f31
/* 8094D25C  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 8094D260  FC 60 F0 90 */	fmr f3, f30
/* 8094D264  4B 92 27 D9 */	bl cLib_addCalc2__FPffff
/* 8094D268  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8094D26C  A8 9D 05 DC */	lha r4, 0x5dc(r29)
/* 8094D270  38 A0 00 02 */	li r5, 2
/* 8094D274  7F 86 E3 78 */	mr r6, r28
/* 8094D278  4B 92 33 91 */	bl cLib_addCalcAngleS2__FPssss
/* 8094D27C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8094D280  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8094D284  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8094D288  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8094D28C  39 61 00 60 */	addi r11, r1, 0x60
/* 8094D290  4B A1 4F 91 */	bl _restgpr_27
/* 8094D294  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8094D298  7C 08 03 A6 */	mtlr r0
/* 8094D29C  38 21 00 80 */	addi r1, r1, 0x80
/* 8094D2A0  4E 80 00 20 */	blr 
