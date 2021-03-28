lbl_80CF0638:
/* 80CF0638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF063C  7C 08 02 A6 */	mflr r0
/* 80CF0640  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF0644  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF0648  4B 67 1B 94 */	b _savegpr_29
/* 80CF064C  7C 7F 1B 78 */	mr r31, r3
/* 80CF0650  88 03 05 70 */	lbz r0, 0x570(r3)
/* 80CF0654  28 00 00 08 */	cmplwi r0, 8
/* 80CF0658  40 82 00 98 */	bne lbl_80CF06F0
/* 80CF065C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF0660  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF0664  38 80 00 00 */	li r4, 0
/* 80CF0668  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CF066C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CF0670  4B 4B 31 54 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CF0674  3B DF 05 A8 */	addi r30, r31, 0x5a8
/* 80CF0678  3B A0 00 00 */	li r29, 0
lbl_80CF067C:
/* 80CF067C  88 1E 00 00 */	lbz r0, 0(r30)
/* 80CF0680  7C 00 07 75 */	extsb. r0, r0
/* 80CF0684  41 82 00 58 */	beq lbl_80CF06DC
/* 80CF0688  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80CF068C  80 83 00 04 */	lwz r4, 4(r3)
/* 80CF0690  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF0694  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF0698  80 84 00 04 */	lwz r4, 4(r4)
/* 80CF069C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CF06A0  4B 4B 47 00 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CF06A4  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80CF06A8  4B 31 FF D8 */	b entryDL__14mDoExt_McaMorfFv
/* 80CF06AC  2C 1D 00 02 */	cmpwi r29, 2
/* 80CF06B0  40 82 00 2C */	bne lbl_80CF06DC
/* 80CF06B4  80 9F 08 C8 */	lwz r4, 0x8c8(r31)
/* 80CF06B8  28 04 00 00 */	cmplwi r4, 0
/* 80CF06BC  41 82 00 20 */	beq lbl_80CF06DC
/* 80CF06C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF06C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF06C8  80 84 00 04 */	lwz r4, 4(r4)
/* 80CF06CC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CF06D0  4B 4B 46 D0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CF06D4  80 7F 08 C8 */	lwz r3, 0x8c8(r31)
/* 80CF06D8  4B 31 D5 EC */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80CF06DC:
/* 80CF06DC  3B BD 00 01 */	addi r29, r29, 1
/* 80CF06E0  2C 1D 00 08 */	cmpwi r29, 8
/* 80CF06E4  3B DE 00 64 */	addi r30, r30, 0x64
/* 80CF06E8  41 80 FF 94 */	blt lbl_80CF067C
/* 80CF06EC  48 00 00 6C */	b lbl_80CF0758
lbl_80CF06F0:
/* 80CF06F0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80CF06F4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80CF06F8  38 80 00 10 */	li r4, 0x10
/* 80CF06FC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CF0700  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CF0704  4B 4B 30 C0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CF0708  38 7F 0D 50 */	addi r3, r31, 0xd50
/* 80CF070C  38 80 00 3F */	li r4, 0x3f
/* 80CF0710  3C A0 80 CF */	lis r5, l_color@ha
/* 80CF0714  38 A5 30 FC */	addi r5, r5, l_color@l
/* 80CF0718  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CF071C  4B 32 38 94 */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 80CF0720  38 7F 0D 50 */	addi r3, r31, 0xd50
/* 80CF0724  81 9F 0D 50 */	lwz r12, 0xd50(r31)
/* 80CF0728  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CF072C  7D 89 03 A6 */	mtctr r12
/* 80CF0730  4E 80 04 21 */	bctrl 
/* 80CF0734  1C 83 00 14 */	mulli r4, r3, 0x14
/* 80CF0738  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF073C  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 80CF0740  7C 60 22 14 */	add r3, r0, r4
/* 80CF0744  3C 63 00 01 */	addis r3, r3, 1
/* 80CF0748  38 63 61 54 */	addi r3, r3, 0x6154
/* 80CF074C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80CF0750  38 9F 0D 50 */	addi r4, r31, 0xd50
/* 80CF0754  4B 32 3F E4 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_80CF0758:
/* 80CF0758  38 60 00 01 */	li r3, 1
/* 80CF075C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF0760  4B 67 1A C8 */	b _restgpr_29
/* 80CF0764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF0768  7C 08 03 A6 */	mtlr r0
/* 80CF076C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF0770  4E 80 00 20 */	blr 
