lbl_80846F4C:
/* 80846F4C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80846F50  7C 08 02 A6 */	mflr r0
/* 80846F54  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80846F58  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80846F5C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80846F60  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80846F64  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80846F68  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80846F6C  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80846F70  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 80846F74  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 80846F78  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 80846F7C  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 80846F80  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 80846F84  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 80846F88  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 80846F8C  F3 21 00 48 */	psq_st f25, 72(r1), 0, 0 /* qr0 */
/* 80846F90  39 61 00 40 */	addi r11, r1, 0x40
/* 80846F94  4B B1 B2 3D */	bl _savegpr_26
/* 80846F98  7C 7F 1B 78 */	mr r31, r3
/* 80846F9C  FF 80 08 90 */	fmr f28, f1
/* 80846FA0  FF A0 10 90 */	fmr f29, f2
/* 80846FA4  FF 20 18 90 */	fmr f25, f3
/* 80846FA8  7C 9A 23 78 */	mr r26, r4
/* 80846FAC  7C BB 2B 78 */	mr r27, r5
/* 80846FB0  FF C0 20 90 */	fmr f30, f4
/* 80846FB4  3C 60 80 85 */	lis r3, l_arcName@ha /* 0x80848E3C@ha */
/* 80846FB8  3B 83 8E 3C */	addi r28, r3, l_arcName@l /* 0x80848E3C@l */
/* 80846FBC  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80846FC0  28 03 00 00 */	cmplwi r3, 0
/* 80846FC4  41 82 00 3C */	beq lbl_80847000
/* 80846FC8  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80846FCC  28 00 00 00 */	cmplwi r0, 0
/* 80846FD0  41 82 00 30 */	beq lbl_80847000
/* 80846FD4  C0 43 00 08 */	lfs f2, 8(r3)
/* 80846FD8  A8 03 00 06 */	lha r0, 6(r3)
/* 80846FDC  C8 3C 00 20 */	lfd f1, 0x20(r28)
/* 80846FE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80846FE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80846FE8  3C 00 43 30 */	lis r0, 0x4330
/* 80846FEC  90 01 00 08 */	stw r0, 8(r1)
/* 80846FF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80846FF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80846FF8  EF E2 00 24 */	fdivs f31, f2, f0
/* 80846FFC  48 00 00 08 */	b lbl_80847004
lbl_80847000:
/* 80847000  C3 FC 00 18 */	lfs f31, 0x18(r28)
lbl_80847004:
/* 80847004  38 7C 00 00 */	addi r3, r28, 0
/* 80847008  57 44 04 3E */	clrlwi r4, r26, 0x10
/* 8084700C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80847010  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80847014  3F C5 00 02 */	addis r30, r5, 2
/* 80847018  3B DE C2 F8 */	addi r30, r30, -15624
/* 8084701C  7F C5 F3 78 */	mr r5, r30
/* 80847020  38 C0 00 80 */	li r6, 0x80
/* 80847024  4B 7F 52 C9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80847028  7C 7D 1B 78 */	mr r29, r3
/* 8084702C  38 7C 00 00 */	addi r3, r28, 0
/* 80847030  57 64 04 3E */	clrlwi r4, r27, 0x10
/* 80847034  7F C5 F3 78 */	mr r5, r30
/* 80847038  38 C0 00 80 */	li r6, 0x80
/* 8084703C  4B 7F 52 B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80847040  7C 7E 1B 78 */	mr r30, r3
/* 80847044  B3 5F 06 E4 */	sth r26, 0x6e4(r31)
/* 80847048  B3 7F 06 E6 */	sth r27, 0x6e6(r31)
/* 8084704C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80847050  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80847054  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 80847058  D3 9F 05 B4 */	stfs f28, 0x5b4(r31)
/* 8084705C  A8 1D 00 06 */	lha r0, 6(r29)
/* 80847060  C8 3C 00 20 */	lfd f1, 0x20(r28)
/* 80847064  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80847068  90 01 00 0C */	stw r0, 0xc(r1)
/* 8084706C  3C 60 43 30 */	lis r3, 0x4330
/* 80847070  90 61 00 08 */	stw r3, 8(r1)
/* 80847074  C8 01 00 08 */	lfd f0, 8(r1)
/* 80847078  EF 60 08 28 */	fsubs f27, f0, f1
/* 8084707C  A8 1E 00 06 */	lha r0, 6(r30)
/* 80847080  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80847084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80847088  90 61 00 10 */	stw r3, 0x10(r1)
/* 8084708C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80847090  EF 40 08 28 */	fsubs f26, f0, f1
/* 80847094  EC 19 06 F2 */	fmuls f0, f25, f27
/* 80847098  EC 00 D0 24 */	fdivs f0, f0, f26
/* 8084709C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 808470A0  EC 1C 00 32 */	fmuls f0, f28, f0
/* 808470A4  EF 9D 00 2A */	fadds f28, f29, f0
/* 808470A8  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 808470AC  88 9D 00 04 */	lbz r4, 4(r29)
/* 808470B0  38 A0 00 00 */	li r5, 0
/* 808470B4  FC 00 D8 1E */	fctiwz f0, f27
/* 808470B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 808470BC  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 808470C0  FC 20 E0 90 */	fmr f1, f28
/* 808470C4  EC 5F 06 F2 */	fmuls f2, f31, f27
/* 808470C8  4B 91 74 7D */	bl setFrameCtrl__16daPy_frameCtrl_cFUcssff
/* 808470CC  C0 1F 05 D8 */	lfs f0, 0x5d8(r31)
/* 808470D0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 808470D4  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 808470D8  88 9E 00 04 */	lbz r4, 4(r30)
/* 808470DC  38 A0 00 00 */	li r5, 0
/* 808470E0  FC 00 D0 1E */	fctiwz f0, f26
/* 808470E4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 808470E8  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 808470EC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 808470F0  EC 20 D8 24 */	fdivs f1, f0, f27
/* 808470F4  EC 1C 06 B2 */	fmuls f0, f28, f26
/* 808470F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 808470FC  EC 5F 06 B2 */	fmuls f2, f31, f26
/* 80847100  4B 91 74 45 */	bl setFrameCtrl__16daPy_frameCtrl_cFUcssff
/* 80847104  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 80847108  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8084710C  93 BF 05 B0 */	stw r29, 0x5b0(r31)
/* 80847110  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 80847114  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 80847118  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8084711C  4C 41 13 82 */	cror 2, 1, 2
/* 80847120  40 82 00 18 */	bne lbl_80847138
/* 80847124  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80847128  FC 20 F0 90 */	fmr f1, f30
/* 8084712C  38 80 00 00 */	li r4, 0
/* 80847130  38 A0 00 2F */	li r5, 0x2f
/* 80847134  4B 7C 87 15 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
lbl_80847138:
/* 80847138  38 60 00 01 */	li r3, 1
/* 8084713C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80847140  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80847144  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80847148  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8084714C  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80847150  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80847154  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 80847158  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8084715C  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 80847160  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 80847164  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 80847168  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8084716C  E3 21 00 48 */	psq_l f25, 72(r1), 0, 0 /* qr0 */
/* 80847170  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 80847174  39 61 00 40 */	addi r11, r1, 0x40
/* 80847178  4B B1 B0 A5 */	bl _restgpr_26
/* 8084717C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80847180  7C 08 03 A6 */	mtlr r0
/* 80847184  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80847188  4E 80 00 20 */	blr 
