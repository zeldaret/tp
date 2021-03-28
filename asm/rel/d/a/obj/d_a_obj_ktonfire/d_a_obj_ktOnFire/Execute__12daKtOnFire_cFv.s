lbl_8058CA1C:
/* 8058CA1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8058CA20  7C 08 02 A6 */	mflr r0
/* 8058CA24  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058CA28  39 61 00 40 */	addi r11, r1, 0x40
/* 8058CA2C  4B DD 57 B0 */	b _savegpr_29
/* 8058CA30  7C 7F 1B 78 */	mr r31, r3
/* 8058CA34  3C 60 80 59 */	lis r3, mCcDObjInfo__12daKtOnFire_c@ha
/* 8058CA38  3B C3 CF 88 */	addi r30, r3, mCcDObjInfo__12daKtOnFire_c@l
/* 8058CA3C  8B BF 06 E1 */	lbz r29, 0x6e1(r31)
/* 8058CA40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058CA44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058CA48  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058CA4C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8058CA50  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058CA54  7C 05 07 74 */	extsb r5, r0
/* 8058CA58  4B AA 89 08 */	b isSwitch__10dSv_info_cCFii
/* 8058CA5C  98 7F 06 E1 */	stb r3, 0x6e1(r31)
/* 8058CA60  88 1F 06 E1 */	lbz r0, 0x6e1(r31)
/* 8058CA64  7C 1D 00 40 */	cmplw r29, r0
/* 8058CA68  41 82 00 40 */	beq lbl_8058CAA8
/* 8058CA6C  28 00 00 00 */	cmplwi r0, 0
/* 8058CA70  40 82 00 38 */	bne lbl_8058CAA8
/* 8058CA74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058CA78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058CA7C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058CA80  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8058CA84  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058CA88  7C 05 07 74 */	extsb r5, r0
/* 8058CA8C  4B AA 88 24 */	b offSwitch__10dSv_info_cFii
/* 8058CA90  38 00 00 00 */	li r0, 0
/* 8058CA94  98 1F 06 19 */	stb r0, 0x619(r31)
/* 8058CA98  7F E3 FB 78 */	mr r3, r31
/* 8058CA9C  4B FF FF 5D */	bl cutLight__12daKtOnFire_cFv
/* 8058CAA0  38 00 00 00 */	li r0, 0
/* 8058CAA4  98 1F 06 E2 */	stb r0, 0x6e2(r31)
lbl_8058CAA8:
/* 8058CAA8  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 8058CAAC  4B AF 79 B4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8058CAB0  28 03 00 00 */	cmplwi r3, 0
/* 8058CAB4  41 82 01 38 */	beq lbl_8058CBEC
/* 8058CAB8  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 8058CABC  4B AF 7A 8C */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 8058CAC0  7C 7D 1B 78 */	mr r29, r3
/* 8058CAC4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8058CAC8  28 00 02 00 */	cmplwi r0, 0x200
/* 8058CACC  40 82 00 8C */	bne lbl_8058CB58
/* 8058CAD0  88 1D 00 75 */	lbz r0, 0x75(r29)
/* 8058CAD4  28 00 00 01 */	cmplwi r0, 1
/* 8058CAD8  40 82 00 80 */	bne lbl_8058CB58
/* 8058CADC  88 1F 06 E2 */	lbz r0, 0x6e2(r31)
/* 8058CAE0  28 00 00 00 */	cmplwi r0, 0
/* 8058CAE4  40 82 00 74 */	bne lbl_8058CB58
/* 8058CAE8  38 00 00 01 */	li r0, 1
/* 8058CAEC  98 1F 06 E2 */	stb r0, 0x6e2(r31)
/* 8058CAF0  98 1F 06 19 */	stb r0, 0x619(r31)
/* 8058CAF4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8058CAF8  7C 03 07 74 */	extsb r3, r0
/* 8058CAFC  4B AA 05 70 */	b dComIfGp_getReverb__Fi
/* 8058CB00  7C 67 1B 78 */	mr r7, r3
/* 8058CB04  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080017@ha */
/* 8058CB08  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00080017@l */
/* 8058CB0C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8058CB10  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058CB14  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058CB18  80 63 00 00 */	lwz r3, 0(r3)
/* 8058CB1C  38 81 00 28 */	addi r4, r1, 0x28
/* 8058CB20  38 BF 06 E4 */	addi r5, r31, 0x6e4
/* 8058CB24  38 C0 00 00 */	li r6, 0
/* 8058CB28  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8058CB2C  FC 40 08 90 */	fmr f2, f1
/* 8058CB30  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8058CB34  FC 80 18 90 */	fmr f4, f3
/* 8058CB38  39 00 00 00 */	li r8, 0
/* 8058CB3C  4B D1 EE 48 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8058CB40  3C 60 80 59 */	lis r3, l_HIO@ha
/* 8058CB44  38 63 D0 CC */	addi r3, r3, l_HIO@l
/* 8058CB48  88 03 00 04 */	lbz r0, 4(r3)
/* 8058CB4C  98 1F 06 E0 */	stb r0, 0x6e0(r31)
/* 8058CB50  7F E3 FB 78 */	mr r3, r31
/* 8058CB54  4B FF FE 81 */	bl setLight__12daKtOnFire_cFv
lbl_8058CB58:
/* 8058CB58  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 8058CB5C  28 00 02 00 */	cmplwi r0, 0x200
/* 8058CB60  40 82 00 8C */	bne lbl_8058CBEC
/* 8058CB64  88 1D 00 75 */	lbz r0, 0x75(r29)
/* 8058CB68  28 00 00 06 */	cmplwi r0, 6
/* 8058CB6C  40 82 00 80 */	bne lbl_8058CBEC
/* 8058CB70  88 1F 06 E2 */	lbz r0, 0x6e2(r31)
/* 8058CB74  28 00 00 01 */	cmplwi r0, 1
/* 8058CB78  40 82 00 74 */	bne lbl_8058CBEC
/* 8058CB7C  38 00 00 00 */	li r0, 0
/* 8058CB80  98 1F 06 E2 */	stb r0, 0x6e2(r31)
/* 8058CB84  98 1F 06 19 */	stb r0, 0x619(r31)
/* 8058CB88  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8058CB8C  7C 03 07 74 */	extsb r3, r0
/* 8058CB90  4B AA 04 DC */	b dComIfGp_getReverb__Fi
/* 8058CB94  7C 67 1B 78 */	mr r7, r3
/* 8058CB98  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080019@ha */
/* 8058CB9C  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00080019@l */
/* 8058CBA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058CBA4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058CBA8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058CBAC  80 63 00 00 */	lwz r3, 0(r3)
/* 8058CBB0  38 81 00 24 */	addi r4, r1, 0x24
/* 8058CBB4  38 BF 06 E4 */	addi r5, r31, 0x6e4
/* 8058CBB8  38 C0 00 00 */	li r6, 0
/* 8058CBBC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8058CBC0  FC 40 08 90 */	fmr f2, f1
/* 8058CBC4  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8058CBC8  FC 80 18 90 */	fmr f4, f3
/* 8058CBCC  39 00 00 00 */	li r8, 0
/* 8058CBD0  4B D1 ED B4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8058CBD4  3C 60 80 59 */	lis r3, l_HIO@ha
/* 8058CBD8  38 63 D0 CC */	addi r3, r3, l_HIO@l
/* 8058CBDC  88 03 00 04 */	lbz r0, 4(r3)
/* 8058CBE0  98 1F 06 E0 */	stb r0, 0x6e0(r31)
/* 8058CBE4  7F E3 FB 78 */	mr r3, r31
/* 8058CBE8  4B FF FE 11 */	bl cutLight__12daKtOnFire_cFv
lbl_8058CBEC:
/* 8058CBEC  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 8058CBF0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8058CBF4  4B CE 26 0C */	b SetR__8cM3dGCylFf
/* 8058CBF8  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 8058CBFC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8058CC00  4B CE 25 F8 */	b SetH__8cM3dGCylFf
/* 8058CC04  38 7F 06 C8 */	addi r3, r31, 0x6c8
/* 8058CC08  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8058CC0C  4B CE 25 D0 */	b SetC__8cM3dGCylFRC4cXyz
/* 8058CC10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058CC14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058CC18  38 63 23 3C */	addi r3, r3, 0x233c
/* 8058CC1C  38 9F 05 A4 */	addi r4, r31, 0x5a4
/* 8058CC20  4B CD 7F 88 */	b Set__4cCcSFP8cCcD_Obj
/* 8058CC24  88 1F 06 E2 */	lbz r0, 0x6e2(r31)
/* 8058CC28  28 00 00 00 */	cmplwi r0, 0
/* 8058CC2C  41 82 01 48 */	beq lbl_8058CD74
/* 8058CC30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058CC34  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8058CC38  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8058CC3C  38 00 00 FF */	li r0, 0xff
/* 8058CC40  90 01 00 08 */	stw r0, 8(r1)
/* 8058CC44  38 80 00 00 */	li r4, 0
/* 8058CC48  90 81 00 0C */	stw r4, 0xc(r1)
/* 8058CC4C  38 00 FF FF */	li r0, -1
/* 8058CC50  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058CC54  90 81 00 14 */	stw r4, 0x14(r1)
/* 8058CC58  90 81 00 18 */	stw r4, 0x18(r1)
/* 8058CC5C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8058CC60  80 9F 06 F0 */	lwz r4, 0x6f0(r31)
/* 8058CC64  38 A0 00 00 */	li r5, 0
/* 8058CC68  38 C0 03 AD */	li r6, 0x3ad
/* 8058CC6C  38 FF 06 E4 */	addi r7, r31, 0x6e4
/* 8058CC70  39 00 00 00 */	li r8, 0
/* 8058CC74  39 20 00 00 */	li r9, 0
/* 8058CC78  39 40 00 00 */	li r10, 0
/* 8058CC7C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8058CC80  4B AC 08 4C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8058CC84  90 7F 06 F0 */	stw r3, 0x6f0(r31)
/* 8058CC88  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8058CC8C  38 00 00 FF */	li r0, 0xff
/* 8058CC90  90 01 00 08 */	stw r0, 8(r1)
/* 8058CC94  38 80 00 00 */	li r4, 0
/* 8058CC98  90 81 00 0C */	stw r4, 0xc(r1)
/* 8058CC9C  38 00 FF FF */	li r0, -1
/* 8058CCA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058CCA4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8058CCA8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8058CCAC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8058CCB0  80 9F 06 F4 */	lwz r4, 0x6f4(r31)
/* 8058CCB4  38 A0 00 00 */	li r5, 0
/* 8058CCB8  38 C0 03 AF */	li r6, 0x3af
/* 8058CCBC  38 FF 06 E4 */	addi r7, r31, 0x6e4
/* 8058CCC0  39 00 00 00 */	li r8, 0
/* 8058CCC4  39 20 00 00 */	li r9, 0
/* 8058CCC8  39 40 00 00 */	li r10, 0
/* 8058CCCC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8058CCD0  4B AC 07 FC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8058CCD4  90 7F 06 F4 */	stw r3, 0x6f4(r31)
/* 8058CCD8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8058CCDC  38 00 00 FF */	li r0, 0xff
/* 8058CCE0  90 01 00 08 */	stw r0, 8(r1)
/* 8058CCE4  38 80 00 00 */	li r4, 0
/* 8058CCE8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8058CCEC  38 00 FF FF */	li r0, -1
/* 8058CCF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8058CCF4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8058CCF8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8058CCFC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8058CD00  80 9F 06 F8 */	lwz r4, 0x6f8(r31)
/* 8058CD04  38 A0 00 00 */	li r5, 0
/* 8058CD08  38 C0 03 AE */	li r6, 0x3ae
/* 8058CD0C  38 FF 06 E4 */	addi r7, r31, 0x6e4
/* 8058CD10  39 00 00 00 */	li r8, 0
/* 8058CD14  39 20 00 00 */	li r9, 0
/* 8058CD18  39 40 00 00 */	li r10, 0
/* 8058CD1C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8058CD20  4B AC 07 AC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8058CD24  90 7F 06 F8 */	stw r3, 0x6f8(r31)
/* 8058CD28  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8058CD2C  7C 03 07 74 */	extsb r3, r0
/* 8058CD30  4B AA 03 3C */	b dComIfGp_getReverb__Fi
/* 8058CD34  7C 67 1B 78 */	mr r7, r3
/* 8058CD38  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 8058CD3C  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 8058CD40  90 01 00 20 */	stw r0, 0x20(r1)
/* 8058CD44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058CD48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058CD4C  80 63 00 00 */	lwz r3, 0(r3)
/* 8058CD50  38 81 00 20 */	addi r4, r1, 0x20
/* 8058CD54  38 BF 06 E4 */	addi r5, r31, 0x6e4
/* 8058CD58  38 C0 00 00 */	li r6, 0
/* 8058CD5C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8058CD60  FC 40 08 90 */	fmr f2, f1
/* 8058CD64  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 8058CD68  FC 80 18 90 */	fmr f4, f3
/* 8058CD6C  39 00 00 00 */	li r8, 0
/* 8058CD70  4B D1 F7 9C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8058CD74:
/* 8058CD74  88 7F 06 E0 */	lbz r3, 0x6e0(r31)
/* 8058CD78  28 03 00 00 */	cmplwi r3, 0
/* 8058CD7C  41 82 00 60 */	beq lbl_8058CDDC
/* 8058CD80  38 03 FF FF */	addi r0, r3, -1
/* 8058CD84  98 1F 06 E0 */	stb r0, 0x6e0(r31)
/* 8058CD88  88 1F 06 E0 */	lbz r0, 0x6e0(r31)
/* 8058CD8C  28 00 00 00 */	cmplwi r0, 0
/* 8058CD90  40 82 00 4C */	bne lbl_8058CDDC
/* 8058CD94  88 1F 06 E2 */	lbz r0, 0x6e2(r31)
/* 8058CD98  28 00 00 01 */	cmplwi r0, 1
/* 8058CD9C  40 82 00 24 */	bne lbl_8058CDC0
/* 8058CDA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058CDA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058CDA8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058CDAC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8058CDB0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058CDB4  7C 05 07 74 */	extsb r5, r0
/* 8058CDB8  4B AA 84 48 */	b onSwitch__10dSv_info_cFii
/* 8058CDBC  48 00 00 20 */	b lbl_8058CDDC
lbl_8058CDC0:
/* 8058CDC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058CDC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058CDC8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8058CDCC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8058CDD0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8058CDD4  7C 05 07 74 */	extsb r5, r0
/* 8058CDD8  4B AA 84 D8 */	b offSwitch__10dSv_info_cFii
lbl_8058CDDC:
/* 8058CDDC  38 60 00 01 */	li r3, 1
/* 8058CDE0  39 61 00 40 */	addi r11, r1, 0x40
/* 8058CDE4  4B DD 54 44 */	b _restgpr_29
/* 8058CDE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8058CDEC  7C 08 03 A6 */	mtlr r0
/* 8058CDF0  38 21 00 40 */	addi r1, r1, 0x40
/* 8058CDF4  4E 80 00 20 */	blr 
