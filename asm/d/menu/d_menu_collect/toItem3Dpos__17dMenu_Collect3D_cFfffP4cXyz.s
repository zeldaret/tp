lbl_801B7660:
/* 801B7660  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801B7664  7C 08 02 A6 */	mflr r0
/* 801B7668  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801B766C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801B7670  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 801B7674  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801B7678  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 801B767C  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 801B7680  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 801B7684  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801B7688  FF E0 18 90 */	fmr f31, f3
/* 801B768C  7C 7F 1B 78 */	mr r31, r3
/* 801B7690  C0 82 A5 A4 */	lfs f4, lit_7333(r2)
/* 801B7694  C0 02 A5 28 */	lfs f0, lit_4481(r2)
/* 801B7698  EC 21 00 28 */	fsubs f1, f1, f0
/* 801B769C  C0 02 A5 C4 */	lfs f0, lit_7944(r2)
/* 801B76A0  EC 01 00 24 */	fdivs f0, f1, f0
/* 801B76A4  EC 04 00 32 */	fmuls f0, f4, f0
/* 801B76A8  C0 62 A5 2C */	lfs f3, lit_4482(r2)
/* 801B76AC  EF A0 18 28 */	fsubs f29, f0, f3
/* 801B76B0  C0 02 A5 CC */	lfs f0, lit_7946(r2)
/* 801B76B4  EC 22 00 28 */	fsubs f1, f2, f0
/* 801B76B8  C0 02 A5 C8 */	lfs f0, lit_7945(r2)
/* 801B76BC  EC 01 00 24 */	fdivs f0, f1, f0
/* 801B76C0  EC 04 00 32 */	fmuls f0, f4, f0
/* 801B76C4  EF C0 18 28 */	fsubs f30, f0, f3
/* 801B76C8  38 61 00 44 */	addi r3, r1, 0x44
/* 801B76CC  48 00 00 81 */	bl calcViewMtx__17dMenu_Collect3D_cFPA4_f
/* 801B76D0  38 61 00 44 */	addi r3, r1, 0x44
/* 801B76D4  38 81 00 14 */	addi r4, r1, 0x14
/* 801B76D8  48 18 EE D9 */	bl PSMTXInverse
/* 801B76DC  C8 22 A5 E0 */	lfd f1, lit_7963(r2)
/* 801B76E0  48 1B 4F 89 */	bl tan
/* 801B76E4  FC 40 08 18 */	frsp f2, f1
/* 801B76E8  FC 60 F8 50 */	fneg f3, f31
/* 801B76EC  EC 3D 07 F2 */	fmuls f1, f29, f31
/* 801B76F0  C0 02 A5 D4 */	lfs f0, lit_7948(r2)
/* 801B76F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801B76F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801B76FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 801B7700  EC 1E 00 F2 */	fmuls f0, f30, f3
/* 801B7704  EC 02 00 32 */	fmuls f0, f2, f0
/* 801B7708  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801B770C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801B7710  38 61 00 14 */	addi r3, r1, 0x14
/* 801B7714  38 81 00 08 */	addi r4, r1, 8
/* 801B7718  7F E5 FB 78 */	mr r5, r31
/* 801B771C  48 18 F6 51 */	bl PSMTXMultVec
/* 801B7720  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 801B7724  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801B7728  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 801B772C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801B7730  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 801B7734  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 801B7738  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801B773C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801B7740  7C 08 03 A6 */	mtlr r0
/* 801B7744  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801B7748  4E 80 00 20 */	blr 
