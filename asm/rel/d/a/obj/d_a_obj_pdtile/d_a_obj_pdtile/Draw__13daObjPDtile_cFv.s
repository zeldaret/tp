lbl_80CABF50:
/* 80CABF50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CABF54  7C 08 02 A6 */	mflr r0
/* 80CABF58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CABF5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CABF60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CABF64  7C 7F 1B 78 */	mr r31, r3
/* 80CABF68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CABF6C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CABF70  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80CABF74  80 03 06 10 */	lwz r0, 0x610(r3)
/* 80CABF78  2C 00 00 04 */	cmpwi r0, 4
/* 80CABF7C  40 82 00 8C */	bne lbl_80CAC008
/* 80CABF80  28 04 00 00 */	cmplwi r4, 0
/* 80CABF84  41 82 00 84 */	beq lbl_80CAC008
/* 80CABF88  C0 64 04 D0 */	lfs f3, 0x4d0(r4)
/* 80CABF8C  D0 61 00 08 */	stfs f3, 8(r1)
/* 80CABF90  C0 44 04 D4 */	lfs f2, 0x4d4(r4)
/* 80CABF94  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80CABF98  C0 24 04 D8 */	lfs f1, 0x4d8(r4)
/* 80CABF9C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CABFA0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CABFA4  EC 81 00 28 */	fsubs f4, f1, f0
/* 80CABFA8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CABFAC  EC 03 00 28 */	fsubs f0, f3, f0
/* 80CABFB0  FC 00 02 10 */	fabs f0, f0
/* 80CABFB4  FC 00 00 18 */	frsp f0, f0
/* 80CABFB8  3C 80 80 CB */	lis r4, lit_4256@ha /* 0x80CAC57C@ha */
/* 80CABFBC  C0 24 C5 7C */	lfs f1, lit_4256@l(r4)  /* 0x80CAC57C@l */
/* 80CABFC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CABFC4  40 80 00 3C */	bge lbl_80CAC000
/* 80CABFC8  FC 00 22 10 */	fabs f0, f4
/* 80CABFCC  FC 00 00 18 */	frsp f0, f0
/* 80CABFD0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CABFD4  40 80 00 2C */	bge lbl_80CAC000
/* 80CABFD8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CABFDC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CABFE0  40 80 00 20 */	bge lbl_80CAC000
/* 80CABFE4  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 80CABFE8  EC 02 00 28 */	fsubs f0, f2, f0
/* 80CABFEC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CABFF0  38 00 00 01 */	li r0, 1
/* 80CABFF4  98 1F 07 D0 */	stb r0, 0x7d0(r31)
/* 80CABFF8  4B FF EE 89 */	bl setMtx__13daObjPDtile_cFv
/* 80CABFFC  48 00 00 0C */	b lbl_80CAC008
lbl_80CAC000:
/* 80CAC000  38 00 00 00 */	li r0, 0
/* 80CAC004  98 1F 07 D0 */	stb r0, 0x7d0(r31)
lbl_80CAC008:
/* 80CAC008  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CAC00C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CAC010  38 80 00 10 */	li r4, 0x10
/* 80CAC014  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CAC018  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CAC01C  4B 4F 77 A9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80CAC020  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80CAC024  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80CAC028  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80CAC02C  80 84 00 04 */	lwz r4, 4(r4)
/* 80CAC030  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80CAC034  4B 4F 8D 6D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80CAC038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAC03C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAC040  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80CAC044  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80CAC048  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80CAC04C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CAC050  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80CAC054  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CAC058  80 7F 06 08 */	lwz r3, 0x608(r31)
/* 80CAC05C  4B 36 1C 69 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80CAC060  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAC064  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAC068  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80CAC06C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80CAC070  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80CAC074  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CAC078  38 60 00 01 */	li r3, 1
/* 80CAC07C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CAC080  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CAC084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAC088  7C 08 03 A6 */	mtlr r0
/* 80CAC08C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAC090  4E 80 00 20 */	blr 
