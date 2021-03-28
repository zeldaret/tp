lbl_8022F384:
/* 8022F384  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8022F388  7C 08 02 A6 */	mflr r0
/* 8022F38C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8022F390  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8022F394  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8022F398  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8022F39C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8022F3A0  39 61 00 50 */	addi r11, r1, 0x50
/* 8022F3A4  48 13 2E 35 */	bl _savegpr_28
/* 8022F3A8  7C 7C 1B 78 */	mr r28, r3
/* 8022F3AC  7C 9D 23 78 */	mr r29, r4
/* 8022F3B0  7C BE 2B 78 */	mr r30, r5
/* 8022F3B4  FF E0 08 90 */	fmr f31, f1
/* 8022F3B8  FF C0 10 90 */	fmr f30, f2
/* 8022F3BC  80 63 00 04 */	lwz r3, 4(r3)
/* 8022F3C0  4B FF A4 AD */	bl isCharSend__19jmessage_tReferenceFv
/* 8022F3C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022F3C8  41 82 01 4C */	beq lbl_8022F514
/* 8022F3CC  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022F3D0  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 8022F3D4  41 82 01 34 */	beq lbl_8022F508
/* 8022F3D8  D3 DC 01 34 */	stfs f30, 0x134(r28)
/* 8022F3DC  C0 42 B0 5C */	lfs f2, lit_4026(r2)
/* 8022F3E0  C0 3C 01 30 */	lfs f1, 0x130(r28)
/* 8022F3E4  C0 1C 01 34 */	lfs f0, 0x134(r28)
/* 8022F3E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8022F3EC  EC 22 00 32 */	fmuls f1, f2, f0
/* 8022F3F0  C0 1C 01 28 */	lfs f0, 0x128(r28)
/* 8022F3F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8022F3F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8022F3FC  C0 1C 01 2C */	lfs f0, 0x12c(r28)
/* 8022F400  EF C1 00 28 */	fsubs f30, f1, f0
/* 8022F404  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022F408  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8022F40C  4C 41 13 82 */	cror 2, 1, 2
/* 8022F410  40 82 00 68 */	bne lbl_8022F478
/* 8022F414  38 61 00 18 */	addi r3, r1, 0x18
/* 8022F418  38 80 00 0F */	li r4, 0xf
/* 8022F41C  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha
/* 8022F420  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l
/* 8022F424  38 A5 00 08 */	addi r5, r5, 8
/* 8022F428  FC 00 F0 1E */	fctiwz f0, f30
/* 8022F42C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8022F430  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022F434  7F E6 FB 78 */	mr r6, r31
/* 8022F438  4C C6 31 82 */	crclr 6
/* 8022F43C  48 13 71 81 */	bl snprintf
/* 8022F440  7F C3 F3 78 */	mr r3, r30
/* 8022F444  38 81 00 18 */	addi r4, r1, 0x18
/* 8022F448  48 13 96 75 */	bl strcat
/* 8022F44C  C0 5C 01 2C */	lfs f2, 0x12c(r28)
/* 8022F450  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022F454  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 8022F458  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022F45C  3C 00 43 30 */	lis r0, 0x4330
/* 8022F460  90 01 00 30 */	stw r0, 0x30(r1)
/* 8022F464  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8022F468  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022F46C  EC 02 00 2A */	fadds f0, f2, f0
/* 8022F470  D0 1C 01 2C */	stfs f0, 0x12c(r28)
/* 8022F474  48 00 00 80 */	b lbl_8022F4F4
lbl_8022F478:
/* 8022F478  C0 02 B0 78 */	lfs f0, lit_4291(r2)
/* 8022F47C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8022F480  4C 40 13 82 */	cror 2, 0, 2
/* 8022F484  40 82 00 70 */	bne lbl_8022F4F4
/* 8022F488  38 61 00 08 */	addi r3, r1, 8
/* 8022F48C  38 80 00 0F */	li r4, 0xf
/* 8022F490  3C A0 80 3A */	lis r5, d_msg_d_msg_class__stringBase0@ha
/* 8022F494  38 A5 96 10 */	addi r5, r5, d_msg_d_msg_class__stringBase0@l
/* 8022F498  38 A5 00 42 */	addi r5, r5, 0x42
/* 8022F49C  FC 00 F0 50 */	fneg f0, f30
/* 8022F4A0  FC 00 00 1E */	fctiwz f0, f0
/* 8022F4A4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8022F4A8  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 8022F4AC  4C C6 31 82 */	crclr 6
/* 8022F4B0  48 13 71 0D */	bl snprintf
/* 8022F4B4  7F C3 F3 78 */	mr r3, r30
/* 8022F4B8  38 81 00 08 */	addi r4, r1, 8
/* 8022F4BC  48 13 96 01 */	bl strcat
/* 8022F4C0  C0 5C 01 2C */	lfs f2, 0x12c(r28)
/* 8022F4C4  FC 00 F0 1E */	fctiwz f0, f30
/* 8022F4C8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8022F4CC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8022F4D0  C8 22 B0 70 */	lfd f1, lit_4198(r2)
/* 8022F4D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8022F4D8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8022F4DC  3C 00 43 30 */	lis r0, 0x4330
/* 8022F4E0  90 01 00 38 */	stw r0, 0x38(r1)
/* 8022F4E4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8022F4E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8022F4EC  EC 02 00 2A */	fadds f0, f2, f0
/* 8022F4F0  D0 1C 01 2C */	stfs f0, 0x12c(r28)
lbl_8022F4F4:
/* 8022F4F4  C0 3C 01 2C */	lfs f1, 0x12c(r28)
/* 8022F4F8  C0 1C 01 28 */	lfs f0, 0x128(r28)
/* 8022F4FC  EC 00 F8 2A */	fadds f0, f0, f31
/* 8022F500  EC 01 00 2A */	fadds f0, f1, f0
/* 8022F504  D0 1C 01 2C */	stfs f0, 0x12c(r28)
lbl_8022F508:
/* 8022F508  7F C3 F3 78 */	mr r3, r30
/* 8022F50C  7F A4 EB 78 */	mr r4, r29
/* 8022F510  48 13 95 AD */	bl strcat
lbl_8022F514:
/* 8022F514  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8022F518  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8022F51C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8022F520  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8022F524  39 61 00 50 */	addi r11, r1, 0x50
/* 8022F528  48 13 2C FD */	bl _restgpr_28
/* 8022F52C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8022F530  7C 08 03 A6 */	mtlr r0
/* 8022F534  38 21 00 70 */	addi r1, r1, 0x70
/* 8022F538  4E 80 00 20 */	blr 
