lbl_80A9D438:
/* 80A9D438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9D43C  7C 08 02 A6 */	mflr r0
/* 80A9D440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9D444  7C 64 1B 78 */	mr r4, r3
/* 80A9D448  3C 60 80 AA */	lis r3, _srch_EscapeTag2_main__18daNpc_Pachi_Taro_cFPvPv@ha
/* 80A9D44C  38 63 D4 64 */	addi r3, r3, _srch_EscapeTag2_main__18daNpc_Pachi_Taro_cFPvPv@l
/* 80A9D450  4B 58 3E E8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A9D454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9D458  7C 08 03 A6 */	mtlr r0
/* 80A9D45C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9D460  4E 80 00 20 */	blr 
