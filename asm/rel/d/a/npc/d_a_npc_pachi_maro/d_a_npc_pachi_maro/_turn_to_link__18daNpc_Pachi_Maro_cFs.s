lbl_80A998FC:
/* 80A998FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A99900  7C 08 02 A6 */	mflr r0
/* 80A99904  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A99908  7C 85 23 78 */	mr r5, r4
/* 80A9990C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A99910  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A99914  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A99918  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80A9991C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A99920  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80A99924  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A99928  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80A9992C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A99930  38 81 00 08 */	addi r4, r1, 8
/* 80A99934  48 00 00 15 */	bl _turn_pos__18daNpc_Pachi_Maro_cFRC4cXyzs
/* 80A99938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9993C  7C 08 03 A6 */	mtlr r0
/* 80A99940  38 21 00 20 */	addi r1, r1, 0x20
/* 80A99944  4E 80 00 20 */	blr 
