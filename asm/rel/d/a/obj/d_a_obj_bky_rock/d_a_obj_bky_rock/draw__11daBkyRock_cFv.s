lbl_80BB6D84:
/* 80BB6D84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BB6D88  7C 08 02 A6 */	mflr r0
/* 80BB6D8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB6D90  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB6D94  4B 7A B4 39 */	bl _savegpr_25
/* 80BB6D98  7C 7F 1B 78 */	mr r31, r3
/* 80BB6D9C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BB6DA0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BB6DA4  38 80 00 00 */	li r4, 0
/* 80BB6DA8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BB6DAC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80BB6DB0  4B 5E CA 15 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BB6DB4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BB6DB8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BB6DBC  88 1F 05 78 */	lbz r0, 0x578(r31)
/* 80BB6DC0  54 00 10 3A */	slwi r0, r0, 2
/* 80BB6DC4  7C 9F 02 14 */	add r4, r31, r0
/* 80BB6DC8  80 84 08 64 */	lwz r4, 0x864(r4)
/* 80BB6DCC  80 84 00 04 */	lwz r4, 4(r4)
/* 80BB6DD0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80BB6DD4  4B 5E DF CD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BB6DD8  88 1F 05 7A */	lbz r0, 0x57a(r31)
/* 80BB6DDC  28 00 00 00 */	cmplwi r0, 0
/* 80BB6DE0  41 82 00 A0 */	beq lbl_80BB6E80
/* 80BB6DE4  80 7F 08 6C */	lwz r3, 0x86c(r31)
/* 80BB6DE8  80 63 00 04 */	lwz r3, 4(r3)
/* 80BB6DEC  38 80 00 00 */	li r4, 0
/* 80BB6DF0  88 BF 04 E2 */	lbz r5, 0x4e2(r31)
/* 80BB6DF4  7C A5 07 74 */	extsb r5, r5
/* 80BB6DF8  4B 4E 5A E1 */	bl entry__10dMdl_mng_cFP12J3DModelDataUsi
/* 80BB6DFC  7C 7B 1B 79 */	or. r27, r3, r3
/* 80BB6E00  41 82 00 80 */	beq lbl_80BB6E80
/* 80BB6E04  3B 5F 08 70 */	addi r26, r31, 0x870
/* 80BB6E08  3B 20 00 00 */	li r25, 0
/* 80BB6E0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB6E10  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB6E14  7F 9D E3 78 */	mr r29, r28
/* 80BB6E18  7F 9E E3 78 */	mr r30, r28
lbl_80BB6E1C:
/* 80BB6E1C  7F 83 E3 78 */	mr r3, r28
/* 80BB6E20  C0 3A 00 34 */	lfs f1, 0x34(r26)
/* 80BB6E24  C0 5A 00 38 */	lfs f2, 0x38(r26)
/* 80BB6E28  C0 7A 00 3C */	lfs f3, 0x3c(r26)
/* 80BB6E2C  4B 78 FA BD */	bl PSMTXTrans
/* 80BB6E30  7F 83 E3 78 */	mr r3, r28
/* 80BB6E34  A8 9A 00 50 */	lha r4, 0x50(r26)
/* 80BB6E38  4B 45 55 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 80BB6E3C  7F A3 EB 78 */	mr r3, r29
/* 80BB6E40  A8 9A 00 52 */	lha r4, 0x52(r26)
/* 80BB6E44  4B 45 56 89 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80BB6E48  C0 3A 00 48 */	lfs f1, 0x48(r26)
/* 80BB6E4C  FC 40 08 90 */	fmr f2, f1
/* 80BB6E50  FC 60 08 90 */	fmr f3, f1
/* 80BB6E54  4B 45 5F E5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80BB6E58  7F C3 F3 78 */	mr r3, r30
/* 80BB6E5C  7F 44 D3 78 */	mr r4, r26
/* 80BB6E60  4B 78 F6 51 */	bl PSMTXCopy
/* 80BB6E64  7F 63 DB 78 */	mr r3, r27
/* 80BB6E68  7F 44 D3 78 */	mr r4, r26
/* 80BB6E6C  4B 4E 57 FD */	bl entryObj__6dMdl_cFP10dMdl_obj_c
/* 80BB6E70  3B 39 00 01 */	addi r25, r25, 1
/* 80BB6E74  2C 19 00 14 */	cmpwi r25, 0x14
/* 80BB6E78  3B 5A 00 58 */	addi r26, r26, 0x58
/* 80BB6E7C  41 80 FF A0 */	blt lbl_80BB6E1C
lbl_80BB6E80:
/* 80BB6E80  88 1F 05 78 */	lbz r0, 0x578(r31)
/* 80BB6E84  28 00 00 02 */	cmplwi r0, 2
/* 80BB6E88  41 82 00 14 */	beq lbl_80BB6E9C
/* 80BB6E8C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80BB6E90  7C 7F 02 14 */	add r3, r31, r0
/* 80BB6E94  80 63 08 64 */	lwz r3, 0x864(r3)
/* 80BB6E98  4B 45 6D 95 */	bl mDoExt_modelUpdate__FP8J3DModel
lbl_80BB6E9C:
/* 80BB6E9C  38 60 00 01 */	li r3, 1
/* 80BB6EA0  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB6EA4  4B 7A B3 75 */	bl _restgpr_25
/* 80BB6EA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BB6EAC  7C 08 03 A6 */	mtlr r0
/* 80BB6EB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80BB6EB4  4E 80 00 20 */	blr 
