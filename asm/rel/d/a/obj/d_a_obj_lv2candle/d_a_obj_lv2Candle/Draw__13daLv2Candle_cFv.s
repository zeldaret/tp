lbl_8058EEC8:
/* 8058EEC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058EECC  7C 08 02 A6 */	mflr r0
/* 8058EED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058EED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058EED8  93 C1 00 08 */	stw r30, 8(r1)
/* 8058EEDC  7C 7E 1B 78 */	mr r30, r3
/* 8058EEE0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8058EEE4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8058EEE8  38 80 00 10 */	li r4, 0x10
/* 8058EEEC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8058EEF0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 8058EEF4  4B C1 48 D1 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8058EEF8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8058EEFC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8058EF00  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 8058EF04  80 84 00 04 */	lwz r4, 4(r4)
/* 8058EF08  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8058EF0C  4B C1 5E 95 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8058EF10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058EF14  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058EF18  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8058EF1C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8058EF20  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 8058EF24  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8058EF28  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8058EF2C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8058EF30  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8058EF34  4B A7 ED 91 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8058EF38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8058EF3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8058EF40  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8058EF44  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8058EF48  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8058EF4C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8058EF50  38 60 00 01 */	li r3, 1
/* 8058EF54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058EF58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058EF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058EF60  7C 08 03 A6 */	mtlr r0
/* 8058EF64  38 21 00 10 */	addi r1, r1, 0x10
/* 8058EF68  4E 80 00 20 */	blr 
