lbl_805F053C:
/* 805F053C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F0540  7C 08 02 A6 */	mflr r0
/* 805F0544  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F0548  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805F054C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805F0550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F0554  7C 7F 1B 78 */	mr r31, r3
/* 805F0558  FF E0 08 90 */	fmr f31, f1
/* 805F055C  38 7F 1C 9C */	addi r3, r31, 0x1c9c
/* 805F0560  C0 3F 1C B4 */	lfs f1, 0x1cb4(r31)
/* 805F0564  FC 40 F8 90 */	fmr f2, f31
/* 805F0568  C0 7F 1C CC */	lfs f3, 0x1ccc(r31)
/* 805F056C  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F0570  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F0574  4B C7 F4 C8 */	b cLib_addCalc2__FPffff
/* 805F0578  38 7F 1C A0 */	addi r3, r31, 0x1ca0
/* 805F057C  C0 3F 1C B8 */	lfs f1, 0x1cb8(r31)
/* 805F0580  FC 40 F8 90 */	fmr f2, f31
/* 805F0584  C0 7F 1C D0 */	lfs f3, 0x1cd0(r31)
/* 805F0588  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F058C  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F0590  4B C7 F4 AC */	b cLib_addCalc2__FPffff
/* 805F0594  38 7F 1C A4 */	addi r3, r31, 0x1ca4
/* 805F0598  C0 3F 1C BC */	lfs f1, 0x1cbc(r31)
/* 805F059C  FC 40 F8 90 */	fmr f2, f31
/* 805F05A0  C0 7F 1C D4 */	lfs f3, 0x1cd4(r31)
/* 805F05A4  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F05A8  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F05AC  4B C7 F4 90 */	b cLib_addCalc2__FPffff
/* 805F05B0  38 7F 1C 90 */	addi r3, r31, 0x1c90
/* 805F05B4  C0 3F 1C A8 */	lfs f1, 0x1ca8(r31)
/* 805F05B8  FC 40 F8 90 */	fmr f2, f31
/* 805F05BC  C0 7F 1C C0 */	lfs f3, 0x1cc0(r31)
/* 805F05C0  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F05C4  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F05C8  4B C7 F4 74 */	b cLib_addCalc2__FPffff
/* 805F05CC  38 7F 1C 94 */	addi r3, r31, 0x1c94
/* 805F05D0  C0 3F 1C AC */	lfs f1, 0x1cac(r31)
/* 805F05D4  FC 40 F8 90 */	fmr f2, f31
/* 805F05D8  C0 7F 1C C4 */	lfs f3, 0x1cc4(r31)
/* 805F05DC  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F05E0  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F05E4  4B C7 F4 58 */	b cLib_addCalc2__FPffff
/* 805F05E8  38 7F 1C 98 */	addi r3, r31, 0x1c98
/* 805F05EC  C0 3F 1C B0 */	lfs f1, 0x1cb0(r31)
/* 805F05F0  FC 40 F8 90 */	fmr f2, f31
/* 805F05F4  C0 7F 1C C8 */	lfs f3, 0x1cc8(r31)
/* 805F05F8  C0 1F 1C DC */	lfs f0, 0x1cdc(r31)
/* 805F05FC  EC 63 00 32 */	fmuls f3, f3, f0
/* 805F0600  4B C7 F4 3C */	b cLib_addCalc2__FPffff
/* 805F0604  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805F0608  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805F060C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F0610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F0614  7C 08 03 A6 */	mtlr r0
/* 805F0618  38 21 00 20 */	addi r1, r1, 0x20
/* 805F061C  4E 80 00 20 */	blr 
