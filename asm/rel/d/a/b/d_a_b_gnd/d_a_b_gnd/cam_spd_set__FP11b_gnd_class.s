lbl_805FB704:
/* 805FB704  C0 23 26 E0 */	lfs f1, 0x26e0(r3)
/* 805FB708  C0 03 26 C8 */	lfs f0, 0x26c8(r3)
/* 805FB70C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FB710  FC 00 02 10 */	fabs f0, f0
/* 805FB714  FC 00 00 18 */	frsp f0, f0
/* 805FB718  D0 03 26 F8 */	stfs f0, 0x26f8(r3)
/* 805FB71C  C0 23 26 E4 */	lfs f1, 0x26e4(r3)
/* 805FB720  C0 03 26 CC */	lfs f0, 0x26cc(r3)
/* 805FB724  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FB728  FC 00 02 10 */	fabs f0, f0
/* 805FB72C  FC 00 00 18 */	frsp f0, f0
/* 805FB730  D0 03 26 FC */	stfs f0, 0x26fc(r3)
/* 805FB734  C0 23 26 E8 */	lfs f1, 0x26e8(r3)
/* 805FB738  C0 03 26 D0 */	lfs f0, 0x26d0(r3)
/* 805FB73C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FB740  FC 00 02 10 */	fabs f0, f0
/* 805FB744  FC 00 00 18 */	frsp f0, f0
/* 805FB748  D0 03 27 00 */	stfs f0, 0x2700(r3)
/* 805FB74C  C0 23 26 EC */	lfs f1, 0x26ec(r3)
/* 805FB750  C0 03 26 D4 */	lfs f0, 0x26d4(r3)
/* 805FB754  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FB758  FC 00 02 10 */	fabs f0, f0
/* 805FB75C  FC 00 00 18 */	frsp f0, f0
/* 805FB760  D0 03 27 04 */	stfs f0, 0x2704(r3)
/* 805FB764  C0 23 26 F0 */	lfs f1, 0x26f0(r3)
/* 805FB768  C0 03 26 D8 */	lfs f0, 0x26d8(r3)
/* 805FB76C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FB770  FC 00 02 10 */	fabs f0, f0
/* 805FB774  FC 00 00 18 */	frsp f0, f0
/* 805FB778  D0 03 27 08 */	stfs f0, 0x2708(r3)
/* 805FB77C  C0 23 26 F4 */	lfs f1, 0x26f4(r3)
/* 805FB780  C0 03 26 DC */	lfs f0, 0x26dc(r3)
/* 805FB784  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FB788  FC 00 02 10 */	fabs f0, f0
/* 805FB78C  FC 00 00 18 */	frsp f0, f0
/* 805FB790  D0 03 27 0C */	stfs f0, 0x270c(r3)
/* 805FB794  3C 80 80 60 */	lis r4, lit_3835@ha /* 0x80602678@ha */
/* 805FB798  C0 04 26 78 */	lfs f0, lit_3835@l(r4)  /* 0x80602678@l */
/* 805FB79C  D0 03 27 14 */	stfs f0, 0x2714(r3)
/* 805FB7A0  4E 80 00 20 */	blr 
