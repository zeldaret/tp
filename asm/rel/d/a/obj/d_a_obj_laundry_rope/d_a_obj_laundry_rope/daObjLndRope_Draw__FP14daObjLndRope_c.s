lbl_80C52D70:
/* 80C52D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C52D74  7C 08 02 A6 */	mflr r0
/* 80C52D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C52D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C52D80  7C 7F 1B 78 */	mr r31, r3
/* 80C52D84  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80C52D88  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80C52D8C  38 80 00 10 */	li r4, 0x10
/* 80C52D90  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C52D94  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C52D98  4B 55 0A 2D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80C52D9C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C52DA0  38 80 00 0F */	li r4, 0xf
/* 80C52DA4  3C A0 80 C5 */	lis r5, data_80C533D0@ha /* 0x80C533D0@ha */
/* 80C52DA8  38 A5 33 D0 */	addi r5, r5, data_80C533D0@l /* 0x80C533D0@l */
/* 80C52DAC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80C52DB0  4B 3C 12 01 */	bl update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 80C52DB4  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C52DB8  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 80C52DBC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C52DC0  7D 89 03 A6 */	mtctr r12
/* 80C52DC4  4E 80 04 21 */	bctrl 
/* 80C52DC8  1C 83 00 14 */	mulli r4, r3, 0x14
/* 80C52DCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C52DD0  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C52DD4  7C 60 22 14 */	add r3, r0, r4
/* 80C52DD8  3C 63 00 01 */	addis r3, r3, 1
/* 80C52DDC  38 63 61 54 */	addi r3, r3, 0x6154
/* 80C52DE0  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80C52DE4  38 9F 05 68 */	addi r4, r31, 0x568
/* 80C52DE8  4B 3C 19 51 */	bl setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 80C52DEC  38 60 00 01 */	li r3, 1
/* 80C52DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C52DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C52DF8  7C 08 03 A6 */	mtlr r0
/* 80C52DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C52E00  4E 80 00 20 */	blr 
