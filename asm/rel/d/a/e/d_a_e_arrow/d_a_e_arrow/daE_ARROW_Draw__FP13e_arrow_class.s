lbl_8067C7CC:
/* 8067C7CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067C7D0  7C 08 02 A6 */	mflr r0
/* 8067C7D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067C7D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067C7DC  7C 7F 1B 78 */	mr r31, r3
/* 8067C7E0  88 03 0A 14 */	lbz r0, 0xa14(r3)
/* 8067C7E4  28 00 00 00 */	cmplwi r0, 0
/* 8067C7E8  41 82 00 0C */	beq lbl_8067C7F4
/* 8067C7EC  38 60 00 01 */	li r3, 1
/* 8067C7F0  48 00 00 70 */	b lbl_8067C860
lbl_8067C7F4:
/* 8067C7F4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8067C7F8  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8067C7FC  41 82 00 20 */	beq lbl_8067C81C
/* 8067C800  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8067C804  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8067C808  38 80 00 02 */	li r4, 2
/* 8067C80C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8067C810  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8067C814  4B B2 6F B0 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8067C818  48 00 00 1C */	b lbl_8067C834
lbl_8067C81C:
/* 8067C81C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8067C820  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8067C824  38 80 00 00 */	li r4, 0
/* 8067C828  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8067C82C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8067C830  4B B2 6F 94 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_8067C834:
/* 8067C834  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 8067C838  28 04 00 00 */	cmplwi r4, 0
/* 8067C83C  41 82 00 20 */	beq lbl_8067C85C
/* 8067C840  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8067C844  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8067C848  80 84 00 04 */	lwz r4, 4(r4)
/* 8067C84C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8067C850  4B B2 85 50 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8067C854  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8067C858  4B 99 14 6C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_8067C85C:
/* 8067C85C  38 60 00 01 */	li r3, 1
lbl_8067C860:
/* 8067C860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067C864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067C868  7C 08 03 A6 */	mtlr r0
/* 8067C86C  38 21 00 10 */	addi r1, r1, 0x10
/* 8067C870  4E 80 00 20 */	blr 
