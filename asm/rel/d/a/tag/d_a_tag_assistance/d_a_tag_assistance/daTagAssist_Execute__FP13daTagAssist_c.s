lbl_80D55E98:
/* 80D55E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55E9C  7C 08 02 A6 */	mflr r0
/* 80D55EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55EA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D55EA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D55EAC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D55EB0  4B 2C 4A B5 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D55EB4  38 60 00 01 */	li r3, 1
/* 80D55EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55EBC  7C 08 03 A6 */	mtlr r0
/* 80D55EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55EC4  4E 80 00 20 */	blr 
