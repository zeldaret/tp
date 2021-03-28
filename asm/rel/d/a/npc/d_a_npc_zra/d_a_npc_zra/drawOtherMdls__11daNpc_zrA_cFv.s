lbl_80B7C354:
/* 80B7C354  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B7C358  7C 08 02 A6 */	mflr r0
/* 80B7C35C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B7C360  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7C364  4B 7E 5E 68 */	b _savegpr_25
/* 80B7C368  7C 7B 1B 78 */	mr r27, r3
/* 80B7C36C  88 03 14 E9 */	lbz r0, 0x14e9(r3)
/* 80B7C370  28 00 00 02 */	cmplwi r0, 2
/* 80B7C374  41 82 00 C0 */	beq lbl_80B7C434
/* 80B7C378  3B A0 00 00 */	li r29, 0
/* 80B7C37C  3B 40 00 00 */	li r26, 0
/* 80B7C380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B7C384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B7C388  3B C3 61 C0 */	addi r30, r3, 0x61c0
/* 80B7C38C  3C 60 80 B9 */	lis r3, l_jntNumTbl@ha
/* 80B7C390  3B E3 C5 88 */	addi r31, r3, l_jntNumTbl@l
lbl_80B7C394:
/* 80B7C394  88 1B 14 E9 */	lbz r0, 0x14e9(r27)
/* 80B7C398  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80B7C39C  7C 7F 02 14 */	add r3, r31, r0
/* 80B7C3A0  7F 23 D0 2E */	lwzx r25, r3, r26
/* 80B7C3A4  38 1A 0B D8 */	addi r0, r26, 0xbd8
/* 80B7C3A8  7F 9B 00 2E */	lwzx r28, r27, r0
/* 80B7C3AC  28 1C 00 00 */	cmplwi r28, 0
/* 80B7C3B0  41 82 00 74 */	beq lbl_80B7C424
/* 80B7C3B4  2C 19 00 00 */	cmpwi r25, 0
/* 80B7C3B8  41 80 00 6C */	blt lbl_80B7C424
/* 80B7C3BC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B7C3C0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B7C3C4  80 9C 00 04 */	lwz r4, 4(r28)
/* 80B7C3C8  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80B7C3CC  4B 62 89 D4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B7C3D0  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B7C3D4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7C3D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B7C3DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B7C3E0  1C 19 00 30 */	mulli r0, r25, 0x30
/* 80B7C3E4  7C 63 02 14 */	add r3, r3, r0
/* 80B7C3E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B7C3EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B7C3F0  4B 7C A0 C0 */	b PSMTXCopy
/* 80B7C3F4  38 7B 04 EC */	addi r3, r27, 0x4ec
/* 80B7C3F8  4B 49 0A 78 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B7C3FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7C400  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7C404  38 9C 00 24 */	addi r4, r28, 0x24
/* 80B7C408  4B 7C A0 A8 */	b PSMTXCopy
/* 80B7C40C  7F 83 E3 78 */	mr r3, r28
/* 80B7C410  4B 49 18 B4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80B7C414  7F C3 F3 78 */	mr r3, r30
/* 80B7C418  80 9B 09 A0 */	lwz r4, 0x9a0(r27)
/* 80B7C41C  7F 85 E3 78 */	mr r5, r28
/* 80B7C420  4B 4D 9A FC */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80B7C424:
/* 80B7C424  3B BD 00 01 */	addi r29, r29, 1
/* 80B7C428  2C 1D 00 03 */	cmpwi r29, 3
/* 80B7C42C  3B 5A 00 04 */	addi r26, r26, 4
/* 80B7C430  41 80 FF 64 */	blt lbl_80B7C394
lbl_80B7C434:
/* 80B7C434  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7C438  4B 7E 5D E0 */	b _restgpr_25
/* 80B7C43C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B7C440  7C 08 03 A6 */	mtlr r0
/* 80B7C444  38 21 00 30 */	addi r1, r1, 0x30
/* 80B7C448  4E 80 00 20 */	blr 
