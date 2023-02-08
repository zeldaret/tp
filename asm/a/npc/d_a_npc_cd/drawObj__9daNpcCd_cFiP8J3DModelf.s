lbl_80156E8C:
/* 80156E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80156E90  7C 08 02 A6 */	mflr r0
/* 80156E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80156E98  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80156E9C  39 61 00 18 */	addi r11, r1, 0x18
/* 80156EA0  48 20 B3 3D */	bl _savegpr_29
/* 80156EA4  7C 7D 1B 78 */	mr r29, r3
/* 80156EA8  7C 9F 23 78 */	mr r31, r4
/* 80156EAC  7C BE 2B 78 */	mr r30, r5
/* 80156EB0  FF E0 08 90 */	fmr f31, f1
/* 80156EB4  88 03 09 E8 */	lbz r0, 0x9e8(r3)
/* 80156EB8  28 00 00 00 */	cmplwi r0, 0
/* 80156EBC  41 82 00 18 */	beq lbl_80156ED4
/* 80156EC0  48 00 85 65 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 80156EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80156EC8  40 82 00 0C */	bne lbl_80156ED4
/* 80156ECC  38 60 00 01 */	li r3, 1
/* 80156ED0  48 00 00 88 */	b lbl_80156F58
lbl_80156ED4:
/* 80156ED4  57 E0 10 3A */	slwi r0, r31, 2
/* 80156ED8  3C 60 80 39 */	lis r3, a_jntNumTbl@ha /* 0x80392FC4@ha */
/* 80156EDC  38 63 2F C4 */	addi r3, r3, a_jntNumTbl@l /* 0x80392FC4@l */
/* 80156EE0  7F E3 00 2E */	lwzx r31, r3, r0
/* 80156EE4  28 1E 00 00 */	cmplwi r30, 0
/* 80156EE8  41 82 00 6C */	beq lbl_80156F54
/* 80156EEC  2C 1F 00 00 */	cmpwi r31, 0
/* 80156EF0  41 80 00 64 */	blt lbl_80156F54
/* 80156EF4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80156EF8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80156EFC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80156F00  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80156F04  48 04 DE 9D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80156F08  80 7D 05 8C */	lwz r3, 0x58c(r29)
/* 80156F0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80156F10  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80156F14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80156F18  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 80156F1C  7C 63 02 14 */	add r3, r3, r0
/* 80156F20  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80156F24  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80156F28  48 1E F5 89 */	bl PSMTXCopy
/* 80156F2C  FC 20 F8 90 */	fmr f1, f31
/* 80156F30  FC 40 F8 90 */	fmr f2, f31
/* 80156F34  FC 60 F8 90 */	fmr f3, f31
/* 80156F38  4B EB 5F 01 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80156F3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80156F40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80156F44  38 9E 00 24 */	addi r4, r30, 0x24
/* 80156F48  48 1E F5 69 */	bl PSMTXCopy
/* 80156F4C  7F C3 F3 78 */	mr r3, r30
/* 80156F50  4B EB 6D 75 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80156F54:
/* 80156F54  38 60 00 01 */	li r3, 1
lbl_80156F58:
/* 80156F58  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80156F5C  39 61 00 18 */	addi r11, r1, 0x18
/* 80156F60  48 20 B2 C9 */	bl _restgpr_29
/* 80156F64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80156F68  7C 08 03 A6 */	mtlr r0
/* 80156F6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80156F70  4E 80 00 20 */	blr 
