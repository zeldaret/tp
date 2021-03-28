lbl_806706A4:
/* 806706A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806706A8  7C 08 02 A6 */	mflr r0
/* 806706AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806706B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806706B4  93 C1 00 08 */	stw r30, 8(r1)
/* 806706B8  7C 7F 1B 78 */	mr r31, r3
/* 806706BC  4B FF FF A9 */	bl checkDraw__9daBdoor_cFv
/* 806706C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 806706C4  40 82 00 34 */	bne lbl_806706F8
/* 806706C8  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 806706CC  28 00 00 00 */	cmplwi r0, 0
/* 806706D0  40 82 00 20 */	bne lbl_806706F0
/* 806706D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806706D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806706DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806706E0  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 806706E4  4B A0 3B 6C */	b Release__4cBgSFP9dBgW_Base
/* 806706E8  38 00 00 01 */	li r0, 1
/* 806706EC  98 1F 05 80 */	stb r0, 0x580(r31)
lbl_806706F0:
/* 806706F0  38 60 00 01 */	li r3, 1
/* 806706F4  48 00 00 F8 */	b lbl_806707EC
lbl_806706F8:
/* 806706F8  88 1F 05 80 */	lbz r0, 0x580(r31)
/* 806706FC  28 00 00 00 */	cmplwi r0, 0
/* 80670700  41 82 00 24 */	beq lbl_80670724
/* 80670704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80670708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067070C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80670710  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80670714  7F E5 FB 78 */	mr r5, r31
/* 80670718  4B A0 42 F0 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 8067071C  38 00 00 00 */	li r0, 0
/* 80670720  98 1F 05 80 */	stb r0, 0x580(r31)
lbl_80670724:
/* 80670724  2C 1E 00 00 */	cmpwi r30, 0
/* 80670728  40 82 00 10 */	bne lbl_80670738
/* 8067072C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80670730  54 00 00 3E */	slwi r0, r0, 0
/* 80670734  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80670738:
/* 80670738  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8067073C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80670740  38 80 00 10 */	li r4, 0x10
/* 80670744  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80670748  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8067074C  4B B3 30 78 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80670750  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80670754  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80670758  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8067075C  80 84 00 04 */	lwz r4, 4(r4)
/* 80670760  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80670764  4B B3 46 3C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80670768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067076C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80670770  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80670774  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80670778  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 8067077C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80670780  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80670784  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80670788  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8067078C  4B 99 D5 38 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80670790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80670794  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80670798  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8067079C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 806707A0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 806707A4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 806707A8  88 1F 05 94 */	lbz r0, 0x594(r31)
/* 806707AC  28 00 00 00 */	cmplwi r0, 0
/* 806707B0  41 82 00 38 */	beq lbl_806707E8
/* 806707B4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 806707B8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 806707BC  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 806707C0  80 84 00 04 */	lwz r4, 4(r4)
/* 806707C4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806707C8  4B B3 45 D8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806707CC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 806707D0  80 83 00 04 */	lwz r4, 4(r3)
/* 806707D4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 806707D8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806707DC  4B 99 D1 F0 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 806707E0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 806707E4  4B 99 D4 E0 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_806707E8:
/* 806707E8  38 60 00 01 */	li r3, 1
lbl_806707EC:
/* 806707EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806707F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806707F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806707F8  7C 08 03 A6 */	mtlr r0
/* 806707FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80670800  4E 80 00 20 */	blr 
