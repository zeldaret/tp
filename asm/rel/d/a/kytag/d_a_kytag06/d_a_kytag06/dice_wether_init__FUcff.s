lbl_8085786C:
/* 8085786C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80857870  7C 08 02 A6 */	mflr r0
/* 80857874  90 01 00 44 */	stw r0, 0x44(r1)
/* 80857878  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8085787C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80857880  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80857884  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80857888  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 8085788C  F3 A1 00 18 */	psq_st f29, 24(r1), 0, 0 /* qr0 */
/* 80857890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80857894  FF A0 08 90 */	fmr f29, f1
/* 80857898  FF C0 10 90 */	fmr f30, f2
/* 8085789C  3C 80 80 43 */	lis r4, g_env_light@ha
/* 808578A0  3B E4 CA 54 */	addi r31, r4, g_env_light@l
/* 808578A4  98 7F 12 C9 */	stb r3, 0x12c9(r31)
/* 808578A8  4B A1 00 AC */	b cM_rndF__Ff
/* 808578AC  FF E0 08 90 */	fmr f31, f1
/* 808578B0  FC 20 E8 90 */	fmr f1, f29
/* 808578B4  4B A1 00 A0 */	b cM_rndF__Ff
/* 808578B8  EC 1E E8 2A */	fadds f0, f30, f29
/* 808578BC  EC 00 08 2A */	fadds f0, f0, f1
/* 808578C0  EC 20 F8 2A */	fadds f1, f0, f31
/* 808578C4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 808578C8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 808578CC  D0 23 11 D8 */	stfs f1, 0x11d8(r3)
/* 808578D0  3C 60 80 86 */	lis r3, lit_3740@ha
/* 808578D4  C0 03 9E 78 */	lfs f0, lit_3740@l(r3)
/* 808578D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808578DC  4C 41 13 82 */	cror 2, 1, 2
/* 808578E0  40 82 00 0C */	bne lbl_808578EC
/* 808578E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 808578E8  D0 1F 11 D8 */	stfs f0, 0x11d8(r31)
lbl_808578EC:
/* 808578EC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 808578F0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 808578F4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 808578F8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 808578FC  E3 A1 00 18 */	psq_l f29, 24(r1), 0, 0 /* qr0 */
/* 80857900  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 80857904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80857908  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8085790C  7C 08 03 A6 */	mtlr r0
/* 80857910  38 21 00 40 */	addi r1, r1, 0x40
/* 80857914  4E 80 00 20 */	blr 
