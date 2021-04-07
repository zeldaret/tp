lbl_8083A20C:
/* 8083A20C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8083A210  7C 08 02 A6 */	mflr r0
/* 8083A214  90 01 00 74 */	stw r0, 0x74(r1)
/* 8083A218  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8083A21C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8083A220  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8083A224  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8083A228  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8083A22C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8083A230  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 8083A234  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 8083A238  39 61 00 30 */	addi r11, r1, 0x30
/* 8083A23C  4B B2 7F 99 */	bl _savegpr_27
/* 8083A240  7C 7D 1B 78 */	mr r29, r3
/* 8083A244  7C 9B 23 78 */	mr r27, r4
/* 8083A248  FF 80 08 90 */	fmr f28, f1
/* 8083A24C  FF A0 10 90 */	fmr f29, f2
/* 8083A250  7C BE 2B 78 */	mr r30, r5
/* 8083A254  FF C0 18 90 */	fmr f30, f3
/* 8083A258  3C 60 80 84 */	lis r3, lit_3894@ha /* 0x808454AC@ha */
/* 8083A25C  3B E3 54 AC */	addi r31, r3, lit_3894@l /* 0x808454AC@l */
/* 8083A260  2C 06 00 00 */	cmpwi r6, 0
/* 8083A264  41 82 00 34 */	beq lbl_8083A298
/* 8083A268  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 8083A26C  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l /* 0x80406194@l */
/* 8083A270  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083A274  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083A278  3C A5 00 02 */	addis r5, r5, 2
/* 8083A27C  38 C0 00 80 */	li r6, 0x80
/* 8083A280  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8083A284  4B 80 21 7D */	bl getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 8083A288  7C 7C 1B 78 */	mr r28, r3
/* 8083A28C  63 60 80 00 */	ori r0, r27, 0x8000
/* 8083A290  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 8083A294  48 00 00 28 */	b lbl_8083A2BC
lbl_8083A298:
/* 8083A298  38 7F 00 0C */	addi r3, r31, 0xc
/* 8083A29C  57 64 04 3E */	clrlwi r4, r27, 0x10
/* 8083A2A0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8083A2A4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8083A2A8  3C A5 00 02 */	addis r5, r5, 2
/* 8083A2AC  38 C0 00 80 */	li r6, 0x80
/* 8083A2B0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8083A2B4  4B 80 20 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8083A2B8  7C 7C 1B 78 */	mr r28, r3
lbl_8083A2BC:
/* 8083A2BC  B3 7D 16 C4 */	sth r27, 0x16c4(r29)
/* 8083A2C0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8083A2C4  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8083A2C8  B0 1D 16 C6 */	sth r0, 0x16c6(r29)
/* 8083A2CC  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083A2D0  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 8083A2D4  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083A2D8  D0 1D 05 9C */	stfs f0, 0x59c(r29)
/* 8083A2DC  93 9D 05 98 */	stw r28, 0x598(r29)
/* 8083A2E0  38 00 00 00 */	li r0, 0
/* 8083A2E4  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 8083A2E8  7F C0 07 35 */	extsh. r0, r30
/* 8083A2EC  40 80 00 0C */	bge lbl_8083A2F8
/* 8083A2F0  A8 DC 00 06 */	lha r6, 6(r28)
/* 8083A2F4  48 00 00 08 */	b lbl_8083A2FC
lbl_8083A2F8:
/* 8083A2F8  7F C6 F3 78 */	mr r6, r30
lbl_8083A2FC:
/* 8083A2FC  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083A300  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8083A304  40 80 00 28 */	bge lbl_8083A32C
/* 8083A308  7C C0 07 34 */	extsh r0, r6
/* 8083A30C  C8 3F 01 80 */	lfd f1, 0x180(r31)
/* 8083A310  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083A314  90 01 00 0C */	stw r0, 0xc(r1)
/* 8083A318  3C 00 43 30 */	lis r0, 0x4330
/* 8083A31C  90 01 00 08 */	stw r0, 8(r1)
/* 8083A320  C8 01 00 08 */	lfd f0, 8(r1)
/* 8083A324  EF E0 08 28 */	fsubs f31, f0, f1
/* 8083A328  48 00 00 08 */	b lbl_8083A330
lbl_8083A32C:
/* 8083A32C  FF E0 E8 90 */	fmr f31, f29
lbl_8083A330:
/* 8083A330  38 7D 05 B0 */	addi r3, r29, 0x5b0
/* 8083A334  88 9C 00 04 */	lbz r4, 4(r28)
/* 8083A338  FC 00 E8 1E */	fctiwz f0, f29
/* 8083A33C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8083A340  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8083A344  FC 20 E0 90 */	fmr f1, f28
/* 8083A348  FC 40 F8 90 */	fmr f2, f31
/* 8083A34C  4B 92 41 F9 */	bl setFrameCtrl__16daPy_frameCtrl_cFUcssff
/* 8083A350  D3 FC 00 08 */	stfs f31, 8(r28)
/* 8083A354  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083A358  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8083A35C  4C 41 13 82 */	cror 2, 1, 2
/* 8083A360  40 82 00 1C */	bne lbl_8083A37C
/* 8083A364  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 8083A368  FC 20 F0 90 */	fmr f1, f30
/* 8083A36C  38 80 00 00 */	li r4, 0
/* 8083A370  38 A0 00 26 */	li r5, 0x26
/* 8083A374  4B 7D 54 D5 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 8083A378  D3 DD 17 50 */	stfs f30, 0x1750(r29)
lbl_8083A37C:
/* 8083A37C  7F A3 EB 78 */	mr r3, r29
/* 8083A380  38 80 00 00 */	li r4, 0
/* 8083A384  4B FF F9 99 */	bl setBasAnime__9daHorse_cFi
/* 8083A388  38 60 00 01 */	li r3, 1
/* 8083A38C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8083A390  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8083A394  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8083A398  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8083A39C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8083A3A0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8083A3A4  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 8083A3A8  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 8083A3AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8083A3B0  4B B2 7E 71 */	bl _restgpr_27
/* 8083A3B4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8083A3B8  7C 08 03 A6 */	mtlr r0
/* 8083A3BC  38 21 00 70 */	addi r1, r1, 0x70
/* 8083A3C0  4E 80 00 20 */	blr 
