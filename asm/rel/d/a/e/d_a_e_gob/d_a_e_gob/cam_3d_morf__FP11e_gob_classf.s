lbl_806DC4F0:
/* 806DC4F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806DC4F4  7C 08 02 A6 */	mflr r0
/* 806DC4F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DC4FC  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 806DC500  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 806DC504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DC508  7C 7F 1B 78 */	mr r31, r3
/* 806DC50C  FF E0 08 90 */	fmr f31, f1
/* 806DC510  38 7F 0D 48 */	addi r3, r31, 0xd48
/* 806DC514  C0 3F 0D 60 */	lfs f1, 0xd60(r31)
/* 806DC518  FC 40 F8 90 */	fmr f2, f31
/* 806DC51C  C0 7F 0D 78 */	lfs f3, 0xd78(r31)
/* 806DC520  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 806DC524  EC 63 00 32 */	fmuls f3, f3, f0
/* 806DC528  4B B9 35 14 */	b cLib_addCalc2__FPffff
/* 806DC52C  38 7F 0D 4C */	addi r3, r31, 0xd4c
/* 806DC530  C0 3F 0D 64 */	lfs f1, 0xd64(r31)
/* 806DC534  FC 40 F8 90 */	fmr f2, f31
/* 806DC538  C0 7F 0D 7C */	lfs f3, 0xd7c(r31)
/* 806DC53C  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 806DC540  EC 63 00 32 */	fmuls f3, f3, f0
/* 806DC544  4B B9 34 F8 */	b cLib_addCalc2__FPffff
/* 806DC548  38 7F 0D 50 */	addi r3, r31, 0xd50
/* 806DC54C  C0 3F 0D 68 */	lfs f1, 0xd68(r31)
/* 806DC550  FC 40 F8 90 */	fmr f2, f31
/* 806DC554  C0 7F 0D 80 */	lfs f3, 0xd80(r31)
/* 806DC558  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 806DC55C  EC 63 00 32 */	fmuls f3, f3, f0
/* 806DC560  4B B9 34 DC */	b cLib_addCalc2__FPffff
/* 806DC564  38 7F 0D 3C */	addi r3, r31, 0xd3c
/* 806DC568  C0 3F 0D 54 */	lfs f1, 0xd54(r31)
/* 806DC56C  FC 40 F8 90 */	fmr f2, f31
/* 806DC570  C0 7F 0D 6C */	lfs f3, 0xd6c(r31)
/* 806DC574  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 806DC578  EC 63 00 32 */	fmuls f3, f3, f0
/* 806DC57C  4B B9 34 C0 */	b cLib_addCalc2__FPffff
/* 806DC580  38 7F 0D 40 */	addi r3, r31, 0xd40
/* 806DC584  C0 3F 0D 58 */	lfs f1, 0xd58(r31)
/* 806DC588  FC 40 F8 90 */	fmr f2, f31
/* 806DC58C  C0 7F 0D 70 */	lfs f3, 0xd70(r31)
/* 806DC590  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 806DC594  EC 63 00 32 */	fmuls f3, f3, f0
/* 806DC598  4B B9 34 A4 */	b cLib_addCalc2__FPffff
/* 806DC59C  38 7F 0D 44 */	addi r3, r31, 0xd44
/* 806DC5A0  C0 3F 0D 5C */	lfs f1, 0xd5c(r31)
/* 806DC5A4  FC 40 F8 90 */	fmr f2, f31
/* 806DC5A8  C0 7F 0D 74 */	lfs f3, 0xd74(r31)
/* 806DC5AC  C0 1F 0D 88 */	lfs f0, 0xd88(r31)
/* 806DC5B0  EC 63 00 32 */	fmuls f3, f3, f0
/* 806DC5B4  4B B9 34 88 */	b cLib_addCalc2__FPffff
/* 806DC5B8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 806DC5BC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 806DC5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DC5C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806DC5C8  7C 08 03 A6 */	mtlr r0
/* 806DC5CC  38 21 00 20 */	addi r1, r1, 0x20
/* 806DC5D0  4E 80 00 20 */	blr 
