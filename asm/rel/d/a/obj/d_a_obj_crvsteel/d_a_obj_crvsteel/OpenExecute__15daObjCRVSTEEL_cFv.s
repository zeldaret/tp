lbl_80BD5CA0:
/* 80BD5CA0  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80BD5CA4  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BD5CA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD5CAC  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80BD5CB0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80BD5CB4  C0 23 05 AC */	lfs f1, 0x5ac(r3)
/* 80BD5CB8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BD5CBC  4C 81 00 20 */	blelr 
/* 80BD5CC0  D0 23 04 D4 */	stfs f1, 0x4d4(r3)
/* 80BD5CC4  4E 80 00 20 */	blr 
