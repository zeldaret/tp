lbl_8096499C:
/* 8096499C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809649A0  7C 08 02 A6 */	mflr r0
/* 809649A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809649A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809649AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809649B0  7C 7F 1B 78 */	mr r31, r3
/* 809649B4  38 00 00 00 */	li r0, 0
/* 809649B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809649BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809649C0  3B C3 61 C0 */	addi r30, r3, 0x61c0
/* 809649C4  80 9F 0F 84 */	lwz r4, 0xf84(r31)
/* 809649C8  28 04 00 00 */	cmplwi r4, 0
/* 809649CC  41 82 00 78 */	beq lbl_80964A44
/* 809649D0  2C 00 00 00 */	cmpwi r0, 0
/* 809649D4  40 82 00 70 */	bne lbl_80964A44
/* 809649D8  88 1F 12 00 */	lbz r0, 0x1200(r31)
/* 809649DC  28 00 00 03 */	cmplwi r0, 3
/* 809649E0  40 82 00 64 */	bne lbl_80964A44
/* 809649E4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 809649E8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 809649EC  80 84 00 04 */	lwz r4, 4(r4)
/* 809649F0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 809649F4  4B 84 03 AC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 809649F8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809649FC  4B 6A 83 68 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80964A00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80964A04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80964A08  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80964A0C  4B 6A 7A 28 */	b mDoMtx_YrotM__FPA4_fs
/* 80964A10  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80964A14  4B 6A 84 5C */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80964A18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80964A1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80964A20  80 9F 0F 84 */	lwz r4, 0xf84(r31)
/* 80964A24  38 84 00 24 */	addi r4, r4, 0x24
/* 80964A28  4B 9E 1A 88 */	b PSMTXCopy
/* 80964A2C  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80964A30  4B 6A 92 94 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80964A34  7F C3 F3 78 */	mr r3, r30
/* 80964A38  80 9F 0D 94 */	lwz r4, 0xd94(r31)
/* 80964A3C  80 BF 0F 84 */	lwz r5, 0xf84(r31)
/* 80964A40  4B 6F 14 DC */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80964A44:
/* 80964A44  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80964A48  28 03 00 00 */	cmplwi r3, 0
/* 80964A4C  41 82 00 38 */	beq lbl_80964A84
/* 80964A50  80 83 00 04 */	lwz r4, 4(r3)
/* 80964A54  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80964A58  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80964A5C  80 84 00 04 */	lwz r4, 4(r4)
/* 80964A60  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80964A64  4B 84 03 3C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80964A68  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80964A6C  4B 6A C7 54 */	b entryDL__16mDoExt_McaMorfSOFv
/* 80964A70  80 7F 0F 7C */	lwz r3, 0xf7c(r31)
/* 80964A74  80 A3 00 04 */	lwz r5, 4(r3)
/* 80964A78  7F C3 F3 78 */	mr r3, r30
/* 80964A7C  80 9F 0D 94 */	lwz r4, 0xd94(r31)
/* 80964A80  4B 6F 14 9C */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80964A84:
/* 80964A84  88 1F 12 65 */	lbz r0, 0x1265(r31)
/* 80964A88  28 00 00 00 */	cmplwi r0, 0
/* 80964A8C  41 82 00 34 */	beq lbl_80964AC0
/* 80964A90  7F E3 FB 78 */	mr r3, r31
/* 80964A94  4B 83 3E BC */	b itemRotate__13dShopSystem_cFv
/* 80964A98  3C 60 80 96 */	lis r3, lit_4103@ha
/* 80964A9C  C0 03 7E E8 */	lfs f0, lit_4103@l(r3)
/* 80964AA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80964AA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80964AA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80964AAC  7F E3 FB 78 */	mr r3, r31
/* 80964AB0  38 81 00 08 */	addi r4, r1, 8
/* 80964AB4  4B 83 3F 78 */	b itemZoom__13dShopSystem_cFP4cXyz
/* 80964AB8  7F E3 FB 78 */	mr r3, r31
/* 80964ABC  4B 83 3D BC */	b drawCursor__13dShopSystem_cFv
lbl_80964AC0:
/* 80964AC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80964AC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80964AC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80964ACC  7C 08 03 A6 */	mtlr r0
/* 80964AD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80964AD4  4E 80 00 20 */	blr 
