lbl_80C1CF90:
/* 80C1CF90  A8 05 00 08 */	lha r0, 8(r5)
/* 80C1CF94  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C1CF98  4C 82 00 20 */	bnelr 
/* 80C1CF9C  38 00 00 01 */	li r0, 1
/* 80C1CFA0  98 04 05 D8 */	stb r0, 0x5d8(r4)
/* 80C1CFA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1CFA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1CFAC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80C1CFB0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80C1CFB4  54 00 01 8C */	rlwinm r0, r0, 0, 6, 6
/* 80C1CFB8  90 04 05 DC */	stw r0, 0x5dc(r4)
/* 80C1CFBC  4E 80 00 20 */	blr 
