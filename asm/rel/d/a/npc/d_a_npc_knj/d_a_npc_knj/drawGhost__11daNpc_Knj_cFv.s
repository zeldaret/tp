lbl_80A44264:
/* 80A44264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A44268  7C 08 02 A6 */	mflr r0
/* 80A4426C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A44270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A44274  93 C1 00 08 */	stw r30, 8(r1)
/* 80A44278  7C 7E 1B 78 */	mr r30, r3
/* 80A4427C  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80A44280  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A44284  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A44288  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A4428C  38 80 00 05 */	li r4, 5
/* 80A44290  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80A44294  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80A44298  4B 75 F5 2C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80A4429C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A442A0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A442A4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80A442A8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80A442AC  4B 76 0A F4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A442B0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A442B4  4B 5C CF 0C */	b entryDL__16mDoExt_McaMorfSOFv
/* 80A442B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A442BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A442C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A442C4  7C 08 03 A6 */	mtlr r0
/* 80A442C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A442CC  4E 80 00 20 */	blr 
