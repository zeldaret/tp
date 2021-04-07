lbl_80B284DC:
/* 80B284DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B284E0  7C 08 02 A6 */	mflr r0
/* 80B284E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B284E8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B284EC  4B 83 9C F1 */	bl _savegpr_29
/* 80B284F0  7C 7E 1B 78 */	mr r30, r3
/* 80B284F4  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80B284F8  83 A3 00 04 */	lwz r29, 4(r3)
/* 80B284FC  38 00 00 00 */	li r0, 0
/* 80B28500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B28504  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B28508  3B E3 61 C0 */	addi r31, r3, 0x61c0
/* 80B2850C  80 9E 0E 44 */	lwz r4, 0xe44(r30)
/* 80B28510  28 04 00 00 */	cmplwi r4, 0
/* 80B28514  41 82 00 88 */	beq lbl_80B2859C
/* 80B28518  2C 00 00 00 */	cmpwi r0, 0
/* 80B2851C  40 82 00 80 */	bne lbl_80B2859C
/* 80B28520  88 1E 10 08 */	lbz r0, 0x1008(r30)
/* 80B28524  28 00 00 00 */	cmplwi r0, 0
/* 80B28528  41 82 00 74 */	beq lbl_80B2859C
/* 80B2852C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B28530  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B28534  80 84 00 04 */	lwz r4, 4(r4)
/* 80B28538  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80B2853C  4B 67 C8 65 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B28540  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80B28544  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80B28548  3C 60 80 B3 */	lis r3, jointNo@ha /* 0x80B2CF44@ha */
/* 80B2854C  80 03 CF 44 */	lwz r0, jointNo@l(r3)  /* 0x80B2CF44@l */
/* 80B28550  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B28554  7C 64 02 14 */	add r3, r4, r0
/* 80B28558  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B2855C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B28560  4B 81 DF 51 */	bl PSMTXCopy
/* 80B28564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B28568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B2856C  38 81 00 08 */	addi r4, r1, 8
/* 80B28570  4B 81 DF 41 */	bl PSMTXCopy
/* 80B28574  38 61 00 08 */	addi r3, r1, 8
/* 80B28578  80 9E 0E 44 */	lwz r4, 0xe44(r30)
/* 80B2857C  38 84 00 24 */	addi r4, r4, 0x24
/* 80B28580  4B 81 DF 31 */	bl PSMTXCopy
/* 80B28584  80 7E 0E 44 */	lwz r3, 0xe44(r30)
/* 80B28588  4B 4E 57 3D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80B2858C  7F E3 FB 78 */	mr r3, r31
/* 80B28590  80 9E 0D 94 */	lwz r4, 0xd94(r30)
/* 80B28594  80 BE 0E 44 */	lwz r5, 0xe44(r30)
/* 80B28598  4B 52 D9 85 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80B2859C:
/* 80B2859C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B285A0  4B 83 9C 89 */	bl _restgpr_29
/* 80B285A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B285A8  7C 08 03 A6 */	mtlr r0
/* 80B285AC  38 21 00 50 */	addi r1, r1, 0x50
/* 80B285B0  4E 80 00 20 */	blr 
