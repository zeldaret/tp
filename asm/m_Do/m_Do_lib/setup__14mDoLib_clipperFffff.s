lbl_8001528C:
/* 8001528C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80015290  7C 08 02 A6 */	mflr r0
/* 80015294  90 01 00 24 */	stw r0, 0x24(r1)
/* 80015298  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8001529C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 800152A0  FF E0 08 90 */	fmr f31, f1
/* 800152A4  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 800152A8  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l
/* 800152AC  D3 E3 00 4C */	stfs f31, 0x4c(r3)
/* 800152B0  D0 43 00 50 */	stfs f2, 0x50(r3)
/* 800152B4  D0 63 00 54 */	stfs f3, 0x54(r3)
/* 800152B8  D0 83 00 58 */	stfs f4, 0x58(r3)
/* 800152BC  D0 8D 86 F0 */	stfs f4, mSystemFar__14mDoLib_clipper(r13)
/* 800152C0  48 25 E4 CD */	bl calcViewFrustum__11J3DUClipperFv
/* 800152C4  C0 02 81 80 */	lfs f0, lit_3739(r2)
/* 800152C8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800152CC  FC 00 00 1E */	fctiwz f0, f0
/* 800152D0  D8 01 00 08 */	stfd f0, 8(r1)
/* 800152D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800152D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800152DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800152E0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800152E4  7C 64 02 14 */	add r3, r4, r0
/* 800152E8  C0 23 00 04 */	lfs f1, 4(r3)
/* 800152EC  7C 04 04 2E */	lfsx f0, r4, r0
/* 800152F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 800152F4  D0 0D 86 F4 */	stfs f0, mFovyRate__14mDoLib_clipper(r13)
/* 800152F8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 800152FC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80015300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015304  7C 08 03 A6 */	mtlr r0
/* 80015308  38 21 00 20 */	addi r1, r1, 0x20
/* 8001530C  4E 80 00 20 */	blr 
