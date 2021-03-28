lbl_809DC330:
/* 809DC330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809DC334  7C 08 02 A6 */	mflr r0
/* 809DC338  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DC33C  39 61 00 20 */	addi r11, r1, 0x20
/* 809DC340  4B 98 5E 9C */	b _savegpr_29
/* 809DC344  7C 7D 1B 78 */	mr r29, r3
/* 809DC348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809DC34C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809DC350  3B E3 61 C0 */	addi r31, r3, 0x61c0
/* 809DC354  83 DD 0B D8 */	lwz r30, 0xbd8(r29)
/* 809DC358  28 1E 00 00 */	cmplwi r30, 0
/* 809DC35C  41 82 00 68 */	beq lbl_809DC3C4
/* 809DC360  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809DC364  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809DC368  80 9E 00 04 */	lwz r4, 4(r30)
/* 809DC36C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 809DC370  4B 7C 8A 30 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809DC374  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809DC378  80 63 00 04 */	lwz r3, 4(r3)
/* 809DC37C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809DC380  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809DC384  38 63 03 60 */	addi r3, r3, 0x360
/* 809DC388  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809DC38C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809DC390  4B 96 A1 20 */	b PSMTXCopy
/* 809DC394  38 7D 04 EC */	addi r3, r29, 0x4ec
/* 809DC398  4B 63 0A D8 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 809DC39C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809DC3A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809DC3A4  38 9E 00 24 */	addi r4, r30, 0x24
/* 809DC3A8  4B 96 A1 08 */	b PSMTXCopy
/* 809DC3AC  7F C3 F3 78 */	mr r3, r30
/* 809DC3B0  4B 63 19 14 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 809DC3B4  7F E3 FB 78 */	mr r3, r31
/* 809DC3B8  80 9D 09 A0 */	lwz r4, 0x9a0(r29)
/* 809DC3BC  7F C5 F3 78 */	mr r5, r30
/* 809DC3C0  4B 67 9B 5C */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_809DC3C4:
/* 809DC3C4  39 61 00 20 */	addi r11, r1, 0x20
/* 809DC3C8  4B 98 5E 60 */	b _restgpr_29
/* 809DC3CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809DC3D0  7C 08 03 A6 */	mtlr r0
/* 809DC3D4  38 21 00 20 */	addi r1, r1, 0x20
/* 809DC3D8  4E 80 00 20 */	blr 
