lbl_806F1004:
/* 806F1004  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806F1008  7C 08 02 A6 */	mflr r0
/* 806F100C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806F1010  39 61 00 40 */	addi r11, r1, 0x40
/* 806F1014  4B C7 11 C5 */	bl _savegpr_28
/* 806F1018  7C 7F 1B 78 */	mr r31, r3
/* 806F101C  3C 60 80 6F */	lis r3, lit_3767@ha /* 0x806F5514@ha */
/* 806F1020  3B C3 55 14 */	addi r30, r3, lit_3767@l /* 0x806F5514@l */
/* 806F1024  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F1028  83 A3 00 04 */	lwz r29, 4(r3)
/* 806F102C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806F1030  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806F1034  38 80 00 00 */	li r4, 0
/* 806F1038  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806F103C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806F1040  4B AB 27 85 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806F1044  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806F1048  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806F104C  80 9D 00 04 */	lwz r4, 4(r29)
/* 806F1050  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806F1054  4B AB 3D 4D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806F1058  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 806F105C  4B 92 01 65 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 806F1060  80 9F 06 88 */	lwz r4, 0x688(r31)
/* 806F1064  28 04 00 00 */	cmplwi r4, 0
/* 806F1068  41 82 00 B8 */	beq lbl_806F1120
/* 806F106C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806F1070  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806F1074  80 84 00 04 */	lwz r4, 4(r4)
/* 806F1078  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806F107C  4B AB 3D 25 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806F1080  80 7F 06 88 */	lwz r3, 0x688(r31)
/* 806F1084  80 63 00 04 */	lwz r3, 4(r3)
/* 806F1088  80 63 00 60 */	lwz r3, 0x60(r3)
/* 806F108C  83 83 00 00 */	lwz r28, 0(r3)
/* 806F1090  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806F1094  38 80 00 00 */	li r4, 0
/* 806F1098  81 83 00 00 */	lwz r12, 0(r3)
/* 806F109C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F10A0  7D 89 03 A6 */	mtctr r12
/* 806F10A4  4E 80 04 21 */	bctrl 
/* 806F10A8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 806F10AC  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 806F10B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F10B4  FC 00 00 1E */	fctiwz f0, f0
/* 806F10B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806F10BC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806F10C0  B0 03 00 00 */	sth r0, 0(r3)
/* 806F10C4  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806F10C8  38 80 00 00 */	li r4, 0
/* 806F10CC  81 83 00 00 */	lwz r12, 0(r3)
/* 806F10D0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F10D4  7D 89 03 A6 */	mtctr r12
/* 806F10D8  4E 80 04 21 */	bctrl 
/* 806F10DC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 806F10E0  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 806F10E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F10E8  FC 00 00 1E */	fctiwz f0, f0
/* 806F10EC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806F10F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F10F4  B0 03 00 02 */	sth r0, 2(r3)
/* 806F10F8  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 806F10FC  38 80 00 00 */	li r4, 0
/* 806F1100  81 83 00 00 */	lwz r12, 0(r3)
/* 806F1104  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 806F1108  7D 89 03 A6 */	mtctr r12
/* 806F110C  4E 80 04 21 */	bctrl 
/* 806F1110  38 00 00 00 */	li r0, 0
/* 806F1114  B0 03 00 04 */	sth r0, 4(r3)
/* 806F1118  80 7F 06 88 */	lwz r3, 0x688(r31)
/* 806F111C  4B 91 CB A9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_806F1120:
/* 806F1120  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 806F1124  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 806F1128  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 806F112C  EC 20 18 2A */	fadds f1, f0, f3
/* 806F1130  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806F1134  D0 01 00 08 */	stfs f0, 8(r1)
/* 806F1138  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806F113C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806F1140  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 806F1144  38 80 00 01 */	li r4, 1
/* 806F1148  7F A5 EB 78 */	mr r5, r29
/* 806F114C  38 C1 00 08 */	addi r6, r1, 8
/* 806F1150  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 806F1154  C0 5E 00 04 */	lfs f2, 4(r30)
/* 806F1158  C0 9F 08 18 */	lfs f4, 0x818(r31)
/* 806F115C  38 FF 08 70 */	addi r7, r31, 0x870
/* 806F1160  39 1F 01 0C */	addi r8, r31, 0x10c
/* 806F1164  39 20 00 00 */	li r9, 0
/* 806F1168  C0 BE 00 00 */	lfs f5, 0(r30)
/* 806F116C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 806F1170  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 806F1174  4B 93 D7 9D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 806F1178  90 7F 06 A8 */	stw r3, 0x6a8(r31)
/* 806F117C  80 BF 06 88 */	lwz r5, 0x688(r31)
/* 806F1180  28 05 00 00 */	cmplwi r5, 0
/* 806F1184  41 82 00 18 */	beq lbl_806F119C
/* 806F1188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F118C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F1190  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 806F1194  80 9F 06 A8 */	lwz r4, 0x6a8(r31)
/* 806F1198  4B 96 4D 85 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_806F119C:
/* 806F119C  A8 1F 07 1A */	lha r0, 0x71a(r31)
/* 806F11A0  2C 00 00 00 */	cmpwi r0, 0
/* 806F11A4  41 82 00 54 */	beq lbl_806F11F8
/* 806F11A8  80 7F 07 14 */	lwz r3, 0x714(r31)
/* 806F11AC  80 83 00 04 */	lwz r4, 4(r3)
/* 806F11B0  80 7F 07 34 */	lwz r3, 0x734(r31)
/* 806F11B4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806F11B8  38 84 00 58 */	addi r4, r4, 0x58
/* 806F11BC  4B 91 C5 ED */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 806F11C0  80 7F 07 14 */	lwz r3, 0x714(r31)
/* 806F11C4  80 83 00 04 */	lwz r4, 4(r3)
/* 806F11C8  80 7F 07 38 */	lwz r3, 0x738(r31)
/* 806F11CC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 806F11D0  38 84 00 58 */	addi r4, r4, 0x58
/* 806F11D4  4B 91 C5 05 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 806F11D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806F11DC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806F11E0  80 9F 07 14 */	lwz r4, 0x714(r31)
/* 806F11E4  80 84 00 04 */	lwz r4, 4(r4)
/* 806F11E8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806F11EC  4B AB 3B B5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806F11F0  80 7F 07 14 */	lwz r3, 0x714(r31)
/* 806F11F4  4B 91 CA D1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_806F11F8:
/* 806F11F8  38 60 00 01 */	li r3, 1
/* 806F11FC  39 61 00 40 */	addi r11, r1, 0x40
/* 806F1200  4B C7 10 25 */	bl _restgpr_28
/* 806F1204  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806F1208  7C 08 03 A6 */	mtlr r0
/* 806F120C  38 21 00 40 */	addi r1, r1, 0x40
/* 806F1210  4E 80 00 20 */	blr 
