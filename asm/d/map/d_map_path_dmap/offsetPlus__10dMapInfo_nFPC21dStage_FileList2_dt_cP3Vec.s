lbl_8003EDC0:
/* 8003EDC0  28 03 00 00 */	cmplwi r3, 0
/* 8003EDC4  4D 82 00 20 */	beqlr 
/* 8003EDC8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8003EDCC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8003EDD0  EC 01 00 2A */	fadds f0, f1, f0
/* 8003EDD4  D0 04 00 00 */	stfs f0, 0(r4)
/* 8003EDD8  C0 24 00 08 */	lfs f1, 8(r4)
/* 8003EDDC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8003EDE0  EC 01 00 2A */	fadds f0, f1, f0
/* 8003EDE4  D0 04 00 08 */	stfs f0, 8(r4)
/* 8003EDE8  4E 80 00 20 */	blr 
