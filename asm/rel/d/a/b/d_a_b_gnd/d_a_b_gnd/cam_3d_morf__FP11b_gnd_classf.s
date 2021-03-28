lbl_805FB620:
/* 805FB620  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FB624  7C 08 02 A6 */	mflr r0
/* 805FB628  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FB62C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805FB630  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805FB634  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805FB638  7C 7F 1B 78 */	mr r31, r3
/* 805FB63C  FF E0 08 90 */	fmr f31, f1
/* 805FB640  38 7F 26 D4 */	addi r3, r31, 0x26d4
/* 805FB644  C0 3F 26 EC */	lfs f1, 0x26ec(r31)
/* 805FB648  FC 40 F8 90 */	fmr f2, f31
/* 805FB64C  C0 7F 27 04 */	lfs f3, 0x2704(r31)
/* 805FB650  C0 1F 27 14 */	lfs f0, 0x2714(r31)
/* 805FB654  EC 63 00 32 */	fmuls f3, f3, f0
/* 805FB658  4B C7 43 E4 */	b cLib_addCalc2__FPffff
/* 805FB65C  38 7F 26 D8 */	addi r3, r31, 0x26d8
/* 805FB660  C0 3F 26 F0 */	lfs f1, 0x26f0(r31)
/* 805FB664  FC 40 F8 90 */	fmr f2, f31
/* 805FB668  C0 7F 27 08 */	lfs f3, 0x2708(r31)
/* 805FB66C  C0 1F 27 14 */	lfs f0, 0x2714(r31)
/* 805FB670  EC 63 00 32 */	fmuls f3, f3, f0
/* 805FB674  4B C7 43 C8 */	b cLib_addCalc2__FPffff
/* 805FB678  38 7F 26 DC */	addi r3, r31, 0x26dc
/* 805FB67C  C0 3F 26 F4 */	lfs f1, 0x26f4(r31)
/* 805FB680  FC 40 F8 90 */	fmr f2, f31
/* 805FB684  C0 7F 27 0C */	lfs f3, 0x270c(r31)
/* 805FB688  C0 1F 27 14 */	lfs f0, 0x2714(r31)
/* 805FB68C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805FB690  4B C7 43 AC */	b cLib_addCalc2__FPffff
/* 805FB694  38 7F 26 C8 */	addi r3, r31, 0x26c8
/* 805FB698  C0 3F 26 E0 */	lfs f1, 0x26e0(r31)
/* 805FB69C  FC 40 F8 90 */	fmr f2, f31
/* 805FB6A0  C0 7F 26 F8 */	lfs f3, 0x26f8(r31)
/* 805FB6A4  C0 1F 27 14 */	lfs f0, 0x2714(r31)
/* 805FB6A8  EC 63 00 32 */	fmuls f3, f3, f0
/* 805FB6AC  4B C7 43 90 */	b cLib_addCalc2__FPffff
/* 805FB6B0  38 7F 26 CC */	addi r3, r31, 0x26cc
/* 805FB6B4  C0 3F 26 E4 */	lfs f1, 0x26e4(r31)
/* 805FB6B8  FC 40 F8 90 */	fmr f2, f31
/* 805FB6BC  C0 7F 26 FC */	lfs f3, 0x26fc(r31)
/* 805FB6C0  C0 1F 27 14 */	lfs f0, 0x2714(r31)
/* 805FB6C4  EC 63 00 32 */	fmuls f3, f3, f0
/* 805FB6C8  4B C7 43 74 */	b cLib_addCalc2__FPffff
/* 805FB6CC  38 7F 26 D0 */	addi r3, r31, 0x26d0
/* 805FB6D0  C0 3F 26 E8 */	lfs f1, 0x26e8(r31)
/* 805FB6D4  FC 40 F8 90 */	fmr f2, f31
/* 805FB6D8  C0 7F 27 00 */	lfs f3, 0x2700(r31)
/* 805FB6DC  C0 1F 27 14 */	lfs f0, 0x2714(r31)
/* 805FB6E0  EC 63 00 32 */	fmuls f3, f3, f0
/* 805FB6E4  4B C7 43 58 */	b cLib_addCalc2__FPffff
/* 805FB6E8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805FB6EC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805FB6F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805FB6F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FB6F8  7C 08 03 A6 */	mtlr r0
/* 805FB6FC  38 21 00 20 */	addi r1, r1, 0x20
/* 805FB700  4E 80 00 20 */	blr 
