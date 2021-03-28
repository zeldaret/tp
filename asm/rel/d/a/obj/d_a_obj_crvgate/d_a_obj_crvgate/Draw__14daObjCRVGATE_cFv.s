lbl_80BD2FB8:
/* 80BD2FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD2FBC  7C 08 02 A6 */	mflr r0
/* 80BD2FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD2FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD2FC8  7C 7F 1B 78 */	mr r31, r3
/* 80BD2FCC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BD2FD0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BD2FD4  38 80 00 08 */	li r4, 8
/* 80BD2FD8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BD2FDC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BD2FE0  4B 5D 07 E4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BD2FE4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BD2FE8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BD2FEC  80 9F 06 74 */	lwz r4, 0x674(r31)
/* 80BD2FF0  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD2FF4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD2FF8  4B 5D 1D A8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BD2FFC  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80BD3000  28 00 00 01 */	cmplwi r0, 1
/* 80BD3004  40 82 00 1C */	bne lbl_80BD3020
/* 80BD3008  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BD300C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BD3010  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 80BD3014  80 84 00 04 */	lwz r4, 4(r4)
/* 80BD3018  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BD301C  4B 5D 1D 84 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_80BD3020:
/* 80BD3020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD3024  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BD3028  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BD302C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BD3030  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80BD3034  90 03 00 48 */	stw r0, 0x48(r3)
/* 80BD3038  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BD303C  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80BD3040  80 7F 06 74 */	lwz r3, 0x674(r31)
/* 80BD3044  4B 43 AC 80 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BD3048  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80BD304C  28 00 00 01 */	cmplwi r0, 1
/* 80BD3050  40 82 00 0C */	bne lbl_80BD305C
/* 80BD3054  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80BD3058  4B 43 AC 6C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80BD305C:
/* 80BD305C  38 60 00 01 */	li r3, 1
/* 80BD3060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD3064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD3068  7C 08 03 A6 */	mtlr r0
/* 80BD306C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD3070  4E 80 00 20 */	blr 
