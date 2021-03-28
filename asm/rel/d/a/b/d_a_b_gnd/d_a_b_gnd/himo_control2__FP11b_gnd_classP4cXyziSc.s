lbl_805FB414:
/* 805FB414  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805FB418  7C 08 02 A6 */	mflr r0
/* 805FB41C  90 01 00 94 */	stw r0, 0x94(r1)
/* 805FB420  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805FB424  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805FB428  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805FB42C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805FB430  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 805FB434  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 805FB438  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 805FB43C  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 805FB440  39 61 00 50 */	addi r11, r1, 0x50
/* 805FB444  4B D6 6D 80 */	b _savegpr_23
/* 805FB448  7C 7E 1B 78 */	mr r30, r3
/* 805FB44C  7C BF 2B 78 */	mr r31, r5
/* 805FB450  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805FB454  38 63 26 64 */	addi r3, r3, lit_3815@l
/* 805FB458  1F 9F 00 C0 */	mulli r28, r31, 0xc0
/* 805FB45C  3B 1C 1F F0 */	addi r24, r28, 0x1ff0
/* 805FB460  7F 1E C2 14 */	add r24, r30, r24
/* 805FB464  C0 04 00 00 */	lfs f0, 0(r4)
/* 805FB468  D0 18 00 B4 */	stfs f0, 0xb4(r24)
/* 805FB46C  C0 04 00 04 */	lfs f0, 4(r4)
/* 805FB470  D0 18 00 B8 */	stfs f0, 0xb8(r24)
/* 805FB474  C0 04 00 08 */	lfs f0, 8(r4)
/* 805FB478  D0 18 00 BC */	stfs f0, 0xbc(r24)
/* 805FB47C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805FB480  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805FB484  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805FB488  7C C0 07 75 */	extsb. r0, r6
/* 805FB48C  41 82 00 10 */	beq lbl_805FB49C
/* 805FB490  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 805FB494  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805FB498  48 00 00 0C */	b lbl_805FB4A4
lbl_805FB49C:
/* 805FB49C  C0 03 01 28 */	lfs f0, 0x128(r3)
/* 805FB4A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_805FB4A4:
/* 805FB4A4  3B 60 00 0E */	li r27, 0xe
/* 805FB4A8  3A F8 00 A8 */	addi r23, r24, 0xa8
/* 805FB4AC  C3 E3 00 14 */	lfs f31, 0x14(r3)
/* 805FB4B0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FB4B4  3B A3 07 68 */	addi r29, r3, calc_mtx@l
lbl_805FB4B8:
/* 805FB4B8  C0 37 00 00 */	lfs f1, 0(r23)
/* 805FB4BC  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 805FB4C0  EF C1 00 28 */	fsubs f30, f1, f0
/* 805FB4C4  C0 37 00 04 */	lfs f1, 4(r23)
/* 805FB4C8  C0 17 00 10 */	lfs f0, 0x10(r23)
/* 805FB4CC  EF A1 00 28 */	fsubs f29, f1, f0
/* 805FB4D0  C0 37 00 08 */	lfs f1, 8(r23)
/* 805FB4D4  C0 17 00 14 */	lfs f0, 0x14(r23)
/* 805FB4D8  EF 81 00 28 */	fsubs f28, f1, f0
/* 805FB4DC  FC 20 F0 90 */	fmr f1, f30
/* 805FB4E0  FC 40 E0 90 */	fmr f2, f28
/* 805FB4E4  4B C6 C1 90 */	b cM_atan2s__Fff
/* 805FB4E8  7C 79 07 34 */	extsh r25, r3
/* 805FB4EC  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 805FB4F0  EC 1C 07 32 */	fmuls f0, f28, f28
/* 805FB4F4  EC 41 00 2A */	fadds f2, f1, f0
/* 805FB4F8  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 805FB4FC  40 81 00 0C */	ble lbl_805FB508
/* 805FB500  FC 00 10 34 */	frsqrte f0, f2
/* 805FB504  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805FB508:
/* 805FB508  FC 20 E8 90 */	fmr f1, f29
/* 805FB50C  4B C6 C1 68 */	b cM_atan2s__Fff
/* 805FB510  7C 03 00 D0 */	neg r0, r3
/* 805FB514  7C 1A 07 34 */	extsh r26, r0
/* 805FB518  80 7D 00 00 */	lwz r3, 0(r29)
/* 805FB51C  7F 24 CB 78 */	mr r4, r25
/* 805FB520  4B A1 0E BC */	b mDoMtx_YrotS__FPA4_fs
/* 805FB524  80 7D 00 00 */	lwz r3, 0(r29)
/* 805FB528  7F 44 D3 78 */	mr r4, r26
/* 805FB52C  4B A1 0E 70 */	b mDoMtx_XrotM__FPA4_fs
/* 805FB530  38 61 00 14 */	addi r3, r1, 0x14
/* 805FB534  38 81 00 08 */	addi r4, r1, 8
/* 805FB538  4B C7 59 B4 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FB53C  C0 37 00 0C */	lfs f1, 0xc(r23)
/* 805FB540  C0 01 00 08 */	lfs f0, 8(r1)
/* 805FB544  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB548  D0 17 00 00 */	stfs f0, 0(r23)
/* 805FB54C  C0 37 00 10 */	lfs f1, 0x10(r23)
/* 805FB550  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805FB554  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB558  D0 17 00 04 */	stfs f0, 4(r23)
/* 805FB55C  C0 37 00 14 */	lfs f1, 0x14(r23)
/* 805FB560  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805FB564  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB568  D0 17 00 08 */	stfs f0, 8(r23)
/* 805FB56C  3B 7B FF FF */	addi r27, r27, -1
/* 805FB570  2C 1B 00 01 */	cmpwi r27, 1
/* 805FB574  3A F7 FF F4 */	addi r23, r23, -12
/* 805FB578  40 80 FF 40 */	bge lbl_805FB4B8
/* 805FB57C  7F 04 C3 78 */	mr r4, r24
/* 805FB580  1C 1F 00 3C */	mulli r0, r31, 0x3c
/* 805FB584  7C 7E 02 14 */	add r3, r30, r0
/* 805FB588  80 63 21 A8 */	lwz r3, 0x21a8(r3)
/* 805FB58C  80 63 00 00 */	lwz r3, 0(r3)
/* 805FB590  38 00 00 10 */	li r0, 0x10
/* 805FB594  7C 09 03 A6 */	mtctr r0
lbl_805FB598:
/* 805FB598  C0 04 00 00 */	lfs f0, 0(r4)
/* 805FB59C  D0 03 00 00 */	stfs f0, 0(r3)
/* 805FB5A0  C0 04 00 04 */	lfs f0, 4(r4)
/* 805FB5A4  D0 03 00 04 */	stfs f0, 4(r3)
/* 805FB5A8  C0 04 00 08 */	lfs f0, 8(r4)
/* 805FB5AC  D0 03 00 08 */	stfs f0, 8(r3)
/* 805FB5B0  38 63 00 0C */	addi r3, r3, 0xc
/* 805FB5B4  38 84 00 0C */	addi r4, r4, 0xc
/* 805FB5B8  42 00 FF E0 */	bdnz lbl_805FB598
/* 805FB5BC  80 7E 22 20 */	lwz r3, 0x2220(r30)
/* 805FB5C0  80 63 00 00 */	lwz r3, 0(r3)
/* 805FB5C4  7C 9E E2 14 */	add r4, r30, r28
/* 805FB5C8  C0 04 20 A4 */	lfs f0, 0x20a4(r4)
/* 805FB5CC  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 805FB5D0  7C 03 05 2E */	stfsx f0, r3, r0
/* 805FB5D4  C0 04 20 A8 */	lfs f0, 0x20a8(r4)
/* 805FB5D8  7C 63 02 14 */	add r3, r3, r0
/* 805FB5DC  D0 03 00 04 */	stfs f0, 4(r3)
/* 805FB5E0  C0 04 20 AC */	lfs f0, 0x20ac(r4)
/* 805FB5E4  D0 03 00 08 */	stfs f0, 8(r3)
/* 805FB5E8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805FB5EC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805FB5F0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805FB5F4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805FB5F8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 805FB5FC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 805FB600  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 805FB604  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 805FB608  39 61 00 50 */	addi r11, r1, 0x50
/* 805FB60C  4B D6 6C 04 */	b _restgpr_23
/* 805FB610  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805FB614  7C 08 03 A6 */	mtlr r0
/* 805FB618  38 21 00 90 */	addi r1, r1, 0x90
/* 805FB61C  4E 80 00 20 */	blr 
