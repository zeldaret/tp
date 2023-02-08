lbl_80CA92F0:
/* 80CA92F0  80 03 08 24 */	lwz r0, 0x824(r3)
/* 80CA92F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CA92F8  90 03 08 24 */	stw r0, 0x824(r3)
/* 80CA92FC  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CA9300  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CA9304  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CA9308  3C 80 80 CB */	lis r4, lit_4020@ha /* 0x80CA9BD8@ha */
/* 80CA930C  C0 04 9B D8 */	lfs f0, lit_4020@l(r4)  /* 0x80CA9BD8@l */
/* 80CA9310  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80CA9314  38 00 00 01 */	li r0, 1
/* 80CA9318  98 03 05 78 */	stb r0, 0x578(r3)
/* 80CA931C  4E 80 00 20 */	blr 
