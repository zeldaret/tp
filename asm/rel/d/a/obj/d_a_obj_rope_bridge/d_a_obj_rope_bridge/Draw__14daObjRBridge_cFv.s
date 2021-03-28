lbl_805975F8:
/* 805975F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805975FC  7C 08 02 A6 */	mflr r0
/* 80597600  90 01 00 34 */	stw r0, 0x34(r1)
/* 80597604  39 61 00 30 */	addi r11, r1, 0x30
/* 80597608  4B DC AB C8 */	b _savegpr_26
/* 8059760C  7C 7D 1B 78 */	mr r29, r3
/* 80597610  3C 60 80 59 */	lis r3, l_brgBmdIdx@ha
/* 80597614  3B E3 7D 7C */	addi r31, r3, l_brgBmdIdx@l
/* 80597618  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8059761C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80597620  38 80 00 10 */	li r4, 0x10
/* 80597624  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80597628  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8059762C  4B C0 C1 98 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80597630  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80597634  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80597638  80 9D 05 B0 */	lwz r4, 0x5b0(r29)
/* 8059763C  80 84 00 04 */	lwz r4, 4(r4)
/* 80597640  38 BD 01 0C */	addi r5, r29, 0x10c
/* 80597644  4B C0 D7 5C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80597648  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8059764C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80597650  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80597654  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80597658  3B 83 4A C8 */	addi r28, r3, j3dSys@l
/* 8059765C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80597660  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80597664  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80597668  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 8059766C  4B A7 66 58 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80597670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80597674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80597678  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8059767C  90 1C 00 48 */	stw r0, 0x48(r28)
/* 80597680  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80597684  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 80597688  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 8059768C  28 00 00 00 */	cmplwi r0, 0
/* 80597690  41 82 00 3C */	beq lbl_805976CC
/* 80597694  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80597698  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8059769C  38 80 00 00 */	li r4, 0
/* 805976A0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805976A4  38 DD 01 0C */	addi r6, r29, 0x10c
/* 805976A8  4B C0 C1 1C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805976AC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805976B0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805976B4  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 805976B8  80 84 00 04 */	lwz r4, 4(r4)
/* 805976BC  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805976C0  4B C0 D6 E0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805976C4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805976C8  4B A7 65 FC */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_805976CC:
/* 805976CC  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 805976D0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 805976D4  40 82 00 1C */	bne lbl_805976F0
/* 805976D8  7F A3 EB 78 */	mr r3, r29
/* 805976DC  48 00 00 F5 */	bl checkHimoCulling__14daObjRBridge_cFv
/* 805976E0  2C 03 00 00 */	cmpwi r3, 0
/* 805976E4  41 82 00 0C */	beq lbl_805976F0
/* 805976E8  38 00 00 01 */	li r0, 1
/* 805976EC  98 1D 0A F5 */	stb r0, 0xaf5(r29)
lbl_805976F0:
/* 805976F0  88 1D 0A F5 */	lbz r0, 0xaf5(r29)
/* 805976F4  28 00 00 00 */	cmplwi r0, 0
/* 805976F8  40 82 00 BC */	bne lbl_805977B4
/* 805976FC  3B C0 00 00 */	li r30, 0
/* 80597700  3B 80 00 00 */	li r28, 0
/* 80597704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80597708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8059770C  3B 43 5F 64 */	addi r26, r3, 0x5f64
lbl_80597710:
/* 80597710  3B 7C 0A FC */	addi r27, r28, 0xafc
/* 80597714  7C 1D D8 2E */	lwzx r0, r29, r27
/* 80597718  28 00 00 00 */	cmplwi r0, 0
/* 8059771C  41 82 00 88 */	beq lbl_805977A4
/* 80597720  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80597724  90 01 00 08 */	stw r0, 8(r1)
/* 80597728  7C 7D D8 2E */	lwzx r3, r29, r27
/* 8059772C  88 9D 0A F1 */	lbz r4, 0xaf1(r29)
/* 80597730  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80597734  88 1D 0A F0 */	lbz r0, 0xaf0(r29)
/* 80597738  54 00 10 3A */	slwi r0, r0, 2
/* 8059773C  38 BF 00 20 */	addi r5, r31, 0x20
/* 80597740  7C 05 00 2E */	lwzx r0, r5, r0
/* 80597744  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 80597748  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8059774C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597750  3C 00 43 30 */	lis r0, 0x4330
/* 80597754  90 01 00 10 */	stw r0, 0x10(r1)
/* 80597758  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8059775C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80597760  EC 22 00 32 */	fmuls f1, f2, f0
/* 80597764  38 A1 00 08 */	addi r5, r1, 8
/* 80597768  38 C0 00 00 */	li r6, 0
/* 8059776C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80597770  4B A7 BF CC */	b update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c
/* 80597774  7F 7D D8 2E */	lwzx r27, r29, r27
/* 80597778  7F 63 DB 78 */	mr r3, r27
/* 8059777C  81 9B 00 00 */	lwz r12, 0(r27)
/* 80597780  81 8C 00 08 */	lwz r12, 8(r12)
/* 80597784  7D 89 03 A6 */	mtctr r12
/* 80597788  4E 80 04 21 */	bctrl 
/* 8059778C  1C 63 00 14 */	mulli r3, r3, 0x14
/* 80597790  3C 63 00 01 */	addis r3, r3, 1
/* 80597794  38 63 61 54 */	addi r3, r3, 0x6154
/* 80597798  7C 7A 1A 14 */	add r3, r26, r3
/* 8059779C  7F 64 DB 78 */	mr r4, r27
/* 805977A0  4B A7 CF 98 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_805977A4:
/* 805977A4  3B DE 00 01 */	addi r30, r30, 1
/* 805977A8  2C 1E 00 02 */	cmpwi r30, 2
/* 805977AC  3B 9C 00 04 */	addi r28, r28, 4
/* 805977B0  41 80 FF 60 */	blt lbl_80597710
lbl_805977B4:
/* 805977B4  38 60 00 01 */	li r3, 1
/* 805977B8  39 61 00 30 */	addi r11, r1, 0x30
/* 805977BC  4B DC AA 60 */	b _restgpr_26
/* 805977C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805977C4  7C 08 03 A6 */	mtlr r0
/* 805977C8  38 21 00 30 */	addi r1, r1, 0x30
/* 805977CC  4E 80 00 20 */	blr 
