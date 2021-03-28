lbl_801590FC:
/* 801590FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80159100  7C 08 02 A6 */	mflr r0
/* 80159104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80159108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015910C  7C 7F 1B 78 */	mr r31, r3
/* 80159110  88 03 0A C6 */	lbz r0, 0xac6(r3)
/* 80159114  28 00 00 00 */	cmplwi r0, 0
/* 80159118  41 82 00 20 */	beq lbl_80159138
/* 8015911C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80159120  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80159124  38 80 00 04 */	li r4, 4
/* 80159128  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8015912C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80159130  48 04 A6 95 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80159134  48 00 00 1C */	b lbl_80159150
lbl_80159138:
/* 80159138  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8015913C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80159140  38 80 00 00 */	li r4, 0
/* 80159144  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80159148  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8015914C  48 04 A6 79 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80159150:
/* 80159150  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 80159154  28 00 00 00 */	cmplwi r0, 0
/* 80159158  41 82 00 20 */	beq lbl_80159178
/* 8015915C  48 00 62 C9 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 80159160  2C 03 00 00 */	cmpwi r3, 0
/* 80159164  40 82 00 14 */	bne lbl_80159178
/* 80159168  7F E3 FB 78 */	mr r3, r31
/* 8015916C  48 00 03 E5 */	bl setHitodamaParticle__10daNpcCd2_cFv
/* 80159170  38 60 00 01 */	li r3, 1
/* 80159174  48 00 00 D0 */	b lbl_80159244
lbl_80159178:
/* 80159178  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8015917C  80 83 00 04 */	lwz r4, 4(r3)
/* 80159180  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80159184  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80159188  80 84 00 04 */	lwz r4, 4(r4)
/* 8015918C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80159190  48 04 BC 11 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80159194  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 80159198  28 00 00 00 */	cmplwi r0, 0
/* 8015919C  41 82 00 24 */	beq lbl_801591C0
/* 801591A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801591A4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 801591A8  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 801591AC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 801591B0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 801591B4  90 03 00 48 */	stw r0, 0x48(r3)
/* 801591B8  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 801591BC  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_801591C0:
/* 801591C0  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 801591C4  28 03 00 00 */	cmplwi r3, 0
/* 801591C8  41 82 00 44 */	beq lbl_8015920C
/* 801591CC  80 9F 05 8C */	lwz r4, 0x58c(r31)
/* 801591D0  80 84 00 04 */	lwz r4, 4(r4)
/* 801591D4  80 84 00 04 */	lwz r4, 4(r4)
/* 801591D8  38 84 00 58 */	addi r4, r4, 0x58
/* 801591DC  A8 BF 0A C4 */	lha r5, 0xac4(r31)
/* 801591E0  4B EB 44 09 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 801591E4  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 801591E8  4B EB 7F D9 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 801591EC  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 801591F0  80 63 00 04 */	lwz r3, 4(r3)
/* 801591F4  80 63 00 04 */	lwz r3, 4(r3)
/* 801591F8  38 63 00 58 */	addi r3, r3, 0x58
/* 801591FC  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 80159200  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80159204  48 1D 64 F5 */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 80159208  48 00 00 0C */	b lbl_80159214
lbl_8015920C:
/* 8015920C  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80159210  4B EB 7F B1 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_80159214:
/* 80159214  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 80159218  28 00 00 00 */	cmplwi r0, 0
/* 8015921C  41 82 00 24 */	beq lbl_80159240
/* 80159220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80159224  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80159228  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 8015922C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80159230  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80159234  90 03 00 48 */	stw r0, 0x48(r3)
/* 80159238  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 8015923C  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_80159240:
/* 80159240  38 60 00 01 */	li r3, 1
lbl_80159244:
/* 80159244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80159248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015924C  7C 08 03 A6 */	mtlr r0
/* 80159250  38 21 00 10 */	addi r1, r1, 0x10
/* 80159254  4E 80 00 20 */	blr 
