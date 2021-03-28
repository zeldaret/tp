lbl_80B56424:
/* 80B56424  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B56428  7C 08 02 A6 */	mflr r0
/* 80B5642C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B56430  39 61 00 50 */	addi r11, r1, 0x50
/* 80B56434  4B 80 BD 9C */	b _savegpr_26
/* 80B56438  7C 7B 1B 78 */	mr r27, r3
/* 80B5643C  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80B56440  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B56444  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80B56448  28 03 00 00 */	cmplwi r3, 0
/* 80B5644C  41 82 00 78 */	beq lbl_80B564C4
/* 80B56450  80 83 00 04 */	lwz r4, 4(r3)
/* 80B56454  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B56458  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B5645C  80 84 00 04 */	lwz r4, 4(r4)
/* 80B56460  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80B56464  4B 64 E9 3C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B56468  88 1B 15 79 */	lbz r0, 0x1579(r27)
/* 80B5646C  28 00 00 00 */	cmplwi r0, 0
/* 80B56470  40 82 00 1C */	bne lbl_80B5648C
/* 80B56474  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80B56478  80 63 00 04 */	lwz r3, 4(r3)
/* 80B5647C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B56480  38 63 00 78 */	addi r3, r3, 0x78
/* 80B56484  4B 7C F4 1C */	b hide__13J3DShapeTableFv
/* 80B56488  48 00 00 18 */	b lbl_80B564A0
lbl_80B5648C:
/* 80B5648C  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80B56490  80 63 00 04 */	lwz r3, 4(r3)
/* 80B56494  80 63 00 04 */	lwz r3, 4(r3)
/* 80B56498  38 63 00 78 */	addi r3, r3, 0x78
/* 80B5649C  4B 7C F4 3C */	b show__13J3DShapeTableFv
lbl_80B564A0:
/* 80B564A0  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80B564A4  4B 4B AD 1C */	b entryDL__16mDoExt_McaMorfSOFv
/* 80B564A8  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80B564AC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B564B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B564B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B564B8  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80B564BC  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80B564C0  4B 4F FA 5C */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80B564C4:
/* 80B564C4  80 7B 0E 44 */	lwz r3, 0xe44(r27)
/* 80B564C8  28 03 00 00 */	cmplwi r3, 0
/* 80B564CC  41 82 00 5C */	beq lbl_80B56528
/* 80B564D0  80 83 00 04 */	lwz r4, 4(r3)
/* 80B564D4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B564D8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B564DC  80 84 00 04 */	lwz r4, 4(r4)
/* 80B564E0  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80B564E4  4B 64 E8 BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B564E8  88 1B 15 76 */	lbz r0, 0x1576(r27)
/* 80B564EC  28 00 00 00 */	cmplwi r0, 0
/* 80B564F0  41 82 00 1C */	beq lbl_80B5650C
/* 80B564F4  80 7B 0E 44 */	lwz r3, 0xe44(r27)
/* 80B564F8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B564FC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B56500  38 63 00 78 */	addi r3, r3, 0x78
/* 80B56504  4B 7C F3 9C */	b hide__13J3DShapeTableFv
/* 80B56508  48 00 00 18 */	b lbl_80B56520
lbl_80B5650C:
/* 80B5650C  80 7B 0E 44 */	lwz r3, 0xe44(r27)
/* 80B56510  80 63 00 04 */	lwz r3, 4(r3)
/* 80B56514  80 63 00 04 */	lwz r3, 4(r3)
/* 80B56518  38 63 00 78 */	addi r3, r3, 0x78
/* 80B5651C  4B 7C F3 BC */	b show__13J3DShapeTableFv
lbl_80B56520:
/* 80B56520  80 7B 0E 44 */	lwz r3, 0xe44(r27)
/* 80B56524  4B 4B AC 9C */	b entryDL__16mDoExt_McaMorfSOFv
lbl_80B56528:
/* 80B56528  3B 80 00 00 */	li r28, 0
/* 80B5652C  3B 40 00 00 */	li r26, 0
/* 80B56530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B56534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B56538  3B C3 61 C0 */	addi r30, r3, 0x61c0
lbl_80B5653C:
/* 80B5653C  3B BA 0E 4C */	addi r29, r26, 0xe4c
/* 80B56540  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80B56544  28 04 00 00 */	cmplwi r4, 0
/* 80B56548  41 82 00 B4 */	beq lbl_80B565FC
/* 80B5654C  2C 1C 00 00 */	cmpwi r28, 0
/* 80B56550  40 82 00 10 */	bne lbl_80B56560
/* 80B56554  88 1B 15 77 */	lbz r0, 0x1577(r27)
/* 80B56558  28 00 00 00 */	cmplwi r0, 0
/* 80B5655C  40 82 00 2C */	bne lbl_80B56588
lbl_80B56560:
/* 80B56560  2C 1C 00 02 */	cmpwi r28, 2
/* 80B56564  40 82 00 10 */	bne lbl_80B56574
/* 80B56568  88 1B 15 78 */	lbz r0, 0x1578(r27)
/* 80B5656C  28 00 00 00 */	cmplwi r0, 0
/* 80B56570  40 82 00 18 */	bne lbl_80B56588
lbl_80B56574:
/* 80B56574  2C 1C 00 01 */	cmpwi r28, 1
/* 80B56578  40 82 00 84 */	bne lbl_80B565FC
/* 80B5657C  88 1B 15 76 */	lbz r0, 0x1576(r27)
/* 80B56580  28 00 00 00 */	cmplwi r0, 0
/* 80B56584  41 82 00 78 */	beq lbl_80B565FC
lbl_80B56588:
/* 80B56588  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B5658C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80B56590  80 84 00 04 */	lwz r4, 4(r4)
/* 80B56594  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80B56598  4B 64 E8 08 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B5659C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80B565A0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80B565A4  3C 60 80 B6 */	lis r3, jointNo@ha
/* 80B565A8  38 63 D9 58 */	addi r3, r3, jointNo@l
/* 80B565AC  7C 03 D0 2E */	lwzx r0, r3, r26
/* 80B565B0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80B565B4  7C 64 02 14 */	add r3, r4, r0
/* 80B565B8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B565BC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B565C0  4B 7E FE F0 */	b PSMTXCopy
/* 80B565C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B565C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B565CC  38 81 00 08 */	addi r4, r1, 8
/* 80B565D0  4B 7E FE E0 */	b PSMTXCopy
/* 80B565D4  38 61 00 08 */	addi r3, r1, 8
/* 80B565D8  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80B565DC  38 84 00 24 */	addi r4, r4, 0x24
/* 80B565E0  4B 7E FE D0 */	b PSMTXCopy
/* 80B565E4  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80B565E8  4B 4B 76 DC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80B565EC  7F C3 F3 78 */	mr r3, r30
/* 80B565F0  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80B565F4  7C BB E8 2E */	lwzx r5, r27, r29
/* 80B565F8  4B 4F F9 24 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80B565FC:
/* 80B565FC  3B 9C 00 01 */	addi r28, r28, 1
/* 80B56600  2C 1C 00 03 */	cmpwi r28, 3
/* 80B56604  3B 5A 00 04 */	addi r26, r26, 4
/* 80B56608  41 80 FF 34 */	blt lbl_80B5653C
/* 80B5660C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B56610  4B 80 BC 0C */	b _restgpr_26
/* 80B56614  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B56618  7C 08 03 A6 */	mtlr r0
/* 80B5661C  38 21 00 50 */	addi r1, r1, 0x50
/* 80B56620  4E 80 00 20 */	blr 
