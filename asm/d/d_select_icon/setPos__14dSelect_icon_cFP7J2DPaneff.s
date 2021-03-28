lbl_80195B70:
/* 80195B70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80195B74  7C 08 02 A6 */	mflr r0
/* 80195B78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80195B7C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80195B80  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80195B84  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80195B88  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80195B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80195B90  7C 7F 1B 78 */	mr r31, r3
/* 80195B94  FF C0 08 90 */	fmr f30, f1
/* 80195B98  FF E0 10 90 */	fmr f31, f2
/* 80195B9C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 80195BA0  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80195BA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80195BA8  C0 42 A0 80 */	lfs f2, lit_3814(r2)
/* 80195BAC  EC 00 10 24 */	fdivs f0, f0, f2
/* 80195BB0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80195BB4  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 80195BB8  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 80195BBC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80195BC0  EC 00 10 24 */	fdivs f0, f0, f2
/* 80195BC4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80195BC8  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80195BCC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80195BD0  FC 40 08 90 */	fmr f2, f1
/* 80195BD4  48 0B EA 65 */	bl paneScale__8CPaneMgrFff
/* 80195BD8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80195BDC  80 63 00 04 */	lwz r3, 4(r3)
/* 80195BE0  D3 C3 00 D4 */	stfs f30, 0xd4(r3)
/* 80195BE4  D3 E3 00 D8 */	stfs f31, 0xd8(r3)
/* 80195BE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80195BEC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80195BF0  7D 89 03 A6 */	mtctr r12
/* 80195BF4  4E 80 04 21 */	bctrl 
/* 80195BF8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80195BFC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80195C00  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80195C04  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80195C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80195C0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80195C10  7C 08 03 A6 */	mtlr r0
/* 80195C14  38 21 00 30 */	addi r1, r1, 0x30
/* 80195C18  4E 80 00 20 */	blr 
