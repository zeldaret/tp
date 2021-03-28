lbl_80BBBD80:
/* 80BBBD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBBD84  7C 08 02 A6 */	mflr r0
/* 80BBBD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBBD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBBD90  93 C1 00 08 */	stw r30, 8(r1)
/* 80BBBD94  7C 7E 1B 78 */	mr r30, r3
/* 80BBBD98  3C 60 80 BC */	lis r3, m__21daObj_BouMato_Param_c@ha
/* 80BBBD9C  3B E3 C4 70 */	addi r31, r3, m__21daObj_BouMato_Param_c@l
/* 80BBBDA0  88 1E 0A 38 */	lbz r0, 0xa38(r30)
/* 80BBBDA4  28 00 00 00 */	cmplwi r0, 0
/* 80BBBDA8  40 82 00 8C */	bne lbl_80BBBE34
/* 80BBBDAC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BBBDB0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BBBDB4  38 80 00 00 */	li r4, 0
/* 80BBBDB8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BBBDBC  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BBBDC0  4B 5E 7A 04 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BBBDC4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BBBDC8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BBBDCC  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80BBBDD0  80 84 00 04 */	lwz r4, 4(r4)
/* 80BBBDD4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BBBDD8  4B 5E 8F C8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BBBDDC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80BBBDE0  4B 45 1E E4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BBBDE4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80BBBDE8  C0 9E 0A 14 */	lfs f4, 0xa14(r30)
/* 80BBBDEC  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80BBBDF0  41 82 00 44 */	beq lbl_80BBBE34
/* 80BBBDF4  80 7E 0A 2C */	lwz r3, 0xa2c(r30)
/* 80BBBDF8  38 80 00 01 */	li r4, 1
/* 80BBBDFC  80 BE 05 74 */	lwz r5, 0x574(r30)
/* 80BBBE00  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BBBE04  38 FF 00 00 */	addi r7, r31, 0
/* 80BBBE08  C0 27 00 0C */	lfs f1, 0xc(r7)
/* 80BBBE0C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80BBBE10  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80BBBE14  38 FE 07 E0 */	addi r7, r30, 0x7e0
/* 80BBBE18  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80BBBE1C  39 20 00 00 */	li r9, 0
/* 80BBBE20  C0 BF 00 5C */	lfs f5, 0x5c(r31)
/* 80BBBE24  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80BBBE28  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80BBBE2C  4B 47 2A E4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 80BBBE30  90 7E 0A 2C */	stw r3, 0xa2c(r30)
lbl_80BBBE34:
/* 80BBBE34  38 60 00 01 */	li r3, 1
/* 80BBBE38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBBE3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BBBE40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBBE44  7C 08 03 A6 */	mtlr r0
/* 80BBBE48  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBBE4C  4E 80 00 20 */	blr 
