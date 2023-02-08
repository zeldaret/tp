lbl_80BBDA64:
/* 80BBDA64  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BBDA68  7C 08 02 A6 */	mflr r0
/* 80BBDA6C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BBDA70  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80BBDA74  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80BBDA78  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80BBDA7C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80BBDA80  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80BBDA84  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80BBDA88  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80BBDA8C  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 80BBDA90  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 80BBDA94  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 80BBDA98  39 61 00 40 */	addi r11, r1, 0x40
/* 80BBDA9C  4B 7A 47 35 */	bl _savegpr_26
/* 80BBDAA0  3C A0 80 BC */	lis r5, lit_3896@ha /* 0x80BC2148@ha */
/* 80BBDAA4  38 A5 21 48 */	addi r5, r5, lit_3896@l /* 0x80BC2148@l */
/* 80BBDAA8  3F C3 00 01 */	addis r30, r3, 1
/* 80BBDAAC  88 1E B1 EA */	lbz r0, -0x4e16(r30)
/* 80BBDAB0  7C 03 07 74 */	extsb r3, r0
/* 80BBDAB4  38 03 FF FE */	addi r0, r3, -2
/* 80BBDAB8  1C 00 07 0C */	mulli r0, r0, 0x70c
/* 80BBDABC  7F 44 02 14 */	add r26, r4, r0
/* 80BBDAC0  C3 C5 00 00 */	lfs f30, 0(r5)
/* 80BBDAC4  D3 C1 00 14 */	stfs f30, 0x14(r1)
/* 80BBDAC8  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 80BBDACC  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 80BBDAD0  C0 1E AE DC */	lfs f0, -0x5124(r30)
/* 80BBDAD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBDAD8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BBDADC  3B A0 00 00 */	li r29, 0
/* 80BBDAE0  C3 E5 00 58 */	lfs f31, 0x58(r5)
/* 80BBDAE4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBDAE8  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBDAEC  48 00 00 E8 */	b lbl_80BBDBD4
lbl_80BBDAF0:
/* 80BBDAF0  C0 1A 00 E8 */	lfs f0, 0xe8(r26)
/* 80BBDAF4  EC 7F 00 32 */	fmuls f3, f31, f0
/* 80BBDAF8  C0 5A 00 B4 */	lfs f2, 0xb4(r26)
/* 80BBDAFC  C0 3A 00 EC */	lfs f1, 0xec(r26)
/* 80BBDB00  C0 1A 00 E0 */	lfs f0, 0xe0(r26)
/* 80BBDB04  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBDB08  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BBDB0C  EC 02 00 2A */	fadds f0, f2, f0
/* 80BBDB10  EC 23 00 2A */	fadds f1, f3, f0
/* 80BBDB14  C0 1A 07 C0 */	lfs f0, 0x7c0(r26)
/* 80BBDB18  EF 81 00 28 */	fsubs f28, f1, f0
/* 80BBDB1C  C0 3A 00 B0 */	lfs f1, 0xb0(r26)
/* 80BBDB20  C0 1A 07 BC */	lfs f0, 0x7bc(r26)
/* 80BBDB24  EF A1 00 28 */	fsubs f29, f1, f0
/* 80BBDB28  C0 3A 00 B8 */	lfs f1, 0xb8(r26)
/* 80BBDB2C  C0 1A 07 C4 */	lfs f0, 0x7c4(r26)
/* 80BBDB30  EF 61 00 28 */	fsubs f27, f1, f0
/* 80BBDB34  FC 20 E8 90 */	fmr f1, f29
/* 80BBDB38  FC 40 D8 90 */	fmr f2, f27
/* 80BBDB3C  4B 6A 9B 39 */	bl cM_atan2s__Fff
/* 80BBDB40  7C 7B 07 34 */	extsh r27, r3
/* 80BBDB44  EC 3D 07 72 */	fmuls f1, f29, f29
/* 80BBDB48  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 80BBDB4C  EC 41 00 2A */	fadds f2, f1, f0
/* 80BBDB50  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 80BBDB54  40 81 00 0C */	ble lbl_80BBDB60
/* 80BBDB58  FC 00 10 34 */	frsqrte f0, f2
/* 80BBDB5C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80BBDB60:
/* 80BBDB60  FC 20 E0 90 */	fmr f1, f28
/* 80BBDB64  4B 6A 9B 11 */	bl cM_atan2s__Fff
/* 80BBDB68  7C 03 00 D0 */	neg r0, r3
/* 80BBDB6C  7C 1C 07 34 */	extsh r28, r0
/* 80BBDB70  B3 7A 07 E2 */	sth r27, 0x7e2(r26)
/* 80BBDB74  B0 1A 07 E0 */	sth r0, 0x7e0(r26)
/* 80BBDB78  80 7F 00 00 */	lwz r3, 0(r31)
/* 80BBDB7C  7F 64 DB 78 */	mr r4, r27
/* 80BBDB80  4B 44 E8 5D */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBDB84  80 7F 00 00 */	lwz r3, 0(r31)
/* 80BBDB88  7F 84 E3 78 */	mr r4, r28
/* 80BBDB8C  4B 44 E8 11 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BBDB90  38 61 00 14 */	addi r3, r1, 0x14
/* 80BBDB94  38 81 00 08 */	addi r4, r1, 8
/* 80BBDB98  4B 6B 33 55 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBDB9C  C0 3A 07 BC */	lfs f1, 0x7bc(r26)
/* 80BBDBA0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BBDBA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBDBA8  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 80BBDBAC  C0 3A 07 C0 */	lfs f1, 0x7c0(r26)
/* 80BBDBB0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BBDBB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBDBB8  D0 1A 00 B4 */	stfs f0, 0xb4(r26)
/* 80BBDBBC  C0 3A 07 C4 */	lfs f1, 0x7c4(r26)
/* 80BBDBC0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BBDBC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBDBC8  D0 1A 00 B8 */	stfs f0, 0xb8(r26)
/* 80BBDBCC  3B BD 00 01 */	addi r29, r29, 1
/* 80BBDBD0  3B 5A F8 F4 */	addi r26, r26, -1804
lbl_80BBDBD4:
/* 80BBDBD4  88 1E B1 EA */	lbz r0, -0x4e16(r30)
/* 80BBDBD8  7C 03 07 74 */	extsb r3, r0
/* 80BBDBDC  38 03 FF FF */	addi r0, r3, -1
/* 80BBDBE0  7C 1D 00 00 */	cmpw r29, r0
/* 80BBDBE4  41 80 FF 0C */	blt lbl_80BBDAF0
/* 80BBDBE8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80BBDBEC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80BBDBF0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80BBDBF4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80BBDBF8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80BBDBFC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80BBDC00  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 80BBDC04  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80BBDC08  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 80BBDC0C  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 80BBDC10  39 61 00 40 */	addi r11, r1, 0x40
/* 80BBDC14  4B 7A 46 09 */	bl _restgpr_26
/* 80BBDC18  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BBDC1C  7C 08 03 A6 */	mtlr r0
/* 80BBDC20  38 21 00 90 */	addi r1, r1, 0x90
/* 80BBDC24  4E 80 00 20 */	blr 
