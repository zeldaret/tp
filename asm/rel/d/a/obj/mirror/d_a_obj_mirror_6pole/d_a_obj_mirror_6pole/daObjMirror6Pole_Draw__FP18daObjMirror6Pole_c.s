lbl_80C963BC:
/* 80C963BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C963C0  7C 08 02 A6 */	mflr r0
/* 80C963C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C963C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C963CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C963D0  7C 7F 1B 78 */	mr r31, r3
/* 80C963D4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C963D8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C963DC  38 80 00 10 */	li r4, 0x10
/* 80C963E0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C963E4  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C963E8  4B 50 D3 DD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C963EC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C963F0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C963F4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C963F8  80 84 00 04 */	lwz r4, 4(r4)
/* 80C963FC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C96400  4B 50 E9 A1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C96404  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C96408  80 83 00 04 */	lwz r4, 4(r3)
/* 80C9640C  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80C96410  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C96414  4B 37 75 B9 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80C96418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9641C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96420  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C96424  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C96428  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C9642C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C96430  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C96434  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C96438  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C9643C  4B 37 78 89 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C96440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96448  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C9644C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C96450  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C96454  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C96458  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C9645C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C96460  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C96464  80 63 00 00 */	lwz r3, 0(r3)
/* 80C96468  38 00 00 00 */	li r0, 0
/* 80C9646C  90 03 00 54 */	stw r0, 0x54(r3)
/* 80C96470  38 60 00 01 */	li r3, 1
/* 80C96474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C96478  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9647C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C96480  7C 08 03 A6 */	mtlr r0
/* 80C96484  38 21 00 10 */	addi r1, r1, 0x10
/* 80C96488  4E 80 00 20 */	blr 
