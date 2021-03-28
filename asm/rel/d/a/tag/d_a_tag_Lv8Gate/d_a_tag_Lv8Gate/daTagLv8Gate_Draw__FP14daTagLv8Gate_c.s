lbl_80D522F0:
/* 80D522F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D522F4  7C 08 02 A6 */	mflr r0
/* 80D522F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D522FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D52300  4B 60 FE DC */	b _savegpr_29
/* 80D52304  7C 7F 1B 78 */	mr r31, r3
/* 80D52308  80 03 05 68 */	lwz r0, 0x568(r3)
/* 80D5230C  28 00 00 00 */	cmplwi r0, 0
/* 80D52310  41 82 01 40 */	beq lbl_80D52450
/* 80D52314  3B C0 00 00 */	li r30, 0
/* 80D52318  48 00 00 7C */	b lbl_80D52394
lbl_80D5231C:
/* 80D5231C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D52320  80 63 00 04 */	lwz r3, 4(r3)
/* 80D52324  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D52328  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 80D5232C  7F A3 00 2E */	lwzx r29, r3, r0
/* 80D52330  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80D52334  38 80 00 01 */	li r4, 1
/* 80D52338  81 83 00 00 */	lwz r12, 0(r3)
/* 80D5233C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80D52340  7D 89 03 A6 */	mtctr r12
/* 80D52344  4E 80 04 21 */	bctrl 
/* 80D52348  38 00 00 80 */	li r0, 0x80
/* 80D5234C  98 03 00 00 */	stb r0, 0(r3)
/* 80D52350  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80D52354  38 80 00 01 */	li r4, 1
/* 80D52358  81 83 00 00 */	lwz r12, 0(r3)
/* 80D5235C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80D52360  7D 89 03 A6 */	mtctr r12
/* 80D52364  4E 80 04 21 */	bctrl 
/* 80D52368  38 00 00 78 */	li r0, 0x78
/* 80D5236C  98 03 00 01 */	stb r0, 1(r3)
/* 80D52370  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80D52374  38 80 00 01 */	li r4, 1
/* 80D52378  81 83 00 00 */	lwz r12, 0(r3)
/* 80D5237C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80D52380  7D 89 03 A6 */	mtctr r12
/* 80D52384  4E 80 04 21 */	bctrl 
/* 80D52388  38 00 00 64 */	li r0, 0x64
/* 80D5238C  98 03 00 02 */	stb r0, 2(r3)
/* 80D52390  3B DE 00 01 */	addi r30, r30, 1
lbl_80D52394:
/* 80D52394  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80D52398  28 00 00 03 */	cmplwi r0, 3
/* 80D5239C  41 80 FF 80 */	blt lbl_80D5231C
/* 80D523A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D523A4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D523A8  38 80 00 10 */	li r4, 0x10
/* 80D523AC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D523B0  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D523B4  4B 45 14 10 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D523B8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D523BC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D523C0  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D523C4  80 84 00 04 */	lwz r4, 4(r4)
/* 80D523C8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D523CC  4B 45 29 D4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D523D0  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80D523D4  28 03 00 00 */	cmplwi r3, 0
/* 80D523D8  41 82 00 14 */	beq lbl_80D523EC
/* 80D523DC  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D523E0  80 84 00 04 */	lwz r4, 4(r4)
/* 80D523E4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D523E8  4B 2B B5 E4 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_80D523EC:
/* 80D523EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D523F0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D523F4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D523F8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D523FC  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80D52400  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D52404  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D52408  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D5240C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D52410  4B 2B B8 B4 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D52414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D52418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5241C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D52420  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D52424  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D52428  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D5242C  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 80D52430  28 00 00 00 */	cmplwi r0, 0
/* 80D52434  41 82 00 1C */	beq lbl_80D52450
/* 80D52438  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D5243C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D52440  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D52444  80 63 00 00 */	lwz r3, 0(r3)
/* 80D52448  38 00 00 00 */	li r0, 0
/* 80D5244C  90 03 00 54 */	stw r0, 0x54(r3)
lbl_80D52450:
/* 80D52450  38 60 00 01 */	li r3, 1
/* 80D52454  39 61 00 20 */	addi r11, r1, 0x20
/* 80D52458  4B 60 FD D0 */	b _restgpr_29
/* 80D5245C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D52460  7C 08 03 A6 */	mtlr r0
/* 80D52464  38 21 00 20 */	addi r1, r1, 0x20
/* 80D52468  4E 80 00 20 */	blr 
