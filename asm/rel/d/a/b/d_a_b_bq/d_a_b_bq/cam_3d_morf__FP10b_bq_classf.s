lbl_805B6264:
/* 805B6264  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B6268  7C 08 02 A6 */	mflr r0
/* 805B626C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B6270  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805B6274  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805B6278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B627C  7C 7F 1B 78 */	mr r31, r3
/* 805B6280  FF E0 08 90 */	fmr f31, f1
/* 805B6284  38 7F 12 4C */	addi r3, r31, 0x124c
/* 805B6288  C0 3F 12 70 */	lfs f1, 0x1270(r31)
/* 805B628C  FC 40 F8 90 */	fmr f2, f31
/* 805B6290  C0 7F 12 88 */	lfs f3, 0x1288(r31)
/* 805B6294  C0 1F 12 9C */	lfs f0, 0x129c(r31)
/* 805B6298  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B629C  4B CB 97 A0 */	b cLib_addCalc2__FPffff
/* 805B62A0  38 7F 12 50 */	addi r3, r31, 0x1250
/* 805B62A4  C0 3F 12 74 */	lfs f1, 0x1274(r31)
/* 805B62A8  FC 40 F8 90 */	fmr f2, f31
/* 805B62AC  C0 7F 12 8C */	lfs f3, 0x128c(r31)
/* 805B62B0  C0 1F 12 9C */	lfs f0, 0x129c(r31)
/* 805B62B4  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B62B8  4B CB 97 84 */	b cLib_addCalc2__FPffff
/* 805B62BC  38 7F 12 54 */	addi r3, r31, 0x1254
/* 805B62C0  C0 3F 12 78 */	lfs f1, 0x1278(r31)
/* 805B62C4  FC 40 F8 90 */	fmr f2, f31
/* 805B62C8  C0 7F 12 90 */	lfs f3, 0x1290(r31)
/* 805B62CC  C0 1F 12 9C */	lfs f0, 0x129c(r31)
/* 805B62D0  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B62D4  4B CB 97 68 */	b cLib_addCalc2__FPffff
/* 805B62D8  38 7F 12 40 */	addi r3, r31, 0x1240
/* 805B62DC  C0 3F 12 58 */	lfs f1, 0x1258(r31)
/* 805B62E0  FC 40 F8 90 */	fmr f2, f31
/* 805B62E4  C0 7F 12 7C */	lfs f3, 0x127c(r31)
/* 805B62E8  C0 1F 12 9C */	lfs f0, 0x129c(r31)
/* 805B62EC  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B62F0  4B CB 97 4C */	b cLib_addCalc2__FPffff
/* 805B62F4  38 7F 12 44 */	addi r3, r31, 0x1244
/* 805B62F8  C0 3F 12 5C */	lfs f1, 0x125c(r31)
/* 805B62FC  FC 40 F8 90 */	fmr f2, f31
/* 805B6300  C0 7F 12 80 */	lfs f3, 0x1280(r31)
/* 805B6304  C0 1F 12 9C */	lfs f0, 0x129c(r31)
/* 805B6308  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B630C  4B CB 97 30 */	b cLib_addCalc2__FPffff
/* 805B6310  38 7F 12 48 */	addi r3, r31, 0x1248
/* 805B6314  C0 3F 12 60 */	lfs f1, 0x1260(r31)
/* 805B6318  FC 40 F8 90 */	fmr f2, f31
/* 805B631C  C0 7F 12 84 */	lfs f3, 0x1284(r31)
/* 805B6320  C0 1F 12 9C */	lfs f0, 0x129c(r31)
/* 805B6324  EC 63 00 32 */	fmuls f3, f3, f0
/* 805B6328  4B CB 97 14 */	b cLib_addCalc2__FPffff
/* 805B632C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805B6330  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805B6334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B6338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B633C  7C 08 03 A6 */	mtlr r0
/* 805B6340  38 21 00 20 */	addi r1, r1, 0x20
/* 805B6344  4E 80 00 20 */	blr 
