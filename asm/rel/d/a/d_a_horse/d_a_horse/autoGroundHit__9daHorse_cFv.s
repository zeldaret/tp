lbl_8083E6E8:
/* 8083E6E8  80 03 17 44 */	lwz r0, 0x1744(r3)
/* 8083E6EC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8083E6F0  4D 82 00 20 */	beqlr 
/* 8083E6F4  88 03 16 B4 */	lbz r0, 0x16b4(r3)
/* 8083E6F8  28 00 00 06 */	cmplwi r0, 6
/* 8083E6FC  4D 82 00 20 */	beqlr 
/* 8083E700  28 00 00 04 */	cmplwi r0, 4
/* 8083E704  4D 82 00 20 */	beqlr 
/* 8083E708  C0 43 07 54 */	lfs f2, 0x754(r3)
/* 8083E70C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8083E710  EC 62 00 28 */	fsubs f3, f2, f0
/* 8083E714  80 03 06 E8 */	lwz r0, 0x6e8(r3)
/* 8083E718  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8083E71C  4C 82 00 20 */	bnelr 
/* 8083E720  3C 80 80 84 */	lis r4, lit_4306@ha
/* 8083E724  C0 24 55 FC */	lfs f1, lit_4306@l(r4)
/* 8083E728  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8083E72C  4C 80 00 20 */	bgelr 
/* 8083E730  3C 80 80 84 */	lis r4, l_autoUpHeight@ha
/* 8083E734  C0 04 58 F4 */	lfs f0, l_autoUpHeight@l(r4)
/* 8083E738  FC 00 00 50 */	fneg f0, f0
/* 8083E73C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8083E740  4C 41 13 82 */	cror 2, 1, 2
/* 8083E744  4C 82 00 20 */	bnelr 
/* 8083E748  D0 43 04 D4 */	stfs f2, 0x4d4(r3)
/* 8083E74C  80 03 06 E8 */	lwz r0, 0x6e8(r3)
/* 8083E750  60 00 00 20 */	ori r0, r0, 0x20
/* 8083E754  90 03 06 E8 */	stw r0, 0x6e8(r3)
/* 8083E758  D0 23 04 FC */	stfs f1, 0x4fc(r3)
/* 8083E75C  4E 80 00 20 */	blr 
