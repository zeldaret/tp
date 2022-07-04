lbl_8064FA50:
/* 8064FA50  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8064FA54  7C 08 02 A6 */	mflr r0
/* 8064FA58  90 01 00 54 */	stw r0, 0x54(r1)
/* 8064FA5C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8064FA60  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8064FA64  39 61 00 40 */	addi r11, r1, 0x40
/* 8064FA68  4B D1 27 75 */	bl _savegpr_29
/* 8064FA6C  7C 7E 1B 78 */	mr r30, r3
/* 8064FA70  3C 60 80 65 */	lis r3, lit_3721@ha /* 0x8065049C@ha */
/* 8064FA74  3B E3 04 9C */	addi r31, r3, lit_3721@l /* 0x8065049C@l */
/* 8064FA78  4B B0 F9 21 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 8064FA7C  2C 03 00 00 */	cmpwi r3, 0
/* 8064FA80  41 82 00 14 */	beq lbl_8064FA94
/* 8064FA84  80 1E 09 98 */	lwz r0, 0x998(r30)
/* 8064FA88  60 00 00 01 */	ori r0, r0, 1
/* 8064FA8C  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8064FA90  48 00 00 10 */	b lbl_8064FAA0
lbl_8064FA94:
/* 8064FA94  80 1E 09 98 */	lwz r0, 0x998(r30)
/* 8064FA98  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8064FA9C  90 1E 09 98 */	stw r0, 0x998(r30)
lbl_8064FAA0:
/* 8064FAA0  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 8064FAA4  38 81 00 10 */	addi r4, r1, 0x10
/* 8064FAA8  4B 9C 9F 15 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8064FAAC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8064FAB0  28 03 00 00 */	cmplwi r3, 0
/* 8064FAB4  41 82 00 2C */	beq lbl_8064FAE0
/* 8064FAB8  3C 80 80 45 */	lis r4, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8064FABC  88 04 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r4)  /* 0x80450D64@l */
/* 8064FAC0  2C 00 00 37 */	cmpwi r0, 0x37
/* 8064FAC4  40 82 00 10 */	bne lbl_8064FAD4
/* 8064FAC8  4B FF 0B 9D */	bl getMagicWaterSpeed__10daB_ZANT_cFv
/* 8064FACC  FF E0 08 90 */	fmr f31, f1
/* 8064FAD0  48 00 00 2C */	b lbl_8064FAFC
lbl_8064FAD4:
/* 8064FAD4  4B FF 0B 81 */	bl getMagicSpeed__10daB_ZANT_cFv
/* 8064FAD8  FF E0 08 90 */	fmr f31, f1
/* 8064FADC  48 00 00 20 */	b lbl_8064FAFC
lbl_8064FAE0:
/* 8064FAE0  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8064FAE4  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8064FAE8  2C 00 00 37 */	cmpwi r0, 0x37
/* 8064FAEC  40 82 00 0C */	bne lbl_8064FAF8
/* 8064FAF0  C3 FF 00 14 */	lfs f31, 0x14(r31)
/* 8064FAF4  48 00 00 08 */	b lbl_8064FAFC
lbl_8064FAF8:
/* 8064FAF8  C3 FF 00 18 */	lfs f31, 0x18(r31)
lbl_8064FAFC:
/* 8064FAFC  88 1E 05 F1 */	lbz r0, 0x5f1(r30)
/* 8064FB00  2C 00 00 01 */	cmpwi r0, 1
/* 8064FB04  41 82 01 48 */	beq lbl_8064FC4C
/* 8064FB08  40 80 02 44 */	bge lbl_8064FD4C
/* 8064FB0C  2C 00 00 00 */	cmpwi r0, 0
/* 8064FB10  40 80 00 08 */	bge lbl_8064FB18
/* 8064FB14  48 00 02 38 */	b lbl_8064FD4C
lbl_8064FB18:
/* 8064FB18  38 00 03 84 */	li r0, 0x384
/* 8064FB1C  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 8064FB20  38 00 00 01 */	li r0, 1
/* 8064FB24  98 1E 05 F1 */	stb r0, 0x5f1(r30)
/* 8064FB28  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8064FB2C  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 8064FB30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064FB34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064FB38  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8064FB3C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8064FB40  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8064FB44  C0 63 04 D4 */	lfs f3, 0x4d4(r3)
/* 8064FB48  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8064FB4C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8064FB50  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8064FB54  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8064FB58  88 1E 05 F0 */	lbz r0, 0x5f0(r30)
/* 8064FB5C  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 8064FB60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8064FB64  3C 00 43 30 */	lis r0, 0x4330
/* 8064FB68  90 01 00 20 */	stw r0, 0x20(r1)
/* 8064FB6C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8064FB70  EC 00 08 28 */	fsubs f0, f0, f1
/* 8064FB74  EC 22 00 32 */	fmuls f1, f2, f0
/* 8064FB78  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8064FB7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8064FB80  EC 03 00 2A */	fadds f0, f3, f0
/* 8064FB84  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8064FB88  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8064FB8C  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8064FB90  2C 00 00 37 */	cmpwi r0, 0x37
/* 8064FB94  41 82 00 20 */	beq lbl_8064FBB4
/* 8064FB98  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8064FB9C  38 81 00 14 */	addi r4, r1, 0x14
/* 8064FBA0  4B C2 10 65 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8064FBA4  7C 64 1B 78 */	mr r4, r3
/* 8064FBA8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8064FBAC  38 A0 20 00 */	li r5, 0x2000
/* 8064FBB0  4B C2 0F E1 */	bl cLib_chaseAngleS__FPsss
lbl_8064FBB4:
/* 8064FBB4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8064FBB8  38 81 00 14 */	addi r4, r1, 0x14
/* 8064FBBC  4B C2 10 B9 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8064FBC0  7C 64 1B 78 */	mr r4, r3
/* 8064FBC4  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8064FBC8  38 A0 20 00 */	li r5, 0x2000
/* 8064FBCC  4B C2 0F C5 */	bl cLib_chaseAngleS__FPsss
/* 8064FBD0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8064FBD4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8064FBD8  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8064FBDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8064FBE0  7C 64 02 14 */	add r3, r4, r0
/* 8064FBE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8064FBE8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8064FBEC  FC 00 02 10 */	fabs f0, f0
/* 8064FBF0  FC 00 00 18 */	frsp f0, f0
/* 8064FBF4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8064FBF8  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8064FBFC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8064FC00  7C 04 04 2E */	lfsx f0, r4, r0
/* 8064FC04  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8064FC08  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8064FC0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070409@ha */
/* 8064FC10  38 03 04 09 */	addi r0, r3, 0x0409 /* 0x00070409@l */
/* 8064FC14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8064FC18  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8064FC1C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8064FC20  80 63 00 00 */	lwz r3, 0(r3)
/* 8064FC24  38 81 00 0C */	addi r4, r1, 0xc
/* 8064FC28  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8064FC2C  38 C0 00 00 */	li r6, 0
/* 8064FC30  38 E0 00 00 */	li r7, 0
/* 8064FC34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8064FC38  FC 40 08 90 */	fmr f2, f1
/* 8064FC3C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8064FC40  FC 80 18 90 */	fmr f4, f3
/* 8064FC44  39 00 00 00 */	li r8, 0
/* 8064FC48  4B C5 BD 3D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8064FC4C:
/* 8064FC4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040A@ha */
/* 8064FC50  38 03 04 0A */	addi r0, r3, 0x040A /* 0x0007040A@l */
/* 8064FC54  90 01 00 08 */	stw r0, 8(r1)
/* 8064FC58  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8064FC5C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8064FC60  80 63 00 00 */	lwz r3, 0(r3)
/* 8064FC64  38 81 00 08 */	addi r4, r1, 8
/* 8064FC68  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8064FC6C  38 C0 00 00 */	li r6, 0
/* 8064FC70  38 E0 00 00 */	li r7, 0
/* 8064FC74  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8064FC78  FC 40 08 90 */	fmr f2, f1
/* 8064FC7C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8064FC80  FC 80 18 90 */	fmr f4, f3
/* 8064FC84  39 00 00 00 */	li r8, 0
/* 8064FC88  4B C5 C8 85 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8064FC8C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8064FC90  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8064FC94  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8064FC98  4B C2 0A A9 */	bl cLib_chaseF__FPfff
/* 8064FC9C  80 1E 05 EC */	lwz r0, 0x5ec(r30)
/* 8064FCA0  2C 00 00 00 */	cmpwi r0, 0
/* 8064FCA4  41 82 00 18 */	beq lbl_8064FCBC
/* 8064FCA8  80 7E 06 60 */	lwz r3, 0x660(r30)
/* 8064FCAC  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8064FCB0  40 82 00 0C */	bne lbl_8064FCBC
/* 8064FCB4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8064FCB8  41 82 00 24 */	beq lbl_8064FCDC
lbl_8064FCBC:
/* 8064FCBC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8064FCC0  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8064FCC4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8064FCC8  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8064FCCC  7F C3 F3 78 */	mr r3, r30
/* 8064FCD0  4B FF FC 69 */	bl setMagicHitEffect__11daB_ZANTM_cFv
/* 8064FCD4  7F C3 F3 78 */	mr r3, r30
/* 8064FCD8  4B 9C 9F A5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8064FCDC:
/* 8064FCDC  3B A0 00 00 */	li r29, 0
/* 8064FCE0  38 7E 0A B8 */	addi r3, r30, 0xab8
/* 8064FCE4  4B A3 45 DD */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8064FCE8  28 03 00 00 */	cmplwi r3, 0
/* 8064FCEC  41 82 00 0C */	beq lbl_8064FCF8
/* 8064FCF0  3B BE 0B 30 */	addi r29, r30, 0xb30
/* 8064FCF4  48 00 00 18 */	b lbl_8064FD0C
lbl_8064FCF8:
/* 8064FCF8  38 7E 09 80 */	addi r3, r30, 0x980
/* 8064FCFC  4B A3 47 65 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8064FD00  28 03 00 00 */	cmplwi r3, 0
/* 8064FD04  41 82 00 08 */	beq lbl_8064FD0C
/* 8064FD08  3B BE 0A 54 */	addi r29, r30, 0xa54
lbl_8064FD0C:
/* 8064FD0C  28 1D 00 00 */	cmplwi r29, 0
/* 8064FD10  41 82 00 3C */	beq lbl_8064FD4C
/* 8064FD14  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8064FD18  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8064FD1C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8064FD20  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8064FD24  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8064FD28  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8064FD2C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8064FD30  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8064FD34  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8064FD38  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8064FD3C  7F C3 F3 78 */	mr r3, r30
/* 8064FD40  4B FF FB F9 */	bl setMagicHitEffect__11daB_ZANTM_cFv
/* 8064FD44  7F C3 F3 78 */	mr r3, r30
/* 8064FD48  4B 9C 9F 35 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8064FD4C:
/* 8064FD4C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8064FD50  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8064FD54  39 61 00 40 */	addi r11, r1, 0x40
/* 8064FD58  4B D1 24 D1 */	bl _restgpr_29
/* 8064FD5C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8064FD60  7C 08 03 A6 */	mtlr r0
/* 8064FD64  38 21 00 50 */	addi r1, r1, 0x50
/* 8064FD68  4E 80 00 20 */	blr 
