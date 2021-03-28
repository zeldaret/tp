lbl_80737574:
/* 80737574  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80737578  7C 08 02 A6 */	mflr r0
/* 8073757C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80737580  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80737584  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80737588  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8073758C  7C 9F 23 78 */	mr r31, r4
/* 80737590  FF E0 08 90 */	fmr f31, f1
/* 80737594  3C 60 80 74 */	lis r3, lit_4149@ha
/* 80737598  C0 23 9D C4 */	lfs f1, lit_4149@l(r3)
/* 8073759C  4B B3 03 F0 */	b cM_rndFX__Ff
/* 807375A0  FC 00 08 1E */	fctiwz f0, f1
/* 807375A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 807375A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807375AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807375B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807375B4  4B 8D 4E 28 */	b mDoMtx_YrotS__FPA4_fs
/* 807375B8  3C 60 80 74 */	lis r3, lit_4149@ha
/* 807375BC  C0 23 9D C4 */	lfs f1, lit_4149@l(r3)
/* 807375C0  4B B3 03 CC */	b cM_rndFX__Ff
/* 807375C4  FC 00 08 1E */	fctiwz f0, f1
/* 807375C8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807375CC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807375D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807375D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807375D8  4B 8D 4D C4 */	b mDoMtx_XrotM__FPA4_fs
/* 807375DC  3C 60 80 74 */	lis r3, lit_3985@ha
/* 807375E0  C0 23 9D 90 */	lfs f1, lit_3985@l(r3)
/* 807375E4  FC 40 08 90 */	fmr f2, f1
/* 807375E8  FC 60 F8 90 */	fmr f3, f31
/* 807375EC  4B 8D 57 B0 */	b transM__14mDoMtx_stack_cFfff
/* 807375F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807375F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807375F8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807375FC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80737600  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80737604  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80737608  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8073760C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80737610  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80737614  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80737618  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8073761C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80737620  7C 08 03 A6 */	mtlr r0
/* 80737624  38 21 00 30 */	addi r1, r1, 0x30
/* 80737628  4E 80 00 20 */	blr 
