lbl_80757620:
/* 80757620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80757624  7C 08 02 A6 */	mflr r0
/* 80757628  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075762C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80757630  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80757634  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80757638  4B 8C 30 D8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8075763C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80757640  7C 08 03 A6 */	mtlr r0
/* 80757644  38 21 00 10 */	addi r1, r1, 0x10
/* 80757648  4E 80 00 20 */	blr 
