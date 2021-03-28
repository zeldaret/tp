lbl_80165FB4:
/* 80165FB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80165FB8  7C 08 02 A6 */	mflr r0
/* 80165FBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80165FC0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80165FC4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80165FC8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80165FCC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80165FD0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80165FD4  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 80165FD8  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 80165FDC  F3 81 00 18 */	psq_st f28, 24(r1), 0, 0 /* qr0 */
/* 80165FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80165FE4  FF 80 08 90 */	fmr f28, f1
/* 80165FE8  FF A0 10 90 */	fmr f29, f2
/* 80165FEC  FF C0 18 90 */	fmr f30, f3
/* 80165FF0  FF E0 20 90 */	fmr f31, f4
/* 80165FF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80165FF8  4B EB 83 11 */	bl fopCamM_GetParam__FP12camera_class
/* 80165FFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80166000  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80166004  1C 03 00 38 */	mulli r0, r3, 0x38
/* 80166008  7C 64 02 14 */	add r3, r4, r0
/* 8016600C  88 03 5D 78 */	lbz r0, 0x5d78(r3)
/* 80166010  7C 00 07 74 */	extsb r0, r0
/* 80166014  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80166018  7C 64 02 14 */	add r3, r4, r0
/* 8016601C  3B E3 5D 48 */	addi r31, r3, 0x5d48
/* 80166020  7F E3 FB 78 */	mr r3, r31
/* 80166024  FC 20 E0 90 */	fmr f1, f28
/* 80166028  FC 40 E8 90 */	fmr f2, f29
/* 8016602C  FC 60 F0 90 */	fmr f3, f30
/* 80166030  FC 80 F8 90 */	fmr f4, f31
/* 80166034  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 80166038  C0 DF 00 14 */	lfs f6, 0x14(r31)
/* 8016603C  4B EE BA 85 */	bl setViewPort__14dDlst_window_cFffffff
/* 80166040  7F E3 FB 78 */	mr r3, r31
/* 80166044  FC 20 E0 90 */	fmr f1, f28
/* 80166048  FC 40 E8 90 */	fmr f2, f29
/* 8016604C  FC 60 F0 90 */	fmr f3, f30
/* 80166050  FC 80 F8 90 */	fmr f4, f31
/* 80166054  4B EE BA 89 */	bl setScissor__14dDlst_window_cFffff
/* 80166058  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8016605C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80166060  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80166064  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80166068  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8016606C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80166070  E3 81 00 18 */	psq_l f28, 24(r1), 0, 0 /* qr0 */
/* 80166074  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 80166078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8016607C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80166080  7C 08 03 A6 */	mtlr r0
/* 80166084  38 21 00 50 */	addi r1, r1, 0x50
/* 80166088  4E 80 00 20 */	blr 
