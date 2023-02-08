lbl_80A6CAA4:
/* 80A6CAA4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A6CAA8  7C 08 02 A6 */	mflr r0
/* 80A6CAAC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A6CAB0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A6CAB4  4B 8F 57 1D */	bl _savegpr_26
/* 80A6CAB8  7C 7B 1B 78 */	mr r27, r3
/* 80A6CABC  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80A6CAC0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A6CAC4  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80A6CAC8  28 03 00 00 */	cmplwi r3, 0
/* 80A6CACC  41 82 00 78 */	beq lbl_80A6CB44
/* 80A6CAD0  80 83 00 04 */	lwz r4, 4(r3)
/* 80A6CAD4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A6CAD8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A6CADC  80 84 00 04 */	lwz r4, 4(r4)
/* 80A6CAE0  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80A6CAE4  4B 73 82 BD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A6CAE8  88 1B 0F D4 */	lbz r0, 0xfd4(r27)
/* 80A6CAEC  28 00 00 00 */	cmplwi r0, 0
/* 80A6CAF0  40 82 00 1C */	bne lbl_80A6CB0C
/* 80A6CAF4  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80A6CAF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80A6CAFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80A6CB00  38 63 00 78 */	addi r3, r3, 0x78
/* 80A6CB04  4B 8B 8D 9D */	bl hide__13J3DShapeTableFv
/* 80A6CB08  48 00 00 18 */	b lbl_80A6CB20
lbl_80A6CB0C:
/* 80A6CB0C  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80A6CB10  80 63 00 04 */	lwz r3, 4(r3)
/* 80A6CB14  80 63 00 04 */	lwz r3, 4(r3)
/* 80A6CB18  38 63 00 78 */	addi r3, r3, 0x78
/* 80A6CB1C  4B 8B 8D BD */	bl show__13J3DShapeTableFv
lbl_80A6CB20:
/* 80A6CB20  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80A6CB24  4B 5A 46 9D */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80A6CB28  80 7B 0E 40 */	lwz r3, 0xe40(r27)
/* 80A6CB2C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A6CB30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6CB34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6CB38  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80A6CB3C  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80A6CB40  4B 5E 93 DD */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80A6CB44:
/* 80A6CB44  3B 80 00 00 */	li r28, 0
/* 80A6CB48  3B 40 00 00 */	li r26, 0
/* 80A6CB4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6CB50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6CB54  3B C3 61 C0 */	addi r30, r3, 0x61c0
lbl_80A6CB58:
/* 80A6CB58  3B BA 0E 48 */	addi r29, r26, 0xe48
/* 80A6CB5C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A6CB60  28 04 00 00 */	cmplwi r4, 0
/* 80A6CB64  41 82 00 A0 */	beq lbl_80A6CC04
/* 80A6CB68  2C 1C 00 00 */	cmpwi r28, 0
/* 80A6CB6C  40 82 00 10 */	bne lbl_80A6CB7C
/* 80A6CB70  88 1B 0F D2 */	lbz r0, 0xfd2(r27)
/* 80A6CB74  28 00 00 00 */	cmplwi r0, 0
/* 80A6CB78  40 82 00 18 */	bne lbl_80A6CB90
lbl_80A6CB7C:
/* 80A6CB7C  2C 1C 00 01 */	cmpwi r28, 1
/* 80A6CB80  40 82 00 84 */	bne lbl_80A6CC04
/* 80A6CB84  88 1B 0F D3 */	lbz r0, 0xfd3(r27)
/* 80A6CB88  28 00 00 00 */	cmplwi r0, 0
/* 80A6CB8C  41 82 00 78 */	beq lbl_80A6CC04
lbl_80A6CB90:
/* 80A6CB90  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A6CB94  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A6CB98  80 84 00 04 */	lwz r4, 4(r4)
/* 80A6CB9C  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80A6CBA0  4B 73 82 01 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A6CBA4  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80A6CBA8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80A6CBAC  3C 60 80 A7 */	lis r3, jointNo@ha /* 0x80A6FEA8@ha */
/* 80A6CBB0  38 63 FE A8 */	addi r3, r3, jointNo@l /* 0x80A6FEA8@l */
/* 80A6CBB4  7C 03 D0 2E */	lwzx r0, r3, r26
/* 80A6CBB8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80A6CBBC  7C 64 02 14 */	add r3, r4, r0
/* 80A6CBC0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6CBC4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6CBC8  4B 8D 98 E9 */	bl PSMTXCopy
/* 80A6CBCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6CBD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6CBD4  38 81 00 08 */	addi r4, r1, 8
/* 80A6CBD8  4B 8D 98 D9 */	bl PSMTXCopy
/* 80A6CBDC  38 61 00 08 */	addi r3, r1, 8
/* 80A6CBE0  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A6CBE4  38 84 00 24 */	addi r4, r4, 0x24
/* 80A6CBE8  4B 8D 98 C9 */	bl PSMTXCopy
/* 80A6CBEC  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80A6CBF0  4B 5A 10 D5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80A6CBF4  7F C3 F3 78 */	mr r3, r30
/* 80A6CBF8  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80A6CBFC  7C BB E8 2E */	lwzx r5, r27, r29
/* 80A6CC00  4B 5E 93 1D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80A6CC04:
/* 80A6CC04  3B 9C 00 01 */	addi r28, r28, 1
/* 80A6CC08  2C 1C 00 02 */	cmpwi r28, 2
/* 80A6CC0C  3B 5A 00 04 */	addi r26, r26, 4
/* 80A6CC10  41 80 FF 48 */	blt lbl_80A6CB58
/* 80A6CC14  39 61 00 50 */	addi r11, r1, 0x50
/* 80A6CC18  4B 8F 56 05 */	bl _restgpr_26
/* 80A6CC1C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A6CC20  7C 08 03 A6 */	mtlr r0
/* 80A6CC24  38 21 00 50 */	addi r1, r1, 0x50
/* 80A6CC28  4E 80 00 20 */	blr 
