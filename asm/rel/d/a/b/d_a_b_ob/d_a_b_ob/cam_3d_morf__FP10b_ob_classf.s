lbl_806158E0:
/* 806158E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806158E4  7C 08 02 A6 */	mflr r0
/* 806158E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806158EC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 806158F0  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 806158F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806158F8  7C 7F 1B 78 */	mr r31, r3
/* 806158FC  FF E0 08 90 */	fmr f31, f1
/* 80615900  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80615904  C0 3F 5C A8 */	lfs f1, 0x5ca8(r31)
/* 80615908  FC 40 F8 90 */	fmr f2, f31
/* 8061590C  C0 7F 5C C0 */	lfs f3, 0x5cc0(r31)
/* 80615910  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615914  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615918  4B C5 A1 25 */	bl cLib_addCalc2__FPffff
/* 8061591C  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 80615920  C0 3F 5C AC */	lfs f1, 0x5cac(r31)
/* 80615924  FC 40 F8 90 */	fmr f2, f31
/* 80615928  C0 7F 5C C4 */	lfs f3, 0x5cc4(r31)
/* 8061592C  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615930  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615934  4B C5 A1 09 */	bl cLib_addCalc2__FPffff
/* 80615938  38 7F 5C 98 */	addi r3, r31, 0x5c98
/* 8061593C  C0 3F 5C B0 */	lfs f1, 0x5cb0(r31)
/* 80615940  FC 40 F8 90 */	fmr f2, f31
/* 80615944  C0 7F 5C C8 */	lfs f3, 0x5cc8(r31)
/* 80615948  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 8061594C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615950  4B C5 A0 ED */	bl cLib_addCalc2__FPffff
/* 80615954  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80615958  C0 3F 5C 9C */	lfs f1, 0x5c9c(r31)
/* 8061595C  FC 40 F8 90 */	fmr f2, f31
/* 80615960  C0 7F 5C B4 */	lfs f3, 0x5cb4(r31)
/* 80615964  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615968  EC 63 00 32 */	fmuls f3, f3, f0
/* 8061596C  4B C5 A0 D1 */	bl cLib_addCalc2__FPffff
/* 80615970  38 7F 5C 88 */	addi r3, r31, 0x5c88
/* 80615974  C0 3F 5C A0 */	lfs f1, 0x5ca0(r31)
/* 80615978  FC 40 F8 90 */	fmr f2, f31
/* 8061597C  C0 7F 5C B8 */	lfs f3, 0x5cb8(r31)
/* 80615980  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615984  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615988  4B C5 A0 B5 */	bl cLib_addCalc2__FPffff
/* 8061598C  38 7F 5C 8C */	addi r3, r31, 0x5c8c
/* 80615990  C0 3F 5C A4 */	lfs f1, 0x5ca4(r31)
/* 80615994  FC 40 F8 90 */	fmr f2, f31
/* 80615998  C0 7F 5C BC */	lfs f3, 0x5cbc(r31)
/* 8061599C  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 806159A0  EC 63 00 32 */	fmuls f3, f3, f0
/* 806159A4  4B C5 A0 99 */	bl cLib_addCalc2__FPffff
/* 806159A8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 806159AC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 806159B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806159B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806159B8  7C 08 03 A6 */	mtlr r0
/* 806159BC  38 21 00 20 */	addi r1, r1, 0x20
/* 806159C0  4E 80 00 20 */	blr 
