lbl_80A0EF94:
/* 80A0EF94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0EF98  7C 08 02 A6 */	mflr r0
/* 80A0EF9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0EFA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0EFA4  7C 7F 1B 78 */	mr r31, r3
/* 80A0EFA8  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80A0EFAC  80 84 00 04 */	lwz r4, 4(r4)
/* 80A0EFB0  80 84 00 04 */	lwz r4, 4(r4)
/* 80A0EFB4  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80A0EFB8  80 84 00 04 */	lwz r4, 4(r4)
/* 80A0EFBC  80 03 0B E0 */	lwz r0, 0xbe0(r3)
/* 80A0EFC0  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80A0EFC4  38 80 00 00 */	li r4, 0
/* 80A0EFC8  38 A0 00 00 */	li r5, 0
/* 80A0EFCC  3C C0 80 A1 */	lis r6, m__16daNpcIns_Param_c@ha
/* 80A0EFD0  38 C6 3E 6C */	addi r6, r6, m__16daNpcIns_Param_c@l
/* 80A0EFD4  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80A0EFD8  38 C0 00 00 */	li r6, 0
/* 80A0EFDC  38 E0 00 00 */	li r7, 0
/* 80A0EFE0  4B 74 32 CC */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 80A0EFE4  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80A0EFE8  28 04 00 00 */	cmplwi r4, 0
/* 80A0EFEC  41 82 00 58 */	beq lbl_80A0F044
/* 80A0EFF0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A0EFF4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A0EFF8  80 84 00 04 */	lwz r4, 4(r4)
/* 80A0EFFC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80A0F000  4B 79 5D A0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A0F004  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A0F008  80 63 00 04 */	lwz r3, 4(r3)
/* 80A0F00C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A0F010  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A0F014  38 63 02 70 */	addi r3, r3, 0x270
/* 80A0F018  80 9F 0B D8 */	lwz r4, 0xbd8(r31)
/* 80A0F01C  38 84 00 24 */	addi r4, r4, 0x24
/* 80A0F020  4B 93 74 90 */	b PSMTXCopy
/* 80A0F024  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80A0F028  4B 5F EC 9C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80A0F02C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A0F030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A0F034  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80A0F038  80 9F 09 A0 */	lwz r4, 0x9a0(r31)
/* 80A0F03C  80 BF 0B D8 */	lwz r5, 0xbd8(r31)
/* 80A0F040  4B 64 6E DC */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80A0F044:
/* 80A0F044  80 9F 0B DC */	lwz r4, 0xbdc(r31)
/* 80A0F048  28 04 00 00 */	cmplwi r4, 0
/* 80A0F04C  41 82 00 58 */	beq lbl_80A0F0A4
/* 80A0F050  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A0F054  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A0F058  80 84 00 04 */	lwz r4, 4(r4)
/* 80A0F05C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80A0F060  4B 79 5D 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A0F064  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A0F068  80 63 00 04 */	lwz r3, 4(r3)
/* 80A0F06C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A0F070  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A0F074  38 63 02 10 */	addi r3, r3, 0x210
/* 80A0F078  80 9F 0B DC */	lwz r4, 0xbdc(r31)
/* 80A0F07C  38 84 00 24 */	addi r4, r4, 0x24
/* 80A0F080  4B 93 74 30 */	b PSMTXCopy
/* 80A0F084  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80A0F088  4B 5F EC 3C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80A0F08C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A0F090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A0F094  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80A0F098  80 9F 09 A0 */	lwz r4, 0x9a0(r31)
/* 80A0F09C  80 BF 0B DC */	lwz r5, 0xbdc(r31)
/* 80A0F0A0  4B 64 6E 7C */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80A0F0A4:
/* 80A0F0A4  38 60 00 01 */	li r3, 1
/* 80A0F0A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0F0AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0F0B0  7C 08 03 A6 */	mtlr r0
/* 80A0F0B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0F0B8  4E 80 00 20 */	blr 
