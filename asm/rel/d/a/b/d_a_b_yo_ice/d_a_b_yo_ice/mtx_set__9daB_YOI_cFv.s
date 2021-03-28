lbl_8063D0C8:
/* 8063D0C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8063D0CC  7C 08 02 A6 */	mflr r0
/* 8063D0D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8063D0D4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8063D0D8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8063D0DC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8063D0E0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8063D0E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8063D0E8  7C 7F 1B 78 */	mr r31, r3
/* 8063D0EC  3C 60 80 64 */	lis r3, l_HIO@ha
/* 8063D0F0  38 63 DF F8 */	addi r3, r3, l_HIO@l
/* 8063D0F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8063D0F8  C0 3F 06 80 */	lfs f1, 0x680(r31)
/* 8063D0FC  EF E0 00 72 */	fmuls f31, f0, f1
/* 8063D100  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8063D104  EF C0 00 72 */	fmuls f30, f0, f1
/* 8063D108  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8063D10C  4B 9C FC 58 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8063D110  38 61 00 08 */	addi r3, r1, 8
/* 8063D114  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 8063D118  38 BF 06 78 */	addi r5, r31, 0x678
/* 8063D11C  4B C2 A2 E8 */	b __pl__5csXyzFR5csXyz
/* 8063D120  38 61 00 08 */	addi r3, r1, 8
/* 8063D124  4B 9C FE 20 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8063D128  FC 20 F0 90 */	fmr f1, f30
/* 8063D12C  FC 40 F8 90 */	fmr f2, f31
/* 8063D130  FC 60 F0 90 */	fmr f3, f30
/* 8063D134  4B 9C FD 04 */	b scaleM__14mDoMtx_stack_cFfff
/* 8063D138  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8063D13C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8063D140  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 8063D144  38 84 00 24 */	addi r4, r4, 0x24
/* 8063D148  4B D0 93 68 */	b PSMTXCopy
/* 8063D14C  38 7F 06 B4 */	addi r3, r31, 0x6b4
/* 8063D150  4B 9C FC 14 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8063D154  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8063D158  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8063D15C  A8 9F 06 C4 */	lha r4, 0x6c4(r31)
/* 8063D160  4B 9C F2 D4 */	b mDoMtx_YrotM__FPA4_fs
/* 8063D164  FC 20 F0 90 */	fmr f1, f30
/* 8063D168  3C 60 80 64 */	lis r3, lit_3776@ha
/* 8063D16C  C0 43 DC 84 */	lfs f2, lit_3776@l(r3)
/* 8063D170  FC 60 F0 90 */	fmr f3, f30
/* 8063D174  4B 9C FC C4 */	b scaleM__14mDoMtx_stack_cFfff
/* 8063D178  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8063D17C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8063D180  80 9F 06 B0 */	lwz r4, 0x6b0(r31)
/* 8063D184  38 84 00 24 */	addi r4, r4, 0x24
/* 8063D188  4B D0 93 28 */	b PSMTXCopy
/* 8063D18C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8063D190  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8063D194  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8063D198  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8063D19C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8063D1A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8063D1A4  7C 08 03 A6 */	mtlr r0
/* 8063D1A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8063D1AC  4E 80 00 20 */	blr 
