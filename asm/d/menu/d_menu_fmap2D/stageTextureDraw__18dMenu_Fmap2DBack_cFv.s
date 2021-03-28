lbl_801D3094:
/* 801D3094  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801D3098  7C 08 02 A6 */	mflr r0
/* 801D309C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D30A0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801D30A4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 801D30A8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801D30AC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 801D30B0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 801D30B4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 801D30B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D30BC  7C 7F 1B 78 */	mr r31, r3
/* 801D30C0  88 03 12 2F */	lbz r0, 0x122f(r3)
/* 801D30C4  28 00 00 00 */	cmplwi r0, 0
/* 801D30C8  41 82 00 3C */	beq lbl_801D3104
/* 801D30CC  80 7F 0C D4 */	lwz r3, 0xcd4(r31)
/* 801D30D0  C0 22 A7 E4 */	lfs f1, lit_4201(r2)
/* 801D30D4  C0 1F 0F C4 */	lfs f0, 0xfc4(r31)
/* 801D30D8  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D30DC  C0 1F 11 D8 */	lfs f0, 0x11d8(r31)
/* 801D30E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D30E4  FC 00 00 1E */	fctiwz f0, f0
/* 801D30E8  D8 01 00 08 */	stfd f0, 8(r1)
/* 801D30EC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801D30F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801D30F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D30F8  7D 89 03 A6 */	mtctr r12
/* 801D30FC  4E 80 04 21 */	bctrl 
/* 801D3100  48 00 00 40 */	b lbl_801D3140
lbl_801D3104:
/* 801D3104  80 7F 0C D4 */	lwz r3, 0xcd4(r31)
/* 801D3108  C0 5F 11 D8 */	lfs f2, 0x11d8(r31)
/* 801D310C  C0 22 A7 E4 */	lfs f1, lit_4201(r2)
/* 801D3110  C0 1F 0F C4 */	lfs f0, 0xfc4(r31)
/* 801D3114  EC 21 00 32 */	fmuls f1, f1, f0
/* 801D3118  C0 1F 0F A8 */	lfs f0, 0xfa8(r31)
/* 801D311C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D3120  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D3124  FC 00 00 1E */	fctiwz f0, f0
/* 801D3128  D8 01 00 08 */	stfd f0, 8(r1)
/* 801D312C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801D3130  81 83 00 00 */	lwz r12, 0(r3)
/* 801D3134  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D3138  7D 89 03 A6 */	mtctr r12
/* 801D313C  4E 80 04 21 */	bctrl 
lbl_801D3140:
/* 801D3140  7F E3 FB 78 */	mr r3, r31
/* 801D3144  4B FF F8 55 */	bl getMapScissorAreaSizeRealY__18dMenu_Fmap2DBack_cFv
/* 801D3148  FF A0 08 90 */	fmr f29, f1
/* 801D314C  7F E3 FB 78 */	mr r3, r31
/* 801D3150  4B FF F7 11 */	bl getMapScissorAreaSizeRealX__18dMenu_Fmap2DBack_cFv
/* 801D3154  FF C0 08 90 */	fmr f30, f1
/* 801D3158  7F E3 FB 78 */	mr r3, r31
/* 801D315C  4B FF F6 35 */	bl getMapScissorAreaLY__18dMenu_Fmap2DBack_cFv
/* 801D3160  C0 1F 0F C0 */	lfs f0, 0xfc0(r31)
/* 801D3164  EF E0 08 2A */	fadds f31, f0, f1
/* 801D3168  7F E3 FB 78 */	mr r3, r31
/* 801D316C  4B FF F5 CD */	bl getMapScissorAreaLX__18dMenu_Fmap2DBack_cFv
/* 801D3170  C0 1F 0F BC */	lfs f0, 0xfbc(r31)
/* 801D3174  EC 20 08 2A */	fadds f1, f0, f1
/* 801D3178  80 7F 0C D4 */	lwz r3, 0xcd4(r31)
/* 801D317C  FC 40 F8 90 */	fmr f2, f31
/* 801D3180  FC 60 F0 90 */	fmr f3, f30
/* 801D3184  FC 80 E8 90 */	fmr f4, f29
/* 801D3188  38 80 00 00 */	li r4, 0
/* 801D318C  38 A0 00 00 */	li r5, 0
/* 801D3190  38 C0 00 00 */	li r6, 0
/* 801D3194  81 83 00 00 */	lwz r12, 0(r3)
/* 801D3198  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801D319C  7D 89 03 A6 */	mtctr r12
/* 801D31A0  4E 80 04 21 */	bctrl 
/* 801D31A4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 801D31A8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801D31AC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 801D31B0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801D31B4  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 801D31B8  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 801D31BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D31C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801D31C4  7C 08 03 A6 */	mtlr r0
/* 801D31C8  38 21 00 50 */	addi r1, r1, 0x50
/* 801D31CC  4E 80 00 20 */	blr 
