lbl_80717400:
/* 80717400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80717404  7C 08 02 A6 */	mflr r0
/* 80717408  90 01 00 24 */	stw r0, 0x24(r1)
/* 8071740C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80717410  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80717414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80717418  7C 7F 1B 78 */	mr r31, r3
/* 8071741C  FF E0 08 90 */	fmr f31, f1
/* 80717420  38 7F 0C 44 */	addi r3, r31, 0xc44
/* 80717424  C0 3F 0C 5C */	lfs f1, 0xc5c(r31)
/* 80717428  FC 40 F8 90 */	fmr f2, f31
/* 8071742C  C0 7F 0C 74 */	lfs f3, 0xc74(r31)
/* 80717430  C0 1F 0C 84 */	lfs f0, 0xc84(r31)
/* 80717434  EC 63 00 32 */	fmuls f3, f3, f0
/* 80717438  4B B5 86 04 */	b cLib_addCalc2__FPffff
/* 8071743C  38 7F 0C 48 */	addi r3, r31, 0xc48
/* 80717440  C0 3F 0C 60 */	lfs f1, 0xc60(r31)
/* 80717444  FC 40 F8 90 */	fmr f2, f31
/* 80717448  C0 7F 0C 78 */	lfs f3, 0xc78(r31)
/* 8071744C  C0 1F 0C 84 */	lfs f0, 0xc84(r31)
/* 80717450  EC 63 00 32 */	fmuls f3, f3, f0
/* 80717454  4B B5 85 E8 */	b cLib_addCalc2__FPffff
/* 80717458  38 7F 0C 4C */	addi r3, r31, 0xc4c
/* 8071745C  C0 3F 0C 64 */	lfs f1, 0xc64(r31)
/* 80717460  FC 40 F8 90 */	fmr f2, f31
/* 80717464  C0 7F 0C 7C */	lfs f3, 0xc7c(r31)
/* 80717468  C0 1F 0C 84 */	lfs f0, 0xc84(r31)
/* 8071746C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80717470  4B B5 85 CC */	b cLib_addCalc2__FPffff
/* 80717474  38 7F 0C 38 */	addi r3, r31, 0xc38
/* 80717478  C0 3F 0C 50 */	lfs f1, 0xc50(r31)
/* 8071747C  FC 40 F8 90 */	fmr f2, f31
/* 80717480  C0 7F 0C 68 */	lfs f3, 0xc68(r31)
/* 80717484  C0 1F 0C 84 */	lfs f0, 0xc84(r31)
/* 80717488  EC 63 00 32 */	fmuls f3, f3, f0
/* 8071748C  4B B5 85 B0 */	b cLib_addCalc2__FPffff
/* 80717490  38 7F 0C 3C */	addi r3, r31, 0xc3c
/* 80717494  C0 3F 0C 54 */	lfs f1, 0xc54(r31)
/* 80717498  FC 40 F8 90 */	fmr f2, f31
/* 8071749C  C0 7F 0C 6C */	lfs f3, 0xc6c(r31)
/* 807174A0  C0 1F 0C 84 */	lfs f0, 0xc84(r31)
/* 807174A4  EC 63 00 32 */	fmuls f3, f3, f0
/* 807174A8  4B B5 85 94 */	b cLib_addCalc2__FPffff
/* 807174AC  38 7F 0C 40 */	addi r3, r31, 0xc40
/* 807174B0  C0 3F 0C 58 */	lfs f1, 0xc58(r31)
/* 807174B4  FC 40 F8 90 */	fmr f2, f31
/* 807174B8  C0 7F 0C 70 */	lfs f3, 0xc70(r31)
/* 807174BC  C0 1F 0C 84 */	lfs f0, 0xc84(r31)
/* 807174C0  EC 63 00 32 */	fmuls f3, f3, f0
/* 807174C4  4B B5 85 78 */	b cLib_addCalc2__FPffff
/* 807174C8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 807174CC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 807174D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807174D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807174D8  7C 08 03 A6 */	mtlr r0
/* 807174DC  38 21 00 20 */	addi r1, r1, 0x20
/* 807174E0  4E 80 00 20 */	blr 
