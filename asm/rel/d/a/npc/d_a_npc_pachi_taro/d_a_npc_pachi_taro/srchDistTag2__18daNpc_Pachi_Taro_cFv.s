lbl_80A9D310:
/* 80A9D310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9D314  7C 08 02 A6 */	mflr r0
/* 80A9D318  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9D31C  7C 64 1B 78 */	mr r4, r3
/* 80A9D320  3C 60 80 AA */	lis r3, _srch_DistTag2_main__18daNpc_Pachi_Taro_cFPvPv@ha /* 0x80A9D33C@ha */
/* 80A9D324  38 63 D3 3C */	addi r3, r3, _srch_DistTag2_main__18daNpc_Pachi_Taro_cFPvPv@l /* 0x80A9D33C@l */
/* 80A9D328  4B 58 40 11 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A9D32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9D330  7C 08 03 A6 */	mtlr r0
/* 80A9D334  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9D338  4E 80 00 20 */	blr 
