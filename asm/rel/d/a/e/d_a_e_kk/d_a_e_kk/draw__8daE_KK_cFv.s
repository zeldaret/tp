lbl_806FA848:
/* 806FA848  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806FA84C  7C 08 02 A6 */	mflr r0
/* 806FA850  90 01 00 34 */	stw r0, 0x34(r1)
/* 806FA854  39 61 00 30 */	addi r11, r1, 0x30
/* 806FA858  4B C6 79 84 */	b _savegpr_29
/* 806FA85C  7C 7E 1B 78 */	mr r30, r3
/* 806FA860  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FA864  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FA868  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FA86C  28 00 00 02 */	cmplwi r0, 2
/* 806FA870  40 82 00 20 */	bne lbl_806FA890
/* 806FA874  38 60 00 42 */	li r3, 0x42
/* 806FA878  38 80 00 01 */	li r4, 1
/* 806FA87C  4B 99 D6 64 */	b checkItemGet__FUci
/* 806FA880  2C 03 00 00 */	cmpwi r3, 0
/* 806FA884  40 82 00 0C */	bne lbl_806FA890
/* 806FA888  38 60 00 01 */	li r3, 1
/* 806FA88C  48 00 01 A4 */	b lbl_806FAA30
lbl_806FA890:
/* 806FA890  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 806FA894  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 806FA898  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806FA89C  EC 21 00 2A */	fadds f1, f1, f0
/* 806FA8A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806FA8A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806FA8A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806FA8AC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806FA8B0  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FA8B4  28 00 00 01 */	cmplwi r0, 1
/* 806FA8B8  41 82 00 E0 */	beq lbl_806FA998
/* 806FA8BC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FA8C0  83 A3 00 04 */	lwz r29, 4(r3)
/* 806FA8C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806FA8C8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806FA8CC  38 80 00 00 */	li r4, 0
/* 806FA8D0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806FA8D4  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806FA8D8  4B AA 8E EC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806FA8DC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806FA8E0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806FA8E4  80 9D 00 04 */	lwz r4, 4(r29)
/* 806FA8E8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806FA8EC  4B AA A4 B4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806FA8F0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FA8F4  80 63 00 04 */	lwz r3, 4(r3)
/* 806FA8F8  80 63 00 04 */	lwz r3, 4(r3)
/* 806FA8FC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 806FA900  80 63 00 08 */	lwz r3, 8(r3)
/* 806FA904  80 63 00 08 */	lwz r3, 8(r3)
/* 806FA908  28 03 00 00 */	cmplwi r3, 0
/* 806FA90C  41 82 00 38 */	beq lbl_806FA944
/* 806FA910  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FA914  2C 00 00 0A */	cmpwi r0, 0xa
/* 806FA918  40 82 00 20 */	bne lbl_806FA938
/* 806FA91C  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 806FA920  2C 00 00 02 */	cmpwi r0, 2
/* 806FA924  41 82 00 14 */	beq lbl_806FA938
/* 806FA928  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806FA92C  60 00 00 01 */	ori r0, r0, 1
/* 806FA930  90 03 00 0C */	stw r0, 0xc(r3)
/* 806FA934  48 00 00 10 */	b lbl_806FA944
lbl_806FA938:
/* 806FA938  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806FA93C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FA940  90 03 00 0C */	stw r0, 0xc(r3)
lbl_806FA944:
/* 806FA944  7F C3 F3 78 */	mr r3, r30
/* 806FA948  80 9D 00 04 */	lwz r4, 4(r29)
/* 806FA94C  4B 92 2A E0 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 806FA950  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FA954  4B 91 68 6C */	b entryDL__16mDoExt_McaMorfSOFv
/* 806FA958  80 7E 06 68 */	lwz r3, 0x668(r30)
/* 806FA95C  38 80 00 01 */	li r4, 1
/* 806FA960  7F A5 EB 78 */	mr r5, r29
/* 806FA964  38 C1 00 08 */	addi r6, r1, 8
/* 806FA968  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806FA96C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806FA970  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 806FA974  C0 9E 08 48 */	lfs f4, 0x848(r30)
/* 806FA978  38 FE 08 A0 */	addi r7, r30, 0x8a0
/* 806FA97C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806FA980  39 20 00 00 */	li r9, 0
/* 806FA984  C0 BF 00 08 */	lfs f5, 8(r31)
/* 806FA988  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806FA98C  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806FA990  4B 93 3F 80 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806FA994  90 7E 06 68 */	stw r3, 0x668(r30)
lbl_806FA998:
/* 806FA998  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FA99C  28 00 00 00 */	cmplwi r0, 0
/* 806FA9A0  40 82 00 8C */	bne lbl_806FAA2C
/* 806FA9A4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FA9A8  83 A3 00 04 */	lwz r29, 4(r3)
/* 806FA9AC  7F C3 F3 78 */	mr r3, r30
/* 806FA9B0  80 9D 00 04 */	lwz r4, 4(r29)
/* 806FA9B4  4B 92 2A 78 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 806FA9B8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FA9BC  4B 91 68 04 */	b entryDL__16mDoExt_McaMorfSOFv
/* 806FA9C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806FA9C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806FA9C8  38 80 00 00 */	li r4, 0
/* 806FA9CC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806FA9D0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 806FA9D4  4B AA 8D F0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806FA9D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806FA9DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806FA9E0  80 9D 00 04 */	lwz r4, 4(r29)
/* 806FA9E4  38 BE 01 0C */	addi r5, r30, 0x10c
/* 806FA9E8  4B AA A3 B8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806FA9EC  80 7E 06 6C */	lwz r3, 0x66c(r30)
/* 806FA9F0  38 80 00 01 */	li r4, 1
/* 806FA9F4  7F A5 EB 78 */	mr r5, r29
/* 806FA9F8  38 C1 00 08 */	addi r6, r1, 8
/* 806FA9FC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806FAA00  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806FAA04  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 806FAA08  C0 9E 08 48 */	lfs f4, 0x848(r30)
/* 806FAA0C  38 FE 08 A0 */	addi r7, r30, 0x8a0
/* 806FAA10  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806FAA14  39 20 00 00 */	li r9, 0
/* 806FAA18  C0 BF 00 08 */	lfs f5, 8(r31)
/* 806FAA1C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 806FAA20  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 806FAA24  4B 93 3E EC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806FAA28  90 7E 06 6C */	stw r3, 0x66c(r30)
lbl_806FAA2C:
/* 806FAA2C  38 60 00 01 */	li r3, 1
lbl_806FAA30:
/* 806FAA30  39 61 00 30 */	addi r11, r1, 0x30
/* 806FAA34  4B C6 77 F4 */	b _restgpr_29
/* 806FAA38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806FAA3C  7C 08 03 A6 */	mtlr r0
/* 806FAA40  38 21 00 30 */	addi r1, r1, 0x30
/* 806FAA44  4E 80 00 20 */	blr 
