lbl_80AF417C:
/* 80AF417C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF4180  7C 08 02 A6 */	mflr r0
/* 80AF4184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF4188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF418C  7C 7F 1B 78 */	mr r31, r3
/* 80AF4190  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80AF4194  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80AF4198  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80AF419C  80 84 00 04 */	lwz r4, 4(r4)
/* 80AF41A0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80AF41A4  4B 6B 0B FD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AF41A8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AF41AC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF41B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF41B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF41B8  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 80AF41BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF41C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF41C4  4B 85 22 ED */	bl PSMTXCopy
/* 80AF41C8  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80AF41CC  4B 51 8C A5 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80AF41D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF41D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF41D8  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80AF41DC  38 84 00 24 */	addi r4, r4, 0x24
/* 80AF41E0  4B 85 22 D1 */	bl PSMTXCopy
/* 80AF41E4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AF41E8  80 83 00 04 */	lwz r4, 4(r3)
/* 80AF41EC  7F E3 FB 78 */	mr r3, r31
/* 80AF41F0  4B 52 92 3D */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80AF41F4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AF41F8  4B 51 9A CD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80AF41FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF4200  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF4204  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80AF4208  80 9F 09 A0 */	lwz r4, 0x9a0(r31)
/* 80AF420C  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80AF4210  4B 56 1D 0D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 80AF4214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF4218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF421C  7C 08 03 A6 */	mtlr r0
/* 80AF4220  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF4224  4E 80 00 20 */	blr 
