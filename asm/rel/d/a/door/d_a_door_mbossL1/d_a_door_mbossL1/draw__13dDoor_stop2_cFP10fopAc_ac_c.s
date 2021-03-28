lbl_80672DCC:
/* 80672DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80672DD0  7C 08 02 A6 */	mflr r0
/* 80672DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80672DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80672DDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80672DE0  7C 7E 1B 78 */	mr r30, r3
/* 80672DE4  7C 9F 23 78 */	mr r31, r4
/* 80672DE8  80 03 00 00 */	lwz r0, 0(r3)
/* 80672DEC  28 00 00 00 */	cmplwi r0, 0
/* 80672DF0  41 82 00 3C */	beq lbl_80672E2C
/* 80672DF4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80672DF8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80672DFC  38 80 00 10 */	li r4, 0x10
/* 80672E00  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80672E04  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80672E08  4B B3 09 BC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80672E0C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80672E10  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80672E14  80 9E 00 00 */	lwz r4, 0(r30)
/* 80672E18  80 84 00 04 */	lwz r4, 4(r4)
/* 80672E1C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80672E20  4B B3 1F 80 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80672E24  80 7E 00 00 */	lwz r3, 0(r30)
/* 80672E28  4B 99 AE 9C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80672E2C:
/* 80672E2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80672E30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80672E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80672E38  7C 08 03 A6 */	mtlr r0
/* 80672E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80672E40  4E 80 00 20 */	blr 
