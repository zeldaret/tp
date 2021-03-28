lbl_8021C9DC:
/* 8021C9DC  88 03 00 C0 */	lbz r0, 0xc0(r3)
/* 8021C9E0  28 00 00 02 */	cmplwi r0, 2
/* 8021C9E4  40 82 00 14 */	bne lbl_8021C9F8
/* 8021C9E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8021C9EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8021C9F0  38 00 FF FF */	li r0, -1
/* 8021C9F4  98 04 00 98 */	stb r0, 0x98(r4)
lbl_8021C9F8:
/* 8021C9F8  38 00 00 00 */	li r0, 0
/* 8021C9FC  98 03 00 C0 */	stb r0, 0xc0(r3)
/* 8021CA00  4E 80 00 20 */	blr 
