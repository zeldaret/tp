lbl_801C1128:
/* 801C1128  28 04 00 00 */	cmplwi r4, 0
/* 801C112C  41 82 00 30 */	beq lbl_801C115C
/* 801C1130  C0 62 A6 98 */	lfs f3, lit_3946(r2)
/* 801C1134  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 801C1138  EC 63 00 24 */	fdivs f3, f3, f0
/* 801C113C  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 801C1140  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C1144  EC 63 00 32 */	fmuls f3, f3, f0
/* 801C1148  C0 22 A6 94 */	lfs f1, lit_3837(r2)
/* 801C114C  C0 03 00 94 */	lfs f0, 0x94(r3)
/* 801C1150  EC 01 00 32 */	fmuls f0, f1, f0
/* 801C1154  EC 00 18 2A */	fadds f0, f0, f3
/* 801C1158  D0 04 00 00 */	stfs f0, 0(r4)
lbl_801C115C:
/* 801C115C  28 05 00 00 */	cmplwi r5, 0
/* 801C1160  4D 82 00 20 */	beqlr 
/* 801C1164  C0 22 A6 94 */	lfs f1, lit_3837(r2)
/* 801C1168  C0 03 00 98 */	lfs f0, 0x98(r3)
/* 801C116C  EC 61 00 32 */	fmuls f3, f1, f0
/* 801C1170  C0 22 A6 98 */	lfs f1, lit_3946(r2)
/* 801C1174  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 801C1178  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C117C  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 801C1180  EC 02 00 28 */	fsubs f0, f2, f0
/* 801C1184  EC 01 00 32 */	fmuls f0, f1, f0
/* 801C1188  EC 03 00 2A */	fadds f0, f3, f0
/* 801C118C  D0 05 00 00 */	stfs f0, 0(r5)
/* 801C1190  4E 80 00 20 */	blr 
