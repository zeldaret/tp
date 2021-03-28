lbl_80101C94:
/* 80101C94  38 00 00 00 */	li r0, 0
/* 80101C98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80101C9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80101CA0  98 04 5E B7 */	stb r0, 0x5eb7(r4)
/* 80101CA4  80 04 5D E8 */	lwz r0, 0x5de8(r4)
/* 80101CA8  90 04 5D E0 */	stw r0, 0x5de0(r4)
/* 80101CAC  38 00 00 5A */	li r0, 0x5a
/* 80101CB0  98 03 2F BE */	stb r0, 0x2fbe(r3)
/* 80101CB4  4E 80 00 20 */	blr 
