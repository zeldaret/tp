lbl_80C23CA4:
/* 80C23CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C23CA8  7C 08 02 A6 */	mflr r0
/* 80C23CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C23CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C23CB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C23CB8  7C 7F 1B 78 */	mr r31, r3
/* 80C23CBC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C23CC0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C23CC4  38 80 00 10 */	li r4, 0x10
/* 80C23CC8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C23CCC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C23CD0  4B 57 FA F5 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C23CD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C23CD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C23CDC  80 03 5F 70 */	lwz r0, 0x5f70(r3)
/* 80C23CE0  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 80C23CE4  3B C4 4A C8 */	addi r30, r4, j3dSys@l /* 0x80434AC8@l */
/* 80C23CE8  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C23CEC  80 03 5F 74 */	lwz r0, 0x5f74(r3)
/* 80C23CF0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C23CF4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C23CF8  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C23CFC  28 04 00 FF */	cmplwi r4, 0xff
/* 80C23D00  41 82 00 4C */	beq lbl_80C23D4C
/* 80C23D04  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C23D08  7C 05 07 74 */	extsb r5, r0
/* 80C23D0C  4B 41 16 55 */	bl isSwitch__10dSv_info_cCFii
/* 80C23D10  2C 03 00 00 */	cmpwi r3, 0
/* 80C23D14  40 82 00 38 */	bne lbl_80C23D4C
/* 80C23D18  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C23D1C  28 04 00 00 */	cmplwi r4, 0
/* 80C23D20  41 82 00 54 */	beq lbl_80C23D74
/* 80C23D24  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C23D28  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C23D2C  80 84 00 04 */	lwz r4, 4(r4)
/* 80C23D30  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C23D34  4B 58 10 6D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C23D38  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C23D3C  4B 3E 9F 89 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C23D40  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C23D44  4B 40 DC 09 */	bl entry__10daMirror_cFP8J3DModel
/* 80C23D48  48 00 00 2C */	b lbl_80C23D74
lbl_80C23D4C:
/* 80C23D4C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C23D50  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C23D54  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80C23D58  80 84 00 04 */	lwz r4, 4(r4)
/* 80C23D5C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80C23D60  4B 58 10 41 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80C23D64  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C23D68  4B 3E 9F 5D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80C23D6C  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80C23D70  4B 40 DB DD */	bl entry__10daMirror_cFP8J3DModel
lbl_80C23D74:
/* 80C23D74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C23D78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C23D7C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80C23D80  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80C23D84  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80C23D88  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C23D8C  38 60 00 01 */	li r3, 1
/* 80C23D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C23D94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C23D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C23D9C  7C 08 03 A6 */	mtlr r0
/* 80C23DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C23DA4  4E 80 00 20 */	blr 
