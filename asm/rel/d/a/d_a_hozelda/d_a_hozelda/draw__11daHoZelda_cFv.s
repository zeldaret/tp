lbl_80848B64:
/* 80848B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80848B68  7C 08 02 A6 */	mflr r0
/* 80848B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80848B70  39 61 00 20 */	addi r11, r1, 0x20
/* 80848B74  4B B1 96 68 */	b _savegpr_29
/* 80848B78  7C 7F 1B 78 */	mr r31, r3
/* 80848B7C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80848B80  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80848B84  38 80 00 00 */	li r4, 0
/* 80848B88  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80848B8C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80848B90  4B 95 AC 34 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80848B94  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80848B98  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80848B9C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80848BA0  80 84 00 04 */	lwz r4, 4(r4)
/* 80848BA4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80848BA8  4B 95 C1 F8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80848BAC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80848BB0  80 83 00 04 */	lwz r4, 4(r3)
/* 80848BB4  38 7F 05 78 */	addi r3, r31, 0x578
/* 80848BB8  38 84 00 58 */	addi r4, r4, 0x58
/* 80848BBC  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80848BC0  FC 00 00 1E */	fctiwz f0, f0
/* 80848BC4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80848BC8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80848BCC  4B 7C 4A 1C */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 80848BD0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80848BD4  80 83 00 04 */	lwz r4, 4(r3)
/* 80848BD8  C0 3F 05 A0 */	lfs f1, 0x5a0(r31)
/* 80848BDC  38 7F 05 90 */	addi r3, r31, 0x590
/* 80848BE0  38 84 00 58 */	addi r4, r4, 0x58
/* 80848BE4  4B 7C 4A F4 */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80848BE8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80848BEC  4B 7C 51 78 */	b mDoExt_modelEntryDL__FP8J3DModel
/* 80848BF0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80848BF4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80848BF8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80848BFC  80 84 00 04 */	lwz r4, 4(r4)
/* 80848C00  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80848C04  4B 95 C1 9C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80848C08  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80848C0C  4B 7C 51 58 */	b mDoExt_modelEntryDL__FP8J3DModel
/* 80848C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80848C14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80848C18  80 83 5D B8 */	lwz r4, 0x5db8(r3)
/* 80848C1C  28 04 00 00 */	cmplwi r4, 0
/* 80848C20  41 82 00 2C */	beq lbl_80848C4C
/* 80848C24  83 C4 17 34 */	lwz r30, 0x1734(r4)
/* 80848C28  3B A3 61 C0 */	addi r29, r3, 0x61c0
/* 80848C2C  7F A3 EB 78 */	mr r3, r29
/* 80848C30  7F C4 F3 78 */	mr r4, r30
/* 80848C34  80 BF 05 70 */	lwz r5, 0x570(r31)
/* 80848C38  4B 80 D2 E4 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 80848C3C  7F A3 EB 78 */	mr r3, r29
/* 80848C40  7F C4 F3 78 */	mr r4, r30
/* 80848C44  80 BF 05 74 */	lwz r5, 0x574(r31)
/* 80848C48  4B 80 D2 D4 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80848C4C:
/* 80848C4C  38 60 00 01 */	li r3, 1
/* 80848C50  39 61 00 20 */	addi r11, r1, 0x20
/* 80848C54  4B B1 95 D4 */	b _restgpr_29
/* 80848C58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80848C5C  7C 08 03 A6 */	mtlr r0
/* 80848C60  38 21 00 20 */	addi r1, r1, 0x20
/* 80848C64  4E 80 00 20 */	blr 
