lbl_80A9D3A4:
/* 80A9D3A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9D3A8  7C 08 02 A6 */	mflr r0
/* 80A9D3AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9D3B0  7C 64 1B 78 */	mr r4, r3
/* 80A9D3B4  3C 60 80 AA */	lis r3, _srch_EscapeTag1_main__18daNpc_Pachi_Taro_cFPvPv@ha /* 0x80A9D3D0@ha */
/* 80A9D3B8  38 63 D3 D0 */	addi r3, r3, _srch_EscapeTag1_main__18daNpc_Pachi_Taro_cFPvPv@l /* 0x80A9D3D0@l */
/* 80A9D3BC  4B 58 3F 7D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80A9D3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9D3C4  7C 08 03 A6 */	mtlr r0
/* 80A9D3C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9D3CC  4E 80 00 20 */	blr 
