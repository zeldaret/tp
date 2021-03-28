lbl_80D0CEE0:
/* 80D0CEE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D0CEE4  7C 08 02 A6 */	mflr r0
/* 80D0CEE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D0CEEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0CEF0  4B 65 52 E8 */	b _savegpr_28
/* 80D0CEF4  7C 7F 1B 78 */	mr r31, r3
/* 80D0CEF8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D0CEFC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D0CF00  38 80 00 00 */	li r4, 0
/* 80D0CF04  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D0CF08  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D0CF0C  4B 49 68 B8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D0CF10  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80D0CF14  28 00 00 08 */	cmplwi r0, 8
/* 80D0CF18  41 81 01 30 */	bgt lbl_80D0D048
/* 80D0CF1C  3C 60 80 D1 */	lis r3, lit_4854@ha
/* 80D0CF20  38 63 D4 40 */	addi r3, r3, lit_4854@l
/* 80D0CF24  54 00 10 3A */	slwi r0, r0, 2
/* 80D0CF28  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D0CF2C  7C 09 03 A6 */	mtctr r0
/* 80D0CF30  4E 80 04 20 */	bctr 
lbl_80D0CF34:
/* 80D0CF34  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D0CF38  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D0CF3C  80 9F 10 D4 */	lwz r4, 0x10d4(r31)
/* 80D0CF40  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0CF44  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D0CF48  4B 49 7E 58 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D0CF4C  48 00 00 FC */	b lbl_80D0D048
lbl_80D0CF50:
/* 80D0CF50  3B 80 00 00 */	li r28, 0
/* 80D0CF54  3B C0 00 00 */	li r30, 0
/* 80D0CF58  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D0CF5C  3B A3 CA 54 */	addi r29, r3, g_env_light@l
lbl_80D0CF60:
/* 80D0CF60  7F A3 EB 78 */	mr r3, r29
/* 80D0CF64  38 1E 10 DC */	addi r0, r30, 0x10dc
/* 80D0CF68  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80D0CF6C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0CF70  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D0CF74  4B 49 7E 2C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D0CF78  3B 9C 00 01 */	addi r28, r28, 1
/* 80D0CF7C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80D0CF80  3B DE 00 04 */	addi r30, r30, 4
/* 80D0CF84  41 80 FF DC */	blt lbl_80D0CF60
/* 80D0CF88  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D0CF8C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D0CF90  80 9F 10 D8 */	lwz r4, 0x10d8(r31)
/* 80D0CF94  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0CF98  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D0CF9C  4B 49 7E 04 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D0CFA0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D0CFA4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D0CFA8  80 9F 11 A4 */	lwz r4, 0x11a4(r31)
/* 80D0CFAC  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0CFB0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D0CFB4  4B 49 7D EC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D0CFB8  48 00 00 90 */	b lbl_80D0D048
lbl_80D0CFBC:
/* 80D0CFBC  3B 80 00 00 */	li r28, 0
/* 80D0CFC0  3B C0 00 00 */	li r30, 0
/* 80D0CFC4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D0CFC8  3B A3 CA 54 */	addi r29, r3, g_env_light@l
lbl_80D0CFCC:
/* 80D0CFCC  7F A3 EB 78 */	mr r3, r29
/* 80D0CFD0  38 1E 10 DC */	addi r0, r30, 0x10dc
/* 80D0CFD4  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80D0CFD8  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0CFDC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D0CFE0  4B 49 7D C0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D0CFE4  3B 9C 00 01 */	addi r28, r28, 1
/* 80D0CFE8  2C 1C 00 32 */	cmpwi r28, 0x32
/* 80D0CFEC  3B DE 00 04 */	addi r30, r30, 4
/* 80D0CFF0  41 80 FF DC */	blt lbl_80D0CFCC
/* 80D0CFF4  48 00 00 54 */	b lbl_80D0D048
lbl_80D0CFF8:
/* 80D0CFF8  3B 80 00 00 */	li r28, 0
/* 80D0CFFC  3B C0 00 00 */	li r30, 0
/* 80D0D000  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D0D004  3B A3 CA 54 */	addi r29, r3, g_env_light@l
lbl_80D0D008:
/* 80D0D008  7F A3 EB 78 */	mr r3, r29
/* 80D0D00C  38 1E 10 DC */	addi r0, r30, 0x10dc
/* 80D0D010  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80D0D014  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0D018  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D0D01C  4B 49 7D 84 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D0D020  3B 9C 00 01 */	addi r28, r28, 1
/* 80D0D024  2C 1C 00 28 */	cmpwi r28, 0x28
/* 80D0D028  3B DE 00 04 */	addi r30, r30, 4
/* 80D0D02C  41 80 FF DC */	blt lbl_80D0D008
/* 80D0D030  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D0D034  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D0D038  80 9F 10 D8 */	lwz r4, 0x10d8(r31)
/* 80D0D03C  80 84 00 04 */	lwz r4, 4(r4)
/* 80D0D040  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D0D044  4B 49 7D 5C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_80D0D048:
/* 80D0D048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0D04C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D0D050  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D0D054  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D0D058  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80D0D05C  90 03 00 48 */	stw r0, 0x48(r3)
/* 80D0D060  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D0D064  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80D0D068  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80D0D06C  28 00 00 08 */	cmplwi r0, 8
/* 80D0D070  41 81 00 B4 */	bgt lbl_80D0D124
/* 80D0D074  3C 60 80 D1 */	lis r3, lit_4855@ha
/* 80D0D078  38 63 D4 1C */	addi r3, r3, lit_4855@l
/* 80D0D07C  54 00 10 3A */	slwi r0, r0, 2
/* 80D0D080  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D0D084  7C 09 03 A6 */	mtctr r0
/* 80D0D088  4E 80 04 20 */	bctr 
lbl_80D0D08C:
/* 80D0D08C  80 7F 10 D4 */	lwz r3, 0x10d4(r31)
/* 80D0D090  4B 30 0C 34 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D0D094  48 00 00 90 */	b lbl_80D0D124
lbl_80D0D098:
/* 80D0D098  3B 80 00 00 */	li r28, 0
/* 80D0D09C  3B C0 00 00 */	li r30, 0
lbl_80D0D0A0:
/* 80D0D0A0  38 1E 10 DC */	addi r0, r30, 0x10dc
/* 80D0D0A4  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80D0D0A8  4B 30 0C 1C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D0D0AC  3B 9C 00 01 */	addi r28, r28, 1
/* 80D0D0B0  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80D0D0B4  3B DE 00 04 */	addi r30, r30, 4
/* 80D0D0B8  41 80 FF E8 */	blt lbl_80D0D0A0
/* 80D0D0BC  80 7F 10 D8 */	lwz r3, 0x10d8(r31)
/* 80D0D0C0  4B 30 0C 04 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D0D0C4  80 7F 11 A4 */	lwz r3, 0x11a4(r31)
/* 80D0D0C8  4B 30 0B FC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D0D0CC  48 00 00 58 */	b lbl_80D0D124
lbl_80D0D0D0:
/* 80D0D0D0  3B 80 00 00 */	li r28, 0
/* 80D0D0D4  3B C0 00 00 */	li r30, 0
lbl_80D0D0D8:
/* 80D0D0D8  38 1E 10 DC */	addi r0, r30, 0x10dc
/* 80D0D0DC  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80D0D0E0  4B 30 0B E4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D0D0E4  3B 9C 00 01 */	addi r28, r28, 1
/* 80D0D0E8  2C 1C 00 32 */	cmpwi r28, 0x32
/* 80D0D0EC  3B DE 00 04 */	addi r30, r30, 4
/* 80D0D0F0  41 80 FF E8 */	blt lbl_80D0D0D8
/* 80D0D0F4  48 00 00 30 */	b lbl_80D0D124
lbl_80D0D0F8:
/* 80D0D0F8  3B 80 00 00 */	li r28, 0
/* 80D0D0FC  3B C0 00 00 */	li r30, 0
lbl_80D0D100:
/* 80D0D100  38 1E 10 DC */	addi r0, r30, 0x10dc
/* 80D0D104  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80D0D108  4B 30 0B BC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D0D10C  3B 9C 00 01 */	addi r28, r28, 1
/* 80D0D110  2C 1C 00 28 */	cmpwi r28, 0x28
/* 80D0D114  3B DE 00 04 */	addi r30, r30, 4
/* 80D0D118  41 80 FF E8 */	blt lbl_80D0D100
/* 80D0D11C  80 7F 10 D8 */	lwz r3, 0x10d8(r31)
/* 80D0D120  4B 30 0B A4 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80D0D124:
/* 80D0D124  38 60 00 01 */	li r3, 1
/* 80D0D128  39 61 00 20 */	addi r11, r1, 0x20
/* 80D0D12C  4B 65 50 F8 */	b _restgpr_28
/* 80D0D130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D0D134  7C 08 03 A6 */	mtlr r0
/* 80D0D138  38 21 00 20 */	addi r1, r1, 0x20
/* 80D0D13C  4E 80 00 20 */	blr 
