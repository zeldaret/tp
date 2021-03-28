lbl_806FDD0C:
/* 806FDD0C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806FDD10  7C 08 02 A6 */	mflr r0
/* 806FDD14  90 01 00 84 */	stw r0, 0x84(r1)
/* 806FDD18  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806FDD1C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806FDD20  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 806FDD24  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 806FDD28  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 806FDD2C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 806FDD30  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 806FDD34  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 806FDD38  39 61 00 40 */	addi r11, r1, 0x40
/* 806FDD3C  4B C6 44 90 */	b _savegpr_25
/* 806FDD40  7C 7D 1B 78 */	mr r29, r3
/* 806FDD44  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FDD48  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FDD4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FDD50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FDD54  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806FDD58  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 806FDD5C  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 806FDD60  4B C4 8B 88 */	b PSMTXTrans
/* 806FDD64  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 806FDD68  4B 90 F1 DC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806FDD6C  3C 60 80 70 */	lis r3, l_HIO@ha
/* 806FDD70  38 63 F8 90 */	addi r3, r3, l_HIO@l
/* 806FDD74  C0 23 00 08 */	lfs f1, 8(r3)
/* 806FDD78  FC 40 08 90 */	fmr f2, f1
/* 806FDD7C  FC 60 08 90 */	fmr f3, f1
/* 806FDD80  4B 90 F0 B8 */	b scaleM__14mDoMtx_stack_cFfff
/* 806FDD84  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806FDD88  83 43 00 04 */	lwz r26, 4(r3)
/* 806FDD8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FDD90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FDD94  38 9A 00 24 */	addi r4, r26, 0x24
/* 806FDD98  4B C4 87 18 */	b PSMTXCopy
/* 806FDD9C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806FDDA0  4B 91 34 4C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806FDDA4  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 806FDDA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FDDAC  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 806FDDB0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806FDDB4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806FDDB8  4B C4 86 F8 */	b PSMTXCopy
/* 806FDDBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FDDC0  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 806FDDC4  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 806FDDC8  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 806FDDCC  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 806FDDD0  D0 1D 06 9C */	stfs f0, 0x69c(r29)
/* 806FDDD4  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 806FDDD8  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 806FDDDC  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806FDDE0  83 C3 00 04 */	lwz r30, 4(r3)
/* 806FDDE4  7F 43 D3 78 */	mr r3, r26
/* 806FDDE8  38 9E 00 24 */	addi r4, r30, 0x24
/* 806FDDEC  4B C4 86 C4 */	b PSMTXCopy
/* 806FDDF0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806FDDF4  4B 91 33 F8 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806FDDF8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806FDDFC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FDE00  38 63 00 60 */	addi r3, r3, 0x60
/* 806FDE04  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806FDE08  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806FDE0C  4B C4 86 A4 */	b PSMTXCopy
/* 806FDE10  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 806FDE14  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 806FDE18  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 806FDE1C  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 806FDE20  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 806FDE24  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 806FDE28  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 806FDE2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806FDE30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FDE34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806FDE38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806FDE3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FDE40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FDE44  38 81 00 08 */	addi r4, r1, 8
/* 806FDE48  38 BD 06 8C */	addi r5, r29, 0x68c
/* 806FDE4C  4B C4 8F 20 */	b PSMTXMultVec
/* 806FDE50  3B 20 00 00 */	li r25, 0
/* 806FDE54  3B 80 00 00 */	li r28, 0
/* 806FDE58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FDE5C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 806FDE60  C3 9F 00 84 */	lfs f28, 0x84(r31)
/* 806FDE64  C3 BF 00 B4 */	lfs f29, 0xb4(r31)
/* 806FDE68  CB DF 00 A0 */	lfd f30, 0xa0(r31)
/* 806FDE6C  3F 60 43 30 */	lis r27, 0x4330
/* 806FDE70  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_806FDE74:
/* 806FDE74  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806FDE78  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FDE7C  38 63 00 30 */	addi r3, r3, 0x30
/* 806FDE80  7F 44 D3 78 */	mr r4, r26
/* 806FDE84  4B C4 86 2C */	b PSMTXCopy
/* 806FDE88  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 806FDE8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806FDE90  93 61 00 18 */	stw r27, 0x18(r1)
/* 806FDE94  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 806FDE98  EC 00 F0 28 */	fsubs f0, f0, f30
/* 806FDE9C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 806FDEA0  EC 1C 00 2A */	fadds f0, f28, f0
/* 806FDEA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806FDEA8  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 806FDEAC  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 806FDEB0  7F 43 D3 78 */	mr r3, r26
/* 806FDEB4  38 81 00 08 */	addi r4, r1, 8
/* 806FDEB8  38 BC 06 F8 */	addi r5, r28, 0x6f8
/* 806FDEBC  7C BD 2A 14 */	add r5, r29, r5
/* 806FDEC0  4B C4 8E AC */	b PSMTXMultVec
/* 806FDEC4  3B 39 00 01 */	addi r25, r25, 1
/* 806FDEC8  2C 19 00 06 */	cmpwi r25, 6
/* 806FDECC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 806FDED0  41 80 FF A4 */	blt lbl_806FDE74
/* 806FDED4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806FDED8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806FDEDC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 806FDEE0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 806FDEE4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 806FDEE8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 806FDEEC  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 806FDEF0  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 806FDEF4  39 61 00 40 */	addi r11, r1, 0x40
/* 806FDEF8  4B C6 43 20 */	b _restgpr_25
/* 806FDEFC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806FDF00  7C 08 03 A6 */	mtlr r0
/* 806FDF04  38 21 00 80 */	addi r1, r1, 0x80
/* 806FDF08  4E 80 00 20 */	blr 
