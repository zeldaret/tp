lbl_80C8C994:
/* 80C8C994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8C998  7C 08 02 A6 */	mflr r0
/* 80C8C99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8C9A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8C9A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8C9A8  7C 7F 1B 78 */	mr r31, r3
/* 80C8C9AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C8C9B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C8C9B4  38 80 00 40 */	li r4, 0x40
/* 80C8C9B8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C8C9BC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C8C9C0  4B 51 6E 05 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C8C9C4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C8C9C8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C8C9CC  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C8C9D0  80 84 00 04 */	lwz r4, 4(r4)
/* 80C8C9D4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C8C9D8  4B 51 83 C9 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C8C9DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8C9E0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8C9E4  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80C8C9E8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C8C9EC  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C8C9F0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C8C9F4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80C8C9F8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C8C9FC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8CA00  4B 38 12 C5 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C8CA04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8CA08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8CA0C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C8CA10  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C8CA14  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C8CA18  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C8CA1C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C8CA20  80 63 00 04 */	lwz r3, 4(r3)
/* 80C8CA24  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80C8CA28  80 63 00 04 */	lwz r3, 4(r3)
/* 80C8CA2C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80C8CA30  38 80 00 01 */	li r4, 1
/* 80C8CA34  81 83 00 00 */	lwz r12, 0(r3)
/* 80C8CA38  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80C8CA3C  7D 89 03 A6 */	mtctr r12
/* 80C8CA40  4E 80 04 21 */	bctrl 
/* 80C8CA44  88 1F 05 BD */	lbz r0, 0x5bd(r31)
/* 80C8CA48  98 03 00 00 */	stb r0, 0(r3)
/* 80C8CA4C  88 1F 05 BE */	lbz r0, 0x5be(r31)
/* 80C8CA50  98 03 00 01 */	stb r0, 1(r3)
/* 80C8CA54  88 1F 05 BF */	lbz r0, 0x5bf(r31)
/* 80C8CA58  98 03 00 02 */	stb r0, 2(r3)
/* 80C8CA5C  38 60 00 01 */	li r3, 1
/* 80C8CA60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8CA64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8CA68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8CA6C  7C 08 03 A6 */	mtlr r0
/* 80C8CA70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8CA74  4E 80 00 20 */	blr 
