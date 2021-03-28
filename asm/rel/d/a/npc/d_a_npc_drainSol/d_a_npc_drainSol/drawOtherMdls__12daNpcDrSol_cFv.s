lbl_809AE60C:
/* 809AE60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AE610  7C 08 02 A6 */	mflr r0
/* 809AE614  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AE618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AE61C  7C 7F 1B 78 */	mr r31, r3
/* 809AE620  4B 7B 0E 04 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 809AE624  2C 03 00 00 */	cmpwi r3, 0
/* 809AE628  41 82 00 60 */	beq lbl_809AE688
/* 809AE62C  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 809AE630  28 04 00 00 */	cmplwi r4, 0
/* 809AE634  41 82 00 54 */	beq lbl_809AE688
/* 809AE638  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809AE63C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809AE640  80 84 00 04 */	lwz r4, 4(r4)
/* 809AE644  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809AE648  4B 7F 67 58 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809AE64C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809AE650  80 63 00 04 */	lwz r3, 4(r3)
/* 809AE654  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809AE658  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809AE65C  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 809AE660  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809AE664  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809AE668  4B 99 7E 48 */	b PSMTXCopy
/* 809AE66C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809AE670  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809AE674  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 809AE678  38 84 00 24 */	addi r4, r4, 0x24
/* 809AE67C  4B 99 7E 34 */	b PSMTXCopy
/* 809AE680  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809AE684  4B 65 F6 40 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_809AE688:
/* 809AE688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AE68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AE690  7C 08 03 A6 */	mtlr r0
/* 809AE694  38 21 00 10 */	addi r1, r1, 0x10
/* 809AE698  4E 80 00 20 */	blr 
