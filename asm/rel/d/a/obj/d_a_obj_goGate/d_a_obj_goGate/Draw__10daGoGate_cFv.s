lbl_80BFDDDC:
/* 80BFDDDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFDDE0  7C 08 02 A6 */	mflr r0
/* 80BFDDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFDDE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFDDEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFDDF0  7C 7E 1B 78 */	mr r30, r3
/* 80BFDDF4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BFDDF8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BFDDFC  38 80 00 10 */	li r4, 0x10
/* 80BFDE00  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BFDE04  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BFDE08  4B 5A 59 BC */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BFDE0C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BFDE10  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BFDE14  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 80BFDE18  80 84 00 04 */	lwz r4, 4(r4)
/* 80BFDE1C  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BFDE20  4B 5A 6F 80 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BFDE24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFDE28  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BFDE2C  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BFDE30  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BFDE34  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BFDE38  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BFDE3C  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BFDE40  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BFDE44  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BFDE48  4B 40 FE 7C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BFDE4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFDE50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BFDE54  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BFDE58  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BFDE5C  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BFDE60  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BFDE64  38 60 00 01 */	li r3, 1
/* 80BFDE68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFDE6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BFDE70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFDE74  7C 08 03 A6 */	mtlr r0
/* 80BFDE78  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFDE7C  4E 80 00 20 */	blr 
