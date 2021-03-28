lbl_8052B4B4:
/* 8052B4B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052B4B8  7C 08 02 A6 */	mflr r0
/* 8052B4BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052B4C0  39 61 00 40 */	addi r11, r1, 0x40
/* 8052B4C4  4B E3 6D 0C */	b _savegpr_26
/* 8052B4C8  7C 7F 1B 78 */	mr r31, r3
/* 8052B4CC  3C 60 80 53 */	lis r3, lit_3679@ha
/* 8052B4D0  3B 83 61 68 */	addi r28, r3, lit_3679@l
/* 8052B4D4  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 8052B4D8  28 00 00 14 */	cmplwi r0, 0x14
/* 8052B4DC  41 82 00 3C */	beq lbl_8052B518
/* 8052B4E0  28 00 00 16 */	cmplwi r0, 0x16
/* 8052B4E4  41 82 00 34 */	beq lbl_8052B518
/* 8052B4E8  28 00 00 15 */	cmplwi r0, 0x15
/* 8052B4EC  41 82 00 2C */	beq lbl_8052B518
/* 8052B4F0  28 00 00 18 */	cmplwi r0, 0x18
/* 8052B4F4  41 82 00 24 */	beq lbl_8052B518
/* 8052B4F8  28 00 00 17 */	cmplwi r0, 0x17
/* 8052B4FC  41 82 00 1C */	beq lbl_8052B518
/* 8052B500  28 00 00 19 */	cmplwi r0, 0x19
/* 8052B504  41 82 00 14 */	beq lbl_8052B518
/* 8052B508  28 00 00 1A */	cmplwi r0, 0x1a
/* 8052B50C  41 82 00 0C */	beq lbl_8052B518
/* 8052B510  28 00 00 1B */	cmplwi r0, 0x1b
/* 8052B514  40 82 00 0C */	bne lbl_8052B520
lbl_8052B518:
/* 8052B518  38 60 00 01 */	li r3, 1
/* 8052B51C  48 00 03 F4 */	b lbl_8052B910
lbl_8052B520:
/* 8052B520  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B524  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8052B528  38 80 00 00 */	li r4, 0
/* 8052B52C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8052B530  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8052B534  4B C7 82 90 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8052B538  88 1F 0C 3D */	lbz r0, 0xc3d(r31)
/* 8052B53C  28 00 00 00 */	cmplwi r0, 0
/* 8052B540  41 82 02 74 */	beq lbl_8052B7B4
/* 8052B544  28 00 00 01 */	cmplwi r0, 1
/* 8052B548  40 82 00 40 */	bne lbl_8052B588
/* 8052B54C  3C 60 80 53 */	lis r3, s_bt_sub__FPvPv@ha
/* 8052B550  38 63 B1 48 */	addi r3, r3, s_bt_sub__FPvPv@l
/* 8052B554  7F E4 FB 78 */	mr r4, r31
/* 8052B558  4B AF 5D E0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052B55C  7C 7C 1B 79 */	or. r28, r3, r3
/* 8052B560  41 82 03 AC */	beq lbl_8052B90C
/* 8052B564  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B568  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8052B56C  80 9C 06 14 */	lwz r4, 0x614(r28)
/* 8052B570  80 84 00 04 */	lwz r4, 4(r4)
/* 8052B574  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8052B578  4B C7 98 28 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8052B57C  80 7C 06 14 */	lwz r3, 0x614(r28)
/* 8052B580  4B AE 27 44 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8052B584  48 00 03 88 */	b lbl_8052B90C
lbl_8052B588:
/* 8052B588  28 00 00 02 */	cmplwi r0, 2
/* 8052B58C  40 82 00 60 */	bne lbl_8052B5EC
/* 8052B590  3C 60 80 53 */	lis r3, s_sp_sub__FPvPv@ha
/* 8052B594  38 63 B1 A0 */	addi r3, r3, s_sp_sub__FPvPv@l
/* 8052B598  7F E4 FB 78 */	mr r4, r31
/* 8052B59C  4B AF 5D 9C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052B5A0  7C 7C 1B 79 */	or. r28, r3, r3
/* 8052B5A4  41 82 03 68 */	beq lbl_8052B90C
/* 8052B5A8  3B 40 00 00 */	li r26, 0
/* 8052B5AC  3B C0 00 00 */	li r30, 0
/* 8052B5B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B5B4  3B A3 CA 54 */	addi r29, r3, g_env_light@l
lbl_8052B5B8:
/* 8052B5B8  7F A3 EB 78 */	mr r3, r29
/* 8052B5BC  3B 7E 06 14 */	addi r27, r30, 0x614
/* 8052B5C0  7C 9C D8 2E */	lwzx r4, r28, r27
/* 8052B5C4  80 84 00 04 */	lwz r4, 4(r4)
/* 8052B5C8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8052B5CC  4B C7 97 D4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8052B5D0  7C 7C D8 2E */	lwzx r3, r28, r27
/* 8052B5D4  4B AE 26 F0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8052B5D8  3B 5A 00 01 */	addi r26, r26, 1
/* 8052B5DC  2C 1A 00 03 */	cmpwi r26, 3
/* 8052B5E0  3B DE 00 04 */	addi r30, r30, 4
/* 8052B5E4  41 80 FF D4 */	blt lbl_8052B5B8
/* 8052B5E8  48 00 03 24 */	b lbl_8052B90C
lbl_8052B5EC:
/* 8052B5EC  28 00 00 03 */	cmplwi r0, 3
/* 8052B5F0  40 82 00 40 */	bne lbl_8052B630
/* 8052B5F4  3C 60 80 53 */	lis r3, s_lh_sub__FPvPv@ha
/* 8052B5F8  38 63 B1 F8 */	addi r3, r3, s_lh_sub__FPvPv@l
/* 8052B5FC  7F E4 FB 78 */	mr r4, r31
/* 8052B600  4B AF 5D 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052B604  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052B608  41 82 03 04 */	beq lbl_8052B90C
/* 8052B60C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B610  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8052B614  80 9E 06 14 */	lwz r4, 0x614(r30)
/* 8052B618  80 84 00 04 */	lwz r4, 4(r4)
/* 8052B61C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8052B620  4B C7 97 80 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8052B624  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 8052B628  4B AE 26 9C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8052B62C  48 00 02 E0 */	b lbl_8052B90C
lbl_8052B630:
/* 8052B630  28 00 00 05 */	cmplwi r0, 5
/* 8052B634  40 82 00 40 */	bne lbl_8052B674
/* 8052B638  3C 60 80 53 */	lis r3, s_bb_sub__FPvPv@ha
/* 8052B63C  38 63 B3 C4 */	addi r3, r3, s_bb_sub__FPvPv@l
/* 8052B640  7F E4 FB 78 */	mr r4, r31
/* 8052B644  4B AF 5C F4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052B648  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052B64C  41 82 02 C0 */	beq lbl_8052B90C
/* 8052B650  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B654  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8052B658  80 9E 06 14 */	lwz r4, 0x614(r30)
/* 8052B65C  80 84 00 04 */	lwz r4, 4(r4)
/* 8052B660  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8052B664  4B C7 97 3C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8052B668  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 8052B66C  4B AE 26 58 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8052B670  48 00 02 9C */	b lbl_8052B90C
lbl_8052B674:
/* 8052B674  28 00 00 06 */	cmplwi r0, 6
/* 8052B678  40 82 00 70 */	bne lbl_8052B6E8
/* 8052B67C  3C 60 80 53 */	lis r3, s_bin_sub__FPvPv@ha
/* 8052B680  38 63 B2 64 */	addi r3, r3, s_bin_sub__FPvPv@l
/* 8052B684  7F E4 FB 78 */	mr r4, r31
/* 8052B688  4B AF 5C B0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052B68C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052B690  41 82 02 7C */	beq lbl_8052B90C
/* 8052B694  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B698  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8052B69C  80 9E 06 14 */	lwz r4, 0x614(r30)
/* 8052B6A0  80 84 00 04 */	lwz r4, 4(r4)
/* 8052B6A4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8052B6A8  4B C7 96 F8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8052B6AC  C0 1C 00 4C */	lfs f0, 0x4c(r28)
/* 8052B6B0  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 8052B6B4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8052B6B8  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 8052B6BC  80 83 00 04 */	lwz r4, 4(r3)
/* 8052B6C0  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 8052B6C4  38 84 00 58 */	addi r4, r4, 0x58
/* 8052B6C8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8052B6CC  FC 00 00 1E */	fctiwz f0, f0
/* 8052B6D0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8052B6D4  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8052B6D8  4B AE 1F 10 */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 8052B6DC  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 8052B6E0  4B AE 25 E4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8052B6E4  48 00 02 28 */	b lbl_8052B90C
lbl_8052B6E8:
/* 8052B6E8  28 00 00 07 */	cmplwi r0, 7
/* 8052B6EC  40 82 00 40 */	bne lbl_8052B72C
/* 8052B6F0  3C 60 80 53 */	lis r3, s_kn_sub__FPvPv@ha
/* 8052B6F4  38 63 B2 BC */	addi r3, r3, s_kn_sub__FPvPv@l
/* 8052B6F8  7F E4 FB 78 */	mr r4, r31
/* 8052B6FC  4B AF 5C 3C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052B700  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052B704  41 82 02 08 */	beq lbl_8052B90C
/* 8052B708  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B70C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8052B710  80 9E 06 14 */	lwz r4, 0x614(r30)
/* 8052B714  80 84 00 04 */	lwz r4, 4(r4)
/* 8052B718  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8052B71C  4B C7 96 84 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8052B720  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 8052B724  4B AE 25 A0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8052B728  48 00 01 E4 */	b lbl_8052B90C
lbl_8052B72C:
/* 8052B72C  28 00 00 08 */	cmplwi r0, 8
/* 8052B730  40 82 00 40 */	bne lbl_8052B770
/* 8052B734  3C 60 80 53 */	lis r3, s_ed_sub__FPvPv@ha
/* 8052B738  38 63 B3 14 */	addi r3, r3, s_ed_sub__FPvPv@l
/* 8052B73C  7F E4 FB 78 */	mr r4, r31
/* 8052B740  4B AF 5B F8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052B744  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052B748  41 82 01 C4 */	beq lbl_8052B90C
/* 8052B74C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B750  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8052B754  80 9E 06 14 */	lwz r4, 0x614(r30)
/* 8052B758  80 84 00 04 */	lwz r4, 4(r4)
/* 8052B75C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8052B760  4B C7 96 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8052B764  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 8052B768  4B AE 25 5C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8052B76C  48 00 01 A0 */	b lbl_8052B90C
lbl_8052B770:
/* 8052B770  28 00 00 09 */	cmplwi r0, 9
/* 8052B774  40 82 01 98 */	bne lbl_8052B90C
/* 8052B778  3C 60 80 53 */	lis r3, s_sy_sub__FPvPv@ha
/* 8052B77C  38 63 B3 6C */	addi r3, r3, s_sy_sub__FPvPv@l
/* 8052B780  7F E4 FB 78 */	mr r4, r31
/* 8052B784  4B AF 5B B4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052B788  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052B78C  41 82 01 80 */	beq lbl_8052B90C
/* 8052B790  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B794  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8052B798  80 9E 06 14 */	lwz r4, 0x614(r30)
/* 8052B79C  80 84 00 04 */	lwz r4, 4(r4)
/* 8052B7A0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8052B7A4  4B C7 95 FC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8052B7A8  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 8052B7AC  4B AE 25 18 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8052B7B0  48 00 01 5C */	b lbl_8052B90C
lbl_8052B7B4:
/* 8052B7B4  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 8052B7B8  C0 1C 00 68 */	lfs f0, 0x68(r28)
/* 8052B7BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052B7C0  40 81 00 0C */	ble lbl_8052B7CC
/* 8052B7C4  38 60 00 01 */	li r3, 1
/* 8052B7C8  48 00 01 48 */	b lbl_8052B910
lbl_8052B7CC:
/* 8052B7CC  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8052B7D0  83 A3 00 04 */	lwz r29, 4(r3)
/* 8052B7D4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8052B7D8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8052B7DC  80 9D 00 04 */	lwz r4, 4(r29)
/* 8052B7E0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 8052B7E4  4B C7 95 BC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8052B7E8  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 8052B7EC  28 03 00 00 */	cmplwi r3, 0
/* 8052B7F0  41 82 00 14 */	beq lbl_8052B804
/* 8052B7F4  80 9D 00 04 */	lwz r4, 4(r29)
/* 8052B7F8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8052B7FC  38 84 00 58 */	addi r4, r4, 0x58
/* 8052B800  4B AE 1F A8 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
lbl_8052B804:
/* 8052B804  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8052B808  4B AE 4E 78 */	b entryDL__14mDoExt_McaMorfFv
/* 8052B80C  88 1F 0C 3C */	lbz r0, 0xc3c(r31)
/* 8052B810  28 00 00 00 */	cmplwi r0, 0
/* 8052B814  40 82 00 80 */	bne lbl_8052B894
/* 8052B818  A8 1F 05 B6 */	lha r0, 0x5b6(r31)
/* 8052B81C  2C 00 00 35 */	cmpwi r0, 0x35
/* 8052B820  40 82 00 74 */	bne lbl_8052B894
/* 8052B824  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 8052B828  2C 00 00 0A */	cmpwi r0, 0xa
/* 8052B82C  41 80 00 68 */	blt lbl_8052B894
/* 8052B830  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8052B834  C0 1C 00 6C */	lfs f0, 0x6c(r28)
/* 8052B838  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8052B83C  EC 20 18 2A */	fadds f1, f0, f3
/* 8052B840  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8052B844  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8052B848  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8052B84C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8052B850  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 8052B854  38 80 00 01 */	li r4, 1
/* 8052B858  7F A5 EB 78 */	mr r5, r29
/* 8052B85C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8052B860  C0 3C 00 70 */	lfs f1, 0x70(r28)
/* 8052B864  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 8052B868  EC 21 00 32 */	fmuls f1, f1, f0
/* 8052B86C  C0 5C 00 18 */	lfs f2, 0x18(r28)
/* 8052B870  C0 9F 09 68 */	lfs f4, 0x968(r31)
/* 8052B874  38 FF 09 C0 */	addi r7, r31, 0x9c0
/* 8052B878  39 1F 01 0C */	addi r8, r31, 0x10c
/* 8052B87C  39 20 00 00 */	li r9, 0
/* 8052B880  C0 BC 00 00 */	lfs f5, 0(r28)
/* 8052B884  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 8052B888  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 8052B88C  4B B0 30 84 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8052B890  90 7F 06 08 */	stw r3, 0x608(r31)
lbl_8052B894:
/* 8052B894  88 1F 06 35 */	lbz r0, 0x635(r31)
/* 8052B898  28 00 00 03 */	cmplwi r0, 3
/* 8052B89C  40 82 00 70 */	bne lbl_8052B90C
/* 8052B8A0  38 00 00 32 */	li r0, 0x32
/* 8052B8A4  98 01 00 08 */	stb r0, 8(r1)
/* 8052B8A8  38 00 00 2D */	li r0, 0x2d
/* 8052B8AC  98 01 00 09 */	stb r0, 9(r1)
/* 8052B8B0  38 00 00 14 */	li r0, 0x14
/* 8052B8B4  98 01 00 0A */	stb r0, 0xa(r1)
/* 8052B8B8  38 00 00 FF */	li r0, 0xff
/* 8052B8BC  98 01 00 0B */	stb r0, 0xb(r1)
/* 8052B8C0  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 8052B8C4  38 80 00 05 */	li r4, 5
/* 8052B8C8  38 A1 00 08 */	addi r5, r1, 8
/* 8052B8CC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 8052B8D0  4B AE 75 6C */	b update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c
/* 8052B8D4  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 8052B8D8  81 9F 07 E4 */	lwz r12, 0x7e4(r31)
/* 8052B8DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8052B8E0  7D 89 03 A6 */	mtctr r12
/* 8052B8E4  4E 80 04 21 */	bctrl 
/* 8052B8E8  1C 83 00 14 */	mulli r4, r3, 0x14
/* 8052B8EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8052B8F0  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 8052B8F4  7C 60 22 14 */	add r3, r0, r4
/* 8052B8F8  3C 63 00 01 */	addis r3, r3, 1
/* 8052B8FC  38 63 61 54 */	addi r3, r3, 0x6154
/* 8052B900  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8052B904  38 9F 07 E4 */	addi r4, r31, 0x7e4
/* 8052B908  4B AE 8E 30 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_8052B90C:
/* 8052B90C  38 60 00 01 */	li r3, 1
lbl_8052B910:
/* 8052B910  39 61 00 40 */	addi r11, r1, 0x40
/* 8052B914  4B E3 69 08 */	b _restgpr_26
/* 8052B918  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052B91C  7C 08 03 A6 */	mtlr r0
/* 8052B920  38 21 00 40 */	addi r1, r1, 0x40
/* 8052B924  4E 80 00 20 */	blr 
