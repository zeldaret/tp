lbl_804E10D0:
/* 804E10D0  80 83 05 74 */	lwz r4, 0x574(r3)
/* 804E10D4  80 84 00 04 */	lwz r4, 4(r4)
/* 804E10D8  80 84 00 28 */	lwz r4, 0x28(r4)
/* 804E10DC  80 A4 00 00 */	lwz r5, 0(r4)
/* 804E10E0  C0 63 04 D8 */	lfs f3, 0x4d8(r3)
/* 804E10E4  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 804E10E8  3C 80 80 4E */	lis r4, lit_4394@ha
/* 804E10EC  C0 24 1A 1C */	lfs f1, lit_4394@l(r4)
/* 804E10F0  C0 05 00 4C */	lfs f0, 0x4c(r5)
/* 804E10F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E10F8  EC 22 00 2A */	fadds f1, f2, f0
/* 804E10FC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 804E1100  D0 03 09 48 */	stfs f0, 0x948(r3)
/* 804E1104  D0 23 09 4C */	stfs f1, 0x94c(r3)
/* 804E1108  D0 63 09 50 */	stfs f3, 0x950(r3)
/* 804E110C  3C 80 80 4E */	lis r4, lit_4395@ha
/* 804E1110  C0 04 1A 20 */	lfs f0, lit_4395@l(r4)
/* 804E1114  D0 03 09 40 */	stfs f0, 0x940(r3)
/* 804E1118  4E 80 00 20 */	blr 
