lbl_802E96D0:
/* 802E96D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802E96D4  7C 08 02 A6 */	mflr r0
/* 802E96D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802E96DC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 802E96E0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 802E96E4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 802E96E8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 802E96EC  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 802E96F0  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 802E96F4  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 802E96F8  F3 81 00 28 */	psq_st f28, 40(r1), 0, 0 /* qr0 */
/* 802E96FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E9700  7C 7F 1B 78 */	mr r31, r3
/* 802E9704  FF 80 18 90 */	fmr f28, f3
/* 802E9708  FF A0 20 90 */	fmr f29, f4
/* 802E970C  FF C0 28 90 */	fmr f30, f5
/* 802E9710  FF E0 30 90 */	fmr f31, f6
/* 802E9714  4B FF F3 F5 */	bl __ct__14J2DGrafContextFffff
/* 802E9718  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 802E971C  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 802E9720  90 1F 00 00 */	stw r0, 0(r31)
/* 802E9724  C0 02 C7 60 */	lfs f0, lit_522(r2)
/* 802E9728  D0 01 00 08 */	stfs f0, 8(r1)
/* 802E972C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802E9730  D3 81 00 10 */	stfs f28, 0x10(r1)
/* 802E9734  D3 A1 00 14 */	stfs f29, 0x14(r1)
/* 802E9738  80 61 00 08 */	lwz r3, 8(r1)
/* 802E973C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E9740  90 7F 00 BC */	stw r3, 0xbc(r31)
/* 802E9744  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 802E9748  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802E974C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9750  90 7F 00 C4 */	stw r3, 0xc4(r31)
/* 802E9754  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 802E9758  FC 00 F8 50 */	fneg f0, f31
/* 802E975C  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 802E9760  FC 00 F0 50 */	fneg f0, f30
/* 802E9764  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 802E9768  7F E3 FB 78 */	mr r3, r31
/* 802E976C  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E9770  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802E9774  7D 89 03 A6 */	mtctr r12
/* 802E9778  4E 80 04 21 */	bctrl 
/* 802E977C  7F E3 FB 78 */	mr r3, r31
/* 802E9780  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 802E9784  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802E9788  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 802E978C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 802E9790  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 802E9794  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 802E9798  E3 81 00 28 */	psq_l f28, 40(r1), 0, 0 /* qr0 */
/* 802E979C  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 802E97A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E97A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802E97A8  7C 08 03 A6 */	mtlr r0
/* 802E97AC  38 21 00 60 */	addi r1, r1, 0x60
/* 802E97B0  4E 80 00 20 */	blr 
