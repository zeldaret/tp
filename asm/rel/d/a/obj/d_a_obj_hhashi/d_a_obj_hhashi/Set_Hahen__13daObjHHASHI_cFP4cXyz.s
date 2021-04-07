lbl_8057FA90:
/* 8057FA90  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8057FA94  7C 08 02 A6 */	mflr r0
/* 8057FA98  90 01 00 54 */	stw r0, 0x54(r1)
/* 8057FA9C  39 61 00 50 */	addi r11, r1, 0x50
/* 8057FAA0  4B DE 27 39 */	bl _savegpr_28
/* 8057FAA4  7C 7C 1B 78 */	mr r28, r3
/* 8057FAA8  7C 9D 23 78 */	mr r29, r4
/* 8057FAAC  3C 60 80 58 */	lis r3, ccCylSrc@ha /* 0x805814AC@ha */
/* 8057FAB0  3B C3 14 AC */	addi r30, r3, ccCylSrc@l /* 0x805814AC@l */
/* 8057FAB4  38 61 00 24 */	addi r3, r1, 0x24
/* 8057FAB8  38 80 00 00 */	li r4, 0
/* 8057FABC  38 A0 00 00 */	li r5, 0
/* 8057FAC0  38 C0 00 00 */	li r6, 0
/* 8057FAC4  4B CE 79 31 */	bl __ct__5csXyzFsss
/* 8057FAC8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8057FACC  7C 03 07 74 */	extsb r3, r0
/* 8057FAD0  4B AA D5 9D */	bl dComIfGp_getReverb__Fi
/* 8057FAD4  7C 67 1B 78 */	mr r7, r3
/* 8057FAD8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080162@ha */
/* 8057FADC  38 03 01 62 */	addi r0, r3, 0x0162 /* 0x00080162@l */
/* 8057FAE0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8057FAE4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8057FAE8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8057FAEC  80 63 00 00 */	lwz r3, 0(r3)
/* 8057FAF0  38 81 00 20 */	addi r4, r1, 0x20
/* 8057FAF4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8057FAF8  38 C0 00 00 */	li r6, 0
/* 8057FAFC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8057FB00  FC 40 08 90 */	fmr f2, f1
/* 8057FB04  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8057FB08  FC 80 18 90 */	fmr f4, f3
/* 8057FB0C  39 00 00 00 */	li r8, 0
/* 8057FB10  4B D2 BE 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8057FB14  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 8057FB18  2C 00 00 00 */	cmpwi r0, 0
/* 8057FB1C  40 82 01 FC */	bne lbl_8057FD18
/* 8057FB20  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8057FB24  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8057FB28  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8057FB2C  EC 21 00 2A */	fadds f1, f1, f0
/* 8057FB30  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8057FB34  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8057FB38  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8057FB3C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8057FB40  C0 1C 0C B8 */	lfs f0, 0xcb8(r28)
/* 8057FB44  FC 00 00 1E */	fctiwz f0, f0
/* 8057FB48  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8057FB4C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8057FB50  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8057FB54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057FB58  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057FB5C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8057FB60  38 80 00 00 */	li r4, 0
/* 8057FB64  90 81 00 08 */	stw r4, 8(r1)
/* 8057FB68  38 00 FF FF */	li r0, -1
/* 8057FB6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057FB70  90 81 00 10 */	stw r4, 0x10(r1)
/* 8057FB74  90 81 00 14 */	stw r4, 0x14(r1)
/* 8057FB78  90 81 00 18 */	stw r4, 0x18(r1)
/* 8057FB7C  38 80 00 00 */	li r4, 0
/* 8057FB80  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008710@ha */
/* 8057FB84  38 A5 87 10 */	addi r5, r5, 0x8710 /* 0x00008710@l */
/* 8057FB88  7F A6 EB 78 */	mr r6, r29
/* 8057FB8C  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8057FB90  39 01 00 24 */	addi r8, r1, 0x24
/* 8057FB94  39 20 00 00 */	li r9, 0
/* 8057FB98  39 40 00 FF */	li r10, 0xff
/* 8057FB9C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8057FBA0  4B AC CE F1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8057FBA4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8057FBA8  38 80 00 00 */	li r4, 0
/* 8057FBAC  90 81 00 08 */	stw r4, 8(r1)
/* 8057FBB0  38 00 FF FF */	li r0, -1
/* 8057FBB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057FBB8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8057FBBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8057FBC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8057FBC4  38 80 00 00 */	li r4, 0
/* 8057FBC8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008711@ha */
/* 8057FBCC  38 A5 87 11 */	addi r5, r5, 0x8711 /* 0x00008711@l */
/* 8057FBD0  7F A6 EB 78 */	mr r6, r29
/* 8057FBD4  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8057FBD8  39 01 00 24 */	addi r8, r1, 0x24
/* 8057FBDC  39 20 00 00 */	li r9, 0
/* 8057FBE0  39 40 00 FF */	li r10, 0xff
/* 8057FBE4  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8057FBE8  4B AC CE A9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8057FBEC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8057FBF0  38 80 00 00 */	li r4, 0
/* 8057FBF4  90 81 00 08 */	stw r4, 8(r1)
/* 8057FBF8  38 00 FF FF */	li r0, -1
/* 8057FBFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057FC00  90 81 00 10 */	stw r4, 0x10(r1)
/* 8057FC04  90 81 00 14 */	stw r4, 0x14(r1)
/* 8057FC08  90 81 00 18 */	stw r4, 0x18(r1)
/* 8057FC0C  38 80 00 00 */	li r4, 0
/* 8057FC10  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008712@ha */
/* 8057FC14  38 A5 87 12 */	addi r5, r5, 0x8712 /* 0x00008712@l */
/* 8057FC18  7F A6 EB 78 */	mr r6, r29
/* 8057FC1C  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8057FC20  39 01 00 24 */	addi r8, r1, 0x24
/* 8057FC24  39 20 00 00 */	li r9, 0
/* 8057FC28  39 40 00 FF */	li r10, 0xff
/* 8057FC2C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8057FC30  4B AC CE 61 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8057FC34  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8057FC38  38 80 00 00 */	li r4, 0
/* 8057FC3C  90 81 00 08 */	stw r4, 8(r1)
/* 8057FC40  38 00 FF FF */	li r0, -1
/* 8057FC44  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057FC48  90 81 00 10 */	stw r4, 0x10(r1)
/* 8057FC4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8057FC50  90 81 00 18 */	stw r4, 0x18(r1)
/* 8057FC54  38 80 00 00 */	li r4, 0
/* 8057FC58  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008713@ha */
/* 8057FC5C  38 A5 87 13 */	addi r5, r5, 0x8713 /* 0x00008713@l */
/* 8057FC60  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 8057FC64  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8057FC68  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 8057FC6C  39 20 00 00 */	li r9, 0
/* 8057FC70  39 40 00 FF */	li r10, 0xff
/* 8057FC74  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8057FC78  4B AC CE 19 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8057FC7C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8057FC80  38 80 00 00 */	li r4, 0
/* 8057FC84  90 81 00 08 */	stw r4, 8(r1)
/* 8057FC88  38 00 FF FF */	li r0, -1
/* 8057FC8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8057FC90  90 81 00 10 */	stw r4, 0x10(r1)
/* 8057FC94  90 81 00 14 */	stw r4, 0x14(r1)
/* 8057FC98  90 81 00 18 */	stw r4, 0x18(r1)
/* 8057FC9C  38 80 00 00 */	li r4, 0
/* 8057FCA0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008714@ha */
/* 8057FCA4  38 A5 87 14 */	addi r5, r5, 0x8714 /* 0x00008714@l */
/* 8057FCA8  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 8057FCAC  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8057FCB0  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 8057FCB4  39 20 00 00 */	li r9, 0
/* 8057FCB8  39 40 00 FF */	li r10, 0xff
/* 8057FCBC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8057FCC0  4B AC CD D1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8057FCC4  7F 83 E3 78 */	mr r3, r28
/* 8057FCC8  38 80 00 00 */	li r4, 0
/* 8057FCCC  38 A0 00 32 */	li r5, 0x32
/* 8057FCD0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8057FCD4  FC 40 08 90 */	fmr f2, f1
/* 8057FCD8  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 8057FCDC  FC 80 18 90 */	fmr f4, f3
/* 8057FCE0  48 00 00 C9 */	bl Set_Speed__13daObjHHASHI_cFssffff
/* 8057FCE4  38 00 00 02 */	li r0, 2
/* 8057FCE8  90 1C 05 A4 */	stw r0, 0x5a4(r28)
/* 8057FCEC  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 8057FCF0  28 03 00 00 */	cmplwi r3, 0
/* 8057FCF4  41 82 00 24 */	beq lbl_8057FD18
/* 8057FCF8  4B CE 84 DD */	bl ChkUsed__9cBgW_BgIdCFv
/* 8057FCFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8057FD00  41 82 00 18 */	beq lbl_8057FD18
/* 8057FD04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057FD08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057FD0C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8057FD10  80 9C 05 68 */	lwz r4, 0x568(r28)
/* 8057FD14  4B AF 45 3D */	bl Release__4cBgSFP9dBgW_Base
lbl_8057FD18:
/* 8057FD18  39 61 00 50 */	addi r11, r1, 0x50
/* 8057FD1C  4B DE 25 09 */	bl _restgpr_28
/* 8057FD20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8057FD24  7C 08 03 A6 */	mtlr r0
/* 8057FD28  38 21 00 50 */	addi r1, r1, 0x50
/* 8057FD2C  4E 80 00 20 */	blr 
