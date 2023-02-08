lbl_802FB1D8:
/* 802FB1D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802FB1DC  7C 08 02 A6 */	mflr r0
/* 802FB1E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 802FB1E4  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 802FB1E8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 802FB1EC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FB1F0  7C 7F 1B 78 */	mr r31, r3
/* 802FB1F4  FF C0 08 90 */	fmr f30, f1
/* 802FB1F8  FF E0 10 90 */	fmr f31, f2
/* 802FB1FC  38 61 00 08 */	addi r3, r1, 8
/* 802FB200  48 04 B2 85 */	bl PSMTXIdentity
/* 802FB204  7F E3 FB 78 */	mr r3, r31
/* 802FB208  FC 20 F0 90 */	fmr f1, f30
/* 802FB20C  FC 40 F8 90 */	fmr f2, f31
/* 802FB210  38 81 00 08 */	addi r4, r1, 8
/* 802FB214  81 9F 00 00 */	lwz r12, 0(r31)
/* 802FB218  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802FB21C  7D 89 03 A6 */	mtctr r12
/* 802FB220  4E 80 04 21 */	bctrl 
/* 802FB224  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 802FB228  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 802FB22C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FB230  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802FB234  7C 08 03 A6 */	mtlr r0
/* 802FB238  38 21 00 50 */	addi r1, r1, 0x50
/* 802FB23C  4E 80 00 20 */	blr 
