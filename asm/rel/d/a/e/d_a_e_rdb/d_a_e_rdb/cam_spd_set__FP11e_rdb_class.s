lbl_80767DB4:
/* 80767DB4  C0 23 10 C4 */	lfs f1, 0x10c4(r3)
/* 80767DB8  C0 03 10 AC */	lfs f0, 0x10ac(r3)
/* 80767DBC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80767DC0  FC 00 02 10 */	fabs f0, f0
/* 80767DC4  FC 00 00 18 */	frsp f0, f0
/* 80767DC8  D0 03 10 DC */	stfs f0, 0x10dc(r3)
/* 80767DCC  C0 23 10 C8 */	lfs f1, 0x10c8(r3)
/* 80767DD0  C0 03 10 B0 */	lfs f0, 0x10b0(r3)
/* 80767DD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80767DD8  FC 00 02 10 */	fabs f0, f0
/* 80767DDC  FC 00 00 18 */	frsp f0, f0
/* 80767DE0  D0 03 10 E0 */	stfs f0, 0x10e0(r3)
/* 80767DE4  C0 23 10 CC */	lfs f1, 0x10cc(r3)
/* 80767DE8  C0 03 10 B4 */	lfs f0, 0x10b4(r3)
/* 80767DEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80767DF0  FC 00 02 10 */	fabs f0, f0
/* 80767DF4  FC 00 00 18 */	frsp f0, f0
/* 80767DF8  D0 03 10 E4 */	stfs f0, 0x10e4(r3)
/* 80767DFC  C0 23 10 D0 */	lfs f1, 0x10d0(r3)
/* 80767E00  C0 03 10 B8 */	lfs f0, 0x10b8(r3)
/* 80767E04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80767E08  FC 00 02 10 */	fabs f0, f0
/* 80767E0C  FC 00 00 18 */	frsp f0, f0
/* 80767E10  D0 03 10 E8 */	stfs f0, 0x10e8(r3)
/* 80767E14  C0 23 10 D4 */	lfs f1, 0x10d4(r3)
/* 80767E18  C0 03 10 BC */	lfs f0, 0x10bc(r3)
/* 80767E1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80767E20  FC 00 02 10 */	fabs f0, f0
/* 80767E24  FC 00 00 18 */	frsp f0, f0
/* 80767E28  D0 03 10 EC */	stfs f0, 0x10ec(r3)
/* 80767E2C  C0 23 10 D8 */	lfs f1, 0x10d8(r3)
/* 80767E30  C0 03 10 C0 */	lfs f0, 0x10c0(r3)
/* 80767E34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80767E38  FC 00 02 10 */	fabs f0, f0
/* 80767E3C  FC 00 00 18 */	frsp f0, f0
/* 80767E40  D0 03 10 F0 */	stfs f0, 0x10f0(r3)
/* 80767E44  3C 80 80 77 */	lis r4, lit_4008@ha /* 0x8076B460@ha */
/* 80767E48  C0 04 B4 60 */	lfs f0, lit_4008@l(r4)  /* 0x8076B460@l */
/* 80767E4C  D0 03 10 F8 */	stfs f0, 0x10f8(r3)
/* 80767E50  4E 80 00 20 */	blr 
