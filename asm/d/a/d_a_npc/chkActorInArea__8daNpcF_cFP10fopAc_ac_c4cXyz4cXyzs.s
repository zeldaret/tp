lbl_80153A78:
/* 80153A78  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80153A7C  7C 08 02 A6 */	mflr r0
/* 80153A80  90 01 00 84 */	stw r0, 0x84(r1)
/* 80153A84  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80153A88  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80153A8C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80153A90  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80153A94  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80153A98  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80153A9C  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80153AA0  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80153AA4  39 61 00 40 */	addi r11, r1, 0x40
/* 80153AA8  48 20 E7 31 */	bl _savegpr_28
/* 80153AAC  7C 9C 23 78 */	mr r28, r4
/* 80153AB0  7C BD 2B 78 */	mr r29, r5
/* 80153AB4  7C DE 33 78 */	mr r30, r6
/* 80153AB8  3B E0 00 00 */	li r31, 0
/* 80153ABC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80153AC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80153AC4  7C 07 00 D0 */	neg r0, r7
/* 80153AC8  7C 04 07 34 */	extsh r4, r0
/* 80153ACC  4B EB 89 11 */	bl mDoMtx_YrotS__FPA4_fs
/* 80153AD0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80153AD4  FC 20 00 50 */	fneg f1, f0
/* 80153AD8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80153ADC  FC 40 00 50 */	fneg f2, f0
/* 80153AE0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80153AE4  FC 60 00 50 */	fneg f3, f0
/* 80153AE8  4B EB 92 B5 */	bl transM__14mDoMtx_stack_cFfff
/* 80153AEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80153AF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80153AF4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80153AF8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80153AFC  48 1F 32 71 */	bl PSMTXMultVec
/* 80153B00  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80153B04  FC 00 02 10 */	fabs f0, f0
/* 80153B08  FF E0 00 18 */	frsp f31, f0
/* 80153B0C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80153B10  FC 00 02 10 */	fabs f0, f0
/* 80153B14  FF C0 00 18 */	frsp f30, f0
/* 80153B18  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80153B1C  FC 00 02 10 */	fabs f0, f0
/* 80153B20  FF A0 00 18 */	frsp f29, f0
/* 80153B24  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80153B28  FC 00 02 10 */	fabs f0, f0
/* 80153B2C  FF 80 00 18 */	frsp f28, f0
/* 80153B30  38 61 00 08 */	addi r3, r1, 8
/* 80153B34  7F A4 EB 78 */	mr r4, r29
/* 80153B38  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80153B3C  48 11 2F F9 */	bl __mi__4cXyzCFRC3Vec
/* 80153B40  C0 01 00 08 */	lfs f0, 8(r1)
/* 80153B44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80153B48  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80153B4C  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80153B50  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80153B54  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80153B58  EC 3D 07 72 */	fmuls f1, f29, f29
/* 80153B5C  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 80153B60  EC 41 00 24 */	fdivs f2, f1, f0
/* 80153B64  EC 3C 07 32 */	fmuls f1, f28, f28
/* 80153B68  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80153B6C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80153B70  EC 22 00 2A */	fadds f1, f2, f0
/* 80153B74  C0 02 99 DC */	lfs f0, lit_4140(r2)
/* 80153B78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80153B7C  4C 40 13 82 */	cror 2, 0, 2
/* 80153B80  40 82 00 20 */	bne lbl_80153BA0
/* 80153B84  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80153B88  FC 00 08 50 */	fneg f0, f1
/* 80153B8C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80153B90  40 80 00 10 */	bge lbl_80153BA0
/* 80153B94  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80153B98  40 80 00 08 */	bge lbl_80153BA0
/* 80153B9C  3B E0 00 01 */	li r31, 1
lbl_80153BA0:
/* 80153BA0  7F E3 FB 78 */	mr r3, r31
/* 80153BA4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80153BA8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80153BAC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80153BB0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80153BB4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80153BB8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80153BBC  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80153BC0  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80153BC4  39 61 00 40 */	addi r11, r1, 0x40
/* 80153BC8  48 20 E6 5D */	bl _restgpr_28
/* 80153BCC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80153BD0  7C 08 03 A6 */	mtlr r0
/* 80153BD4  38 21 00 80 */	addi r1, r1, 0x80
/* 80153BD8  4E 80 00 20 */	blr 
