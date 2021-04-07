lbl_805F4F38:
/* 805F4F38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805F4F3C  7C 08 02 A6 */	mflr r0
/* 805F4F40  90 01 00 44 */	stw r0, 0x44(r1)
/* 805F4F44  39 61 00 40 */	addi r11, r1, 0x40
/* 805F4F48  4B D6 D2 85 */	bl _savegpr_25
/* 805F4F4C  7C 7F 1B 78 */	mr r31, r3
/* 805F4F50  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805F4F54  3B C3 26 64 */	addi r30, r3, lit_3815@l /* 0x80602664@l */
/* 805F4F58  88 1F 27 38 */	lbz r0, 0x2738(r31)
/* 805F4F5C  28 00 00 00 */	cmplwi r0, 0
/* 805F4F60  41 82 00 0C */	beq lbl_805F4F6C
/* 805F4F64  38 60 00 01 */	li r3, 1
/* 805F4F68  48 00 04 24 */	b lbl_805F538C
lbl_805F4F6C:
/* 805F4F6C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805F4F70  83 A3 00 04 */	lwz r29, 4(r3)
/* 805F4F74  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805F4F78  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805F4F7C  38 80 00 00 */	li r4, 0
/* 805F4F80  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805F4F84  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805F4F88  4B BA E8 3D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805F4F8C  80 9D 00 04 */	lwz r4, 4(r29)
/* 805F4F90  80 1F 07 48 */	lwz r0, 0x748(r31)
/* 805F4F94  54 00 10 3A */	slwi r0, r0, 2
/* 805F4F98  7C 7F 02 14 */	add r3, r31, r0
/* 805F4F9C  80 63 07 28 */	lwz r3, 0x728(r3)
/* 805F4FA0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805F4FA4  38 84 00 58 */	addi r4, r4, 0x58
/* 805F4FA8  4B A1 87 31 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 805F4FAC  80 9D 00 04 */	lwz r4, 4(r29)
/* 805F4FB0  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 805F4FB4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805F4FB8  38 84 00 58 */	addi r4, r4, 0x58
/* 805F4FBC  4B A1 87 ED */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 805F4FC0  80 9D 00 04 */	lwz r4, 4(r29)
/* 805F4FC4  80 7F 07 44 */	lwz r3, 0x744(r31)
/* 805F4FC8  38 84 00 58 */	addi r4, r4, 0x58
/* 805F4FCC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805F4FD0  FC 00 00 1E */	fctiwz f0, f0
/* 805F4FD4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805F4FD8  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 805F4FDC  4B A1 86 0D */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 805F4FE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805F4FE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805F4FE8  80 9D 00 04 */	lwz r4, 4(r29)
/* 805F4FEC  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805F4FF0  4B BA FD B1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805F4FF4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805F4FF8  4B A1 C1 C9 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 805F4FFC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805F5000  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805F5004  38 80 00 05 */	li r4, 5
/* 805F5008  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805F500C  38 DF 07 74 */	addi r6, r31, 0x774
/* 805F5010  4B BA E7 B5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805F5014  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805F5018  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805F501C  80 9F 07 68 */	lwz r4, 0x768(r31)
/* 805F5020  80 84 00 04 */	lwz r4, 4(r4)
/* 805F5024  38 BF 07 74 */	addi r5, r31, 0x774
/* 805F5028  4B BA FD 79 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805F502C  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 805F5030  4B A1 8C 95 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 805F5034  A8 1F 0C 24 */	lha r0, 0xc24(r31)
/* 805F5038  2C 00 00 0A */	cmpwi r0, 0xa
/* 805F503C  40 81 00 78 */	ble lbl_805F50B4
/* 805F5040  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805F5044  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805F5048  A8 1F 0C 26 */	lha r0, 0xc26(r31)
/* 805F504C  54 00 10 3A */	slwi r0, r0, 2
/* 805F5050  7C 9F 02 14 */	add r4, r31, r0
/* 805F5054  80 84 0C 2C */	lwz r4, 0xc2c(r4)
/* 805F5058  80 84 00 04 */	lwz r4, 4(r4)
/* 805F505C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805F5060  4B BA FD 41 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805F5064  A8 1F 0C 26 */	lha r0, 0xc26(r31)
/* 805F5068  54 00 10 3A */	slwi r0, r0, 2
/* 805F506C  7C 7F 02 14 */	add r3, r31, r0
/* 805F5070  80 63 0C 2C */	lwz r3, 0xc2c(r3)
/* 805F5074  80 63 00 04 */	lwz r3, 4(r3)
/* 805F5078  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805F507C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F5080  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F5084  38 80 00 03 */	li r4, 3
/* 805F5088  81 83 00 00 */	lwz r12, 0(r3)
/* 805F508C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 805F5090  7D 89 03 A6 */	mtctr r12
/* 805F5094  4E 80 04 21 */	bctrl 
/* 805F5098  A8 1F 0C 24 */	lha r0, 0xc24(r31)
/* 805F509C  98 03 00 03 */	stb r0, 3(r3)
/* 805F50A0  A8 1F 0C 26 */	lha r0, 0xc26(r31)
/* 805F50A4  54 00 10 3A */	slwi r0, r0, 2
/* 805F50A8  7C 7F 02 14 */	add r3, r31, r0
/* 805F50AC  80 63 0C 2C */	lwz r3, 0xc2c(r3)
/* 805F50B0  4B A1 8C 15 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_805F50B4:
/* 805F50B4  88 1F 07 71 */	lbz r0, 0x771(r31)
/* 805F50B8  28 00 00 00 */	cmplwi r0, 0
/* 805F50BC  40 82 00 24 */	bne lbl_805F50E0
/* 805F50C0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805F50C4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805F50C8  80 9F 07 6C */	lwz r4, 0x76c(r31)
/* 805F50CC  80 84 00 04 */	lwz r4, 4(r4)
/* 805F50D0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805F50D4  4B BA FC CD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805F50D8  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 805F50DC  4B A1 8B E9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_805F50E0:
/* 805F50E0  88 1F 07 54 */	lbz r0, 0x754(r31)
/* 805F50E4  28 00 00 00 */	cmplwi r0, 0
/* 805F50E8  41 82 00 6C */	beq lbl_805F5154
/* 805F50EC  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 805F50F0  80 83 00 04 */	lwz r4, 4(r3)
/* 805F50F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805F50F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805F50FC  80 84 00 04 */	lwz r4, 4(r4)
/* 805F5100  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805F5104  4B BA FC 9D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805F5108  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 805F510C  80 63 00 04 */	lwz r3, 4(r3)
/* 805F5110  80 83 00 04 */	lwz r4, 4(r3)
/* 805F5114  80 7F 07 50 */	lwz r3, 0x750(r31)
/* 805F5118  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805F511C  38 84 00 58 */	addi r4, r4, 0x58
/* 805F5120  4B A1 85 B9 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 805F5124  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 805F5128  80 63 00 04 */	lwz r3, 4(r3)
/* 805F512C  80 83 00 04 */	lwz r4, 4(r3)
/* 805F5130  80 7F 07 4C */	lwz r3, 0x74c(r31)
/* 805F5134  38 84 00 58 */	addi r4, r4, 0x58
/* 805F5138  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805F513C  FC 00 00 1E */	fctiwz f0, f0
/* 805F5140  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805F5144  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 805F5148  4B A1 84 A1 */	bl entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 805F514C  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 805F5150  4B A1 B5 31 */	bl entryDL__14mDoExt_McaMorfFv
lbl_805F5154:
/* 805F5154  A8 1F 26 C4 */	lha r0, 0x26c4(r31)
/* 805F5158  2C 00 00 3C */	cmpwi r0, 0x3c
/* 805F515C  41 80 00 0C */	blt lbl_805F5168
/* 805F5160  38 60 00 01 */	li r3, 1
/* 805F5164  48 00 02 28 */	b lbl_805F538C
lbl_805F5168:
/* 805F5168  3B 20 00 00 */	li r25, 0
/* 805F516C  3B 80 00 00 */	li r28, 0
/* 805F5170  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805F5174  3B 63 CA 54 */	addi r27, r3, g_env_light@l /* 0x8042CA54@l */
lbl_805F5178:
/* 805F5178  7F 63 DB 78 */	mr r3, r27
/* 805F517C  3B 5C 0B 94 */	addi r26, r28, 0xb94
/* 805F5180  7C 9F D0 2E */	lwzx r4, r31, r26
/* 805F5184  80 84 00 04 */	lwz r4, 4(r4)
/* 805F5188  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805F518C  4B BA FC 15 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805F5190  7C 7F D0 2E */	lwzx r3, r31, r26
/* 805F5194  4B A1 8B 31 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 805F5198  3B 39 00 01 */	addi r25, r25, 1
/* 805F519C  2C 19 00 24 */	cmpwi r25, 0x24
/* 805F51A0  3B 9C 00 04 */	addi r28, r28, 4
/* 805F51A4  41 80 FF D4 */	blt lbl_805F5178
/* 805F51A8  3B 20 00 00 */	li r25, 0
/* 805F51AC  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805F51B0  2C 00 00 00 */	cmpwi r0, 0
/* 805F51B4  41 82 00 2C */	beq lbl_805F51E0
/* 805F51B8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805F51BC  80 83 00 04 */	lwz r4, 4(r3)
/* 805F51C0  7C 99 23 78 */	mr r25, r4
/* 805F51C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805F51C8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805F51CC  80 84 00 04 */	lwz r4, 4(r4)
/* 805F51D0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 805F51D4  4B BA FB CD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805F51D8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 805F51DC  4B A1 BF E5 */	bl entryDL__16mDoExt_McaMorfSOFv
lbl_805F51E0:
/* 805F51E0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 805F51E4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805F51E8  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 805F51EC  EC 20 18 2A */	fadds f1, f0, f3
/* 805F51F0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805F51F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805F51F8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805F51FC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805F5200  80 7F 0C 40 */	lwz r3, 0xc40(r31)
/* 805F5204  38 80 00 01 */	li r4, 1
/* 805F5208  7F A5 EB 78 */	mr r5, r29
/* 805F520C  38 C1 00 08 */	addi r6, r1, 8
/* 805F5210  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 805F5214  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 805F5218  C0 9F 0D 6C */	lfs f4, 0xd6c(r31)
/* 805F521C  38 FF 0D C4 */	addi r7, r31, 0xdc4
/* 805F5220  39 1F 01 0C */	addi r8, r31, 0x10c
/* 805F5224  39 20 00 00 */	li r9, 0
/* 805F5228  C0 BE 00 00 */	lfs f5, 0(r30)
/* 805F522C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 805F5230  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 805F5234  4B A3 96 DD */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 805F5238  90 7F 0C 40 */	stw r3, 0xc40(r31)
/* 805F523C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F5240  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F5244  3B 43 61 C0 */	addi r26, r3, 0x61c0
/* 805F5248  7F 43 D3 78 */	mr r3, r26
/* 805F524C  80 9F 0C 40 */	lwz r4, 0xc40(r31)
/* 805F5250  80 BF 07 68 */	lwz r5, 0x768(r31)
/* 805F5254  4B A6 0C C9 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 805F5258  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805F525C  2C 00 00 00 */	cmpwi r0, 0
/* 805F5260  41 82 00 18 */	beq lbl_805F5278
/* 805F5264  7F 43 D3 78 */	mr r3, r26
/* 805F5268  80 9F 0C 40 */	lwz r4, 0xc40(r31)
/* 805F526C  7F 25 CB 78 */	mr r5, r25
/* 805F5270  4B A6 0C AD */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 805F5274  48 00 00 30 */	b lbl_805F52A4
lbl_805F5278:
/* 805F5278  3B 20 00 00 */	li r25, 0
/* 805F527C  3B A0 00 00 */	li r29, 0
lbl_805F5280:
/* 805F5280  7F 43 D3 78 */	mr r3, r26
/* 805F5284  80 9F 0C 40 */	lwz r4, 0xc40(r31)
/* 805F5288  38 1D 0B 94 */	addi r0, r29, 0xb94
/* 805F528C  7C BF 00 2E */	lwzx r5, r31, r0
/* 805F5290  4B A6 0C 8D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 805F5294  3B 39 00 01 */	addi r25, r25, 1
/* 805F5298  2C 19 00 24 */	cmpwi r25, 0x24
/* 805F529C  3B BD 00 04 */	addi r29, r29, 4
/* 805F52A0  41 80 FF E0 */	blt lbl_805F5280
lbl_805F52A4:
/* 805F52A4  80 1F 1F C4 */	lwz r0, 0x1fc4(r31)
/* 805F52A8  2C 00 00 00 */	cmpwi r0, 0
/* 805F52AC  41 82 00 DC */	beq lbl_805F5388
/* 805F52B0  38 7F 21 70 */	addi r3, r31, 0x2170
/* 805F52B4  38 80 00 10 */	li r4, 0x10
/* 805F52B8  3C A0 80 60 */	lis r5, l_color@ha /* 0x806029F0@ha */
/* 805F52BC  38 A5 29 F0 */	addi r5, r5, l_color@l /* 0x806029F0@l */
/* 805F52C0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805F52C4  4B A1 EC ED */	bl update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 805F52C8  38 7F 21 70 */	addi r3, r31, 0x2170
/* 805F52CC  81 9F 21 70 */	lwz r12, 0x2170(r31)
/* 805F52D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 805F52D4  7D 89 03 A6 */	mtctr r12
/* 805F52D8  4E 80 04 21 */	bctrl 
/* 805F52DC  1C 83 00 14 */	mulli r4, r3, 0x14
/* 805F52E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F52E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F52E8  3B 43 5F 64 */	addi r26, r3, 0x5f64
/* 805F52EC  3C 64 00 01 */	addis r3, r4, 1
/* 805F52F0  38 63 61 54 */	addi r3, r3, 0x6154
/* 805F52F4  7C 7A 1A 14 */	add r3, r26, r3
/* 805F52F8  38 9F 21 70 */	addi r4, r31, 0x2170
/* 805F52FC  4B A1 F4 3D */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 805F5300  38 7F 21 AC */	addi r3, r31, 0x21ac
/* 805F5304  38 80 00 10 */	li r4, 0x10
/* 805F5308  3C A0 80 60 */	lis r5, l_color@ha /* 0x806029F0@ha */
/* 805F530C  38 A5 29 F0 */	addi r5, r5, l_color@l /* 0x806029F0@l */
/* 805F5310  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805F5314  4B A1 EC 9D */	bl update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 805F5318  38 7F 21 AC */	addi r3, r31, 0x21ac
/* 805F531C  81 9F 21 AC */	lwz r12, 0x21ac(r31)
/* 805F5320  81 8C 00 08 */	lwz r12, 8(r12)
/* 805F5324  7D 89 03 A6 */	mtctr r12
/* 805F5328  4E 80 04 21 */	bctrl 
/* 805F532C  1C 63 00 14 */	mulli r3, r3, 0x14
/* 805F5330  3C 63 00 01 */	addis r3, r3, 1
/* 805F5334  38 63 61 54 */	addi r3, r3, 0x6154
/* 805F5338  7C 7A 1A 14 */	add r3, r26, r3
/* 805F533C  38 9F 21 AC */	addi r4, r31, 0x21ac
/* 805F5340  4B A1 F3 F9 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 805F5344  38 7F 21 E8 */	addi r3, r31, 0x21e8
/* 805F5348  38 80 00 02 */	li r4, 2
/* 805F534C  3C A0 80 60 */	lis r5, l_color@ha /* 0x806029F0@ha */
/* 805F5350  38 A5 29 F0 */	addi r5, r5, l_color@l /* 0x806029F0@l */
/* 805F5354  38 DF 01 0C */	addi r6, r31, 0x10c
/* 805F5358  4B A1 EC 59 */	bl update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 805F535C  38 7F 21 E8 */	addi r3, r31, 0x21e8
/* 805F5360  81 9F 21 E8 */	lwz r12, 0x21e8(r31)
/* 805F5364  81 8C 00 08 */	lwz r12, 8(r12)
/* 805F5368  7D 89 03 A6 */	mtctr r12
/* 805F536C  4E 80 04 21 */	bctrl 
/* 805F5370  1C 63 00 14 */	mulli r3, r3, 0x14
/* 805F5374  3C 63 00 01 */	addis r3, r3, 1
/* 805F5378  38 63 61 54 */	addi r3, r3, 0x6154
/* 805F537C  7C 7A 1A 14 */	add r3, r26, r3
/* 805F5380  38 9F 21 E8 */	addi r4, r31, 0x21e8
/* 805F5384  4B A1 F3 B5 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_805F5388:
/* 805F5388  38 60 00 01 */	li r3, 1
lbl_805F538C:
/* 805F538C  39 61 00 40 */	addi r11, r1, 0x40
/* 805F5390  4B D6 CE 89 */	bl _restgpr_25
/* 805F5394  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805F5398  7C 08 03 A6 */	mtlr r0
/* 805F539C  38 21 00 40 */	addi r1, r1, 0x40
/* 805F53A0  4E 80 00 20 */	blr 
