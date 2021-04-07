lbl_80761384:
/* 80761384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80761388  7C 08 02 A6 */	mflr r0
/* 8076138C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80761390  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80761394  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80761398  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8076139C  4B 8B 93 75 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807613A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807613A4  7C 08 03 A6 */	mtlr r0
/* 807613A8  38 21 00 10 */	addi r1, r1, 0x10
/* 807613AC  4E 80 00 20 */	blr 
