lbl_80CA93C0:
/* 80CA93C0  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80CA93C4  60 00 00 01 */	ori r0, r0, 1
/* 80CA93C8  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80CA93CC  3C 80 80 CB */	lis r4, l_HIO@ha
/* 80CA93D0  38 84 9D F4 */	addi r4, r4, l_HIO@l
/* 80CA93D4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80CA93D8  D0 03 09 44 */	stfs f0, 0x944(r3)
/* 80CA93DC  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CA93E0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CA93E4  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CA93E8  3C 80 80 CB */	lis r4, lit_3774@ha
/* 80CA93EC  C0 04 9B B8 */	lfs f0, lit_3774@l(r4)
/* 80CA93F0  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80CA93F4  38 00 00 02 */	li r0, 2
/* 80CA93F8  98 03 05 78 */	stb r0, 0x578(r3)
/* 80CA93FC  4E 80 00 20 */	blr 
