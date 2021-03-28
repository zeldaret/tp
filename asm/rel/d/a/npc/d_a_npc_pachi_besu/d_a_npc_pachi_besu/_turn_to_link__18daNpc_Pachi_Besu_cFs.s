lbl_80A94A7C:
/* 80A94A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A94A80  7C 08 02 A6 */	mflr r0
/* 80A94A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A94A88  7C 85 23 78 */	mr r5, r4
/* 80A94A8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A94A90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A94A94  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A94A98  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80A94A9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A94AA0  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80A94AA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A94AA8  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80A94AAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A94AB0  38 81 00 08 */	addi r4, r1, 8
/* 80A94AB4  48 00 00 15 */	bl _turn_pos__18daNpc_Pachi_Besu_cFRC4cXyzs
/* 80A94AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A94ABC  7C 08 03 A6 */	mtlr r0
/* 80A94AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A94AC4  4E 80 00 20 */	blr 
