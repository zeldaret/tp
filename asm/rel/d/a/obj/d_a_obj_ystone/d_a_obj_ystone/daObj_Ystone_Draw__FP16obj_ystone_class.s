lbl_80D3E090:
/* 80D3E090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3E094  7C 08 02 A6 */	mflr r0
/* 80D3E098  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3E09C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3E0A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3E0A4  7C 7E 1B 78 */	mr r30, r3
/* 80D3E0A8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D3E0AC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D3E0B0  38 80 00 00 */	li r4, 0
/* 80D3E0B4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D3E0B8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80D3E0BC  4B 46 57 09 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D3E0C0  88 1E 05 99 */	lbz r0, 0x599(r30)
/* 80D3E0C4  28 00 00 03 */	cmplwi r0, 3
/* 80D3E0C8  40 80 00 4C */	bge lbl_80D3E114
/* 80D3E0CC  88 1E 05 9B */	lbz r0, 0x59b(r30)
/* 80D3E0D0  28 00 00 00 */	cmplwi r0, 0
/* 80D3E0D4  40 82 00 90 */	bne lbl_80D3E164
/* 80D3E0D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D3E0DC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D3E0E0  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80D3E0E4  80 84 00 04 */	lwz r4, 4(r4)
/* 80D3E0E8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D3E0EC  4B 46 6C B5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D3E0F0  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D3E0F4  80 83 00 04 */	lwz r4, 4(r3)
/* 80D3E0F8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D3E0FC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D3E100  38 84 00 58 */	addi r4, r4, 0x58
/* 80D3E104  4B 2C F6 A5 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D3E108  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D3E10C  4B 2C FB B9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80D3E110  48 00 00 54 */	b lbl_80D3E164
lbl_80D3E114:
/* 80D3E114  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80D3E118  83 E3 00 04 */	lwz r31, 4(r3)
/* 80D3E11C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80D3E120  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80D3E124  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D3E128  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80D3E12C  4B 46 6C 75 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D3E130  88 1E 05 9A */	lbz r0, 0x59a(r30)
/* 80D3E134  28 00 00 00 */	cmplwi r0, 0
/* 80D3E138  41 82 00 18 */	beq lbl_80D3E150
/* 80D3E13C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D3E140  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D3E144  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D3E148  38 84 00 58 */	addi r4, r4, 0x58
/* 80D3E14C  4B 2C F5 8D */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
lbl_80D3E150:
/* 80D3E150  7F C3 F3 78 */	mr r3, r30
/* 80D3E154  80 9F 00 04 */	lwz r4, 4(r31)
/* 80D3E158  4B 2D F2 D5 */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80D3E15C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80D3E160  4B 2D 30 61 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_80D3E164:
/* 80D3E164  38 60 00 01 */	li r3, 1
/* 80D3E168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3E16C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3E170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3E174  7C 08 03 A6 */	mtlr r0
/* 80D3E178  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3E17C  4E 80 00 20 */	blr 
