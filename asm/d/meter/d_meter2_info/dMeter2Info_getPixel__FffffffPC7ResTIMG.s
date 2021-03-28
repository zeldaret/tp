lbl_8021E308:
/* 8021E308  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8021E30C  7C 08 02 A6 */	mflr r0
/* 8021E310  90 01 00 74 */	stw r0, 0x74(r1)
/* 8021E314  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8021E318  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8021E31C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8021E320  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8021E324  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8021E328  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8021E32C  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 8021E330  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 8021E334  39 61 00 30 */	addi r11, r1, 0x30
/* 8021E338  48 14 3E A5 */	bl _savegpr_29
/* 8021E33C  FF 80 28 90 */	fmr f28, f5
/* 8021E340  FF A0 30 90 */	fmr f29, f6
/* 8021E344  7C 7F 1B 78 */	mr r31, r3
/* 8021E348  EF E1 18 28 */	fsubs f31, f1, f3
/* 8021E34C  EF C2 20 28 */	fsubs f30, f2, f4
/* 8021E350  C0 02 AF 98 */	lfs f0, lit_3916(r2)
/* 8021E354  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8021E358  41 80 00 68 */	blt lbl_8021E3C0
/* 8021E35C  FC 20 E0 90 */	fmr f1, f28
/* 8021E360  48 14 3D 4D */	bl __cvt_fp2unsigned
/* 8021E364  C8 22 AF C0 */	lfd f1, lit_5206(r2)
/* 8021E368  90 61 00 0C */	stw r3, 0xc(r1)
/* 8021E36C  3C 00 43 30 */	lis r0, 0x4330
/* 8021E370  90 01 00 08 */	stw r0, 8(r1)
/* 8021E374  C8 01 00 08 */	lfd f0, 8(r1)
/* 8021E378  EC 00 08 28 */	fsubs f0, f0, f1
/* 8021E37C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8021E380  4C 41 13 82 */	cror 2, 1, 2
/* 8021E384  41 82 00 3C */	beq lbl_8021E3C0
/* 8021E388  C0 02 AF 98 */	lfs f0, lit_3916(r2)
/* 8021E38C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8021E390  41 80 00 30 */	blt lbl_8021E3C0
/* 8021E394  FC 20 E8 90 */	fmr f1, f29
/* 8021E398  48 14 3D 15 */	bl __cvt_fp2unsigned
/* 8021E39C  C8 22 AF C0 */	lfd f1, lit_5206(r2)
/* 8021E3A0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8021E3A4  3C 00 43 30 */	lis r0, 0x4330
/* 8021E3A8  90 01 00 08 */	stw r0, 8(r1)
/* 8021E3AC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8021E3B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8021E3B4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8021E3B8  4C 41 13 82 */	cror 2, 1, 2
/* 8021E3BC  40 82 00 0C */	bne lbl_8021E3C8
lbl_8021E3C0:
/* 8021E3C0  38 60 00 00 */	li r3, 0
/* 8021E3C4  48 00 00 B4 */	b lbl_8021E478
lbl_8021E3C8:
/* 8021E3C8  A3 BF 00 02 */	lhz r29, 2(r31)
/* 8021E3CC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8021E3D0  90 01 00 08 */	stw r0, 8(r1)
/* 8021E3D4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8021E3D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8021E3DC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8021E3E0  EC 20 E0 24 */	fdivs f1, f0, f28
/* 8021E3E4  48 14 3C C9 */	bl __cvt_fp2unsigned
/* 8021E3E8  7C 7E 1B 78 */	mr r30, r3
/* 8021E3EC  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8021E3F0  C8 22 AF C0 */	lfd f1, lit_5206(r2)
/* 8021E3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021E3F8  3C 00 43 30 */	lis r0, 0x4330
/* 8021E3FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8021E400  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8021E404  EC 00 08 28 */	fsubs f0, f0, f1
/* 8021E408  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8021E40C  EC 20 E8 24 */	fdivs f1, f0, f29
/* 8021E410  48 14 3C 9D */	bl __cvt_fp2unsigned
/* 8021E414  81 1F 00 0C */	lwz r8, 0xc(r31)
/* 8021E418  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 8021E41C  54 66 1E F8 */	rlwinm r6, r3, 3, 0x1b, 0x1c
/* 8021E420  57 C5 07 7E */	clrlwi r5, r30, 0x1d
/* 8021E424  57 C4 10 34 */	rlwinm r4, r30, 2, 0, 0x1a
/* 8021E428  54 63 00 3A */	rlwinm r3, r3, 0, 0, 0x1d
/* 8021E42C  38 1D 00 07 */	addi r0, r29, 7
/* 8021E430  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 8021E434  7C 03 01 D6 */	mullw r0, r3, r0
/* 8021E438  7C 04 02 14 */	add r0, r4, r0
/* 8021E43C  7C 00 32 14 */	add r0, r0, r6
/* 8021E440  7C 00 3A 14 */	add r0, r0, r7
/* 8021E444  7C 00 FA 14 */	add r0, r0, r31
/* 8021E448  7C 05 00 AE */	lbzx r0, r5, r0
/* 8021E44C  54 00 08 3C */	slwi r0, r0, 1
/* 8021E450  7C 08 02 14 */	add r0, r8, r0
/* 8021E454  7C 7F 02 2E */	lhzx r3, r31, r0
/* 8021E458  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 8021E45C  41 82 00 0C */	beq lbl_8021E468
/* 8021E460  38 60 00 01 */	li r3, 1
/* 8021E464  48 00 00 14 */	b lbl_8021E478
lbl_8021E468:
/* 8021E468  54 63 04 66 */	rlwinm r3, r3, 0, 0x11, 0x13
/* 8021E46C  30 03 FF FF */	addic r0, r3, -1
/* 8021E470  7C 00 19 10 */	subfe r0, r0, r3
/* 8021E474  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_8021E478:
/* 8021E478  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8021E47C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8021E480  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8021E484  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8021E488  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8021E48C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8021E490  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 8021E494  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 8021E498  39 61 00 30 */	addi r11, r1, 0x30
/* 8021E49C  48 14 3D 8D */	bl _restgpr_29
/* 8021E4A0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8021E4A4  7C 08 03 A6 */	mtlr r0
/* 8021E4A8  38 21 00 70 */	addi r1, r1, 0x70
/* 8021E4AC  4E 80 00 20 */	blr 
