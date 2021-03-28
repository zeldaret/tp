lbl_804F20F4:
/* 804F20F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F20F8  7C 08 02 A6 */	mflr r0
/* 804F20FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F2100  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804F2104  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804F2108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F210C  7C 7F 1B 78 */	mr r31, r3
/* 804F2110  FF E0 08 90 */	fmr f31, f1
/* 804F2114  3C 7F 00 02 */	addis r3, r31, 2
/* 804F2118  C0 23 B0 1C */	lfs f1, -0x4fe4(r3)
/* 804F211C  FC 40 F8 90 */	fmr f2, f31
/* 804F2120  C0 63 B0 34 */	lfs f3, -0x4fcc(r3)
/* 804F2124  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F2128  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F212C  38 63 B0 04 */	addi r3, r3, -20476
/* 804F2130  4B D7 D9 0C */	b cLib_addCalc2__FPffff
/* 804F2134  3C 7F 00 02 */	addis r3, r31, 2
/* 804F2138  C0 23 B0 20 */	lfs f1, -0x4fe0(r3)
/* 804F213C  FC 40 F8 90 */	fmr f2, f31
/* 804F2140  C0 63 B0 38 */	lfs f3, -0x4fc8(r3)
/* 804F2144  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F2148  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F214C  38 63 B0 08 */	addi r3, r3, -20472
/* 804F2150  4B D7 D8 EC */	b cLib_addCalc2__FPffff
/* 804F2154  3C 7F 00 02 */	addis r3, r31, 2
/* 804F2158  C0 23 B0 24 */	lfs f1, -0x4fdc(r3)
/* 804F215C  FC 40 F8 90 */	fmr f2, f31
/* 804F2160  C0 63 B0 3C */	lfs f3, -0x4fc4(r3)
/* 804F2164  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F2168  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F216C  38 63 B0 0C */	addi r3, r3, -20468
/* 804F2170  4B D7 D8 CC */	b cLib_addCalc2__FPffff
/* 804F2174  3C 7F 00 02 */	addis r3, r31, 2
/* 804F2178  C0 23 B0 10 */	lfs f1, -0x4ff0(r3)
/* 804F217C  FC 40 F8 90 */	fmr f2, f31
/* 804F2180  C0 63 B0 28 */	lfs f3, -0x4fd8(r3)
/* 804F2184  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F2188  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F218C  38 63 AF F8 */	addi r3, r3, -20488
/* 804F2190  4B D7 D8 AC */	b cLib_addCalc2__FPffff
/* 804F2194  3C 7F 00 02 */	addis r3, r31, 2
/* 804F2198  C0 23 B0 14 */	lfs f1, -0x4fec(r3)
/* 804F219C  FC 40 F8 90 */	fmr f2, f31
/* 804F21A0  C0 63 B0 2C */	lfs f3, -0x4fd4(r3)
/* 804F21A4  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F21A8  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F21AC  38 63 AF FC */	addi r3, r3, -20484
/* 804F21B0  4B D7 D8 8C */	b cLib_addCalc2__FPffff
/* 804F21B4  3C 7F 00 02 */	addis r3, r31, 2
/* 804F21B8  C0 23 B0 18 */	lfs f1, -0x4fe8(r3)
/* 804F21BC  FC 40 F8 90 */	fmr f2, f31
/* 804F21C0  C0 63 B0 30 */	lfs f3, -0x4fd0(r3)
/* 804F21C4  C0 03 B0 50 */	lfs f0, -0x4fb0(r3)
/* 804F21C8  EC 63 00 32 */	fmuls f3, f3, f0
/* 804F21CC  38 63 B0 00 */	addi r3, r3, -20480
/* 804F21D0  4B D7 D8 6C */	b cLib_addCalc2__FPffff
/* 804F21D4  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804F21D8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804F21DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F21E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F21E4  7C 08 03 A6 */	mtlr r0
/* 804F21E8  38 21 00 20 */	addi r1, r1, 0x20
/* 804F21EC  4E 80 00 20 */	blr 
