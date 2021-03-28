lbl_809C1064:
/* 809C1064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C1068  7C 08 02 A6 */	mflr r0
/* 809C106C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C1070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C1074  7C 7F 1B 78 */	mr r31, r3
/* 809C1078  88 03 15 0C */	lbz r0, 0x150c(r3)
/* 809C107C  28 00 00 00 */	cmplwi r0, 0
/* 809C1080  41 82 00 C0 */	beq lbl_809C1140
/* 809C1084  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 809C1088  28 04 00 00 */	cmplwi r4, 0
/* 809C108C  41 82 00 B4 */	beq lbl_809C1140
/* 809C1090  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809C1094  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809C1098  80 84 00 04 */	lwz r4, 4(r4)
/* 809C109C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809C10A0  4B 7E 3D 00 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809C10A4  88 1F 14 74 */	lbz r0, 0x1474(r31)
/* 809C10A8  2C 00 00 07 */	cmpwi r0, 7
/* 809C10AC  41 82 00 14 */	beq lbl_809C10C0
/* 809C10B0  41 80 00 70 */	blt lbl_809C1120
/* 809C10B4  2C 00 00 0B */	cmpwi r0, 0xb
/* 809C10B8  40 80 00 68 */	bge lbl_809C1120
/* 809C10BC  48 00 00 18 */	b lbl_809C10D4
lbl_809C10C0:
/* 809C10C0  38 7F 14 DC */	addi r3, r31, 0x14dc
/* 809C10C4  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 809C10C8  38 84 00 24 */	addi r4, r4, 0x24
/* 809C10CC  4B 98 53 E4 */	b PSMTXCopy
/* 809C10D0  48 00 00 50 */	b lbl_809C1120
lbl_809C10D4:
/* 809C10D4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C10D8  80 63 00 04 */	lwz r3, 4(r3)
/* 809C10DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C10E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C10E4  38 63 03 30 */	addi r3, r3, 0x330
/* 809C10E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809C10EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809C10F0  4B 98 53 C0 */	b PSMTXCopy
/* 809C10F4  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 809C10F8  4B 64 BD 78 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 809C10FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809C1100  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809C1104  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 809C1108  38 84 00 24 */	addi r4, r4, 0x24
/* 809C110C  4B 98 53 A4 */	b PSMTXCopy
/* 809C1110  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809C1114  80 83 00 04 */	lwz r4, 4(r3)
/* 809C1118  7F E3 FB 78 */	mr r3, r31
/* 809C111C  4B 65 C3 10 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_809C1120:
/* 809C1120  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809C1124  4B 64 CB A0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 809C1128  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C112C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C1130  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 809C1134  80 9F 09 A0 */	lwz r4, 0x9a0(r31)
/* 809C1138  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 809C113C  4B 69 4D E0 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_809C1140:
/* 809C1140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C1144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C1148  7C 08 03 A6 */	mtlr r0
/* 809C114C  38 21 00 10 */	addi r1, r1, 0x10
/* 809C1150  4E 80 00 20 */	blr 
