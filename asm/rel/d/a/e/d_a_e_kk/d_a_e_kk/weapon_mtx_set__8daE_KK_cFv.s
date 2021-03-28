lbl_806FDF0C:
/* 806FDF0C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806FDF10  7C 08 02 A6 */	mflr r0
/* 806FDF14  90 01 00 84 */	stw r0, 0x84(r1)
/* 806FDF18  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806FDF1C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806FDF20  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 806FDF24  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 806FDF28  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 806FDF2C  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 806FDF30  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 806FDF34  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 806FDF38  39 61 00 40 */	addi r11, r1, 0x40
/* 806FDF3C  4B C6 42 90 */	b _savegpr_25
/* 806FDF40  7C 7D 1B 78 */	mr r29, r3
/* 806FDF44  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FDF48  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FDF4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FDF50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FDF54  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806FDF58  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 806FDF5C  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 806FDF60  4B C4 89 88 */	b PSMTXTrans
/* 806FDF64  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 806FDF68  4B 90 EF DC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806FDF6C  3C 60 80 70 */	lis r3, l_HIO@ha
/* 806FDF70  38 63 F8 90 */	addi r3, r3, l_HIO@l
/* 806FDF74  C0 23 00 08 */	lfs f1, 8(r3)
/* 806FDF78  FC 40 08 90 */	fmr f2, f1
/* 806FDF7C  FC 60 08 90 */	fmr f3, f1
/* 806FDF80  4B 90 EE B8 */	b scaleM__14mDoMtx_stack_cFfff
/* 806FDF84  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806FDF88  83 C3 00 04 */	lwz r30, 4(r3)
/* 806FDF8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FDF90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FDF94  38 9E 00 24 */	addi r4, r30, 0x24
/* 806FDF98  4B C4 85 18 */	b PSMTXCopy
/* 806FDF9C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806FDFA0  4B 91 32 4C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806FDFA4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806FDFA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FDFAC  38 63 00 30 */	addi r3, r3, 0x30
/* 806FDFB0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806FDFB4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806FDFB8  4B C4 84 F8 */	b PSMTXCopy
/* 806FDFBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FDFC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FDFC4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806FDFC8  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 806FDFCC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FDFD0  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 806FDFD4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806FDFD8  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 806FDFDC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FDFE0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806FDFE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FDFE8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806FDFEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806FDFF0  38 81 00 08 */	addi r4, r1, 8
/* 806FDFF4  38 BD 06 8C */	addi r5, r29, 0x68c
/* 806FDFF8  4B C4 8D 74 */	b PSMTXMultVec
/* 806FDFFC  3B 20 00 00 */	li r25, 0
/* 806FE000  3B 80 00 00 */	li r28, 0
/* 806FE004  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FE008  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 806FE00C  C3 9F 00 84 */	lfs f28, 0x84(r31)
/* 806FE010  C3 BF 00 B4 */	lfs f29, 0xb4(r31)
/* 806FE014  CB DF 00 A0 */	lfd f30, 0xa0(r31)
/* 806FE018  3F 60 43 30 */	lis r27, 0x4330
/* 806FE01C  C3 FF 00 04 */	lfs f31, 4(r31)
lbl_806FE020:
/* 806FE020  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806FE024  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FE028  38 63 00 30 */	addi r3, r3, 0x30
/* 806FE02C  7F 44 D3 78 */	mr r4, r26
/* 806FE030  4B C4 84 80 */	b PSMTXCopy
/* 806FE034  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 806FE038  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806FE03C  93 61 00 18 */	stw r27, 0x18(r1)
/* 806FE040  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 806FE044  EC 00 F0 28 */	fsubs f0, f0, f30
/* 806FE048  EC 1D 00 32 */	fmuls f0, f29, f0
/* 806FE04C  EC 1C 00 2A */	fadds f0, f28, f0
/* 806FE050  D0 01 00 08 */	stfs f0, 8(r1)
/* 806FE054  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 806FE058  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 806FE05C  7F 43 D3 78 */	mr r3, r26
/* 806FE060  38 81 00 08 */	addi r4, r1, 8
/* 806FE064  38 BC 06 F8 */	addi r5, r28, 0x6f8
/* 806FE068  7C BD 2A 14 */	add r5, r29, r5
/* 806FE06C  4B C4 8D 00 */	b PSMTXMultVec
/* 806FE070  3B 39 00 01 */	addi r25, r25, 1
/* 806FE074  2C 19 00 06 */	cmpwi r25, 6
/* 806FE078  3B 9C 00 0C */	addi r28, r28, 0xc
/* 806FE07C  41 80 FF A4 */	blt lbl_806FE020
/* 806FE080  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806FE084  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806FE088  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 806FE08C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 806FE090  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 806FE094  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 806FE098  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 806FE09C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 806FE0A0  39 61 00 40 */	addi r11, r1, 0x40
/* 806FE0A4  4B C6 41 74 */	b _restgpr_25
/* 806FE0A8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806FE0AC  7C 08 03 A6 */	mtlr r0
/* 806FE0B0  38 21 00 80 */	addi r1, r1, 0x80
/* 806FE0B4  4E 80 00 20 */	blr 
