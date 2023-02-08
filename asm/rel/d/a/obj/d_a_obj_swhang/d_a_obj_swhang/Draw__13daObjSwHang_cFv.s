lbl_80CFCD04:
/* 80CFCD04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFCD08  7C 08 02 A6 */	mflr r0
/* 80CFCD0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFCD10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFCD14  7C 7F 1B 78 */	mr r31, r3
/* 80CFCD18  88 03 07 30 */	lbz r0, 0x730(r3)
/* 80CFCD1C  28 00 00 00 */	cmplwi r0, 0
/* 80CFCD20  41 82 00 0C */	beq lbl_80CFCD2C
/* 80CFCD24  28 00 00 01 */	cmplwi r0, 1
/* 80CFCD28  40 82 00 20 */	bne lbl_80CFCD48
lbl_80CFCD2C:
/* 80CFCD2C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CFCD30  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CFCD34  38 80 00 00 */	li r4, 0
/* 80CFCD38  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CFCD3C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CFCD40  4B 4A 6A 85 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CFCD44  48 00 00 1C */	b lbl_80CFCD60
lbl_80CFCD48:
/* 80CFCD48  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CFCD4C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CFCD50  38 80 00 10 */	li r4, 0x10
/* 80CFCD54  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CFCD58  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CFCD5C  4B 4A 6A 69 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80CFCD60:
/* 80CFCD60  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CFCD64  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CFCD68  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80CFCD6C  80 84 00 04 */	lwz r4, 4(r4)
/* 80CFCD70  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CFCD74  4B 4A 80 2D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CFCD78  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CFCD7C  4B 31 0F 49 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CFCD80  38 60 00 01 */	li r3, 1
/* 80CFCD84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFCD88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFCD8C  7C 08 03 A6 */	mtlr r0
/* 80CFCD90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFCD94  4E 80 00 20 */	blr 
