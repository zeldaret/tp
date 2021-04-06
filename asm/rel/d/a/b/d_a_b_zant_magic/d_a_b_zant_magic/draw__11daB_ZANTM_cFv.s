lbl_8064F778:
/* 8064F778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064F77C  7C 08 02 A6 */	mflr r0
/* 8064F780  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064F784  7C 66 1B 78 */	mr r6, r3
/* 8064F788  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8064F78C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8064F790  38 80 00 00 */	li r4, 0
/* 8064F794  38 A6 04 D0 */	addi r5, r6, 0x4d0
/* 8064F798  38 C6 01 0C */	addi r6, r6, 0x10c
/* 8064F79C  4B B5 40 29 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8064F7A0  38 60 00 01 */	li r3, 1
/* 8064F7A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064F7A8  7C 08 03 A6 */	mtlr r0
/* 8064F7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8064F7B0  4E 80 00 20 */	blr 
