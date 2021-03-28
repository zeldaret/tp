lbl_80AAFA64:
/* 80AAFA64  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AAFA68  7C 08 02 A6 */	mflr r0
/* 80AAFA6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AAFA70  39 61 00 50 */	addi r11, r1, 0x50
/* 80AAFA74  4B 8B 27 64 */	b _savegpr_28
/* 80AAFA78  7C 7D 1B 78 */	mr r29, r3
/* 80AAFA7C  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80AAFA80  83 83 00 04 */	lwz r28, 4(r3)
/* 80AAFA84  38 00 00 00 */	li r0, 0
/* 80AAFA88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAFA8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAFA90  3B E3 61 C0 */	addi r31, r3, 0x61c0
/* 80AAFA94  80 7D 0E 44 */	lwz r3, 0xe44(r29)
/* 80AAFA98  28 03 00 00 */	cmplwi r3, 0
/* 80AAFA9C  41 82 00 98 */	beq lbl_80AAFB34
/* 80AAFAA0  2C 00 00 00 */	cmpwi r0, 0
/* 80AAFAA4  40 82 00 90 */	bne lbl_80AAFB34
/* 80AAFAA8  88 1D 0F CF */	lbz r0, 0xfcf(r29)
/* 80AAFAAC  28 00 00 00 */	cmplwi r0, 0
/* 80AAFAB0  41 82 00 84 */	beq lbl_80AAFB34
/* 80AAFAB4  83 C3 00 04 */	lwz r30, 4(r3)
/* 80AAFAB8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80AAFABC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80AAFAC0  7F C4 F3 78 */	mr r4, r30
/* 80AAFAC4  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80AAFAC8  4B 6F 52 D8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AAFACC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80AAFAD0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80AAFAD4  3C 60 80 AB */	lis r3, jointNo@ha
/* 80AAFAD8  80 03 21 10 */	lwz r0, jointNo@l(r3)
/* 80AAFADC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80AAFAE0  7C 64 02 14 */	add r3, r4, r0
/* 80AAFAE4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AAFAE8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AAFAEC  4B 89 69 C4 */	b PSMTXCopy
/* 80AAFAF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AAFAF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AAFAF8  38 81 00 08 */	addi r4, r1, 8
/* 80AAFAFC  4B 89 69 B4 */	b PSMTXCopy
/* 80AAFB00  38 61 00 08 */	addi r3, r1, 8
/* 80AAFB04  80 9D 0E 44 */	lwz r4, 0xe44(r29)
/* 80AAFB08  38 84 00 24 */	addi r4, r4, 0x24
/* 80AAFB0C  4B 89 69 A4 */	b PSMTXCopy
/* 80AAFB10  7F A3 EB 78 */	mr r3, r29
/* 80AAFB14  7F C4 F3 78 */	mr r4, r30
/* 80AAFB18  4B 56 D9 14 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 80AAFB1C  80 7D 0E 44 */	lwz r3, 0xe44(r29)
/* 80AAFB20  4B 55 E1 A4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80AAFB24  7F E3 FB 78 */	mr r3, r31
/* 80AAFB28  80 9D 0D 94 */	lwz r4, 0xd94(r29)
/* 80AAFB2C  80 BD 0E 44 */	lwz r5, 0xe44(r29)
/* 80AAFB30  4B 5A 63 EC */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80AAFB34:
/* 80AAFB34  39 61 00 50 */	addi r11, r1, 0x50
/* 80AAFB38  4B 8B 26 EC */	b _restgpr_28
/* 80AAFB3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AAFB40  7C 08 03 A6 */	mtlr r0
/* 80AAFB44  38 21 00 50 */	addi r1, r1, 0x50
/* 80AAFB48  4E 80 00 20 */	blr 
