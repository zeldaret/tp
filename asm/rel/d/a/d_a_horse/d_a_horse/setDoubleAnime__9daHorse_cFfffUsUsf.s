lbl_80839ED4:
/* 80839ED4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80839ED8  7C 08 02 A6 */	mflr r0
/* 80839EDC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80839EE0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80839EE4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80839EE8  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80839EEC  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80839EF0  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80839EF4  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80839EF8  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 80839EFC  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 80839F00  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 80839F04  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 80839F08  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 80839F0C  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 80839F10  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 80839F14  F3 21 00 48 */	psq_st f25, 72(r1), 0, 0 /* qr0 */
/* 80839F18  39 61 00 40 */	addi r11, r1, 0x40
/* 80839F1C  4B B2 82 B5 */	bl _savegpr_26
/* 80839F20  7C 7C 1B 78 */	mr r28, r3
/* 80839F24  FF 80 08 90 */	fmr f28, f1
/* 80839F28  FF A0 10 90 */	fmr f29, f2
/* 80839F2C  FF 20 18 90 */	fmr f25, f3
/* 80839F30  7C 9D 23 78 */	mr r29, r4
/* 80839F34  7C BE 2B 78 */	mr r30, r5
/* 80839F38  FF C0 20 90 */	fmr f30, f4
/* 80839F3C  3C 60 80 84 */	lis r3, lit_3894@ha /* 0x808454AC@ha */
/* 80839F40  3B E3 54 AC */	addi r31, r3, lit_3894@l /* 0x808454AC@l */
/* 80839F44  83 5C 05 98 */	lwz r26, 0x598(r28)
/* 80839F48  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80839F4C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80839F50  40 80 00 3C */	bge lbl_80839F8C
/* 80839F54  A0 7C 16 C4 */	lhz r3, 0x16c4(r28)
/* 80839F58  28 03 00 11 */	cmplwi r3, 0x11
/* 80839F5C  40 82 00 10 */	bne lbl_80839F6C
/* 80839F60  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80839F64  28 00 00 13 */	cmplwi r0, 0x13
/* 80839F68  41 82 00 24 */	beq lbl_80839F8C
lbl_80839F6C:
/* 80839F6C  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80839F70  7C 03 00 40 */	cmplw r3, r0
/* 80839F74  40 82 00 14 */	bne lbl_80839F88
/* 80839F78  A0 7C 16 C6 */	lhz r3, 0x16c6(r28)
/* 80839F7C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80839F80  7C 03 00 40 */	cmplw r3, r0
/* 80839F84  41 82 00 08 */	beq lbl_80839F8C
lbl_80839F88:
/* 80839F88  C3 DF 01 44 */	lfs f30, 0x144(r31)
lbl_80839F8C:
/* 80839F8C  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80839F90  28 00 00 17 */	cmplwi r0, 0x17
/* 80839F94  41 82 00 0C */	beq lbl_80839FA0
/* 80839F98  28 00 00 19 */	cmplwi r0, 0x19
/* 80839F9C  40 82 00 0C */	bne lbl_80839FA8
lbl_80839FA0:
/* 80839FA0  C3 DF 01 B8 */	lfs f30, 0x1b8(r31)
/* 80839FA4  48 00 00 64 */	b lbl_8083A008
lbl_80839FA8:
/* 80839FA8  28 00 00 1A */	cmplwi r0, 0x1a
/* 80839FAC  41 82 00 5C */	beq lbl_8083A008
/* 80839FB0  28 00 00 18 */	cmplwi r0, 0x18
/* 80839FB4  41 82 00 54 */	beq lbl_8083A008
/* 80839FB8  A0 1C 16 C4 */	lhz r0, 0x16c4(r28)
/* 80839FBC  28 00 00 17 */	cmplwi r0, 0x17
/* 80839FC0  40 82 00 24 */	bne lbl_80839FE4
/* 80839FC4  7F 83 E3 78 */	mr r3, r28
/* 80839FC8  38 80 00 0F */	li r4, 0xf
/* 80839FCC  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80839FD0  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 80839FD4  38 A0 FF FF */	li r5, -1
/* 80839FD8  48 00 6B B1 */	bl setNeckAnime__9daHorse_cFUsffs
/* 80839FDC  C3 DF 01 BC */	lfs f30, 0x1bc(r31)
/* 80839FE0  48 00 00 28 */	b lbl_8083A008
lbl_80839FE4:
/* 80839FE4  28 00 00 19 */	cmplwi r0, 0x19
/* 80839FE8  40 82 00 20 */	bne lbl_8083A008
/* 80839FEC  7F 83 E3 78 */	mr r3, r28
/* 80839FF0  38 80 00 10 */	li r4, 0x10
/* 80839FF4  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80839FF8  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 80839FFC  38 A0 FF FF */	li r5, -1
/* 8083A000  48 00 6B 89 */	bl setNeckAnime__9daHorse_cFUsffs
/* 8083A004  C3 DF 01 BC */	lfs f30, 0x1bc(r31)
lbl_8083A008:
/* 8083A008  28 1A 00 00 */	cmplwi r26, 0
/* 8083A00C  41 82 00 3C */	beq lbl_8083A048
/* 8083A010  80 1C 05 A0 */	lwz r0, 0x5a0(r28)
/* 8083A014  28 00 00 00 */	cmplwi r0, 0
/* 8083A018  41 82 00 30 */	beq lbl_8083A048
/* 8083A01C  C0 5A 00 08 */	lfs f2, 8(r26)
/* 8083A020  A8 1A 00 06 */	lha r0, 6(r26)
/* 8083A024  C8 3F 01 80 */	lfd f1, 0x180(r31)
/* 8083A028  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083A02C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8083A030  3C 00 43 30 */	lis r0, 0x4330
/* 8083A034  90 01 00 08 */	stw r0, 8(r1)
/* 8083A038  C8 01 00 08 */	lfd f0, 8(r1)
/* 8083A03C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8083A040  EF E2 00 24 */	fdivs f31, f2, f0
/* 8083A044  48 00 00 08 */	b lbl_8083A04C
lbl_8083A048:
/* 8083A048  C3 FF 01 50 */	lfs f31, 0x150(r31)
lbl_8083A04C:
/* 8083A04C  38 7F 00 0C */	addi r3, r31, 0xc
/* 8083A050  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8083A054  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083A058  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083A05C  3F 65 00 02 */	addis r27, r5, 2
/* 8083A060  3B 7B C2 F8 */	addi r27, r27, -15624
/* 8083A064  7F 65 DB 78 */	mr r5, r27
/* 8083A068  38 C0 00 80 */	li r6, 0x80
/* 8083A06C  4B 80 22 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8083A070  7C 7A 1B 78 */	mr r26, r3
/* 8083A074  38 7F 00 0C */	addi r3, r31, 0xc
/* 8083A078  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 8083A07C  7F 65 DB 78 */	mr r5, r27
/* 8083A080  38 C0 00 80 */	li r6, 0x80
/* 8083A084  4B 80 22 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8083A088  7C 7B 1B 78 */	mr r27, r3
/* 8083A08C  B3 BC 16 C4 */	sth r29, 0x16c4(r28)
/* 8083A090  B3 DC 16 C6 */	sth r30, 0x16c6(r28)
/* 8083A094  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083A098  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8083A09C  D0 1C 05 94 */	stfs f0, 0x594(r28)
/* 8083A0A0  D3 9C 05 9C */	stfs f28, 0x59c(r28)
/* 8083A0A4  A8 1A 00 06 */	lha r0, 6(r26)
/* 8083A0A8  C8 3F 01 80 */	lfd f1, 0x180(r31)
/* 8083A0AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083A0B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8083A0B4  3C 60 43 30 */	lis r3, 0x4330
/* 8083A0B8  90 61 00 08 */	stw r3, 8(r1)
/* 8083A0BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8083A0C0  EF 60 08 28 */	fsubs f27, f0, f1
/* 8083A0C4  A8 1B 00 06 */	lha r0, 6(r27)
/* 8083A0C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083A0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083A0D0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8083A0D4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8083A0D8  EF 40 08 28 */	fsubs f26, f0, f1
/* 8083A0DC  EC 19 06 F2 */	fmuls f0, f25, f27
/* 8083A0E0  EC 00 D0 24 */	fdivs f0, f0, f26
/* 8083A0E4  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8083A0E8  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8083A0EC  EF BD 00 2A */	fadds f29, f29, f0
/* 8083A0F0  38 7C 05 B0 */	addi r3, r28, 0x5b0
/* 8083A0F4  88 9A 00 04 */	lbz r4, 4(r26)
/* 8083A0F8  38 A0 00 00 */	li r5, 0
/* 8083A0FC  FC 00 D8 1E */	fctiwz f0, f27
/* 8083A100  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8083A104  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8083A108  FC 20 E8 90 */	fmr f1, f29
/* 8083A10C  EC 5F 06 F2 */	fmuls f2, f31, f27
/* 8083A110  4B 92 44 35 */	bl setFrameCtrl__16daPy_frameCtrl_cFUcssff
/* 8083A114  C0 1C 05 C0 */	lfs f0, 0x5c0(r28)
/* 8083A118  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8083A11C  38 7C 05 C8 */	addi r3, r28, 0x5c8
/* 8083A120  88 9B 00 04 */	lbz r4, 4(r27)
/* 8083A124  38 A0 00 00 */	li r5, 0
/* 8083A128  FC 00 D0 1E */	fctiwz f0, f26
/* 8083A12C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8083A130  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8083A134  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083A138  EC 20 D8 24 */	fdivs f1, f0, f27
/* 8083A13C  EC 1D 06 B2 */	fmuls f0, f29, f26
/* 8083A140  EC 21 00 32 */	fmuls f1, f1, f0
/* 8083A144  EC 5F 06 B2 */	fmuls f2, f31, f26
/* 8083A148  4B 92 43 FD */	bl setFrameCtrl__16daPy_frameCtrl_cFUcssff
/* 8083A14C  C0 1C 05 D8 */	lfs f0, 0x5d8(r28)
/* 8083A150  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8083A154  93 5C 05 98 */	stw r26, 0x598(r28)
/* 8083A158  93 7C 05 A0 */	stw r27, 0x5a0(r28)
/* 8083A15C  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083A160  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8083A164  4C 41 13 82 */	cror 2, 1, 2
/* 8083A168  40 82 00 1C */	bne lbl_8083A184
/* 8083A16C  80 7C 05 AC */	lwz r3, 0x5ac(r28)
/* 8083A170  FC 20 F0 90 */	fmr f1, f30
/* 8083A174  38 80 00 00 */	li r4, 0
/* 8083A178  38 A0 00 26 */	li r5, 0x26
/* 8083A17C  4B 7D 56 CD */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 8083A180  D3 DC 17 50 */	stfs f30, 0x1750(r28)
lbl_8083A184:
/* 8083A184  88 1C 16 B4 */	lbz r0, 0x16b4(r28)
/* 8083A188  28 00 00 00 */	cmplwi r0, 0
/* 8083A18C  41 82 00 10 */	beq lbl_8083A19C
/* 8083A190  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8083A194  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8083A198  40 80 00 14 */	bge lbl_8083A1AC
lbl_8083A19C:
/* 8083A19C  7F 83 E3 78 */	mr r3, r28
/* 8083A1A0  38 80 00 00 */	li r4, 0
/* 8083A1A4  4B FF FB 79 */	bl setBasAnime__9daHorse_cFi
/* 8083A1A8  48 00 00 10 */	b lbl_8083A1B8
lbl_8083A1AC:
/* 8083A1AC  7F 83 E3 78 */	mr r3, r28
/* 8083A1B0  38 80 00 01 */	li r4, 1
/* 8083A1B4  4B FF FB 69 */	bl setBasAnime__9daHorse_cFi
lbl_8083A1B8:
/* 8083A1B8  38 60 00 01 */	li r3, 1
/* 8083A1BC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8083A1C0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8083A1C4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8083A1C8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8083A1CC  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 8083A1D0  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8083A1D4  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 8083A1D8  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8083A1DC  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 8083A1E0  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 8083A1E4  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 8083A1E8  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8083A1EC  E3 21 00 48 */	psq_l f25, 72(r1), 0, 0 /* qr0 */
/* 8083A1F0  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 8083A1F4  39 61 00 40 */	addi r11, r1, 0x40
/* 8083A1F8  4B B2 80 25 */	bl _restgpr_26
/* 8083A1FC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8083A200  7C 08 03 A6 */	mtlr r0
/* 8083A204  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8083A208  4E 80 00 20 */	blr 
