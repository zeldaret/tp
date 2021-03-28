lbl_802F7540:
/* 802F7540  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 802F7544  7C 08 02 A6 */	mflr r0
/* 802F7548  90 01 01 74 */	stw r0, 0x174(r1)
/* 802F754C  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 802F7550  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 802F7554  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 802F7558  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 802F755C  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 802F7560  F3 A1 01 48 */	psq_st f29, 328(r1), 0, 0 /* qr0 */
/* 802F7564  DB 81 01 30 */	stfd f28, 0x130(r1)
/* 802F7568  F3 81 01 38 */	psq_st f28, 312(r1), 0, 0 /* qr0 */
/* 802F756C  93 E1 01 2C */	stw r31, 0x12c(r1)
/* 802F7570  7C 7F 1B 78 */	mr r31, r3
/* 802F7574  FF 80 08 90 */	fmr f28, f1
/* 802F7578  FF A0 10 90 */	fmr f29, f2
/* 802F757C  C0 03 00 C4 */	lfs f0, 0xc4(r3)
/* 802F7580  EF E0 18 28 */	fsubs f31, f0, f3
/* 802F7584  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 802F7588  EF C0 20 28 */	fsubs f30, f0, f4
/* 802F758C  38 61 00 38 */	addi r3, r1, 0x38
/* 802F7590  FC 20 F8 50 */	fneg f1, f31
/* 802F7594  FC 40 F0 50 */	fneg f2, f30
/* 802F7598  C0 62 C7 F0 */	lfs f3, lit_1469(r2)
/* 802F759C  48 04 F3 4D */	bl PSMTXTrans
/* 802F75A0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 802F75A4  38 80 00 78 */	li r4, 0x78
/* 802F75A8  C0 22 C8 0C */	lfs f1, lit_2466(r2)
/* 802F75AC  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 802F75B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 802F75B4  48 04 F0 F5 */	bl PSMTXRotRad
/* 802F75B8  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802F75BC  38 80 00 79 */	li r4, 0x79
/* 802F75C0  C0 22 C8 0C */	lfs f1, lit_2466(r2)
/* 802F75C4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 802F75C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 802F75CC  48 04 F0 DD */	bl PSMTXRotRad
/* 802F75D0  38 61 00 98 */	addi r3, r1, 0x98
/* 802F75D4  38 80 00 7A */	li r4, 0x7a
/* 802F75D8  C0 22 C8 0C */	lfs f1, lit_2466(r2)
/* 802F75DC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 802F75E0  FC 00 00 50 */	fneg f0, f0
/* 802F75E4  EC 21 00 32 */	fmuls f1, f1, f0
/* 802F75E8  48 04 F0 C1 */	bl PSMTXRotRad
/* 802F75EC  38 61 00 98 */	addi r3, r1, 0x98
/* 802F75F0  38 81 00 F8 */	addi r4, r1, 0xf8
/* 802F75F4  38 A1 00 08 */	addi r5, r1, 8
/* 802F75F8  48 04 EE ED */	bl PSMTXConcat
/* 802F75FC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802F7600  38 81 00 08 */	addi r4, r1, 8
/* 802F7604  38 A1 00 68 */	addi r5, r1, 0x68
/* 802F7608  48 04 EE DD */	bl PSMTXConcat
/* 802F760C  38 61 00 38 */	addi r3, r1, 0x38
/* 802F7610  38 9F 00 50 */	addi r4, r31, 0x50
/* 802F7614  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 802F7618  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 802F761C  C0 62 C7 F4 */	lfs f3, lit_1489(r2)
/* 802F7620  48 04 F3 71 */	bl PSMTXScaleApply
/* 802F7624  38 61 00 68 */	addi r3, r1, 0x68
/* 802F7628  38 9F 00 50 */	addi r4, r31, 0x50
/* 802F762C  38 A1 00 08 */	addi r5, r1, 8
/* 802F7630  48 04 EE B5 */	bl PSMTXConcat
/* 802F7634  38 61 00 08 */	addi r3, r1, 8
/* 802F7638  38 9F 00 50 */	addi r4, r31, 0x50
/* 802F763C  EC 3C F8 2A */	fadds f1, f28, f31
/* 802F7640  EC 5D F0 2A */	fadds f2, f29, f30
/* 802F7644  C0 62 C7 F0 */	lfs f3, lit_1469(r2)
/* 802F7648  48 04 F2 D5 */	bl PSMTXTransApply
/* 802F764C  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 802F7650  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 802F7654  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 802F7658  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 802F765C  E3 A1 01 48 */	psq_l f29, 328(r1), 0, 0 /* qr0 */
/* 802F7660  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 802F7664  E3 81 01 38 */	psq_l f28, 312(r1), 0, 0 /* qr0 */
/* 802F7668  CB 81 01 30 */	lfd f28, 0x130(r1)
/* 802F766C  83 E1 01 2C */	lwz r31, 0x12c(r1)
/* 802F7670  80 01 01 74 */	lwz r0, 0x174(r1)
/* 802F7674  7C 08 03 A6 */	mtlr r0
/* 802F7678  38 21 01 70 */	addi r1, r1, 0x170
/* 802F767C  4E 80 00 20 */	blr 
