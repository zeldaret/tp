lbl_804D6D54:
/* 804D6D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6D58  7C 08 02 A6 */	mflr r0
/* 804D6D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D6D64  93 C1 00 08 */	stw r30, 8(r1)
/* 804D6D68  7C 7E 1B 78 */	mr r30, r3
/* 804D6D6C  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 804D6D70  83 E3 00 04 */	lwz r31, 4(r3)
/* 804D6D74  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804D6D78  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804D6D7C  38 80 00 00 */	li r4, 0
/* 804D6D80  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804D6D84  38 DE 01 0C */	addi r6, r30, 0x10c
/* 804D6D88  4B CC CA 3D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804D6D8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804D6D90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804D6D94  80 9F 00 04 */	lwz r4, 4(r31)
/* 804D6D98  38 BE 01 0C */	addi r5, r30, 0x10c
/* 804D6D9C  4B CC E0 05 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804D6DA0  80 9F 00 04 */	lwz r4, 4(r31)
/* 804D6DA4  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 804D6DA8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804D6DAC  38 84 00 58 */	addi r4, r4, 0x58
/* 804D6DB0  4B B3 69 29 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 804D6DB4  80 7E 05 E4 */	lwz r3, 0x5e4(r30)
/* 804D6DB8  4B B3 98 C9 */	bl entryDL__14mDoExt_McaMorfFv
/* 804D6DBC  38 60 00 01 */	li r3, 1
/* 804D6DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D6DC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D6DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6DCC  7C 08 03 A6 */	mtlr r0
/* 804D6DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6DD4  4E 80 00 20 */	blr 
