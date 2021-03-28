lbl_80CFF8FC:
/* 80CFF8FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFF900  7C 08 02 A6 */	mflr r0
/* 80CFF904  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFF908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFF90C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFF910  7C 7F 1B 78 */	mr r31, r3
/* 80CFF914  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CFF918  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CFF91C  38 80 00 10 */	li r4, 0x10
/* 80CFF920  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CFF924  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CFF928  4B 4A 3E 9C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CFF92C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CFF930  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CFF934  80 9F 05 A4 */	lwz r4, 0x5a4(r31)
/* 80CFF938  80 84 00 04 */	lwz r4, 4(r4)
/* 80CFF93C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CFF940  4B 4A 54 60 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CFF944  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFF948  80 83 00 04 */	lwz r4, 4(r3)
/* 80CFF94C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CFF950  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CFF954  38 84 00 58 */	addi r4, r4, 0x58
/* 80CFF958  4B 30 DE 50 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80CFF95C  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFF960  80 83 00 04 */	lwz r4, 4(r3)
/* 80CFF964  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80CFF968  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CFF96C  38 84 00 58 */	addi r4, r4, 0x58
/* 80CFF970  4B 30 DD 68 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CFF974  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80CFF978  38 A0 00 01 */	li r5, 1
/* 80CFF97C  88 03 00 05 */	lbz r0, 5(r3)
/* 80CFF980  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CFF984  40 82 00 1C */	bne lbl_80CFF9A0
/* 80CFF988  3C 80 80 D0 */	lis r4, lit_3858@ha
/* 80CFF98C  C0 24 FC E4 */	lfs f1, lit_3858@l(r4)
/* 80CFF990  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CFF994  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CFF998  41 82 00 08 */	beq lbl_80CFF9A0
/* 80CFF99C  38 A0 00 00 */	li r5, 0
lbl_80CFF9A0:
/* 80CFF9A0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80CFF9A4  41 82 00 64 */	beq lbl_80CFFA08
/* 80CFF9A8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CFF9AC  3C 80 80 D0 */	lis r4, lit_3858@ha
/* 80CFF9B0  C0 04 FC E4 */	lfs f0, lit_3858@l(r4)
/* 80CFF9B4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CFF9B8  41 82 00 50 */	beq lbl_80CFFA08
/* 80CFF9BC  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFF9C0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CFF9C4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CFF9C8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CFF9CC  38 84 00 58 */	addi r4, r4, 0x58
/* 80CFF9D0  4B 30 DD 08 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CFF9D4  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFF9D8  80 83 00 04 */	lwz r4, 4(r3)
/* 80CFF9DC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CFF9E0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CFF9E4  38 84 00 58 */	addi r4, r4, 0x58
/* 80CFF9E8  4B 30 DB 30 */	b entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
/* 80CFF9EC  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFF9F0  80 83 00 04 */	lwz r4, 4(r3)
/* 80CFF9F4  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80CFF9F8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CFF9FC  38 84 00 58 */	addi r4, r4, 0x58
/* 80CFFA00  4B 30 DD A8 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80CFFA04  48 00 00 18 */	b lbl_80CFFA1C
lbl_80CFFA08:
/* 80CFFA08  80 9F 05 A4 */	lwz r4, 0x5a4(r31)
/* 80CFFA0C  80 84 00 04 */	lwz r4, 4(r4)
/* 80CFFA10  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80CFFA14  38 84 00 58 */	addi r4, r4, 0x58
/* 80CFFA18  4B 30 DC C0 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80CFFA1C:
/* 80CFFA1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFFA20  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80CFFA24  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CFFA28  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80CFFA2C  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80CFFA30  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CFFA34  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CFFA38  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CFFA3C  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFFA40  4B 30 E2 84 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80CFFA44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFFA48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFFA4C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CFFA50  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CFFA54  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CFFA58  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CFFA5C  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFFA60  80 63 00 04 */	lwz r3, 4(r3)
/* 80CFFA64  38 63 00 58 */	addi r3, r3, 0x58
/* 80CFFA68  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80CFFA6C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80CFFA70  4B 62 FE 10 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80CFFA74  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFFA78  80 63 00 04 */	lwz r3, 4(r3)
/* 80CFFA7C  38 63 00 58 */	addi r3, r3, 0x58
/* 80CFFA80  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 80CFFA84  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80CFFA88  4B 62 FD 2C */	b removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80CFFA8C  80 BF 05 B4 */	lwz r5, 0x5b4(r31)
/* 80CFFA90  38 80 00 01 */	li r4, 1
/* 80CFFA94  88 05 00 05 */	lbz r0, 5(r5)
/* 80CFFA98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CFFA9C  40 82 00 1C */	bne lbl_80CFFAB8
/* 80CFFAA0  3C 60 80 D0 */	lis r3, lit_3858@ha
/* 80CFFAA4  C0 23 FC E4 */	lfs f1, lit_3858@l(r3)
/* 80CFFAA8  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80CFFAAC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CFFAB0  41 82 00 08 */	beq lbl_80CFFAB8
/* 80CFFAB4  38 80 00 00 */	li r4, 0
lbl_80CFFAB8:
/* 80CFFAB8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80CFFABC  41 82 00 64 */	beq lbl_80CFFB20
/* 80CFFAC0  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 80CFFAC4  3C 60 80 D0 */	lis r3, lit_3858@ha
/* 80CFFAC8  C0 03 FC E4 */	lfs f0, lit_3858@l(r3)
/* 80CFFACC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CFFAD0  41 82 00 50 */	beq lbl_80CFFB20
/* 80CFFAD4  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFFAD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80CFFADC  38 63 00 58 */	addi r3, r3, 0x58
/* 80CFFAE0  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CFFAE4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80CFFAE8  4B 62 FC CC */	b removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80CFFAEC  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFFAF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80CFFAF4  38 63 00 58 */	addi r3, r3, 0x58
/* 80CFFAF8  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CFFAFC  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80CFFB00  4B 62 FB 4C */	b removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor
/* 80CFFB04  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFFB08  80 63 00 04 */	lwz r3, 4(r3)
/* 80CFFB0C  38 63 00 58 */	addi r3, r3, 0x58
/* 80CFFB10  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80CFFB14  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80CFFB18  4B 62 FD 68 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80CFFB1C  48 00 00 18 */	b lbl_80CFFB34
lbl_80CFFB20:
/* 80CFFB20  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 80CFFB24  80 63 00 04 */	lwz r3, 4(r3)
/* 80CFFB28  38 63 00 58 */	addi r3, r3, 0x58
/* 80CFFB2C  80 85 00 14 */	lwz r4, 0x14(r5)
/* 80CFFB30  4B 62 FC 84 */	b removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80CFFB34:
/* 80CFFB34  38 60 00 01 */	li r3, 1
/* 80CFFB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFFB3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFFB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFFB44  7C 08 03 A6 */	mtlr r0
/* 80CFFB48  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFFB4C  4E 80 00 20 */	blr 
