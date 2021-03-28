lbl_804FBF3C:
/* 804FBF3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FBF40  7C 08 02 A6 */	mflr r0
/* 804FBF44  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FBF48  39 61 00 30 */	addi r11, r1, 0x30
/* 804FBF4C  4B E6 62 88 */	b _savegpr_27
/* 804FBF50  7C 7F 1B 78 */	mr r31, r3
/* 804FBF54  3C 60 80 50 */	lis r3, lit_3788@ha
/* 804FBF58  3B A3 0B 04 */	addi r29, r3, lit_3788@l
/* 804FBF5C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804FBF60  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804FBF64  38 80 00 00 */	li r4, 0
/* 804FBF68  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804FBF6C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804FBF70  4B CA 78 54 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804FBF74  88 1F 08 50 */	lbz r0, 0x850(r31)
/* 804FBF78  7C 00 07 75 */	extsb. r0, r0
/* 804FBF7C  40 82 00 90 */	bne lbl_804FC00C
/* 804FBF80  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804FBF84  83 C3 00 04 */	lwz r30, 4(r3)
/* 804FBF88  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804FBF8C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804FBF90  80 9E 00 04 */	lwz r4, 4(r30)
/* 804FBF94  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804FBF98  4B CA 8E 08 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804FBF9C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804FBFA0  4B B1 52 20 */	b entryDL__16mDoExt_McaMorfSOFv
/* 804FBFA4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804FBFA8  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 804FBFAC  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 804FBFB0  EC 20 18 2A */	fadds f1, f0, f3
/* 804FBFB4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804FBFB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804FBFBC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804FBFC0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804FBFC4  80 7F 06 64 */	lwz r3, 0x664(r31)
/* 804FBFC8  38 80 00 01 */	li r4, 1
/* 804FBFCC  7F C5 F3 78 */	mr r5, r30
/* 804FBFD0  38 C1 00 08 */	addi r6, r1, 8
/* 804FBFD4  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 804FBFD8  C0 5D 00 04 */	lfs f2, 4(r29)
/* 804FBFDC  3C E0 80 45 */	lis r7, mGroundY__11fopAcM_gc_c@ha
/* 804FBFE0  C0 87 0C D0 */	lfs f4, mGroundY__11fopAcM_gc_c@l(r7)
/* 804FBFE4  3C E0 80 3F */	lis r7, mGndCheck__11fopAcM_gc_c@ha
/* 804FBFE8  38 E7 1C C4 */	addi r7, r7, mGndCheck__11fopAcM_gc_c@l
/* 804FBFEC  38 E7 00 14 */	addi r7, r7, 0x14
/* 804FBFF0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 804FBFF4  39 20 00 00 */	li r9, 0
/* 804FBFF8  C0 BD 00 08 */	lfs f5, 8(r29)
/* 804FBFFC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 804FC000  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 804FC004  4B B3 29 0C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 804FC008  90 7F 06 64 */	stw r3, 0x664(r31)
lbl_804FC00C:
/* 804FC00C  38 7F 08 08 */	addi r3, r31, 0x808
/* 804FC010  38 80 00 0C */	li r4, 0xc
/* 804FC014  3C A0 80 50 */	lis r5, l_color@ha
/* 804FC018  38 A5 0C 74 */	addi r5, r5, l_color@l
/* 804FC01C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804FC020  4B B1 7F 90 */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 804FC024  38 7F 08 08 */	addi r3, r31, 0x808
/* 804FC028  81 9F 08 08 */	lwz r12, 0x808(r31)
/* 804FC02C  81 8C 00 08 */	lwz r12, 8(r12)
/* 804FC030  7D 89 03 A6 */	mtctr r12
/* 804FC034  4E 80 04 21 */	bctrl 
/* 804FC038  1C 83 00 14 */	mulli r4, r3, 0x14
/* 804FC03C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FC040  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 804FC044  7C 60 22 14 */	add r3, r0, r4
/* 804FC048  3C 63 00 01 */	addis r3, r3, 1
/* 804FC04C  38 63 61 54 */	addi r3, r3, 0x6154
/* 804FC050  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 804FC054  38 9F 08 08 */	addi r4, r31, 0x808
/* 804FC058  4B B1 86 E0 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 804FC05C  3B 60 00 01 */	li r27, 1
/* 804FC060  3B C0 00 04 */	li r30, 4
/* 804FC064  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804FC068  3B A3 CA 54 */	addi r29, r3, g_env_light@l
lbl_804FC06C:
/* 804FC06C  3B 9E 07 78 */	addi r28, r30, 0x778
/* 804FC070  7C 9F E0 2E */	lwzx r4, r31, r28
/* 804FC074  28 04 00 00 */	cmplwi r4, 0
/* 804FC078  41 82 00 1C */	beq lbl_804FC094
/* 804FC07C  7F A3 EB 78 */	mr r3, r29
/* 804FC080  80 84 00 04 */	lwz r4, 4(r4)
/* 804FC084  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804FC088  4B CA 8D 18 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804FC08C  7C 7F E0 2E */	lwzx r3, r31, r28
/* 804FC090  4B B1 1C 34 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_804FC094:
/* 804FC094  3B 7B 00 01 */	addi r27, r27, 1
/* 804FC098  2C 1B 00 0B */	cmpwi r27, 0xb
/* 804FC09C  3B DE 00 04 */	addi r30, r30, 4
/* 804FC0A0  41 80 FF CC */	blt lbl_804FC06C
/* 804FC0A4  38 60 00 01 */	li r3, 1
/* 804FC0A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804FC0AC  4B E6 61 74 */	b _restgpr_27
/* 804FC0B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FC0B4  7C 08 03 A6 */	mtlr r0
/* 804FC0B8  38 21 00 30 */	addi r1, r1, 0x30
/* 804FC0BC  4E 80 00 20 */	blr 
