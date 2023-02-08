lbl_8057B190:
/* 8057B190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B194  7C 08 02 A6 */	mflr r0
/* 8057B198  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B19C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B1A0  7C 7F 1B 78 */	mr r31, r3
/* 8057B1A4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8057B1A8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8057B1AC  38 80 00 00 */	li r4, 0
/* 8057B1B0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8057B1B4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8057B1B8  4B C2 86 0D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8057B1BC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8057B1C0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8057B1C4  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8057B1C8  80 84 00 04 */	lwz r4, 4(r4)
/* 8057B1CC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8057B1D0  4B C2 9B D1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8057B1D4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8057B1D8  80 83 00 04 */	lwz r4, 4(r3)
/* 8057B1DC  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 8057B1E0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8057B1E4  38 84 00 58 */	addi r4, r4, 0x58
/* 8057B1E8  4B A9 25 C1 */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 8057B1EC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8057B1F0  80 83 00 04 */	lwz r4, 4(r3)
/* 8057B1F4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8057B1F8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8057B1FC  38 84 00 58 */	addi r4, r4, 0x58
/* 8057B200  4B A9 24 D9 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8057B204  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8057B208  80 83 00 04 */	lwz r4, 4(r3)
/* 8057B20C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8057B210  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8057B214  38 84 00 58 */	addi r4, r4, 0x58
/* 8057B218  4B A9 24 C1 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8057B21C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8057B220  4B A9 2A A5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8057B224  38 60 00 01 */	li r3, 1
/* 8057B228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B22C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B230  7C 08 03 A6 */	mtlr r0
/* 8057B234  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B238  4E 80 00 20 */	blr 
