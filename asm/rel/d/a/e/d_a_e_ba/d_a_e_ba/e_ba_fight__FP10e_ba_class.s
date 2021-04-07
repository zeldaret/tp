lbl_8067F9E0:
/* 8067F9E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8067F9E4  7C 08 02 A6 */	mflr r0
/* 8067F9E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8067F9EC  39 61 00 40 */	addi r11, r1, 0x40
/* 8067F9F0  4B CE 27 E9 */	bl _savegpr_28
/* 8067F9F4  7C 7E 1B 78 */	mr r30, r3
/* 8067F9F8  3C 60 80 68 */	lis r3, lit_3947@ha /* 0x806823BC@ha */
/* 8067F9FC  3B E3 23 BC */	addi r31, r3, lit_3947@l /* 0x806823BC@l */
/* 8067FA00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067FA04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067FA08  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8067FA0C  AB 9D 04 E6 */	lha r28, 0x4e6(r29)
/* 8067FA10  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 8067FA14  2C 00 00 01 */	cmpwi r0, 1
/* 8067FA18  41 82 00 6C */	beq lbl_8067FA84
/* 8067FA1C  40 80 02 20 */	bge lbl_8067FC3C
/* 8067FA20  2C 00 00 00 */	cmpwi r0, 0
/* 8067FA24  40 80 00 08 */	bge lbl_8067FA2C
/* 8067FA28  48 00 02 14 */	b lbl_8067FC3C
lbl_8067FA2C:
/* 8067FA2C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8067FA30  4B BE 7F 25 */	bl cM_rndF__Ff
/* 8067FA34  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8067FA38  EC 40 08 2A */	fadds f2, f0, f1
/* 8067FA3C  7F C3 F3 78 */	mr r3, r30
/* 8067FA40  38 80 00 09 */	li r4, 9
/* 8067FA44  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8067FA48  38 A0 00 02 */	li r5, 2
/* 8067FA4C  4B FF F3 45 */	bl anm_init__FP10e_ba_classifUcf
/* 8067FA50  38 00 00 01 */	li r0, 1
/* 8067FA54  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 8067FA58  38 00 00 00 */	li r0, 0
/* 8067FA5C  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
/* 8067FA60  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8067FA64  4B BE 7E F1 */	bl cM_rndF__Ff
/* 8067FA68  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8067FA6C  EC 00 08 2A */	fadds f0, f0, f1
/* 8067FA70  FC 00 00 1E */	fctiwz f0, f0
/* 8067FA74  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8067FA78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067FA7C  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 8067FA80  48 00 01 BC */	b lbl_8067FC3C
lbl_8067FA84:
/* 8067FA84  A8 1E 06 A6 */	lha r0, 0x6a6(r30)
/* 8067FA88  2C 00 00 00 */	cmpwi r0, 0
/* 8067FA8C  40 82 01 54 */	bne lbl_8067FBE0
/* 8067FA90  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8067FA94  4B BE 7E F9 */	bl cM_rndFX__Ff
/* 8067FA98  FC 00 08 1E */	fctiwz f0, f1
/* 8067FA9C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8067FAA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067FAA4  7C 1C 02 14 */	add r0, r28, r0
/* 8067FAA8  7C 04 07 34 */	extsh r4, r0
/* 8067FAAC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8067FAB0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8067FAB4  80 63 00 00 */	lwz r3, 0(r3)
/* 8067FAB8  4B 98 C9 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 8067FABC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067FAC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067FAC4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8067FAC8  4B BE 7E 8D */	bl cM_rndF__Ff
/* 8067FACC  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8067FAD0  EC 02 08 2A */	fadds f0, f2, f1
/* 8067FAD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067FAD8  FC 20 10 90 */	fmr f1, f2
/* 8067FADC  4B BE 7E 79 */	bl cM_rndF__Ff
/* 8067FAE0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8067FAE4  EC 00 08 2A */	fadds f0, f0, f1
/* 8067FAE8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067FAEC  38 61 00 14 */	addi r3, r1, 0x14
/* 8067FAF0  38 9E 06 78 */	addi r4, r30, 0x678
/* 8067FAF4  4B BF 13 F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8067FAF8  38 7E 06 78 */	addi r3, r30, 0x678
/* 8067FAFC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8067FB00  7C 65 1B 78 */	mr r5, r3
/* 8067FB04  4B CC 75 8D */	bl PSVECAdd
/* 8067FB08  38 61 00 08 */	addi r3, r1, 8
/* 8067FB0C  38 9E 06 78 */	addi r4, r30, 0x678
/* 8067FB10  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8067FB14  4B BE 70 21 */	bl __mi__4cXyzCFRC3Vec
/* 8067FB18  C0 21 00 08 */	lfs f1, 8(r1)
/* 8067FB1C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8067FB20  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8067FB24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067FB28  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8067FB2C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8067FB30  4B BE 7B 45 */	bl cM_atan2s__Fff
/* 8067FB34  7C 64 1B 78 */	mr r4, r3
/* 8067FB38  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8067FB3C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8067FB40  80 63 00 00 */	lwz r3, 0(r3)
/* 8067FB44  4B 98 C8 99 */	bl mDoMtx_YrotS__FPA4_fs
/* 8067FB48  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8067FB4C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8067FB50  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8067FB54  EC 00 00 32 */	fmuls f0, f0, f0
/* 8067FB58  EC 41 00 2A */	fadds f2, f1, f0
/* 8067FB5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067FB60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8067FB64  40 81 00 0C */	ble lbl_8067FB70
/* 8067FB68  FC 00 10 34 */	frsqrte f0, f2
/* 8067FB6C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8067FB70:
/* 8067FB70  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8067FB74  4B BE 7B 01 */	bl cM_atan2s__Fff
/* 8067FB78  7C 03 00 D0 */	neg r0, r3
/* 8067FB7C  7C 04 07 34 */	extsh r4, r0
/* 8067FB80  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8067FB84  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8067FB88  80 63 00 00 */	lwz r3, 0(r3)
/* 8067FB8C  4B 98 C8 11 */	bl mDoMtx_XrotM__FPA4_fs
/* 8067FB90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067FB94  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067FB98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067FB9C  3C 60 80 68 */	lis r3, l_HIO@ha /* 0x80682648@ha */
/* 8067FBA0  38 63 26 48 */	addi r3, r3, l_HIO@l /* 0x80682648@l */
/* 8067FBA4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8067FBA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067FBAC  38 61 00 14 */	addi r3, r1, 0x14
/* 8067FBB0  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8067FBB4  4B BF 13 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8067FBB8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8067FBBC  4B BE 7D 99 */	bl cM_rndF__Ff
/* 8067FBC0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8067FBC4  EC 00 08 2A */	fadds f0, f0, f1
/* 8067FBC8  FC 00 00 1E */	fctiwz f0, f0
/* 8067FBCC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8067FBD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067FBD4  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
/* 8067FBD8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8067FBDC  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_8067FBE0:
/* 8067FBE0  A8 1E 06 A8 */	lha r0, 0x6a8(r30)
/* 8067FBE4  2C 00 00 00 */	cmpwi r0, 0
/* 8067FBE8  40 82 00 54 */	bne lbl_8067FC3C
/* 8067FBEC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8067FBF0  4B BE 7D 65 */	bl cM_rndF__Ff
/* 8067FBF4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8067FBF8  EC 00 08 2A */	fadds f0, f0, f1
/* 8067FBFC  FC 00 00 1E */	fctiwz f0, f0
/* 8067FC00  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8067FC04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8067FC08  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 8067FC0C  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8067FC10  28 00 00 02 */	cmplwi r0, 2
/* 8067FC14  40 82 00 18 */	bne lbl_8067FC2C
/* 8067FC18  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067FC1C  4B BE 7D 39 */	bl cM_rndF__Ff
/* 8067FC20  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8067FC24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067FC28  40 80 00 14 */	bge lbl_8067FC3C
lbl_8067FC2C:
/* 8067FC2C  38 00 00 03 */	li r0, 3
/* 8067FC30  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067FC34  38 00 00 00 */	li r0, 0
/* 8067FC38  B0 1E 06 74 */	sth r0, 0x674(r30)
lbl_8067FC3C:
/* 8067FC3C  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 8067FC40  FC 00 02 10 */	fabs f0, f0
/* 8067FC44  FC 60 00 18 */	frsp f3, f0
/* 8067FC48  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8067FC4C  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 8067FC50  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8067FC54  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 8067FC58  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8067FC5C  4B BE FD E1 */	bl cLib_addCalc2__FPffff
/* 8067FC60  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 8067FC64  FC 00 02 10 */	fabs f0, f0
/* 8067FC68  FC 60 00 18 */	frsp f3, f0
/* 8067FC6C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8067FC70  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 8067FC74  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8067FC78  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 8067FC7C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8067FC80  4B BE FD BD */	bl cLib_addCalc2__FPffff
/* 8067FC84  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 8067FC88  FC 00 02 10 */	fabs f0, f0
/* 8067FC8C  FC 60 00 18 */	frsp f3, f0
/* 8067FC90  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8067FC94  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 8067FC98  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 8067FC9C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 8067FCA0  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8067FCA4  4B BE FD 99 */	bl cLib_addCalc2__FPffff
/* 8067FCA8  38 7E 06 90 */	addi r3, r30, 0x690
/* 8067FCAC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8067FCB0  FC 40 08 90 */	fmr f2, f1
/* 8067FCB4  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 8067FCB8  4B BE FD 85 */	bl cLib_addCalc2__FPffff
/* 8067FCBC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8067FCC0  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 8067FCC4  38 A0 00 04 */	li r5, 4
/* 8067FCC8  38 C0 08 00 */	li r6, 0x800
/* 8067FCCC  4B BF 09 3D */	bl cLib_addCalcAngleS2__FPssss
/* 8067FCD0  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8067FCD4  28 00 00 02 */	cmplwi r0, 2
/* 8067FCD8  41 82 00 78 */	beq lbl_8067FD50
/* 8067FCDC  7F C3 F3 78 */	mr r3, r30
/* 8067FCE0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8067FCE4  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8067FCE8  EC 21 00 2A */	fadds f1, f1, f0
/* 8067FCEC  38 80 00 01 */	li r4, 1
/* 8067FCF0  4B FF F3 09 */	bl pl_check__FP10e_ba_classfs
/* 8067FCF4  2C 03 00 00 */	cmpwi r3, 0
/* 8067FCF8  40 82 00 58 */	bne lbl_8067FD50
/* 8067FCFC  7F C3 F3 78 */	mr r3, r30
/* 8067FD00  4B FF F5 DD */	bl path_check__FP10e_ba_class
/* 8067FD04  2C 03 00 00 */	cmpwi r3, 0
/* 8067FD08  40 82 00 38 */	bne lbl_8067FD40
/* 8067FD0C  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8067FD10  28 00 00 00 */	cmplwi r0, 0
/* 8067FD14  40 82 00 18 */	bne lbl_8067FD2C
/* 8067FD18  38 00 00 04 */	li r0, 4
/* 8067FD1C  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067FD20  38 00 00 00 */	li r0, 0
/* 8067FD24  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 8067FD28  48 00 00 28 */	b lbl_8067FD50
lbl_8067FD2C:
/* 8067FD2C  38 00 00 05 */	li r0, 5
/* 8067FD30  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067FD34  38 00 00 00 */	li r0, 0
/* 8067FD38  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 8067FD3C  48 00 00 14 */	b lbl_8067FD50
lbl_8067FD40:
/* 8067FD40  38 00 00 06 */	li r0, 6
/* 8067FD44  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 8067FD48  38 00 00 00 */	li r0, 0
/* 8067FD4C  B0 1E 06 74 */	sth r0, 0x674(r30)
lbl_8067FD50:
/* 8067FD50  39 61 00 40 */	addi r11, r1, 0x40
/* 8067FD54  4B CE 24 D1 */	bl _restgpr_28
/* 8067FD58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8067FD5C  7C 08 03 A6 */	mtlr r0
/* 8067FD60  38 21 00 40 */	addi r1, r1, 0x40
/* 8067FD64  4E 80 00 20 */	blr 
