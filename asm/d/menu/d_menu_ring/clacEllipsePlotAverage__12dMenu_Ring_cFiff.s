lbl_801EF1A0:
/* 801EF1A0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801EF1A4  7C 08 02 A6 */	mflr r0
/* 801EF1A8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801EF1AC  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801EF1B0  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 801EF1B4  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801EF1B8  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 801EF1BC  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 801EF1C0  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 801EF1C4  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 801EF1C8  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 801EF1CC  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 801EF1D0  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 801EF1D4  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 801EF1D8  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 801EF1DC  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 801EF1E0  F3 21 00 48 */	psq_st f25, 72(r1), 0, 0 /* qr0 */
/* 801EF1E4  39 61 00 40 */	addi r11, r1, 0x40
/* 801EF1E8  48 17 2F DD */	bl _savegpr_23
/* 801EF1EC  7C 7B 1B 78 */	mr r27, r3
/* 801EF1F0  7C 9C 23 78 */	mr r28, r4
/* 801EF1F4  FF 20 08 90 */	fmr f25, f1
/* 801EF1F8  FF 40 10 90 */	fmr f26, f2
/* 801EF1FC  C3 C3 05 0C */	lfs f30, 0x50c(r3)
/* 801EF200  C3 A3 05 10 */	lfs f29, 0x510(r3)
/* 801EF204  C3 82 A9 88 */	lfs f28, lit_4300(r2)
/* 801EF208  38 60 3E 80 */	li r3, 0x3e80
/* 801EF20C  48 0D FA B9 */	bl __nwa__FUl
/* 801EF210  7C 7F 1B 78 */	mr r31, r3
/* 801EF214  38 60 3E 80 */	li r3, 0x3e80
/* 801EF218  48 0D FA AD */	bl __nwa__FUl
/* 801EF21C  7C 7E 1B 78 */	mr r30, r3
/* 801EF220  38 60 3E 80 */	li r3, 0x3e80
/* 801EF224  48 0D FA A1 */	bl __nwa__FUl
/* 801EF228  7C 7D 1B 78 */	mr r29, r3
/* 801EF22C  C3 62 A9 88 */	lfs f27, lit_4300(r2)
/* 801EF230  3A E0 00 00 */	li r23, 0
/* 801EF234  3B 40 00 00 */	li r26, 0
/* 801EF238  C0 02 AA 20 */	lfs f0, lit_6454(r2)
/* 801EF23C  EF FE 00 24 */	fdivs f31, f30, f0
lbl_801EF240:
/* 801EF240  7F 3F D2 14 */	add r25, r31, r26
/* 801EF244  D3 99 00 00 */	stfs f28, 0(r25)
/* 801EF248  7F 63 DB 78 */	mr r3, r27
/* 801EF24C  FC 20 E0 90 */	fmr f1, f28
/* 801EF250  FC 40 F0 90 */	fmr f2, f30
/* 801EF254  FC 60 E8 90 */	fmr f3, f29
/* 801EF258  4B FF FE E5 */	bl clacEllipseFunction__12dMenu_Ring_cFfff
/* 801EF25C  7F 1E D2 14 */	add r24, r30, r26
/* 801EF260  D0 38 00 00 */	stfs f1, 0(r24)
/* 801EF264  EF 9C F8 2A */	fadds f28, f28, f31
/* 801EF268  C0 19 00 00 */	lfs f0, 0(r25)
/* 801EF26C  FC 00 00 50 */	fneg f0, f0
/* 801EF270  D0 19 1F 40 */	stfs f0, 0x1f40(r25)
/* 801EF274  C0 18 00 00 */	lfs f0, 0(r24)
/* 801EF278  FC 00 00 50 */	fneg f0, f0
/* 801EF27C  D0 18 1F 40 */	stfs f0, 0x1f40(r24)
/* 801EF280  2C 17 00 00 */	cmpwi r23, 0
/* 801EF284  40 81 00 9C */	ble lbl_801EF320
/* 801EF288  7F 63 DB 78 */	mr r3, r27
/* 801EF28C  C0 39 FF FC */	lfs f1, -4(r25)
/* 801EF290  C0 58 FF FC */	lfs f2, -4(r24)
/* 801EF294  C0 79 00 00 */	lfs f3, 0(r25)
/* 801EF298  C0 98 00 00 */	lfs f4, 0(r24)
/* 801EF29C  4B FF FE D9 */	bl calcDistance__12dMenu_Ring_cFffff
/* 801EF2A0  7C 7D D2 14 */	add r3, r29, r26
/* 801EF2A4  D0 23 FF FC */	stfs f1, -4(r3)
/* 801EF2A8  C0 03 FF FC */	lfs f0, -4(r3)
/* 801EF2AC  20 17 07 D0 */	subfic r0, r23, 0x7d0
/* 801EF2B0  54 04 10 3A */	slwi r4, r0, 2
/* 801EF2B4  7C 1D 25 2E */	stfsx f0, r29, r4
/* 801EF2B8  C0 03 FF FC */	lfs f0, -4(r3)
/* 801EF2BC  D0 03 1F 3C */	stfs f0, 0x1f3c(r3)
/* 801EF2C0  C0 03 FF FC */	lfs f0, -4(r3)
/* 801EF2C4  20 17 0F A0 */	subfic r0, r23, 0xfa0
/* 801EF2C8  54 00 10 3A */	slwi r0, r0, 2
/* 801EF2CC  7C 1D 05 2E */	stfsx f0, r29, r0
/* 801EF2D0  7C 5D 04 2E */	lfsx f2, r29, r0
/* 801EF2D4  C0 23 FF FC */	lfs f1, -4(r3)
/* 801EF2D8  7C 1D 24 2E */	lfsx f0, r29, r4
/* 801EF2DC  EC 21 00 2A */	fadds f1, f1, f0
/* 801EF2E0  C0 03 1F 3C */	lfs f0, 0x1f3c(r3)
/* 801EF2E4  EC 01 00 2A */	fadds f0, f1, f0
/* 801EF2E8  EC 02 00 2A */	fadds f0, f2, f0
/* 801EF2EC  EF 7B 00 2A */	fadds f27, f27, f0
/* 801EF2F0  2C 17 03 E8 */	cmpwi r23, 0x3e8
/* 801EF2F4  40 80 00 2C */	bge lbl_801EF320
/* 801EF2F8  C0 19 00 00 */	lfs f0, 0(r25)
/* 801EF2FC  7C 1F 25 2E */	stfsx f0, r31, r4
/* 801EF300  C0 18 00 00 */	lfs f0, 0(r24)
/* 801EF304  FC 00 00 50 */	fneg f0, f0
/* 801EF308  7C 1E 25 2E */	stfsx f0, r30, r4
/* 801EF30C  C0 19 00 00 */	lfs f0, 0(r25)
/* 801EF310  FC 00 00 50 */	fneg f0, f0
/* 801EF314  7C 1F 05 2E */	stfsx f0, r31, r0
/* 801EF318  C0 18 00 00 */	lfs f0, 0(r24)
/* 801EF31C  7C 1E 05 2E */	stfsx f0, r30, r0
lbl_801EF320:
/* 801EF320  3A F7 00 01 */	addi r23, r23, 1
/* 801EF324  2C 17 03 E8 */	cmpwi r23, 0x3e8
/* 801EF328  3B 5A 00 04 */	addi r26, r26, 4
/* 801EF32C  40 81 FF 14 */	ble lbl_801EF240
/* 801EF330  C8 22 A9 C8 */	lfd f1, lit_4596(r2)
/* 801EF334  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 801EF338  90 01 00 0C */	stw r0, 0xc(r1)
/* 801EF33C  3C 00 43 30 */	lis r0, 0x4330
/* 801EF340  90 01 00 08 */	stw r0, 8(r1)
/* 801EF344  C8 01 00 08 */	lfd f0, 8(r1)
/* 801EF348  EC 00 08 28 */	fsubs f0, f0, f1
/* 801EF34C  EC 7B 00 24 */	fdivs f3, f27, f0
/* 801EF350  C0 82 A9 88 */	lfs f4, lit_4300(r2)
/* 801EF354  FC 20 20 90 */	fmr f1, f4
/* 801EF358  38 E0 00 00 */	li r7, 0
/* 801EF35C  38 60 00 00 */	li r3, 0
/* 801EF360  C0 1F 00 00 */	lfs f0, 0(r31)
/* 801EF364  EC 00 C8 2A */	fadds f0, f0, f25
/* 801EF368  D0 1B 03 8C */	stfs f0, 0x38c(r27)
/* 801EF36C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801EF370  EC 00 D0 2A */	fadds f0, f0, f26
/* 801EF374  D0 1B 03 EC */	stfs f0, 0x3ec(r27)
/* 801EF378  38 80 00 00 */	li r4, 0
/* 801EF37C  38 BC FF FF */	addi r5, r28, -1
/* 801EF380  38 00 0F A0 */	li r0, 0xfa0
/* 801EF384  7C 09 03 A6 */	mtctr r0
lbl_801EF388:
/* 801EF388  7C 5D 24 2E */	lfsx f2, r29, r4
/* 801EF38C  EC 84 10 2A */	fadds f4, f4, f2
/* 801EF390  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801EF394  4C 41 13 82 */	cror 2, 1, 2
/* 801EF398  40 82 00 70 */	bne lbl_801EF408
/* 801EF39C  FC 03 20 40 */	fcmpo cr0, f3, f4
/* 801EF3A0  40 80 00 68 */	bge lbl_801EF408
/* 801EF3A4  EC 23 08 28 */	fsubs f1, f3, f1
/* 801EF3A8  EC 04 18 28 */	fsubs f0, f4, f3
/* 801EF3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801EF3B0  4C 40 13 82 */	cror 2, 0, 2
/* 801EF3B4  38 E7 00 01 */	addi r7, r7, 1
/* 801EF3B8  38 63 00 04 */	addi r3, r3, 4
/* 801EF3BC  40 82 00 2C */	bne lbl_801EF3E8
/* 801EF3C0  FC 80 10 90 */	fmr f4, f2
/* 801EF3C4  38 04 FF FC */	addi r0, r4, -4
/* 801EF3C8  7C 1F 04 2E */	lfsx f0, r31, r0
/* 801EF3CC  EC 19 00 2A */	fadds f0, f25, f0
/* 801EF3D0  7C DB 1A 14 */	add r6, r27, r3
/* 801EF3D4  D0 06 03 8C */	stfs f0, 0x38c(r6)
/* 801EF3D8  7C 1E 04 2E */	lfsx f0, r30, r0
/* 801EF3DC  EC 1A 00 2A */	fadds f0, f26, f0
/* 801EF3E0  D0 06 03 EC */	stfs f0, 0x3ec(r6)
/* 801EF3E4  48 00 00 24 */	b lbl_801EF408
lbl_801EF3E8:
/* 801EF3E8  C0 82 A9 88 */	lfs f4, lit_4300(r2)
/* 801EF3EC  7C 1F 24 2E */	lfsx f0, r31, r4
/* 801EF3F0  EC 19 00 2A */	fadds f0, f25, f0
/* 801EF3F4  7C DB 1A 14 */	add r6, r27, r3
/* 801EF3F8  D0 06 03 8C */	stfs f0, 0x38c(r6)
/* 801EF3FC  7C 1E 24 2E */	lfsx f0, r30, r4
/* 801EF400  EC 1A 00 2A */	fadds f0, f26, f0
/* 801EF404  D0 06 03 EC */	stfs f0, 0x3ec(r6)
lbl_801EF408:
/* 801EF408  FC 20 20 90 */	fmr f1, f4
/* 801EF40C  7C 07 28 00 */	cmpw r7, r5
/* 801EF410  40 80 00 0C */	bge lbl_801EF41C
/* 801EF414  38 84 00 04 */	addi r4, r4, 4
/* 801EF418  42 00 FF 70 */	bdnz lbl_801EF388
lbl_801EF41C:
/* 801EF41C  7F E3 FB 78 */	mr r3, r31
/* 801EF420  48 0D F9 41 */	bl __dla__FPv
/* 801EF424  7F C3 F3 78 */	mr r3, r30
/* 801EF428  48 0D F9 39 */	bl __dla__FPv
/* 801EF42C  7F A3 EB 78 */	mr r3, r29
/* 801EF430  48 0D F9 31 */	bl __dla__FPv
/* 801EF434  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 801EF438  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801EF43C  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 801EF440  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801EF444  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 801EF448  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 801EF44C  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 801EF450  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 801EF454  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 801EF458  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 801EF45C  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 801EF460  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 801EF464  E3 21 00 48 */	psq_l f25, 72(r1), 0, 0 /* qr0 */
/* 801EF468  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 801EF46C  39 61 00 40 */	addi r11, r1, 0x40
/* 801EF470  48 17 2D A1 */	bl _restgpr_23
/* 801EF474  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801EF478  7C 08 03 A6 */	mtlr r0
/* 801EF47C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801EF480  4E 80 00 20 */	blr 
