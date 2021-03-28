lbl_802B9A94:
/* 802B9A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9A98  7C 08 02 A6 */	mflr r0
/* 802B9A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B9AA0  7C 64 1B 78 */	mr r4, r3
/* 802B9AA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802B9AA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802B9AAC  38 63 09 58 */	addi r3, r3, 0x958
/* 802B9AB0  4B D7 AD B1 */	bl isSwitch__12dSv_memBit_cCFi
/* 802B9AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B9AB8  7C 08 03 A6 */	mtlr r0
/* 802B9ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9AC0  4E 80 00 20 */	blr 
