lbl_806C4E28:
/* 806C4E28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C4E2C  7C 08 02 A6 */	mflr r0
/* 806C4E30  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C4E34  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 806C4E38  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 806C4E3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C4E40  7C 7F 1B 78 */	mr r31, r3
/* 806C4E44  FF E0 08 90 */	fmr f31, f1
/* 806C4E48  38 7F 0E A0 */	addi r3, r31, 0xea0
/* 806C4E4C  C0 3F 0E B8 */	lfs f1, 0xeb8(r31)
/* 806C4E50  FC 40 F8 90 */	fmr f2, f31
/* 806C4E54  C0 7F 0E D0 */	lfs f3, 0xed0(r31)
/* 806C4E58  C0 1F 0E E4 */	lfs f0, 0xee4(r31)
/* 806C4E5C  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C4E60  4B BA AB DC */	b cLib_addCalc2__FPffff
/* 806C4E64  38 7F 0E A4 */	addi r3, r31, 0xea4
/* 806C4E68  C0 3F 0E BC */	lfs f1, 0xebc(r31)
/* 806C4E6C  FC 40 F8 90 */	fmr f2, f31
/* 806C4E70  C0 7F 0E D4 */	lfs f3, 0xed4(r31)
/* 806C4E74  C0 1F 0E E4 */	lfs f0, 0xee4(r31)
/* 806C4E78  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C4E7C  4B BA AB C0 */	b cLib_addCalc2__FPffff
/* 806C4E80  38 7F 0E A8 */	addi r3, r31, 0xea8
/* 806C4E84  C0 3F 0E C0 */	lfs f1, 0xec0(r31)
/* 806C4E88  FC 40 F8 90 */	fmr f2, f31
/* 806C4E8C  C0 7F 0E D8 */	lfs f3, 0xed8(r31)
/* 806C4E90  C0 1F 0E E4 */	lfs f0, 0xee4(r31)
/* 806C4E94  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C4E98  4B BA AB A4 */	b cLib_addCalc2__FPffff
/* 806C4E9C  38 7F 0E 94 */	addi r3, r31, 0xe94
/* 806C4EA0  C0 3F 0E AC */	lfs f1, 0xeac(r31)
/* 806C4EA4  FC 40 F8 90 */	fmr f2, f31
/* 806C4EA8  C0 7F 0E C4 */	lfs f3, 0xec4(r31)
/* 806C4EAC  C0 1F 0E E4 */	lfs f0, 0xee4(r31)
/* 806C4EB0  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C4EB4  4B BA AB 88 */	b cLib_addCalc2__FPffff
/* 806C4EB8  38 7F 0E 98 */	addi r3, r31, 0xe98
/* 806C4EBC  C0 3F 0E B0 */	lfs f1, 0xeb0(r31)
/* 806C4EC0  FC 40 F8 90 */	fmr f2, f31
/* 806C4EC4  C0 7F 0E C8 */	lfs f3, 0xec8(r31)
/* 806C4EC8  C0 1F 0E E4 */	lfs f0, 0xee4(r31)
/* 806C4ECC  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C4ED0  4B BA AB 6C */	b cLib_addCalc2__FPffff
/* 806C4ED4  38 7F 0E 9C */	addi r3, r31, 0xe9c
/* 806C4ED8  C0 3F 0E B4 */	lfs f1, 0xeb4(r31)
/* 806C4EDC  FC 40 F8 90 */	fmr f2, f31
/* 806C4EE0  C0 7F 0E CC */	lfs f3, 0xecc(r31)
/* 806C4EE4  C0 1F 0E E4 */	lfs f0, 0xee4(r31)
/* 806C4EE8  EC 63 00 32 */	fmuls f3, f3, f0
/* 806C4EEC  4B BA AB 50 */	b cLib_addCalc2__FPffff
/* 806C4EF0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 806C4EF4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 806C4EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C4EFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C4F00  7C 08 03 A6 */	mtlr r0
/* 806C4F04  38 21 00 20 */	addi r1, r1, 0x20
/* 806C4F08  4E 80 00 20 */	blr 
