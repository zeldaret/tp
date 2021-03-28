lbl_8058FA50:
/* 8058FA50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058FA54  7C 08 02 A6 */	mflr r0
/* 8058FA58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058FA5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058FA60  4B DD 27 7C */	b _savegpr_29
/* 8058FA64  7C 7E 1B 78 */	mr r30, r3
/* 8058FA68  3C 80 80 59 */	lis r4, l_magne_scale@ha
/* 8058FA6C  3B E4 28 48 */	addi r31, r4, l_magne_scale@l
/* 8058FA70  48 00 21 C9 */	bl calcHimo__11daObjMarm_cFv
/* 8058FA74  80 7E 0A 20 */	lwz r3, 0xa20(r30)
/* 8058FA78  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8058FA7C  80 63 00 04 */	lwz r3, 4(r3)
/* 8058FA80  38 80 00 00 */	li r4, 0
/* 8058FA84  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8058FA88  48 00 00 10 */	b lbl_8058FA98
lbl_8058FA8C:
/* 8058FA8C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8058FA90  38 84 00 01 */	addi r4, r4, 1
/* 8058FA94  38 63 00 04 */	addi r3, r3, 4
lbl_8058FA98:
/* 8058FA98  88 1E 0A 28 */	lbz r0, 0xa28(r30)
/* 8058FA9C  7C 04 00 00 */	cmpw r4, r0
/* 8058FAA0  41 80 FF EC */	blt lbl_8058FA8C
/* 8058FAA4  80 7E 0A 24 */	lwz r3, 0xa24(r30)
/* 8058FAA8  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8058FAAC  80 63 00 04 */	lwz r3, 4(r3)
/* 8058FAB0  38 80 00 00 */	li r4, 0
/* 8058FAB4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8058FAB8  48 00 00 10 */	b lbl_8058FAC8
lbl_8058FABC:
/* 8058FABC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8058FAC0  38 84 00 01 */	addi r4, r4, 1
/* 8058FAC4  38 63 00 04 */	addi r3, r3, 4
lbl_8058FAC8:
/* 8058FAC8  88 1E 0A 29 */	lbz r0, 0xa29(r30)
/* 8058FACC  7C 04 00 00 */	cmpw r4, r0
/* 8058FAD0  41 80 FF EC */	blt lbl_8058FABC
/* 8058FAD4  88 1E 0A 15 */	lbz r0, 0xa15(r30)
/* 8058FAD8  54 00 10 3A */	slwi r0, r0, 2
/* 8058FADC  38 7F 00 0C */	addi r3, r31, 0xc
/* 8058FAE0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8058FAE4  FC 00 00 50 */	fneg f0, f0
/* 8058FAE8  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 8058FAEC  88 1E 0A 15 */	lbz r0, 0xa15(r30)
/* 8058FAF0  28 00 00 03 */	cmplwi r0, 3
/* 8058FAF4  41 82 00 0C */	beq lbl_8058FB00
/* 8058FAF8  28 00 00 01 */	cmplwi r0, 1
/* 8058FAFC  40 82 00 0C */	bne lbl_8058FB08
lbl_8058FB00:
/* 8058FB00  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8058FB04  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
lbl_8058FB08:
/* 8058FB08  88 1E 0A 15 */	lbz r0, 0xa15(r30)
/* 8058FB0C  28 00 00 01 */	cmplwi r0, 1
/* 8058FB10  41 82 00 0C */	beq lbl_8058FB1C
/* 8058FB14  28 00 00 03 */	cmplwi r0, 3
/* 8058FB18  40 82 00 18 */	bne lbl_8058FB30
lbl_8058FB1C:
/* 8058FB1C  38 00 FF FF */	li r0, -1
/* 8058FB20  98 1E 0A 09 */	stb r0, 0xa09(r30)
/* 8058FB24  38 00 00 01 */	li r0, 1
/* 8058FB28  98 1E 0A 08 */	stb r0, 0xa08(r30)
/* 8058FB2C  48 00 00 14 */	b lbl_8058FB40
lbl_8058FB30:
/* 8058FB30  38 00 00 01 */	li r0, 1
/* 8058FB34  98 1E 0A 09 */	stb r0, 0xa09(r30)
/* 8058FB38  38 00 00 00 */	li r0, 0
/* 8058FB3C  98 1E 0A 08 */	stb r0, 0xa08(r30)
lbl_8058FB40:
/* 8058FB40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058FB44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058FB48  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8058FB4C  7F A3 EB 78 */	mr r3, r29
/* 8058FB50  80 9E 05 CC */	lwz r4, 0x5cc(r30)
/* 8058FB54  7F C5 F3 78 */	mr r5, r30
/* 8058FB58  4B AE 4E B0 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8058FB5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8058FB60  40 82 00 1C */	bne lbl_8058FB7C
/* 8058FB64  7F A3 EB 78 */	mr r3, r29
/* 8058FB68  80 9E 06 30 */	lwz r4, 0x630(r30)
/* 8058FB6C  7F C5 F3 78 */	mr r5, r30
/* 8058FB70  4B AE 4E 98 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8058FB74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8058FB78  41 82 00 0C */	beq lbl_8058FB84
lbl_8058FB7C:
/* 8058FB7C  38 60 00 00 */	li r3, 0
/* 8058FB80  48 00 01 60 */	b lbl_8058FCE0
lbl_8058FB84:
/* 8058FB84  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 8058FB88  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 8058FB8C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8058FB90  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8058FB94  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 8058FB98  38 03 5A D8 */	addi r0, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 8058FB9C  80 7E 06 30 */	lwz r3, 0x630(r30)
/* 8058FBA0  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8058FBA4  38 1E 06 00 */	addi r0, r30, 0x600
/* 8058FBA8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8058FBAC  38 7E 08 3C */	addi r3, r30, 0x83c
/* 8058FBB0  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8058FBB4  FC 40 08 90 */	fmr f2, f1
/* 8058FBB8  4B AE 63 A0 */	b SetWall__12dBgS_AcchCirFff
/* 8058FBBC  38 00 00 00 */	li r0, 0
/* 8058FBC0  90 01 00 08 */	stw r0, 8(r1)
/* 8058FBC4  38 7E 06 64 */	addi r3, r30, 0x664
/* 8058FBC8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8058FBCC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 8058FBD0  7F C6 F3 78 */	mr r6, r30
/* 8058FBD4  38 E0 00 01 */	li r7, 1
/* 8058FBD8  39 1E 08 3C */	addi r8, r30, 0x83c
/* 8058FBDC  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 8058FBE0  39 40 00 00 */	li r10, 0
/* 8058FBE4  4B AE 66 64 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8058FBE8  88 1E 0A 15 */	lbz r0, 0xa15(r30)
/* 8058FBEC  28 00 00 03 */	cmplwi r0, 3
/* 8058FBF0  40 82 00 2C */	bne lbl_8058FC1C
/* 8058FBF4  7F C3 F3 78 */	mr r3, r30
/* 8058FBF8  3C 80 80 59 */	lis r4, l_cull_box2@ha
/* 8058FBFC  C4 24 29 BC */	lfsu f1, l_cull_box2@l(r4)
/* 8058FC00  C0 44 00 04 */	lfs f2, 4(r4)
/* 8058FC04  C0 64 00 08 */	lfs f3, 8(r4)
/* 8058FC08  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 8058FC0C  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 8058FC10  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 8058FC14  4B A8 A9 34 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8058FC18  48 00 00 28 */	b lbl_8058FC40
lbl_8058FC1C:
/* 8058FC1C  7F C3 F3 78 */	mr r3, r30
/* 8058FC20  3C 80 80 59 */	lis r4, l_cull_box@ha
/* 8058FC24  C4 24 29 A4 */	lfsu f1, l_cull_box@l(r4)
/* 8058FC28  C0 44 00 04 */	lfs f2, 4(r4)
/* 8058FC2C  C0 64 00 08 */	lfs f3, 8(r4)
/* 8058FC30  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 8058FC34  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 8058FC38  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 8058FC3C  4B A8 A9 0C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
lbl_8058FC40:
/* 8058FC40  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 8058FC44  D0 1E 05 20 */	stfs f0, 0x520(r30)
/* 8058FC48  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 8058FC4C  4B AE BD 74 */	b Move__4dBgWFv
/* 8058FC50  80 7E 06 30 */	lwz r3, 0x630(r30)
/* 8058FC54  4B AE BD 6C */	b Move__4dBgWFv
/* 8058FC58  88 1E 0A 15 */	lbz r0, 0xa15(r30)
/* 8058FC5C  2C 00 00 02 */	cmpwi r0, 2
/* 8058FC60  41 82 00 48 */	beq lbl_8058FCA8
/* 8058FC64  40 80 00 14 */	bge lbl_8058FC78
/* 8058FC68  2C 00 00 00 */	cmpwi r0, 0
/* 8058FC6C  41 82 00 18 */	beq lbl_8058FC84
/* 8058FC70  40 80 00 20 */	bge lbl_8058FC90
/* 8058FC74  48 00 00 48 */	b lbl_8058FCBC
lbl_8058FC78:
/* 8058FC78  2C 00 00 04 */	cmpwi r0, 4
/* 8058FC7C  40 80 00 40 */	bge lbl_8058FCBC
/* 8058FC80  48 00 00 34 */	b lbl_8058FCB4
lbl_8058FC84:
/* 8058FC84  7F C3 F3 78 */	mr r3, r30
/* 8058FC88  48 00 0E F5 */	bl init_typeA_modeWait__11daObjMarm_cFv
/* 8058FC8C  48 00 00 30 */	b lbl_8058FCBC
lbl_8058FC90:
/* 8058FC90  A8 7E 09 FC */	lha r3, 0x9fc(r30)
/* 8058FC94  38 03 C0 00 */	addi r0, r3, -16384
/* 8058FC98  B0 1E 09 FC */	sth r0, 0x9fc(r30)
/* 8058FC9C  7F C3 F3 78 */	mr r3, r30
/* 8058FCA0  48 00 11 89 */	bl init_typeB_modeWait__11daObjMarm_cFv
/* 8058FCA4  48 00 00 18 */	b lbl_8058FCBC
lbl_8058FCA8:
/* 8058FCA8  7F C3 F3 78 */	mr r3, r30
/* 8058FCAC  48 00 16 05 */	bl init_typeC_modeWait__11daObjMarm_cFv
/* 8058FCB0  48 00 00 0C */	b lbl_8058FCBC
lbl_8058FCB4:
/* 8058FCB4  7F C3 F3 78 */	mr r3, r30
/* 8058FCB8  48 00 1A 9D */	bl init_typeD_modeWait__11daObjMarm_cFv
lbl_8058FCBC:
/* 8058FCBC  3C 60 80 59 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 8058FCC0  38 03 FA 38 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 8058FCC4  80 7E 06 30 */	lwz r3, 0x630(r30)
/* 8058FCC8  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 8058FCCC  7F C3 F3 78 */	mr r3, r30
/* 8058FCD0  4B AE 8C 80 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 8058FCD4  7F C3 F3 78 */	mr r3, r30
/* 8058FCD8  4B FF F9 DD */	bl initBaseMtx__11daObjMarm_cFv
/* 8058FCDC  38 60 00 01 */	li r3, 1
lbl_8058FCE0:
/* 8058FCE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8058FCE4  4B DD 25 44 */	b _restgpr_29
/* 8058FCE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058FCEC  7C 08 03 A6 */	mtlr r0
/* 8058FCF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8058FCF4  4E 80 00 20 */	blr 
