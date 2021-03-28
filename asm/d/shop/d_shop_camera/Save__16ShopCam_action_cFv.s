lbl_8019630C:
/* 8019630C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80196310  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80196314  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 80196318  28 04 00 00 */	cmplwi r4, 0
/* 8019631C  4D 82 00 20 */	beqlr 
/* 80196320  C0 04 00 E4 */	lfs f0, 0xe4(r4)
/* 80196324  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 80196328  C0 04 00 E8 */	lfs f0, 0xe8(r4)
/* 8019632C  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80196330  C0 04 00 EC */	lfs f0, 0xec(r4)
/* 80196334  D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 80196338  C0 04 00 D8 */	lfs f0, 0xd8(r4)
/* 8019633C  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80196340  C0 04 00 DC */	lfs f0, 0xdc(r4)
/* 80196344  D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 80196348  C0 04 00 E0 */	lfs f0, 0xe0(r4)
/* 8019634C  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 80196350  C0 04 00 D0 */	lfs f0, 0xd0(r4)
/* 80196354  D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 80196358  4E 80 00 20 */	blr 
