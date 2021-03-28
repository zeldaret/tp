lbl_8080F92C:
/* 8080F92C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8080F930  7C 08 02 A6 */	mflr r0
/* 8080F934  90 01 00 74 */	stw r0, 0x74(r1)
/* 8080F938  39 61 00 70 */	addi r11, r1, 0x70
/* 8080F93C  4B B5 28 98 */	b _savegpr_27
/* 8080F940  7C 7D 1B 78 */	mr r29, r3
/* 8080F944  3C 60 80 81 */	lis r3, lit_3925@ha
/* 8080F948  3B C3 59 94 */	addi r30, r3, lit_3925@l
/* 8080F94C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070199@ha */
/* 8080F950  38 03 01 99 */	addi r0, r3, 0x0199 /* 0x00070199@l */
/* 8080F954  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8080F958  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080F95C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8080F960  38 A0 00 00 */	li r5, 0
/* 8080F964  38 C0 FF FF */	li r6, -1
/* 8080F968  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080F96C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080F970  7D 89 03 A6 */	mtctr r12
/* 8080F974  4E 80 04 21 */	bctrl 
/* 8080F978  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8080F97C  2C 00 00 02 */	cmpwi r0, 2
/* 8080F980  41 82 01 3C */	beq lbl_8080FABC
/* 8080F984  40 80 00 14 */	bge lbl_8080F998
/* 8080F988  2C 00 00 00 */	cmpwi r0, 0
/* 8080F98C  41 82 00 20 */	beq lbl_8080F9AC
/* 8080F990  40 80 00 7C */	bge lbl_8080FA0C
/* 8080F994  48 00 06 D8 */	b lbl_8081006C
lbl_8080F998:
/* 8080F998  2C 00 00 06 */	cmpwi r0, 6
/* 8080F99C  40 80 06 D0 */	bge lbl_8081006C
/* 8080F9A0  2C 00 00 04 */	cmpwi r0, 4
/* 8080F9A4  40 80 05 08 */	bge lbl_8080FEAC
/* 8080F9A8  48 00 06 0C */	b lbl_8080FFB4
lbl_8080F9AC:
/* 8080F9AC  38 00 00 00 */	li r0, 0
/* 8080F9B0  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
/* 8080F9B4  7F A3 EB 78 */	mr r3, r29
/* 8080F9B8  38 80 00 05 */	li r4, 5
/* 8080F9BC  38 A0 00 00 */	li r5, 0
/* 8080F9C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080F9C4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080F9C8  4B FF 89 61 */	bl bckSetFly__8daE_YM_cFiUcff
/* 8080F9CC  38 00 00 01 */	li r0, 1
/* 8080F9D0  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080F9D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080F9D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8080F9DC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8080F9E0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8080F9E4  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8080F9E8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8080F9EC  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8080F9F0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8080F9F4  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 8080F9F8  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 8080F9FC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8080FA00  EC 01 00 2A */	fadds f0, f1, f0
/* 8080FA04  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8080FA08  48 00 06 64 */	b lbl_8081006C
lbl_8080FA0C:
/* 8080FA0C  7F A3 EB 78 */	mr r3, r29
/* 8080FA10  4B FF 8E 75 */	bl setElecEffect1__8daE_YM_cFv
/* 8080FA14  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070195@ha */
/* 8080FA18  38 03 01 95 */	addi r0, r3, 0x0195 /* 0x00070195@l */
/* 8080FA1C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8080FA20  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080FA24  38 81 00 18 */	addi r4, r1, 0x18
/* 8080FA28  38 A0 00 00 */	li r5, 0
/* 8080FA2C  38 C0 FF FF */	li r6, -1
/* 8080FA30  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080FA34  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080FA38  7D 89 03 A6 */	mtctr r12
/* 8080FA3C  4E 80 04 21 */	bctrl 
/* 8080FA40  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8080FA44  38 80 00 00 */	li r4, 0
/* 8080FA48  38 A0 04 00 */	li r5, 0x400
/* 8080FA4C  4B A6 11 44 */	b cLib_chaseAngleS__FPsss
/* 8080FA50  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8080FA54  38 80 00 00 */	li r4, 0
/* 8080FA58  38 A0 04 00 */	li r5, 0x400
/* 8080FA5C  4B A6 11 34 */	b cLib_chaseAngleS__FPsss
/* 8080FA60  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080FA64  38 80 00 01 */	li r4, 1
/* 8080FA68  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080FA6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080FA70  40 82 00 18 */	bne lbl_8080FA88
/* 8080FA74  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080FA78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080FA7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080FA80  41 82 00 08 */	beq lbl_8080FA88
/* 8080FA84  38 80 00 00 */	li r4, 0
lbl_8080FA88:
/* 8080FA88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080FA8C  41 82 05 E0 */	beq lbl_8081006C
/* 8080FA90  7F A3 EB 78 */	mr r3, r29
/* 8080FA94  38 80 00 06 */	li r4, 6
/* 8080FA98  38 A0 00 02 */	li r5, 2
/* 8080FA9C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080FAA0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080FAA4  4B FF 88 85 */	bl bckSetFly__8daE_YM_cFiUcff
/* 8080FAA8  38 00 00 02 */	li r0, 2
/* 8080FAAC  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080FAB0  38 00 01 2C */	li r0, 0x12c
/* 8080FAB4  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8080FAB8  48 00 05 B4 */	b lbl_8081006C
lbl_8080FABC:
/* 8080FABC  7F A3 EB 78 */	mr r3, r29
/* 8080FAC0  4B FF 8F 1D */	bl setElecEffect2__8daE_YM_cFv
/* 8080FAC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070196@ha */
/* 8080FAC8  38 03 01 96 */	addi r0, r3, 0x0196 /* 0x00070196@l */
/* 8080FACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080FAD0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080FAD4  38 81 00 14 */	addi r4, r1, 0x14
/* 8080FAD8  38 A0 00 00 */	li r5, 0
/* 8080FADC  38 C0 FF FF */	li r6, -1
/* 8080FAE0  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080FAE4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080FAE8  7D 89 03 A6 */	mtctr r12
/* 8080FAEC  4E 80 04 21 */	bctrl 
/* 8080FAF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007019A@ha */
/* 8080FAF4  38 03 01 9A */	addi r0, r3, 0x019A /* 0x0007019A@l */
/* 8080FAF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080FAFC  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8080FB00  38 81 00 10 */	addi r4, r1, 0x10
/* 8080FB04  38 A0 00 00 */	li r5, 0
/* 8080FB08  38 C0 FF FF */	li r6, -1
/* 8080FB0C  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8080FB10  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8080FB14  7D 89 03 A6 */	mtctr r12
/* 8080FB18  4E 80 04 21 */	bctrl 
/* 8080FB1C  3C 60 80 81 */	lis r3, l_HIO@ha
/* 8080FB20  3B E3 5D 38 */	addi r31, r3, l_HIO@l
/* 8080FB24  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8080FB28  FC 00 00 1E */	fctiwz f0, f0
/* 8080FB2C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8080FB30  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8080FB34  B0 1D 07 00 */	sth r0, 0x700(r29)
/* 8080FB38  80 1D 09 74 */	lwz r0, 0x974(r29)
/* 8080FB3C  60 00 00 01 */	ori r0, r0, 1
/* 8080FB40  90 1D 09 74 */	stw r0, 0x974(r29)
/* 8080FB44  38 61 00 2C */	addi r3, r1, 0x2c
/* 8080FB48  38 9D 06 7C */	addi r4, r29, 0x67c
/* 8080FB4C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8080FB50  4B A5 6F E4 */	b __mi__4cXyzCFRC3Vec
/* 8080FB54  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8080FB58  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8080FB5C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8080FB60  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8080FB64  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8080FB68  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8080FB6C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080FB70  38 9D 06 7C */	addi r4, r29, 0x67c
/* 8080FB74  4B A6 10 90 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8080FB78  7C 64 1B 78 */	mr r4, r3
/* 8080FB7C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8080FB80  38 A0 08 00 */	li r5, 0x800
/* 8080FB84  4B A6 10 0C */	b cLib_chaseAngleS__FPsss
/* 8080FB88  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8080FB8C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8080FB90  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8080FB94  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8080FB98  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080FB9C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8080FBA0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8080FBA4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8080FBA8  38 61 00 20 */	addi r3, r1, 0x20
/* 8080FBAC  4B B3 75 8C */	b PSVECSquareMag
/* 8080FBB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080FBB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080FBB8  40 81 00 58 */	ble lbl_8080FC10
/* 8080FBBC  FC 00 08 34 */	frsqrte f0, f1
/* 8080FBC0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080FBC4  FC 44 00 32 */	fmul f2, f4, f0
/* 8080FBC8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080FBCC  FC 00 00 32 */	fmul f0, f0, f0
/* 8080FBD0  FC 01 00 32 */	fmul f0, f1, f0
/* 8080FBD4  FC 03 00 28 */	fsub f0, f3, f0
/* 8080FBD8  FC 02 00 32 */	fmul f0, f2, f0
/* 8080FBDC  FC 44 00 32 */	fmul f2, f4, f0
/* 8080FBE0  FC 00 00 32 */	fmul f0, f0, f0
/* 8080FBE4  FC 01 00 32 */	fmul f0, f1, f0
/* 8080FBE8  FC 03 00 28 */	fsub f0, f3, f0
/* 8080FBEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8080FBF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8080FBF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8080FBF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8080FBFC  FC 03 00 28 */	fsub f0, f3, f0
/* 8080FC00  FC 02 00 32 */	fmul f0, f2, f0
/* 8080FC04  FC 21 00 32 */	fmul f1, f1, f0
/* 8080FC08  FC 20 08 18 */	frsp f1, f1
/* 8080FC0C  48 00 00 88 */	b lbl_8080FC94
lbl_8080FC10:
/* 8080FC10  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080FC14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080FC18  40 80 00 10 */	bge lbl_8080FC28
/* 8080FC1C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080FC20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080FC24  48 00 00 70 */	b lbl_8080FC94
lbl_8080FC28:
/* 8080FC28  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8080FC2C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8080FC30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080FC34  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080FC38  7C 03 00 00 */	cmpw r3, r0
/* 8080FC3C  41 82 00 14 */	beq lbl_8080FC50
/* 8080FC40  40 80 00 40 */	bge lbl_8080FC80
/* 8080FC44  2C 03 00 00 */	cmpwi r3, 0
/* 8080FC48  41 82 00 20 */	beq lbl_8080FC68
/* 8080FC4C  48 00 00 34 */	b lbl_8080FC80
lbl_8080FC50:
/* 8080FC50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080FC54  41 82 00 0C */	beq lbl_8080FC60
/* 8080FC58  38 00 00 01 */	li r0, 1
/* 8080FC5C  48 00 00 28 */	b lbl_8080FC84
lbl_8080FC60:
/* 8080FC60  38 00 00 02 */	li r0, 2
/* 8080FC64  48 00 00 20 */	b lbl_8080FC84
lbl_8080FC68:
/* 8080FC68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080FC6C  41 82 00 0C */	beq lbl_8080FC78
/* 8080FC70  38 00 00 05 */	li r0, 5
/* 8080FC74  48 00 00 10 */	b lbl_8080FC84
lbl_8080FC78:
/* 8080FC78  38 00 00 03 */	li r0, 3
/* 8080FC7C  48 00 00 08 */	b lbl_8080FC84
lbl_8080FC80:
/* 8080FC80  38 00 00 04 */	li r0, 4
lbl_8080FC84:
/* 8080FC84  2C 00 00 01 */	cmpwi r0, 1
/* 8080FC88  40 82 00 0C */	bne lbl_8080FC94
/* 8080FC8C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080FC90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080FC94:
/* 8080FC94  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8080FC98  4B A5 79 DC */	b cM_atan2s__Fff
/* 8080FC9C  7C 65 07 34 */	extsh r5, r3
/* 8080FCA0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8080FCA4  3C 80 80 81 */	lis r4, l_HIO@ha
/* 8080FCA8  3B 84 5D 38 */	addi r28, r4, l_HIO@l
/* 8080FCAC  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 8080FCB0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8080FCB4  38 04 9A 20 */	addi r0, r4, sincosTable___5JMath@l
/* 8080FCB8  54 BB 04 38 */	rlwinm r27, r5, 0, 0x10, 0x1c
/* 8080FCBC  7C 80 DA 14 */	add r4, r0, r27
/* 8080FCC0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8080FCC4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8080FCC8  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 8080FCCC  4B A6 0A 74 */	b cLib_chaseF__FPfff
/* 8080FCD0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8080FCD4  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 8080FCD8  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 8080FCDC  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 8080FCE0  7C 04 DC 2E */	lfsx f0, r4, r27
/* 8080FCE4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8080FCE8  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8080FCEC  4B A6 0A 54 */	b cLib_chaseF__FPfff
/* 8080FCF0  38 7D 09 74 */	addi r3, r29, 0x974
/* 8080FCF4  4B 87 45 CC */	b ChkAtHit__12dCcD_GObjInfFv
/* 8080FCF8  28 03 00 00 */	cmplwi r3, 0
/* 8080FCFC  41 82 00 64 */	beq lbl_8080FD60
/* 8080FD00  38 7D 09 74 */	addi r3, r29, 0x974
/* 8080FD04  4B 87 46 54 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 8080FD08  4B A5 3D 40 */	b GetAc__8cCcD_ObjFv
/* 8080FD0C  A8 03 00 08 */	lha r0, 8(r3)
/* 8080FD10  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8080FD14  40 82 00 4C */	bne lbl_8080FD60
/* 8080FD18  7F A3 EB 78 */	mr r3, r29
/* 8080FD1C  38 80 00 07 */	li r4, 7
/* 8080FD20  38 A0 00 00 */	li r5, 0
/* 8080FD24  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080FD28  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080FD2C  4B FF 85 FD */	bl bckSetFly__8daE_YM_cFiUcff
/* 8080FD30  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080FD34  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080FD38  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080FD3C  38 00 00 04 */	li r0, 4
/* 8080FD40  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080FD44  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8080FD48  38 9D 06 70 */	addi r4, r29, 0x670
/* 8080FD4C  4B A6 0E B8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8080FD50  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8080FD54  38 00 00 00 */	li r0, 0
/* 8080FD58  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 8080FD5C  48 00 03 10 */	b lbl_8081006C
lbl_8080FD60:
/* 8080FD60  38 61 00 38 */	addi r3, r1, 0x38
/* 8080FD64  4B B3 73 D4 */	b PSVECSquareMag
/* 8080FD68  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080FD6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080FD70  40 81 00 58 */	ble lbl_8080FDC8
/* 8080FD74  FC 00 08 34 */	frsqrte f0, f1
/* 8080FD78  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8080FD7C  FC 44 00 32 */	fmul f2, f4, f0
/* 8080FD80  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8080FD84  FC 00 00 32 */	fmul f0, f0, f0
/* 8080FD88  FC 01 00 32 */	fmul f0, f1, f0
/* 8080FD8C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080FD90  FC 02 00 32 */	fmul f0, f2, f0
/* 8080FD94  FC 44 00 32 */	fmul f2, f4, f0
/* 8080FD98  FC 00 00 32 */	fmul f0, f0, f0
/* 8080FD9C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080FDA0  FC 03 00 28 */	fsub f0, f3, f0
/* 8080FDA4  FC 02 00 32 */	fmul f0, f2, f0
/* 8080FDA8  FC 44 00 32 */	fmul f2, f4, f0
/* 8080FDAC  FC 00 00 32 */	fmul f0, f0, f0
/* 8080FDB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8080FDB4  FC 03 00 28 */	fsub f0, f3, f0
/* 8080FDB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8080FDBC  FC 21 00 32 */	fmul f1, f1, f0
/* 8080FDC0  FC 20 08 18 */	frsp f1, f1
/* 8080FDC4  48 00 00 88 */	b lbl_8080FE4C
lbl_8080FDC8:
/* 8080FDC8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8080FDCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080FDD0  40 80 00 10 */	bge lbl_8080FDE0
/* 8080FDD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080FDD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8080FDDC  48 00 00 70 */	b lbl_8080FE4C
lbl_8080FDE0:
/* 8080FDE0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080FDE4  80 81 00 08 */	lwz r4, 8(r1)
/* 8080FDE8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080FDEC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080FDF0  7C 03 00 00 */	cmpw r3, r0
/* 8080FDF4  41 82 00 14 */	beq lbl_8080FE08
/* 8080FDF8  40 80 00 40 */	bge lbl_8080FE38
/* 8080FDFC  2C 03 00 00 */	cmpwi r3, 0
/* 8080FE00  41 82 00 20 */	beq lbl_8080FE20
/* 8080FE04  48 00 00 34 */	b lbl_8080FE38
lbl_8080FE08:
/* 8080FE08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080FE0C  41 82 00 0C */	beq lbl_8080FE18
/* 8080FE10  38 00 00 01 */	li r0, 1
/* 8080FE14  48 00 00 28 */	b lbl_8080FE3C
lbl_8080FE18:
/* 8080FE18  38 00 00 02 */	li r0, 2
/* 8080FE1C  48 00 00 20 */	b lbl_8080FE3C
lbl_8080FE20:
/* 8080FE20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080FE24  41 82 00 0C */	beq lbl_8080FE30
/* 8080FE28  38 00 00 05 */	li r0, 5
/* 8080FE2C  48 00 00 10 */	b lbl_8080FE3C
lbl_8080FE30:
/* 8080FE30  38 00 00 03 */	li r0, 3
/* 8080FE34  48 00 00 08 */	b lbl_8080FE3C
lbl_8080FE38:
/* 8080FE38  38 00 00 04 */	li r0, 4
lbl_8080FE3C:
/* 8080FE3C  2C 00 00 01 */	cmpwi r0, 1
/* 8080FE40  40 82 00 0C */	bne lbl_8080FE4C
/* 8080FE44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080FE48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8080FE4C:
/* 8080FE4C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8080FE50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080FE54  41 80 00 10 */	blt lbl_8080FE64
/* 8080FE58  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080FE5C  2C 00 00 00 */	cmpwi r0, 0
/* 8080FE60  40 82 00 40 */	bne lbl_8080FEA0
lbl_8080FE64:
/* 8080FE64  38 00 00 05 */	li r0, 5
/* 8080FE68  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080FE6C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8080FE70  FC 00 00 1E */	fctiwz f0, f0
/* 8080FE74  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8080FE78  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8080FE7C  B0 1D 07 00 */	sth r0, 0x700(r29)
/* 8080FE80  7F A3 EB 78 */	mr r3, r29
/* 8080FE84  38 80 00 0E */	li r4, 0xe
/* 8080FE88  38 A0 00 02 */	li r5, 2
/* 8080FE8C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8080FE90  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080FE94  4B FF 84 95 */	bl bckSetFly__8daE_YM_cFiUcff
/* 8080FE98  38 00 00 1E */	li r0, 0x1e
/* 8080FE9C  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
lbl_8080FEA0:
/* 8080FEA0  7F A3 EB 78 */	mr r3, r29
/* 8080FEA4  4B FF FA 25 */	bl setInclination__8daE_YM_cFv
/* 8080FEA8  48 00 01 C4 */	b lbl_8081006C
lbl_8080FEAC:
/* 8080FEAC  A8 7D 06 E4 */	lha r3, 0x6e4(r29)
/* 8080FEB0  38 03 08 00 */	addi r0, r3, 0x800
/* 8080FEB4  B0 1D 06 E4 */	sth r0, 0x6e4(r29)
/* 8080FEB8  A8 1D 06 E4 */	lha r0, 0x6e4(r29)
/* 8080FEBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8080FEC0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8080FEC4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8080FEC8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8080FECC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8080FED0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8080FED4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8080FED8  EC 01 00 2A */	fadds f0, f1, f0
/* 8080FEDC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8080FEE0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8080FEE4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080FEE8  4B A6 08 58 */	b cLib_chaseF__FPfff
/* 8080FEEC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8080FEF0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080FEF4  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8080FEF8  4B A6 08 48 */	b cLib_chaseF__FPfff
/* 8080FEFC  38 A0 00 00 */	li r5, 0
/* 8080FF00  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8080FF04  2C 00 00 04 */	cmpwi r0, 4
/* 8080FF08  40 82 00 3C */	bne lbl_8080FF44
/* 8080FF0C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8080FF10  38 80 00 01 */	li r4, 1
/* 8080FF14  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8080FF18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8080FF1C  40 82 00 18 */	bne lbl_8080FF34
/* 8080FF20  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8080FF24  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8080FF28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8080FF2C  41 82 00 08 */	beq lbl_8080FF34
/* 8080FF30  38 80 00 00 */	li r4, 0
lbl_8080FF34:
/* 8080FF34  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8080FF38  41 82 00 1C */	beq lbl_8080FF54
/* 8080FF3C  38 A0 00 01 */	li r5, 1
/* 8080FF40  48 00 00 14 */	b lbl_8080FF54
lbl_8080FF44:
/* 8080FF44  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8080FF48  2C 00 00 00 */	cmpwi r0, 0
/* 8080FF4C  40 82 00 08 */	bne lbl_8080FF54
/* 8080FF50  38 A0 00 01 */	li r5, 1
lbl_8080FF54:
/* 8080FF54  2C 05 00 00 */	cmpwi r5, 0
/* 8080FF58  41 82 00 50 */	beq lbl_8080FFA8
/* 8080FF5C  38 00 00 03 */	li r0, 3
/* 8080FF60  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8080FF64  7F A3 EB 78 */	mr r3, r29
/* 8080FF68  38 80 00 0E */	li r4, 0xe
/* 8080FF6C  38 A0 00 02 */	li r5, 2
/* 8080FF70  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8080FF74  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8080FF78  4B FF 83 B1 */	bl bckSetFly__8daE_YM_cFiUcff
/* 8080FF7C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8080FF80  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8080FF84  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8080FF88  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8080FF8C  4B A5 79 C8 */	b cM_rndF__Ff
/* 8080FF90  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8080FF94  EC 00 08 2A */	fadds f0, f0, f1
/* 8080FF98  FC 00 00 1E */	fctiwz f0, f0
/* 8080FF9C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8080FFA0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8080FFA4  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
lbl_8080FFA8:
/* 8080FFA8  7F A3 EB 78 */	mr r3, r29
/* 8080FFAC  4B FF F9 1D */	bl setInclination__8daE_YM_cFv
/* 8080FFB0  48 00 00 BC */	b lbl_8081006C
lbl_8080FFB4:
/* 8080FFB4  AB 7D 06 EA */	lha r27, 0x6ea(r29)
/* 8080FFB8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8080FFBC  3C 9B 00 01 */	addis r4, r27, 1
/* 8080FFC0  38 04 80 00 */	addi r0, r4, -32768
/* 8080FFC4  7C 04 07 34 */	extsh r4, r0
/* 8080FFC8  38 A0 00 04 */	li r5, 4
/* 8080FFCC  38 C0 10 00 */	li r6, 0x1000
/* 8080FFD0  38 E0 01 00 */	li r7, 0x100
/* 8080FFD4  4B A6 05 6C */	b cLib_addCalcAngleS__FPsssss
/* 8080FFD8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8080FFDC  7F 64 DB 78 */	mr r4, r27
/* 8080FFE0  38 A0 04 00 */	li r5, 0x400
/* 8080FFE4  4B A6 0B AC */	b cLib_chaseAngleS__FPsss
/* 8080FFE8  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8080FFEC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8080FFF0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8080FFF4  4B A6 07 4C */	b cLib_chaseF__FPfff
/* 8080FFF8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8080FFFC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80810000  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80810004  4B A6 07 3C */	b cLib_chaseF__FPfff
/* 80810008  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 8081000C  2C 00 00 00 */	cmpwi r0, 0
/* 80810010  40 82 00 18 */	bne lbl_80810028
/* 80810014  7F A3 EB 78 */	mr r3, r29
/* 80810018  38 80 00 0B */	li r4, 0xb
/* 8081001C  4B FF 9F 81 */	bl setActionMode__8daE_YM_cFi
/* 80810020  38 00 00 02 */	li r0, 2
/* 80810024  90 1D 06 98 */	stw r0, 0x698(r29)
lbl_80810028:
/* 80810028  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8081002C  C0 5D 04 FC */	lfs f2, 0x4fc(r29)
/* 80810030  4B A5 76 44 */	b cM_atan2s__Fff
/* 80810034  38 03 C0 00 */	addi r0, r3, -16384
/* 80810038  7C 04 07 34 */	extsh r4, r0
/* 8081003C  2C 04 E8 90 */	cmpwi r4, -6000
/* 80810040  40 80 00 08 */	bge lbl_80810048
/* 80810044  38 80 E8 90 */	li r4, -6000
lbl_80810048:
/* 80810048  7C 80 07 34 */	extsh r0, r4
/* 8081004C  2C 00 17 70 */	cmpwi r0, 0x1770
/* 80810050  40 81 00 08 */	ble lbl_80810058
/* 80810054  38 80 17 70 */	li r4, 0x1770
lbl_80810058:
/* 80810058  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8081005C  38 A0 01 80 */	li r5, 0x180
/* 80810060  4B A6 0B 30 */	b cLib_chaseAngleS__FPsss
/* 80810064  7F A3 EB 78 */	mr r3, r29
/* 80810068  4B FF F8 61 */	bl setInclination__8daE_YM_cFv
lbl_8081006C:
/* 8081006C  39 61 00 70 */	addi r11, r1, 0x70
/* 80810070  4B B5 21 B0 */	b _restgpr_27
/* 80810074  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80810078  7C 08 03 A6 */	mtlr r0
/* 8081007C  38 21 00 70 */	addi r1, r1, 0x70
/* 80810080  4E 80 00 20 */	blr 
