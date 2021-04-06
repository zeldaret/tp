lbl_80CC9B80:
/* 80CC9B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC9B84  7C 08 02 A6 */	mflr r0
/* 80CC9B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC9B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC9B90  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC9B94  7C 7E 1B 78 */	mr r30, r3
/* 80CC9B98  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CC9B9C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CC9BA0  38 80 00 10 */	li r4, 0x10
/* 80CC9BA4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CC9BA8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80CC9BAC  4B 4D 9C 19 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CC9BB0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CC9BB4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CC9BB8  80 9E 06 00 */	lwz r4, 0x600(r30)
/* 80CC9BBC  80 84 00 04 */	lwz r4, 4(r4)
/* 80CC9BC0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80CC9BC4  4B 4D B1 DD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CC9BC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC9BCC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC9BD0  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CC9BD4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CC9BD8  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CC9BDC  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC9BE0  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CC9BE4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC9BE8  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80CC9BEC  80 83 00 04 */	lwz r4, 4(r3)
/* 80CC9BF0  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 80CC9BF4  C0 3E 05 DC */	lfs f1, 0x5dc(r30)
/* 80CC9BF8  4B 34 3D D5 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80CC9BFC  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80CC9C00  80 83 00 04 */	lwz r4, 4(r3)
/* 80CC9C04  C0 3E 05 F8 */	lfs f1, 0x5f8(r30)
/* 80CC9C08  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80CC9C0C  38 84 00 58 */	addi r4, r4, 0x58
/* 80CC9C10  4B 34 3A C9 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80CC9C14  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80CC9C18  4B 34 40 AD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CC9C1C  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80CC9C20  80 63 00 04 */	lwz r3, 4(r3)
/* 80CC9C24  38 63 00 58 */	addi r3, r3, 0x58
/* 80CC9C28  80 9E 05 FC */	lwz r4, 0x5fc(r30)
/* 80CC9C2C  4B 66 5B 89 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80CC9C30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC9C34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC9C38  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CC9C3C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80CC9C40  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CC9C44  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80CC9C48  38 60 00 01 */	li r3, 1
/* 80CC9C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC9C50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC9C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC9C58  7C 08 03 A6 */	mtlr r0
/* 80CC9C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC9C60  4E 80 00 20 */	blr 
