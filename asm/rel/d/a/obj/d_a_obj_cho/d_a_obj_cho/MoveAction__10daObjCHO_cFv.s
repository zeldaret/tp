lbl_80BCAEDC:
/* 80BCAEDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BCAEE0  7C 08 02 A6 */	mflr r0
/* 80BCAEE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BCAEE8  39 61 00 40 */	addi r11, r1, 0x40
/* 80BCAEEC  4B 79 72 F0 */	b _savegpr_29
/* 80BCAEF0  7C 7E 1B 78 */	mr r30, r3
/* 80BCAEF4  3C 80 80 BD */	lis r4, lit_3775@ha
/* 80BCAEF8  3B E4 C5 78 */	addi r31, r4, lit_3775@l
/* 80BCAEFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BCAF00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BCAF04  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80BCAF08  4B FF F8 85 */	bl SpeedSet__10daObjCHO_cFv
/* 80BCAF0C  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 80BCAF10  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80BCAF14  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80BCAF18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCAF1C  40 81 00 18 */	ble lbl_80BCAF34
/* 80BCAF20  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BCAF24  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80BCAF28  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCAF2C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BCAF30  48 00 00 14 */	b lbl_80BCAF44
lbl_80BCAF34:
/* 80BCAF34  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BCAF38  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80BCAF3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BCAF40  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80BCAF44:
/* 80BCAF44  7F A3 EB 78 */	mr r3, r29
/* 80BCAF48  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80BCAF4C  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80BCAF50  7D 89 03 A6 */	mtctr r12
/* 80BCAF54  4E 80 04 21 */	bctrl 
/* 80BCAF58  7C 64 1B 79 */	or. r4, r3, r3
/* 80BCAF5C  41 82 00 10 */	beq lbl_80BCAF6C
/* 80BCAF60  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BCAF64  4B 6A 5C A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80BCAF68  B0 7E 09 90 */	sth r3, 0x990(r30)
lbl_80BCAF6C:
/* 80BCAF6C  A8 1E 09 82 */	lha r0, 0x982(r30)
/* 80BCAF70  2C 00 00 00 */	cmpwi r0, 0
/* 80BCAF74  40 82 00 94 */	bne lbl_80BCB008
/* 80BCAF78  38 61 00 0C */	addi r3, r1, 0xc
/* 80BCAF7C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80BCAF80  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BCAF84  4B 69 BB B0 */	b __mi__4cXyzCFRC3Vec
/* 80BCAF88  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BCAF8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BCAF90  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BCAF94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BCAF98  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BCAF9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BCAFA0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BCAFA4  4B 69 C9 E8 */	b cM_rndFX__Ff
/* 80BCAFA8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BCAFAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80BCAFB0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BCAFB4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80BCAFB8  4B 69 C9 D4 */	b cM_rndFX__Ff
/* 80BCAFBC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BCAFC0  EC 40 08 2A */	fadds f2, f0, f1
/* 80BCAFC4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80BCAFC8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80BCAFCC  4B 69 C6 A8 */	b cM_atan2s__Fff
/* 80BCAFD0  B0 7E 09 90 */	sth r3, 0x990(r30)
/* 80BCAFD4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BCAFD8  4B 69 C9 7C */	b cM_rndF__Ff
/* 80BCAFDC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BCAFE0  EC 00 08 2A */	fadds f0, f0, f1
/* 80BCAFE4  FC 00 00 1E */	fctiwz f0, f0
/* 80BCAFE8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BCAFEC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BCAFF0  B0 1E 09 82 */	sth r0, 0x982(r30)
/* 80BCAFF4  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80BCAFF8  4B 69 C9 5C */	b cM_rndF__Ff
/* 80BCAFFC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80BCB000  EC 00 08 2A */	fadds f0, f0, f1
/* 80BCB004  D0 1E 09 88 */	stfs f0, 0x988(r30)
lbl_80BCB008:
/* 80BCB008  A8 1E 09 84 */	lha r0, 0x984(r30)
/* 80BCB00C  2C 00 00 00 */	cmpwi r0, 0
/* 80BCB010  40 82 00 30 */	bne lbl_80BCB040
/* 80BCB014  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80BCB018  4B 69 C9 74 */	b cM_rndFX__Ff
/* 80BCB01C  D0 3E 09 8C */	stfs f1, 0x98c(r30)
/* 80BCB020  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BCB024  4B 69 C9 30 */	b cM_rndF__Ff
/* 80BCB028  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BCB02C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BCB030  FC 00 00 1E */	fctiwz f0, f0
/* 80BCB034  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BCB038  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80BCB03C  B0 1E 09 84 */	sth r0, 0x984(r30)
lbl_80BCB040:
/* 80BCB040  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80BCB044  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80BCB048  C0 3E 09 7C */	lfs f1, 0x97c(r30)
/* 80BCB04C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BCB050  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BCB054  40 80 00 14 */	bge lbl_80BCB068
/* 80BCB058  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80BCB05C  4B 69 C8 F8 */	b cM_rndF__Ff
/* 80BCB060  D0 3E 09 8C */	stfs f1, 0x98c(r30)
/* 80BCB064  48 00 00 24 */	b lbl_80BCB088
lbl_80BCB068:
/* 80BCB068  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80BCB06C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BCB070  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BCB074  40 81 00 14 */	ble lbl_80BCB088
/* 80BCB078  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80BCB07C  4B 69 C8 D8 */	b cM_rndF__Ff
/* 80BCB080  FC 00 08 50 */	fneg f0, f1
/* 80BCB084  D0 1E 09 8C */	stfs f0, 0x98c(r30)
lbl_80BCB088:
/* 80BCB088  88 1E 09 AC */	lbz r0, 0x9ac(r30)
/* 80BCB08C  28 00 00 00 */	cmplwi r0, 0
/* 80BCB090  40 82 00 34 */	bne lbl_80BCB0C4
/* 80BCB094  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80BCB098  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80BCB09C  C0 3E 09 8C */	lfs f1, 0x98c(r30)
/* 80BCB0A0  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80BCB0A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BCB0A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BCB0AC  FC 00 00 1E */	fctiwz f0, f0
/* 80BCB0B0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80BCB0B4  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80BCB0B8  38 A0 00 10 */	li r5, 0x10
/* 80BCB0BC  38 C0 10 00 */	li r6, 0x1000
/* 80BCB0C0  4B 6A 55 48 */	b cLib_addCalcAngleS2__FPssss
lbl_80BCB0C4:
/* 80BCB0C4  7F C3 F3 78 */	mr r3, r30
/* 80BCB0C8  4B FF F7 C5 */	bl WallCheck__10daObjCHO_cFv
/* 80BCB0CC  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80BCB0D0  4B 77 C0 68 */	b PSVECSquareMag
/* 80BCB0D4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCB0D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCB0DC  40 81 00 58 */	ble lbl_80BCB134
/* 80BCB0E0  FC 00 08 34 */	frsqrte f0, f1
/* 80BCB0E4  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 80BCB0E8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCB0EC  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 80BCB0F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCB0F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCB0F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCB0FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCB100  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCB104  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCB108  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCB10C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCB110  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCB114  FC 44 00 32 */	fmul f2, f4, f0
/* 80BCB118  FC 00 00 32 */	fmul f0, f0, f0
/* 80BCB11C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BCB120  FC 03 00 28 */	fsub f0, f3, f0
/* 80BCB124  FC 02 00 32 */	fmul f0, f2, f0
/* 80BCB128  FC 21 00 32 */	fmul f1, f1, f0
/* 80BCB12C  FC 20 08 18 */	frsp f1, f1
/* 80BCB130  48 00 00 88 */	b lbl_80BCB1B8
lbl_80BCB134:
/* 80BCB134  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 80BCB138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCB13C  40 80 00 10 */	bge lbl_80BCB14C
/* 80BCB140  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCB144  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80BCB148  48 00 00 70 */	b lbl_80BCB1B8
lbl_80BCB14C:
/* 80BCB14C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BCB150  80 81 00 08 */	lwz r4, 8(r1)
/* 80BCB154  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BCB158  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BCB15C  7C 03 00 00 */	cmpw r3, r0
/* 80BCB160  41 82 00 14 */	beq lbl_80BCB174
/* 80BCB164  40 80 00 40 */	bge lbl_80BCB1A4
/* 80BCB168  2C 03 00 00 */	cmpwi r3, 0
/* 80BCB16C  41 82 00 20 */	beq lbl_80BCB18C
/* 80BCB170  48 00 00 34 */	b lbl_80BCB1A4
lbl_80BCB174:
/* 80BCB174  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCB178  41 82 00 0C */	beq lbl_80BCB184
/* 80BCB17C  38 00 00 01 */	li r0, 1
/* 80BCB180  48 00 00 28 */	b lbl_80BCB1A8
lbl_80BCB184:
/* 80BCB184  38 00 00 02 */	li r0, 2
/* 80BCB188  48 00 00 20 */	b lbl_80BCB1A8
lbl_80BCB18C:
/* 80BCB18C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BCB190  41 82 00 0C */	beq lbl_80BCB19C
/* 80BCB194  38 00 00 05 */	li r0, 5
/* 80BCB198  48 00 00 10 */	b lbl_80BCB1A8
lbl_80BCB19C:
/* 80BCB19C  38 00 00 03 */	li r0, 3
/* 80BCB1A0  48 00 00 08 */	b lbl_80BCB1A8
lbl_80BCB1A4:
/* 80BCB1A4  38 00 00 04 */	li r0, 4
lbl_80BCB1A8:
/* 80BCB1A8  2C 00 00 01 */	cmpwi r0, 1
/* 80BCB1AC  40 82 00 0C */	bne lbl_80BCB1B8
/* 80BCB1B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80BCB1B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80BCB1B8:
/* 80BCB1B8  38 7E 09 B0 */	addi r3, r30, 0x9b0
/* 80BCB1BC  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80BCB1C0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80BCB1C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BCB1C8  EC 22 00 2A */	fadds f1, f2, f0
/* 80BCB1CC  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80BCB1D0  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80BCB1D4  4B 6A 48 68 */	b cLib_addCalc2__FPffff
/* 80BCB1D8  C0 1E 09 B0 */	lfs f0, 0x9b0(r30)
/* 80BCB1DC  80 7E 0A 60 */	lwz r3, 0xa60(r30)
/* 80BCB1E0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BCB1E4  A8 1E 09 86 */	lha r0, 0x986(r30)
/* 80BCB1E8  2C 00 00 00 */	cmpwi r0, 0
/* 80BCB1EC  40 82 00 0C */	bne lbl_80BCB1F8
/* 80BCB1F0  7F C3 F3 78 */	mr r3, r30
/* 80BCB1F4  4B FF F7 31 */	bl SearchLink__10daObjCHO_cFv
lbl_80BCB1F8:
/* 80BCB1F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80BCB1FC  4B 79 70 2C */	b _restgpr_29
/* 80BCB200  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BCB204  7C 08 03 A6 */	mtlr r0
/* 80BCB208  38 21 00 40 */	addi r1, r1, 0x40
/* 80BCB20C  4E 80 00 20 */	blr 
