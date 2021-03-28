lbl_807E7BDC:
/* 807E7BDC  3C C0 80 7F */	lis r6, lit_4066@ha
/* 807E7BE0  C0 06 F7 B8 */	lfs f0, lit_4066@l(r6)
/* 807E7BE4  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 807E7BE8  90 83 06 B8 */	stw r4, 0x6b8(r3)
/* 807E7BEC  90 A3 06 BC */	stw r5, 0x6bc(r3)
/* 807E7BF0  38 00 00 00 */	li r0, 0
/* 807E7BF4  98 03 07 56 */	stb r0, 0x756(r3)
/* 807E7BF8  80 03 07 CC */	lwz r0, 0x7cc(r3)
/* 807E7BFC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 807E7C00  90 03 07 CC */	stw r0, 0x7cc(r3)
/* 807E7C04  80 03 07 CC */	lwz r0, 0x7cc(r3)
/* 807E7C08  60 00 20 00 */	ori r0, r0, 0x2000
/* 807E7C0C  90 03 07 CC */	stw r0, 0x7cc(r3)
/* 807E7C10  80 03 07 CC */	lwz r0, 0x7cc(r3)
/* 807E7C14  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 807E7C18  90 03 07 CC */	stw r0, 0x7cc(r3)
/* 807E7C1C  4E 80 00 20 */	blr 
