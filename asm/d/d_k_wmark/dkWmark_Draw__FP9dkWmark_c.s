lbl_80261A18:
/* 80261A18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80261A1C  7C 08 02 A6 */	mflr r0
/* 80261A20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80261A24  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80261A28  7C 7F 1B 78 */	mr r31, r3
/* 80261A2C  C0 22 B5 E4 */	lfs f1, lit_3906(r2)
/* 80261A30  C0 03 00 E8 */	lfs f0, 0xe8(r3)
/* 80261A34  EC 21 00 32 */	fmuls f1, f1, f0
/* 80261A38  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 80261A3C  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80261A40  90 61 00 0C */	stw r3, 0xc(r1)
/* 80261A44  90 01 00 10 */	stw r0, 0x10(r1)
/* 80261A48  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80261A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80261A50  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 80261A54  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l
/* 80261A58  3C 80 80 43 */	lis r4, j3dSys@ha
/* 80261A5C  38 84 4A C8 */	addi r4, r4, j3dSys@l
/* 80261A60  38 A1 00 0C */	addi r5, r1, 0xc
/* 80261A64  48 01 1E 99 */	bl clip__11J3DUClipperCFPA4_Cf3Vecf
/* 80261A68  2C 03 00 00 */	cmpwi r3, 0
/* 80261A6C  41 82 00 0C */	beq lbl_80261A78
/* 80261A70  38 60 00 01 */	li r3, 1
/* 80261A74  48 00 00 CC */	b lbl_80261B40
lbl_80261A78:
/* 80261A78  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80261A7C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80261A80  38 80 00 00 */	li r4, 0
/* 80261A84  38 BF 00 DC */	addi r5, r31, 0xdc
/* 80261A88  38 DF 01 00 */	addi r6, r31, 0x100
/* 80261A8C  4B F4 1D 39 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80261A90  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80261A94  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80261A98  80 9F 00 FC */	lwz r4, 0xfc(r31)
/* 80261A9C  80 84 00 04 */	lwz r4, 4(r4)
/* 80261AA0  38 BF 01 00 */	addi r5, r31, 0x100
/* 80261AA4  4B F4 32 FD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80261AA8  A8 1F 04 8E */	lha r0, 0x48e(r31)
/* 80261AAC  54 04 10 3A */	slwi r4, r0, 2
/* 80261AB0  3C 60 80 3A */	lis r3, data_8039A488@ha
/* 80261AB4  38 03 A4 88 */	addi r0, r3, data_8039A488@l
/* 80261AB8  7C 60 22 14 */	add r3, r0, r4
/* 80261ABC  88 03 00 00 */	lbz r0, 0(r3)
/* 80261AC0  98 01 00 08 */	stb r0, 8(r1)
/* 80261AC4  88 03 00 01 */	lbz r0, 1(r3)
/* 80261AC8  98 01 00 09 */	stb r0, 9(r1)
/* 80261ACC  88 03 00 02 */	lbz r0, 2(r3)
/* 80261AD0  98 01 00 0A */	stb r0, 0xa(r1)
/* 80261AD4  88 03 00 03 */	lbz r0, 3(r3)
/* 80261AD8  C8 22 B5 E8 */	lfd f1, lit_3908(r2)
/* 80261ADC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80261AE0  3C 00 43 30 */	lis r0, 0x4330
/* 80261AE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80261AE8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80261AEC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80261AF0  C0 1F 04 90 */	lfs f0, 0x490(r31)
/* 80261AF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80261AF8  FC 00 00 1E */	fctiwz f0, f0
/* 80261AFC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80261B00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80261B04  98 01 00 0B */	stb r0, 0xb(r1)
/* 80261B08  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 80261B0C  80 63 00 04 */	lwz r3, 4(r3)
/* 80261B10  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80261B14  80 63 00 00 */	lwz r3, 0(r3)
/* 80261B18  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80261B1C  38 80 00 01 */	li r4, 1
/* 80261B20  38 A1 00 08 */	addi r5, r1, 8
/* 80261B24  81 83 00 00 */	lwz r12, 0(r3)
/* 80261B28  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80261B2C  7D 89 03 A6 */	mtctr r12
/* 80261B30  4E 80 04 21 */	bctrl 
/* 80261B34  80 7F 00 FC */	lwz r3, 0xfc(r31)
/* 80261B38  4B DA C1 8D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80261B3C  38 60 00 01 */	li r3, 1
lbl_80261B40:
/* 80261B40  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80261B44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80261B48  7C 08 03 A6 */	mtlr r0
/* 80261B4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80261B50  4E 80 00 20 */	blr 
