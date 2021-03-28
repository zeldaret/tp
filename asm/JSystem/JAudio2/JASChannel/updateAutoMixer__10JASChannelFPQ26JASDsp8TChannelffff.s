lbl_8029B6A0:
/* 8029B6A0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8029B6A4  7C 08 02 A6 */	mflr r0
/* 8029B6A8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8029B6AC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8029B6B0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8029B6B4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8029B6B8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8029B6BC  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8029B6C0  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8029B6C4  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8029B6C8  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 8029B6CC  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 8029B6D0  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 8029B6D4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8029B6D8  7C 9F 23 78 */	mr r31, r4
/* 8029B6DC  FF 60 08 90 */	fmr f27, f1
/* 8029B6E0  FF 80 10 90 */	fmr f28, f2
/* 8029B6E4  FF A0 18 90 */	fmr f29, f3
/* 8029B6E8  FF C0 20 90 */	fmr f30, f4
/* 8029B6EC  48 00 2A 95 */	bl getOutputMode__9JASDriverFv
/* 8029B6F0  28 03 00 00 */	cmplwi r3, 0
/* 8029B6F4  40 82 00 0C */	bne lbl_8029B700
/* 8029B6F8  C0 02 BC C0 */	lfs f0, lit_846(r2)
/* 8029B6FC  EF 7B 00 32 */	fmuls f27, f27, f0
lbl_8029B700:
/* 8029B700  C3 E2 BC 84 */	lfs f31, lit_545(r2)
/* 8029B704  FC 1B F8 40 */	fcmpo cr0, f27, f31
/* 8029B708  4C 40 13 82 */	cror 2, 0, 2
/* 8029B70C  40 82 00 08 */	bne lbl_8029B714
/* 8029B710  48 00 00 1C */	b lbl_8029B72C
lbl_8029B714:
/* 8029B714  C3 E2 BC 80 */	lfs f31, lit_544(r2)
/* 8029B718  FC 1B F8 40 */	fcmpo cr0, f27, f31
/* 8029B71C  4C 41 13 82 */	cror 2, 1, 2
/* 8029B720  40 82 00 08 */	bne lbl_8029B728
/* 8029B724  48 00 00 08 */	b lbl_8029B72C
lbl_8029B728:
/* 8029B728  FF E0 D8 90 */	fmr f31, f27
lbl_8029B72C:
/* 8029B72C  48 00 2A 25 */	bl getChannelLevel_dsp__9JASDriverFv
/* 8029B730  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8029B734  C8 22 BC A8 */	lfd f1, lit_714(r2)
/* 8029B738  90 01 00 0C */	stw r0, 0xc(r1)
/* 8029B73C  3C 00 43 30 */	lis r0, 0x4330
/* 8029B740  90 01 00 08 */	stw r0, 8(r1)
/* 8029B744  C8 01 00 08 */	lfd f0, 8(r1)
/* 8029B748  EC 00 08 28 */	fsubs f0, f0, f1
/* 8029B74C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8029B750  FC 00 00 1E */	fctiwz f0, f0
/* 8029B754  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8029B758  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8029B75C  7F E3 FB 78 */	mr r3, r31
/* 8029B760  C0 22 BC C4 */	lfs f1, lit_847(r2)
/* 8029B764  EC 01 07 32 */	fmuls f0, f1, f28
/* 8029B768  FC 00 00 1E */	fctiwz f0, f0
/* 8029B76C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8029B770  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8029B774  EC 01 07 B2 */	fmuls f0, f1, f30
/* 8029B778  FC 00 00 1E */	fctiwz f0, f0
/* 8029B77C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8029B780  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8029B784  EC 01 07 72 */	fmuls f0, f1, f29
/* 8029B788  FC 00 00 1E */	fctiwz f0, f0
/* 8029B78C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8029B790  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 8029B794  39 00 00 00 */	li r8, 0
/* 8029B798  48 00 27 59 */	bl setAutoMixer__Q26JASDsp8TChannelFUsUcUcUcUc
/* 8029B79C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8029B7A0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8029B7A4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8029B7A8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8029B7AC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8029B7B0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8029B7B4  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 8029B7B8  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8029B7BC  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 8029B7C0  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 8029B7C4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8029B7C8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8029B7CC  7C 08 03 A6 */	mtlr r0
/* 8029B7D0  38 21 00 90 */	addi r1, r1, 0x90
/* 8029B7D4  4E 80 00 20 */	blr 
