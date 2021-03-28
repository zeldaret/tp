lbl_80AF6518:
/* 80AF6518  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF651C  7C 08 02 A6 */	mflr r0
/* 80AF6520  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF6524  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80AF6528  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80AF652C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF6530  7C 7F 1B 78 */	mr r31, r3
/* 80AF6534  FF E0 08 90 */	fmr f31, f1
/* 80AF6538  38 7F 09 FC */	addi r3, r31, 0x9fc
/* 80AF653C  C0 3F 0A 14 */	lfs f1, 0xa14(r31)
/* 80AF6540  FC 40 F8 90 */	fmr f2, f31
/* 80AF6544  C0 7F 0A 2C */	lfs f3, 0xa2c(r31)
/* 80AF6548  C0 1F 0A 3C */	lfs f0, 0xa3c(r31)
/* 80AF654C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80AF6550  4B 77 94 EC */	b cLib_addCalc2__FPffff
/* 80AF6554  38 7F 0A 00 */	addi r3, r31, 0xa00
/* 80AF6558  C0 3F 0A 18 */	lfs f1, 0xa18(r31)
/* 80AF655C  FC 40 F8 90 */	fmr f2, f31
/* 80AF6560  C0 7F 0A 30 */	lfs f3, 0xa30(r31)
/* 80AF6564  C0 1F 0A 3C */	lfs f0, 0xa3c(r31)
/* 80AF6568  EC 63 00 32 */	fmuls f3, f3, f0
/* 80AF656C  4B 77 94 D0 */	b cLib_addCalc2__FPffff
/* 80AF6570  38 7F 0A 04 */	addi r3, r31, 0xa04
/* 80AF6574  C0 3F 0A 1C */	lfs f1, 0xa1c(r31)
/* 80AF6578  FC 40 F8 90 */	fmr f2, f31
/* 80AF657C  C0 7F 0A 34 */	lfs f3, 0xa34(r31)
/* 80AF6580  C0 1F 0A 3C */	lfs f0, 0xa3c(r31)
/* 80AF6584  EC 63 00 32 */	fmuls f3, f3, f0
/* 80AF6588  4B 77 94 B4 */	b cLib_addCalc2__FPffff
/* 80AF658C  38 7F 09 F0 */	addi r3, r31, 0x9f0
/* 80AF6590  C0 3F 0A 08 */	lfs f1, 0xa08(r31)
/* 80AF6594  FC 40 F8 90 */	fmr f2, f31
/* 80AF6598  C0 7F 0A 20 */	lfs f3, 0xa20(r31)
/* 80AF659C  C0 1F 0A 3C */	lfs f0, 0xa3c(r31)
/* 80AF65A0  EC 63 00 32 */	fmuls f3, f3, f0
/* 80AF65A4  4B 77 94 98 */	b cLib_addCalc2__FPffff
/* 80AF65A8  38 7F 09 F4 */	addi r3, r31, 0x9f4
/* 80AF65AC  C0 3F 0A 0C */	lfs f1, 0xa0c(r31)
/* 80AF65B0  FC 40 F8 90 */	fmr f2, f31
/* 80AF65B4  C0 7F 0A 24 */	lfs f3, 0xa24(r31)
/* 80AF65B8  C0 1F 0A 3C */	lfs f0, 0xa3c(r31)
/* 80AF65BC  EC 63 00 32 */	fmuls f3, f3, f0
/* 80AF65C0  4B 77 94 7C */	b cLib_addCalc2__FPffff
/* 80AF65C4  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80AF65C8  C0 3F 0A 10 */	lfs f1, 0xa10(r31)
/* 80AF65CC  FC 40 F8 90 */	fmr f2, f31
/* 80AF65D0  C0 7F 0A 28 */	lfs f3, 0xa28(r31)
/* 80AF65D4  C0 1F 0A 3C */	lfs f0, 0xa3c(r31)
/* 80AF65D8  EC 63 00 32 */	fmuls f3, f3, f0
/* 80AF65DC  4B 77 94 60 */	b cLib_addCalc2__FPffff
/* 80AF65E0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80AF65E4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80AF65E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF65EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF65F0  7C 08 03 A6 */	mtlr r0
/* 80AF65F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF65F8  4E 80 00 20 */	blr 
