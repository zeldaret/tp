lbl_8085D1DC:
/* 8085D1DC  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 8085D1E0  7C 08 02 A6 */	mflr r0
/* 8085D1E4  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 8085D1E8  DB E1 01 C0 */	stfd f31, 0x1c0(r1)
/* 8085D1EC  F3 E1 01 C8 */	psq_st f31, 456(r1), 0, 0 /* qr0 */
/* 8085D1F0  DB C1 01 B0 */	stfd f30, 0x1b0(r1)
/* 8085D1F4  F3 C1 01 B8 */	psq_st f30, 440(r1), 0, 0 /* qr0 */
/* 8085D1F8  DB A1 01 A0 */	stfd f29, 0x1a0(r1)
/* 8085D1FC  F3 A1 01 A8 */	psq_st f29, 424(r1), 0, 0 /* qr0 */
/* 8085D200  DB 81 01 90 */	stfd f28, 0x190(r1)
/* 8085D204  F3 81 01 98 */	psq_st f28, 408(r1), 0, 0 /* qr0 */
/* 8085D208  DB 61 01 80 */	stfd f27, 0x180(r1)
/* 8085D20C  F3 61 01 88 */	psq_st f27, 392(r1), 0, 0 /* qr0 */
/* 8085D210  DB 41 01 70 */	stfd f26, 0x170(r1)
/* 8085D214  F3 41 01 78 */	psq_st f26, 376(r1), 0, 0 /* qr0 */
/* 8085D218  DB 21 01 60 */	stfd f25, 0x160(r1)
/* 8085D21C  F3 21 01 68 */	psq_st f25, 360(r1), 0, 0 /* qr0 */
/* 8085D220  DB 01 01 50 */	stfd f24, 0x150(r1)
/* 8085D224  F3 01 01 58 */	psq_st f24, 344(r1), 0, 0 /* qr0 */
/* 8085D228  DA E1 01 40 */	stfd f23, 0x140(r1)
/* 8085D22C  F2 E1 01 48 */	psq_st f23, 328(r1), 0, 0 /* qr0 */
/* 8085D230  DA C1 01 30 */	stfd f22, 0x130(r1)
/* 8085D234  F2 C1 01 38 */	psq_st f22, 312(r1), 0, 0 /* qr0 */
/* 8085D238  DA A1 01 20 */	stfd f21, 0x120(r1)
/* 8085D23C  F2 A1 01 28 */	psq_st f21, 296(r1), 0, 0 /* qr0 */
/* 8085D240  DA 81 01 10 */	stfd f20, 0x110(r1)
/* 8085D244  F2 81 01 18 */	psq_st f20, 280(r1), 0, 0 /* qr0 */
/* 8085D248  39 61 01 10 */	addi r11, r1, 0x110
/* 8085D24C  4B B0 4F 55 */	bl __save_gpr
/* 8085D250  7C 6F 1B 78 */	mr r15, r3
/* 8085D254  3C 60 80 86 */	lis r3, lit_3836@ha /* 0x8085EF00@ha */
/* 8085D258  3B 43 EF 00 */	addi r26, r3, lit_3836@l /* 0x8085EF00@l */
/* 8085D25C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085D260  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8085D264  83 1B 5D AC */	lwz r24, 0x5dac(r27)
/* 8085D268  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085D26C  3B 83 CA 54 */	addi r28, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085D270  82 FC 10 58 */	lwz r23, 0x1058(r28)
/* 8085D274  3A C0 00 00 */	li r22, 0
/* 8085D278  3A A0 00 00 */	li r21, 0
/* 8085D27C  3A 80 00 00 */	li r20, 0
/* 8085D280  3A 60 00 00 */	li r19, 0
/* 8085D284  28 17 00 00 */	cmplwi r23, 0
/* 8085D288  40 82 00 0C */	bne lbl_8085D294
/* 8085D28C  38 60 00 01 */	li r3, 1
/* 8085D290  48 00 0C E8 */	b lbl_8085DF78
lbl_8085D294:
/* 8085D294  3A 40 00 00 */	li r18, 0
/* 8085D298  3B E0 00 00 */	li r31, 0
/* 8085D29C  38 1B 4E 00 */	addi r0, r27, 0x4e00
/* 8085D2A0  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8085D2A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8085D2A8  3B A3 9A 20 */	addi r29, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8085D2AC  CB 9A 01 28 */	lfd f28, 0x128(r26)
/* 8085D2B0  3D C0 43 30 */	lis r14, 0x4330
/* 8085D2B4  C3 BA 01 38 */	lfs f29, 0x138(r26)
/* 8085D2B8  CB DA 01 30 */	lfd f30, 0x130(r26)
/* 8085D2BC  CB FA 01 40 */	lfd f31, 0x140(r26)
/* 8085D2C0  C3 5A 00 A8 */	lfs f26, 0xa8(r26)
/* 8085D2C4  C3 3A 00 00 */	lfs f25, 0(r26)
/* 8085D2C8  C3 1A 00 10 */	lfs f24, 0x10(r26)
/* 8085D2CC  C2 FA 01 08 */	lfs f23, 0x108(r26)
/* 8085D2D0  48 00 0B 54 */	b lbl_8085DE24
lbl_8085D2D4:
/* 8085D2D4  3A 3F 00 1C */	addi r17, r31, 0x1c
/* 8085D2D8  7E 37 8A 14 */	add r17, r23, r17
/* 8085D2DC  C3 7A 00 0C */	lfs f27, 0xc(r26)
/* 8085D2E0  A0 71 00 3C */	lhz r3, 0x3c(r17)
/* 8085D2E4  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8085D2E8  7E DD 04 2E */	lfsx f22, r29, r0
/* 8085D2EC  90 61 00 8C */	stw r3, 0x8c(r1)
/* 8085D2F0  91 C1 00 88 */	stw r14, 0x88(r1)
/* 8085D2F4  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8085D2F8  EC 20 E0 28 */	fsubs f1, f0, f28
/* 8085D2FC  56 40 06 36 */	rlwinm r0, r18, 0, 0x18, 0x1b
/* 8085D300  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 8085D304  90 81 00 94 */	stw r4, 0x94(r1)
/* 8085D308  91 C1 00 90 */	stw r14, 0x90(r1)
/* 8085D30C  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8085D310  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8085D314  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8085D318  EC 01 00 2A */	fadds f0, f1, f0
/* 8085D31C  FC 00 00 1E */	fctiwz f0, f0
/* 8085D320  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8085D324  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8085D328  B0 11 00 3C */	sth r0, 0x3c(r17)
/* 8085D32C  A0 71 00 3E */	lhz r3, 0x3e(r17)
/* 8085D330  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8085D334  7E BD 04 2E */	lfsx f21, r29, r0
/* 8085D338  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 8085D33C  91 C1 00 A0 */	stw r14, 0xa0(r1)
/* 8085D340  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8085D344  FC 20 E0 28 */	fsub f1, f0, f28
/* 8085D348  90 81 00 AC */	stw r4, 0xac(r1)
/* 8085D34C  91 C1 00 A8 */	stw r14, 0xa8(r1)
/* 8085D350  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8085D354  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8085D358  FC 1F 00 32 */	fmul f0, f31, f0
/* 8085D35C  FC 01 00 2A */	fadd f0, f1, f0
/* 8085D360  FC 00 00 1E */	fctiwz f0, f0
/* 8085D364  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 8085D368  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8085D36C  B0 11 00 3E */	sth r0, 0x3e(r17)
/* 8085D370  C0 11 00 38 */	lfs f0, 0x38(r17)
/* 8085D374  FC 00 D0 40 */	fcmpo cr0, f0, f26
/* 8085D378  40 80 00 4C */	bge lbl_8085D3C4
/* 8085D37C  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085D380  2C 00 00 02 */	cmpwi r0, 2
/* 8085D384  40 82 00 24 */	bne lbl_8085D3A8
/* 8085D388  C0 5A 01 48 */	lfs f2, 0x148(r26)
/* 8085D38C  C0 3A 00 AC */	lfs f1, 0xac(r26)
/* 8085D390  C0 1A 00 5C */	lfs f0, 0x5c(r26)
/* 8085D394  EC 00 05 72 */	fmuls f0, f0, f21
/* 8085D398  EC 01 00 2A */	fadds f0, f1, f0
/* 8085D39C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085D3A0  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085D3A4  48 00 00 20 */	b lbl_8085D3C4
lbl_8085D3A8:
/* 8085D3A8  C0 5A 00 B4 */	lfs f2, 0xb4(r26)
/* 8085D3AC  C0 3A 00 AC */	lfs f1, 0xac(r26)
/* 8085D3B0  C0 1A 00 5C */	lfs f0, 0x5c(r26)
/* 8085D3B4  EC 00 05 72 */	fmuls f0, f0, f21
/* 8085D3B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8085D3BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085D3C0  D0 11 00 38 */	stfs f0, 0x38(r17)
lbl_8085D3C4:
/* 8085D3C4  88 11 00 00 */	lbz r0, 0(r17)
/* 8085D3C8  7C 00 07 74 */	extsb r0, r0
/* 8085D3CC  2C 00 00 02 */	cmpwi r0, 2
/* 8085D3D0  41 82 02 AC */	beq lbl_8085D67C
/* 8085D3D4  40 80 00 14 */	bge lbl_8085D3E8
/* 8085D3D8  2C 00 00 00 */	cmpwi r0, 0
/* 8085D3DC  41 82 00 18 */	beq lbl_8085D3F4
/* 8085D3E0  40 80 01 10 */	bge lbl_8085D4F0
/* 8085D3E4  48 00 03 FC */	b lbl_8085D7E0
lbl_8085D3E8:
/* 8085D3E8  2C 00 00 04 */	cmpwi r0, 4
/* 8085D3EC  40 80 03 F4 */	bge lbl_8085D7E0
/* 8085D3F0  48 00 03 34 */	b lbl_8085D724
lbl_8085D3F4:
/* 8085D3F4  C0 3A 01 4C */	lfs f1, 0x14c(r26)
/* 8085D3F8  4B A0 A5 5D */	bl cM_rndF__Ff
/* 8085D3FC  FC 00 08 1E */	fctiwz f0, f1
/* 8085D400  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 8085D404  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8085D408  C0 3A 00 4C */	lfs f1, 0x4c(r26)
/* 8085D40C  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 8085D410  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8085D414  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8085D418  7E 00 22 14 */	add r16, r0, r4
/* 8085D41C  C0 10 00 00 */	lfs f0, 0(r16)
/* 8085D420  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085D424  4B A0 A5 69 */	bl cM_rndFX__Ff
/* 8085D428  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8085D42C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8085D430  4B A0 A5 25 */	bl cM_rndF__Ff
/* 8085D434  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8085D438  C0 3A 00 4C */	lfs f1, 0x4c(r26)
/* 8085D43C  C0 10 00 04 */	lfs f0, 4(r16)
/* 8085D440  EC 21 00 32 */	fmuls f1, f1, f0
/* 8085D444  4B A0 A5 49 */	bl cM_rndFX__Ff
/* 8085D448  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8085D44C  C0 2F 04 D0 */	lfs f1, 0x4d0(r15)
/* 8085D450  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8085D454  EC 01 00 2A */	fadds f0, f1, f0
/* 8085D458  D0 11 00 10 */	stfs f0, 0x10(r17)
/* 8085D45C  C0 5A 01 50 */	lfs f2, 0x150(r26)
/* 8085D460  C0 2F 04 D4 */	lfs f1, 0x4d4(r15)
/* 8085D464  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8085D468  EC 01 00 2A */	fadds f0, f1, f0
/* 8085D46C  EC 02 00 2A */	fadds f0, f2, f0
/* 8085D470  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085D474  C0 2F 04 D8 */	lfs f1, 0x4d8(r15)
/* 8085D478  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8085D47C  EC 01 00 2A */	fadds f0, f1, f0
/* 8085D480  D0 11 00 18 */	stfs f0, 0x18(r17)
/* 8085D484  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8085D488  D0 11 00 24 */	stfs f0, 0x24(r17)
/* 8085D48C  FC 00 B2 10 */	fabs f0, f22
/* 8085D490  C0 5A 00 00 */	lfs f2, 0(r26)
/* 8085D494  C0 3A 00 3C */	lfs f1, 0x3c(r26)
/* 8085D498  FC 00 00 18 */	frsp f0, f0
/* 8085D49C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085D4A0  EC 02 00 2A */	fadds f0, f2, f0
/* 8085D4A4  D0 11 00 38 */	stfs f0, 0x38(r17)
/* 8085D4A8  38 00 00 00 */	li r0, 0
/* 8085D4AC  B0 11 00 40 */	sth r0, 0x40(r17)
/* 8085D4B0  B0 11 00 42 */	sth r0, 0x42(r17)
/* 8085D4B4  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8085D4B8  D0 11 00 2C */	stfs f0, 0x2c(r17)
/* 8085D4BC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8085D4C0  FC 00 00 50 */	fneg f0, f0
/* 8085D4C4  D0 11 00 04 */	stfs f0, 4(r17)
/* 8085D4C8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8085D4CC  FC 00 00 50 */	fneg f0, f0
/* 8085D4D0  D0 11 00 08 */	stfs f0, 8(r17)
/* 8085D4D4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8085D4D8  FC 00 00 50 */	fneg f0, f0
/* 8085D4DC  D0 11 00 0C */	stfs f0, 0xc(r17)
/* 8085D4E0  88 71 00 00 */	lbz r3, 0(r17)
/* 8085D4E4  38 03 00 01 */	addi r0, r3, 1
/* 8085D4E8  98 11 00 00 */	stb r0, 0(r17)
/* 8085D4EC  48 00 02 F4 */	b lbl_8085D7E0
lbl_8085D4F0:
/* 8085D4F0  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 8085D4F4  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8085D4F8  C0 11 00 08 */	lfs f0, 8(r17)
/* 8085D4FC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8085D500  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8085D504  38 71 00 04 */	addi r3, r17, 4
/* 8085D508  38 81 00 7C */	addi r4, r1, 0x7c
/* 8085D50C  4B AE 9E 91 */	bl PSVECSquareDistance
/* 8085D510  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8085D514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D518  40 81 00 58 */	ble lbl_8085D570
/* 8085D51C  FC 00 08 34 */	frsqrte f0, f1
/* 8085D520  C8 9A 00 E8 */	lfd f4, 0xe8(r26)
/* 8085D524  FC 44 00 32 */	fmul f2, f4, f0
/* 8085D528  C8 7A 00 F0 */	lfd f3, 0xf0(r26)
/* 8085D52C  FC 00 00 32 */	fmul f0, f0, f0
/* 8085D530  FC 01 00 32 */	fmul f0, f1, f0
/* 8085D534  FC 03 00 28 */	fsub f0, f3, f0
/* 8085D538  FC 02 00 32 */	fmul f0, f2, f0
/* 8085D53C  FC 44 00 32 */	fmul f2, f4, f0
/* 8085D540  FC 00 00 32 */	fmul f0, f0, f0
/* 8085D544  FC 01 00 32 */	fmul f0, f1, f0
/* 8085D548  FC 03 00 28 */	fsub f0, f3, f0
/* 8085D54C  FC 02 00 32 */	fmul f0, f2, f0
/* 8085D550  FC 44 00 32 */	fmul f2, f4, f0
/* 8085D554  FC 00 00 32 */	fmul f0, f0, f0
/* 8085D558  FC 01 00 32 */	fmul f0, f1, f0
/* 8085D55C  FC 03 00 28 */	fsub f0, f3, f0
/* 8085D560  FC 02 00 32 */	fmul f0, f2, f0
/* 8085D564  FC 21 00 32 */	fmul f1, f1, f0
/* 8085D568  FC 20 08 18 */	frsp f1, f1
/* 8085D56C  48 00 00 88 */	b lbl_8085D5F4
lbl_8085D570:
/* 8085D570  C8 1A 00 80 */	lfd f0, 0x80(r26)
/* 8085D574  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D578  40 80 00 10 */	bge lbl_8085D588
/* 8085D57C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085D580  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085D584  48 00 00 70 */	b lbl_8085D5F4
lbl_8085D588:
/* 8085D588  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8085D58C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8085D590  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085D594  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085D598  7C 03 00 00 */	cmpw r3, r0
/* 8085D59C  41 82 00 14 */	beq lbl_8085D5B0
/* 8085D5A0  40 80 00 40 */	bge lbl_8085D5E0
/* 8085D5A4  2C 03 00 00 */	cmpwi r3, 0
/* 8085D5A8  41 82 00 20 */	beq lbl_8085D5C8
/* 8085D5AC  48 00 00 34 */	b lbl_8085D5E0
lbl_8085D5B0:
/* 8085D5B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085D5B4  41 82 00 0C */	beq lbl_8085D5C0
/* 8085D5B8  38 00 00 01 */	li r0, 1
/* 8085D5BC  48 00 00 28 */	b lbl_8085D5E4
lbl_8085D5C0:
/* 8085D5C0  38 00 00 02 */	li r0, 2
/* 8085D5C4  48 00 00 20 */	b lbl_8085D5E4
lbl_8085D5C8:
/* 8085D5C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085D5CC  41 82 00 0C */	beq lbl_8085D5D8
/* 8085D5D0  38 00 00 05 */	li r0, 5
/* 8085D5D4  48 00 00 10 */	b lbl_8085D5E4
lbl_8085D5D8:
/* 8085D5D8  38 00 00 03 */	li r0, 3
/* 8085D5DC  48 00 00 08 */	b lbl_8085D5E4
lbl_8085D5E0:
/* 8085D5E0  38 00 00 04 */	li r0, 4
lbl_8085D5E4:
/* 8085D5E4  2C 00 00 01 */	cmpwi r0, 1
/* 8085D5E8  40 82 00 0C */	bne lbl_8085D5F4
/* 8085D5EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085D5F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085D5F4:
/* 8085D5F4  C0 1A 01 54 */	lfs f0, 0x154(r26)
/* 8085D5F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D5FC  4C 41 13 82 */	cror 2, 1, 2
/* 8085D600  40 82 00 0C */	bne lbl_8085D60C
/* 8085D604  EE 81 00 28 */	fsubs f20, f1, f0
/* 8085D608  48 00 00 08 */	b lbl_8085D610
lbl_8085D60C:
/* 8085D60C  C2 9A 00 10 */	lfs f20, 0x10(r26)
lbl_8085D610:
/* 8085D610  38 71 00 04 */	addi r3, r17, 4
/* 8085D614  C0 7A 01 54 */	lfs f3, 0x154(r26)
/* 8085D618  EE A3 05 72 */	fmuls f21, f3, f21
/* 8085D61C  FC 20 A8 90 */	fmr f1, f21
/* 8085D620  C0 5A 01 1C */	lfs f2, 0x11c(r26)
/* 8085D624  C0 9A 01 20 */	lfs f4, 0x120(r26)
/* 8085D628  4B A1 23 55 */	bl cLib_addCalc__FPfffff
/* 8085D62C  38 71 00 08 */	addi r3, r17, 8
/* 8085D630  C0 3A 01 54 */	lfs f1, 0x154(r26)
/* 8085D634  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8085D638  EC 00 B0 2A */	fadds f0, f0, f22
/* 8085D63C  EC 41 00 32 */	fmuls f2, f1, f0
/* 8085D640  C0 3A 00 4C */	lfs f1, 0x4c(r26)
/* 8085D644  EC 14 08 24 */	fdivs f0, f20, f1
/* 8085D648  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085D64C  EC 22 00 2A */	fadds f1, f2, f0
/* 8085D650  C0 5A 00 B8 */	lfs f2, 0xb8(r26)
/* 8085D654  C0 7A 01 58 */	lfs f3, 0x158(r26)
/* 8085D658  C0 9A 01 20 */	lfs f4, 0x120(r26)
/* 8085D65C  4B A1 23 21 */	bl cLib_addCalc__FPfffff
/* 8085D660  38 71 00 0C */	addi r3, r17, 0xc
/* 8085D664  FC 20 A8 90 */	fmr f1, f21
/* 8085D668  C0 5A 01 1C */	lfs f2, 0x11c(r26)
/* 8085D66C  C0 7A 00 5C */	lfs f3, 0x5c(r26)
/* 8085D670  C0 9A 01 20 */	lfs f4, 0x120(r26)
/* 8085D674  4B A1 23 09 */	bl cLib_addCalc__FPfffff
/* 8085D678  48 00 01 68 */	b lbl_8085D7E0
lbl_8085D67C:
/* 8085D67C  C0 3A 01 54 */	lfs f1, 0x154(r26)
/* 8085D680  EC 41 05 72 */	fmuls f2, f1, f21
/* 8085D684  D0 51 00 04 */	stfs f2, 4(r17)
/* 8085D688  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8085D68C  EC 00 B0 2A */	fadds f0, f0, f22
/* 8085D690  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085D694  D0 11 00 08 */	stfs f0, 8(r17)
/* 8085D698  D0 51 00 0C */	stfs f2, 0xc(r17)
/* 8085D69C  80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 8085D6A0  3C 80 80 86 */	lis r4, d_a_kytag12__stringBase0@ha /* 0x8085F0EC@ha */
/* 8085D6A4  38 84 F0 EC */	addi r4, r4, d_a_kytag12__stringBase0@l /* 0x8085F0EC@l */
/* 8085D6A8  4B B0 B2 ED */	bl strcmp
/* 8085D6AC  2C 03 00 00 */	cmpwi r3, 0
/* 8085D6B0  40 82 01 30 */	bne lbl_8085D7E0
/* 8085D6B4  88 0F 04 BA */	lbz r0, 0x4ba(r15)
/* 8085D6B8  2C 00 00 01 */	cmpwi r0, 1
/* 8085D6BC  40 82 01 24 */	bne lbl_8085D7E0
/* 8085D6C0  2C 12 06 40 */	cmpwi r18, 0x640
/* 8085D6C4  40 80 01 1C */	bge lbl_8085D7E0
/* 8085D6C8  C0 3A 01 5C */	lfs f1, 0x15c(r26)
/* 8085D6CC  4B A0 A2 89 */	bl cM_rndF__Ff
/* 8085D6D0  C0 1A 01 5C */	lfs f0, 0x15c(r26)
/* 8085D6D4  EC 20 08 2A */	fadds f1, f0, f1
/* 8085D6D8  C0 11 00 14 */	lfs f0, 0x14(r17)
/* 8085D6DC  EC 00 08 2A */	fadds f0, f0, f1
/* 8085D6E0  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085D6E4  2C 12 03 20 */	cmpwi r18, 0x320
/* 8085D6E8  41 80 00 20 */	blt lbl_8085D708
/* 8085D6EC  C0 31 00 14 */	lfs f1, 0x14(r17)
/* 8085D6F0  C0 1A 00 44 */	lfs f0, 0x44(r26)
/* 8085D6F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D6F8  40 80 00 E8 */	bge lbl_8085D7E0
/* 8085D6FC  C0 1A 00 CC */	lfs f0, 0xcc(r26)
/* 8085D700  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085D704  48 00 00 DC */	b lbl_8085D7E0
lbl_8085D708:
/* 8085D708  C0 31 00 14 */	lfs f1, 0x14(r17)
/* 8085D70C  C0 1A 01 60 */	lfs f0, 0x160(r26)
/* 8085D710  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D714  40 80 00 CC */	bge lbl_8085D7E0
/* 8085D718  C0 1A 00 D4 */	lfs f0, 0xd4(r26)
/* 8085D71C  D0 11 00 14 */	stfs f0, 0x14(r17)
/* 8085D720  48 00 00 C0 */	b lbl_8085D7E0
lbl_8085D724:
/* 8085D724  38 61 00 4C */	addi r3, r1, 0x4c
/* 8085D728  38 91 00 10 */	addi r4, r17, 0x10
/* 8085D72C  38 B1 00 04 */	addi r5, r17, 4
/* 8085D730  4B A0 93 B5 */	bl __pl__4cXyzCFRC3Vec
/* 8085D734  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8085D738  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085D73C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8085D740  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8085D744  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8085D748  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8085D74C  C3 7A 00 10 */	lfs f27, 0x10(r26)
/* 8085D750  C0 3A 00 B8 */	lfs f1, 0xb8(r26)
/* 8085D754  4B A0 A2 39 */	bl cM_rndFX__Ff
/* 8085D758  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8085D75C  C0 3A 00 B8 */	lfs f1, 0xb8(r26)
/* 8085D760  4B A0 A2 2D */	bl cM_rndFX__Ff
/* 8085D764  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8085D768  C0 9A 00 0C */	lfs f4, 0xc(r26)
/* 8085D76C  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 8085D770  C0 51 00 04 */	lfs f2, 4(r17)
/* 8085D774  C0 7A 00 BC */	lfs f3, 0xbc(r26)
/* 8085D778  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8085D77C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8085D780  EC 02 00 2A */	fadds f0, f2, f0
/* 8085D784  D0 11 00 04 */	stfs f0, 4(r17)
/* 8085D788  C0 51 00 08 */	lfs f2, 8(r17)
/* 8085D78C  EC 03 01 32 */	fmuls f0, f3, f4
/* 8085D790  EC 02 00 2A */	fadds f0, f2, f0
/* 8085D794  D0 11 00 08 */	stfs f0, 8(r17)
/* 8085D798  C0 51 00 0C */	lfs f2, 0xc(r17)
/* 8085D79C  FC 00 08 18 */	frsp f0, f1
/* 8085D7A0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8085D7A4  EC 02 00 2A */	fadds f0, f2, f0
/* 8085D7A8  D0 11 00 0C */	stfs f0, 0xc(r17)
/* 8085D7AC  C0 31 00 38 */	lfs f1, 0x38(r17)
/* 8085D7B0  C0 1A 00 C0 */	lfs f0, 0xc0(r26)
/* 8085D7B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D7B8  40 81 00 0C */	ble lbl_8085D7C4
/* 8085D7BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085D7C0  D0 11 00 38 */	stfs f0, 0x38(r17)
lbl_8085D7C4:
/* 8085D7C4  C0 31 00 24 */	lfs f1, 0x24(r17)
/* 8085D7C8  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8085D7CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D7D0  4C 40 13 82 */	cror 2, 0, 2
/* 8085D7D4  40 82 00 0C */	bne lbl_8085D7E0
/* 8085D7D8  38 00 00 02 */	li r0, 2
/* 8085D7DC  98 11 00 00 */	stb r0, 0(r17)
lbl_8085D7E0:
/* 8085D7E0  3A 00 00 00 */	li r16, 0
/* 8085D7E4  3B C0 00 00 */	li r30, 0
lbl_8085D7E8:
/* 8085D7E8  7C 7C F2 14 */	add r3, r28, r30
/* 8085D7EC  3B 23 09 90 */	addi r25, r3, 0x990
/* 8085D7F0  80 63 09 90 */	lwz r3, 0x990(r3)
/* 8085D7F4  28 03 00 00 */	cmplwi r3, 0
/* 8085D7F8  41 82 01 98 */	beq lbl_8085D990
/* 8085D7FC  38 91 00 10 */	addi r4, r17, 0x10
/* 8085D800  4B AE 9B 9D */	bl PSVECSquareDistance
/* 8085D804  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8085D808  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D80C  40 81 00 58 */	ble lbl_8085D864
/* 8085D810  FC 00 08 34 */	frsqrte f0, f1
/* 8085D814  C8 9A 00 E8 */	lfd f4, 0xe8(r26)
/* 8085D818  FC 44 00 32 */	fmul f2, f4, f0
/* 8085D81C  C8 7A 00 F0 */	lfd f3, 0xf0(r26)
/* 8085D820  FC 00 00 32 */	fmul f0, f0, f0
/* 8085D824  FC 01 00 32 */	fmul f0, f1, f0
/* 8085D828  FC 03 00 28 */	fsub f0, f3, f0
/* 8085D82C  FC 02 00 32 */	fmul f0, f2, f0
/* 8085D830  FC 44 00 32 */	fmul f2, f4, f0
/* 8085D834  FC 00 00 32 */	fmul f0, f0, f0
/* 8085D838  FC 01 00 32 */	fmul f0, f1, f0
/* 8085D83C  FC 03 00 28 */	fsub f0, f3, f0
/* 8085D840  FC 02 00 32 */	fmul f0, f2, f0
/* 8085D844  FC 44 00 32 */	fmul f2, f4, f0
/* 8085D848  FC 00 00 32 */	fmul f0, f0, f0
/* 8085D84C  FC 01 00 32 */	fmul f0, f1, f0
/* 8085D850  FC 03 00 28 */	fsub f0, f3, f0
/* 8085D854  FC 02 00 32 */	fmul f0, f2, f0
/* 8085D858  FC 21 00 32 */	fmul f1, f1, f0
/* 8085D85C  FC 20 08 18 */	frsp f1, f1
/* 8085D860  48 00 00 88 */	b lbl_8085D8E8
lbl_8085D864:
/* 8085D864  C8 1A 00 80 */	lfd f0, 0x80(r26)
/* 8085D868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D86C  40 80 00 10 */	bge lbl_8085D87C
/* 8085D870  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085D874  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085D878  48 00 00 70 */	b lbl_8085D8E8
lbl_8085D87C:
/* 8085D87C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8085D880  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8085D884  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085D888  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085D88C  7C 03 00 00 */	cmpw r3, r0
/* 8085D890  41 82 00 14 */	beq lbl_8085D8A4
/* 8085D894  40 80 00 40 */	bge lbl_8085D8D4
/* 8085D898  2C 03 00 00 */	cmpwi r3, 0
/* 8085D89C  41 82 00 20 */	beq lbl_8085D8BC
/* 8085D8A0  48 00 00 34 */	b lbl_8085D8D4
lbl_8085D8A4:
/* 8085D8A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085D8A8  41 82 00 0C */	beq lbl_8085D8B4
/* 8085D8AC  38 00 00 01 */	li r0, 1
/* 8085D8B0  48 00 00 28 */	b lbl_8085D8D8
lbl_8085D8B4:
/* 8085D8B4  38 00 00 02 */	li r0, 2
/* 8085D8B8  48 00 00 20 */	b lbl_8085D8D8
lbl_8085D8BC:
/* 8085D8BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085D8C0  41 82 00 0C */	beq lbl_8085D8CC
/* 8085D8C4  38 00 00 05 */	li r0, 5
/* 8085D8C8  48 00 00 10 */	b lbl_8085D8D8
lbl_8085D8CC:
/* 8085D8CC  38 00 00 03 */	li r0, 3
/* 8085D8D0  48 00 00 08 */	b lbl_8085D8D8
lbl_8085D8D4:
/* 8085D8D4  38 00 00 04 */	li r0, 4
lbl_8085D8D8:
/* 8085D8D8  2C 00 00 01 */	cmpwi r0, 1
/* 8085D8DC  40 82 00 0C */	bne lbl_8085D8E8
/* 8085D8E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085D8E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085D8E8:
/* 8085D8E8  C0 5A 00 00 */	lfs f2, 0(r26)
/* 8085D8EC  80 79 00 00 */	lwz r3, 0(r25)
/* 8085D8F0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8085D8F4  EC 02 00 2A */	fadds f0, f2, f0
/* 8085D8F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085D8FC  40 80 00 94 */	bge lbl_8085D990
/* 8085D900  88 11 00 00 */	lbz r0, 0(r17)
/* 8085D904  2C 00 00 03 */	cmpwi r0, 3
/* 8085D908  41 82 00 74 */	beq lbl_8085D97C
/* 8085D90C  A0 11 00 40 */	lhz r0, 0x40(r17)
/* 8085D910  28 00 00 00 */	cmplwi r0, 0
/* 8085D914  40 82 00 68 */	bne lbl_8085D97C
/* 8085D918  2C 15 00 01 */	cmpwi r21, 1
/* 8085D91C  40 80 00 60 */	bge lbl_8085D97C
/* 8085D920  C0 11 00 10 */	lfs f0, 0x10(r17)
/* 8085D924  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085D928  C0 11 00 14 */	lfs f0, 0x14(r17)
/* 8085D92C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8085D930  C0 11 00 18 */	lfs f0, 0x18(r17)
/* 8085D934  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8085D938  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080215@ha */
/* 8085D93C  38 03 02 15 */	addi r0, r3, 0x0215 /* 0x00080215@l */
/* 8085D940  90 01 00 20 */	stw r0, 0x20(r1)
/* 8085D944  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085D948  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085D94C  80 63 00 00 */	lwz r3, 0(r3)
/* 8085D950  38 81 00 20 */	addi r4, r1, 0x20
/* 8085D954  38 A1 00 7C */	addi r5, r1, 0x7c
/* 8085D958  38 C0 00 00 */	li r6, 0
/* 8085D95C  38 E0 00 00 */	li r7, 0
/* 8085D960  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 8085D964  FC 40 08 90 */	fmr f2, f1
/* 8085D968  C0 7A 00 74 */	lfs f3, 0x74(r26)
/* 8085D96C  FC 80 18 90 */	fmr f4, f3
/* 8085D970  39 00 00 00 */	li r8, 0
/* 8085D974  4B A4 E0 11 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085D978  3A B5 00 01 */	addi r21, r21, 1
lbl_8085D97C:
/* 8085D97C  38 00 00 03 */	li r0, 3
/* 8085D980  98 11 00 00 */	stb r0, 0(r17)
/* 8085D984  38 00 00 B4 */	li r0, 0xb4
/* 8085D988  B0 11 00 40 */	sth r0, 0x40(r17)
/* 8085D98C  48 00 00 14 */	b lbl_8085D9A0
lbl_8085D990:
/* 8085D990  3A 10 00 01 */	addi r16, r16, 1
/* 8085D994  2C 10 00 0A */	cmpwi r16, 0xa
/* 8085D998  3B DE 00 04 */	addi r30, r30, 4
/* 8085D99C  41 80 FE 4C */	blt lbl_8085D7E8
lbl_8085D9A0:
/* 8085D9A0  38 61 00 40 */	addi r3, r1, 0x40
/* 8085D9A4  38 91 00 10 */	addi r4, r17, 0x10
/* 8085D9A8  38 B1 00 04 */	addi r5, r17, 4
/* 8085D9AC  4B A0 91 39 */	bl __pl__4cXyzCFRC3Vec
/* 8085D9B0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8085D9B4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085D9B8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8085D9BC  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8085D9C0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8085D9C4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8085D9C8  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 8085D9CC  EC 02 C8 28 */	fsubs f0, f2, f25
/* 8085D9D0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8085D9D4  40 80 01 38 */	bge lbl_8085DB0C
/* 8085D9D8  C0 1A 00 F8 */	lfs f0, 0xf8(r26)
/* 8085D9DC  EC 00 10 2A */	fadds f0, f0, f2
/* 8085D9E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8085D9E4  40 81 01 28 */	ble lbl_8085DB0C
/* 8085D9E8  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 8085D9EC  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 8085D9F0  38 81 00 7C */	addi r4, r1, 0x7c
/* 8085D9F4  4B AE 99 A9 */	bl PSVECSquareDistance
/* 8085D9F8  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8085D9FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DA00  40 81 00 58 */	ble lbl_8085DA58
/* 8085DA04  FC 00 08 34 */	frsqrte f0, f1
/* 8085DA08  C8 9A 00 E8 */	lfd f4, 0xe8(r26)
/* 8085DA0C  FC 44 00 32 */	fmul f2, f4, f0
/* 8085DA10  C8 7A 00 F0 */	lfd f3, 0xf0(r26)
/* 8085DA14  FC 00 00 32 */	fmul f0, f0, f0
/* 8085DA18  FC 01 00 32 */	fmul f0, f1, f0
/* 8085DA1C  FC 03 00 28 */	fsub f0, f3, f0
/* 8085DA20  FC 02 00 32 */	fmul f0, f2, f0
/* 8085DA24  FC 44 00 32 */	fmul f2, f4, f0
/* 8085DA28  FC 00 00 32 */	fmul f0, f0, f0
/* 8085DA2C  FC 01 00 32 */	fmul f0, f1, f0
/* 8085DA30  FC 03 00 28 */	fsub f0, f3, f0
/* 8085DA34  FC 02 00 32 */	fmul f0, f2, f0
/* 8085DA38  FC 44 00 32 */	fmul f2, f4, f0
/* 8085DA3C  FC 00 00 32 */	fmul f0, f0, f0
/* 8085DA40  FC 01 00 32 */	fmul f0, f1, f0
/* 8085DA44  FC 03 00 28 */	fsub f0, f3, f0
/* 8085DA48  FC 02 00 32 */	fmul f0, f2, f0
/* 8085DA4C  FC 21 00 32 */	fmul f1, f1, f0
/* 8085DA50  FC 20 08 18 */	frsp f1, f1
/* 8085DA54  48 00 00 88 */	b lbl_8085DADC
lbl_8085DA58:
/* 8085DA58  C8 1A 00 80 */	lfd f0, 0x80(r26)
/* 8085DA5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DA60  40 80 00 10 */	bge lbl_8085DA70
/* 8085DA64  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085DA68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085DA6C  48 00 00 70 */	b lbl_8085DADC
lbl_8085DA70:
/* 8085DA70  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8085DA74  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8085DA78  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085DA7C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085DA80  7C 03 00 00 */	cmpw r3, r0
/* 8085DA84  41 82 00 14 */	beq lbl_8085DA98
/* 8085DA88  40 80 00 40 */	bge lbl_8085DAC8
/* 8085DA8C  2C 03 00 00 */	cmpwi r3, 0
/* 8085DA90  41 82 00 20 */	beq lbl_8085DAB0
/* 8085DA94  48 00 00 34 */	b lbl_8085DAC8
lbl_8085DA98:
/* 8085DA98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085DA9C  41 82 00 0C */	beq lbl_8085DAA8
/* 8085DAA0  38 00 00 01 */	li r0, 1
/* 8085DAA4  48 00 00 28 */	b lbl_8085DACC
lbl_8085DAA8:
/* 8085DAA8  38 00 00 02 */	li r0, 2
/* 8085DAAC  48 00 00 20 */	b lbl_8085DACC
lbl_8085DAB0:
/* 8085DAB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085DAB4  41 82 00 0C */	beq lbl_8085DAC0
/* 8085DAB8  38 00 00 05 */	li r0, 5
/* 8085DABC  48 00 00 10 */	b lbl_8085DACC
lbl_8085DAC0:
/* 8085DAC0  38 00 00 03 */	li r0, 3
/* 8085DAC4  48 00 00 08 */	b lbl_8085DACC
lbl_8085DAC8:
/* 8085DAC8  38 00 00 04 */	li r0, 4
lbl_8085DACC:
/* 8085DACC  2C 00 00 01 */	cmpwi r0, 1
/* 8085DAD0  40 82 00 0C */	bne lbl_8085DADC
/* 8085DAD4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085DAD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085DADC:
/* 8085DADC  C0 1A 00 FC */	lfs f0, 0xfc(r26)
/* 8085DAE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DAE4  40 80 00 28 */	bge lbl_8085DB0C
/* 8085DAE8  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8085DAEC  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 8085DAF0  40 81 00 1C */	ble lbl_8085DB0C
/* 8085DAF4  C0 31 00 24 */	lfs f1, 0x24(r17)
/* 8085DAF8  C0 1A 01 08 */	lfs f0, 0x108(r26)
/* 8085DAFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DB00  4C 41 13 82 */	cror 2, 1, 2
/* 8085DB04  40 82 00 08 */	bne lbl_8085DB0C
/* 8085DB08  3A 94 00 01 */	addi r20, r20, 1
lbl_8085DB0C:
/* 8085DB0C  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 8085DB10  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8085DB14  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8085DB18  40 82 02 78 */	bne lbl_8085DD90
/* 8085DB1C  C0 31 00 38 */	lfs f1, 0x38(r17)
/* 8085DB20  C0 1A 00 A8 */	lfs f0, 0xa8(r26)
/* 8085DB24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DB28  4C 41 13 82 */	cror 2, 1, 2
/* 8085DB2C  40 82 00 08 */	bne lbl_8085DB34
/* 8085DB30  C3 7A 00 10 */	lfs f27, 0x10(r26)
lbl_8085DB34:
/* 8085DB34  38 61 00 34 */	addi r3, r1, 0x34
/* 8085DB38  38 91 00 10 */	addi r4, r17, 0x10
/* 8085DB3C  38 B1 00 04 */	addi r5, r17, 4
/* 8085DB40  4B A0 8F A5 */	bl __pl__4cXyzCFRC3Vec
/* 8085DB44  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8085DB48  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085DB4C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8085DB50  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8085DB54  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8085DB58  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8085DB5C  C0 1A 00 00 */	lfs f0, 0(r26)
/* 8085DB60  EC 01 00 28 */	fsubs f0, f1, f0
/* 8085DB64  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8085DB68  38 61 00 7C */	addi r3, r1, 0x7c
/* 8085DB6C  38 81 00 64 */	addi r4, r1, 0x64
/* 8085DB70  38 A1 00 24 */	addi r5, r1, 0x24
/* 8085DB74  4B 7F D6 ED */	bl dKyw_pntlight_collision_get_info__FP4cXyzP4cXyzPf
/* 8085DB78  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8085DB7C  C0 1A 01 00 */	lfs f0, 0x100(r26)
/* 8085DB80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DB84  40 81 00 90 */	ble lbl_8085DC14
/* 8085DB88  88 11 00 00 */	lbz r0, 0(r17)
/* 8085DB8C  2C 00 00 03 */	cmpwi r0, 3
/* 8085DB90  41 82 00 74 */	beq lbl_8085DC04
/* 8085DB94  A0 11 00 40 */	lhz r0, 0x40(r17)
/* 8085DB98  28 00 00 00 */	cmplwi r0, 0
/* 8085DB9C  40 82 00 68 */	bne lbl_8085DC04
/* 8085DBA0  2C 15 00 01 */	cmpwi r21, 1
/* 8085DBA4  40 80 00 60 */	bge lbl_8085DC04
/* 8085DBA8  C0 11 00 10 */	lfs f0, 0x10(r17)
/* 8085DBAC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8085DBB0  C0 11 00 14 */	lfs f0, 0x14(r17)
/* 8085DBB4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8085DBB8  C0 11 00 18 */	lfs f0, 0x18(r17)
/* 8085DBBC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8085DBC0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080215@ha */
/* 8085DBC4  38 03 02 15 */	addi r0, r3, 0x0215 /* 0x00080215@l */
/* 8085DBC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8085DBCC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085DBD0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085DBD4  80 63 00 00 */	lwz r3, 0(r3)
/* 8085DBD8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8085DBDC  38 A1 00 58 */	addi r5, r1, 0x58
/* 8085DBE0  38 C0 00 00 */	li r6, 0
/* 8085DBE4  38 E0 00 00 */	li r7, 0
/* 8085DBE8  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 8085DBEC  FC 40 08 90 */	fmr f2, f1
/* 8085DBF0  C0 7A 00 74 */	lfs f3, 0x74(r26)
/* 8085DBF4  FC 80 18 90 */	fmr f4, f3
/* 8085DBF8  39 00 00 00 */	li r8, 0
/* 8085DBFC  4B A4 DD 89 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085DC00  3A B5 00 01 */	addi r21, r21, 1
lbl_8085DC04:
/* 8085DC04  38 00 00 03 */	li r0, 3
/* 8085DC08  98 11 00 00 */	stb r0, 0(r17)
/* 8085DC0C  38 00 01 68 */	li r0, 0x168
/* 8085DC10  B0 11 00 40 */	sth r0, 0x40(r17)
lbl_8085DC14:
/* 8085DC14  38 61 00 28 */	addi r3, r1, 0x28
/* 8085DC18  38 91 00 10 */	addi r4, r17, 0x10
/* 8085DC1C  38 B1 00 04 */	addi r5, r17, 4
/* 8085DC20  4B A0 8E C5 */	bl __pl__4cXyzCFRC3Vec
/* 8085DC24  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8085DC28  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8085DC2C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8085DC30  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8085DC34  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8085DC38  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8085DC3C  C0 58 04 D4 */	lfs f2, 0x4d4(r24)
/* 8085DC40  C0 1A 00 00 */	lfs f0, 0(r26)
/* 8085DC44  EC 02 00 28 */	fsubs f0, f2, f0
/* 8085DC48  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8085DC4C  40 80 01 44 */	bge lbl_8085DD90
/* 8085DC50  C0 1A 00 F8 */	lfs f0, 0xf8(r26)
/* 8085DC54  EC 00 10 2A */	fadds f0, f0, f2
/* 8085DC58  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8085DC5C  40 81 01 34 */	ble lbl_8085DD90
/* 8085DC60  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 8085DC64  38 78 04 D0 */	addi r3, r24, 0x4d0
/* 8085DC68  38 81 00 7C */	addi r4, r1, 0x7c
/* 8085DC6C  4B AE 97 31 */	bl PSVECSquareDistance
/* 8085DC70  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8085DC74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DC78  40 81 00 58 */	ble lbl_8085DCD0
/* 8085DC7C  FC 00 08 34 */	frsqrte f0, f1
/* 8085DC80  C8 9A 00 E8 */	lfd f4, 0xe8(r26)
/* 8085DC84  FC 44 00 32 */	fmul f2, f4, f0
/* 8085DC88  C8 7A 00 F0 */	lfd f3, 0xf0(r26)
/* 8085DC8C  FC 00 00 32 */	fmul f0, f0, f0
/* 8085DC90  FC 01 00 32 */	fmul f0, f1, f0
/* 8085DC94  FC 03 00 28 */	fsub f0, f3, f0
/* 8085DC98  FC 02 00 32 */	fmul f0, f2, f0
/* 8085DC9C  FC 44 00 32 */	fmul f2, f4, f0
/* 8085DCA0  FC 00 00 32 */	fmul f0, f0, f0
/* 8085DCA4  FC 01 00 32 */	fmul f0, f1, f0
/* 8085DCA8  FC 03 00 28 */	fsub f0, f3, f0
/* 8085DCAC  FC 02 00 32 */	fmul f0, f2, f0
/* 8085DCB0  FC 44 00 32 */	fmul f2, f4, f0
/* 8085DCB4  FC 00 00 32 */	fmul f0, f0, f0
/* 8085DCB8  FC 01 00 32 */	fmul f0, f1, f0
/* 8085DCBC  FC 03 00 28 */	fsub f0, f3, f0
/* 8085DCC0  FC 02 00 32 */	fmul f0, f2, f0
/* 8085DCC4  FC 21 00 32 */	fmul f1, f1, f0
/* 8085DCC8  FC 20 08 18 */	frsp f1, f1
/* 8085DCCC  48 00 00 88 */	b lbl_8085DD54
lbl_8085DCD0:
/* 8085DCD0  C8 1A 00 80 */	lfd f0, 0x80(r26)
/* 8085DCD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DCD8  40 80 00 10 */	bge lbl_8085DCE8
/* 8085DCDC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085DCE0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8085DCE4  48 00 00 70 */	b lbl_8085DD54
lbl_8085DCE8:
/* 8085DCE8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8085DCEC  80 81 00 08 */	lwz r4, 8(r1)
/* 8085DCF0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085DCF4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085DCF8  7C 03 00 00 */	cmpw r3, r0
/* 8085DCFC  41 82 00 14 */	beq lbl_8085DD10
/* 8085DD00  40 80 00 40 */	bge lbl_8085DD40
/* 8085DD04  2C 03 00 00 */	cmpwi r3, 0
/* 8085DD08  41 82 00 20 */	beq lbl_8085DD28
/* 8085DD0C  48 00 00 34 */	b lbl_8085DD40
lbl_8085DD10:
/* 8085DD10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085DD14  41 82 00 0C */	beq lbl_8085DD20
/* 8085DD18  38 00 00 01 */	li r0, 1
/* 8085DD1C  48 00 00 28 */	b lbl_8085DD44
lbl_8085DD20:
/* 8085DD20  38 00 00 02 */	li r0, 2
/* 8085DD24  48 00 00 20 */	b lbl_8085DD44
lbl_8085DD28:
/* 8085DD28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085DD2C  41 82 00 0C */	beq lbl_8085DD38
/* 8085DD30  38 00 00 05 */	li r0, 5
/* 8085DD34  48 00 00 10 */	b lbl_8085DD44
lbl_8085DD38:
/* 8085DD38  38 00 00 03 */	li r0, 3
/* 8085DD3C  48 00 00 08 */	b lbl_8085DD44
lbl_8085DD40:
/* 8085DD40  38 00 00 04 */	li r0, 4
lbl_8085DD44:
/* 8085DD44  2C 00 00 01 */	cmpwi r0, 1
/* 8085DD48  40 82 00 0C */	bne lbl_8085DD54
/* 8085DD4C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8085DD50  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8085DD54:
/* 8085DD54  C0 1A 01 64 */	lfs f0, 0x164(r26)
/* 8085DD58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DD5C  40 80 00 34 */	bge lbl_8085DD90
/* 8085DD60  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8085DD64  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 8085DD68  40 81 00 28 */	ble lbl_8085DD90
/* 8085DD6C  C0 31 00 24 */	lfs f1, 0x24(r17)
/* 8085DD70  C0 1A 01 08 */	lfs f0, 0x108(r26)
/* 8085DD74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085DD78  4C 41 13 82 */	cror 2, 1, 2
/* 8085DD7C  40 82 00 14 */	bne lbl_8085DD90
/* 8085DD80  88 11 00 00 */	lbz r0, 0(r17)
/* 8085DD84  2C 00 00 03 */	cmpwi r0, 3
/* 8085DD88  41 82 00 08 */	beq lbl_8085DD90
/* 8085DD8C  3A D6 00 01 */	addi r22, r22, 1
lbl_8085DD90:
/* 8085DD90  FC 1B C0 40 */	fcmpo cr0, f27, f24
/* 8085DD94  4C 40 13 82 */	cror 2, 0, 2
/* 8085DD98  41 82 00 10 */	beq lbl_8085DDA8
/* 8085DD9C  A0 11 00 40 */	lhz r0, 0x40(r17)
/* 8085DDA0  28 00 00 00 */	cmplwi r0, 0
/* 8085DDA4  40 82 00 48 */	bne lbl_8085DDEC
lbl_8085DDA8:
/* 8085DDA8  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8085DDAC  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 8085DDB0  4C 40 13 82 */	cror 2, 0, 2
/* 8085DDB4  40 82 00 20 */	bne lbl_8085DDD4
/* 8085DDB8  38 71 00 24 */	addi r3, r17, 0x24
/* 8085DDBC  FC 20 D8 90 */	fmr f1, f27
/* 8085DDC0  C0 5A 01 0C */	lfs f2, 0x10c(r26)
/* 8085DDC4  C0 7A 01 10 */	lfs f3, 0x110(r26)
/* 8085DDC8  C0 9A 01 14 */	lfs f4, 0x114(r26)
/* 8085DDCC  4B A1 1B B1 */	bl cLib_addCalc__FPfffff
/* 8085DDD0  48 00 00 1C */	b lbl_8085DDEC
lbl_8085DDD4:
/* 8085DDD4  38 71 00 24 */	addi r3, r17, 0x24
/* 8085DDD8  FC 20 D8 90 */	fmr f1, f27
/* 8085DDDC  C0 5A 01 1C */	lfs f2, 0x11c(r26)
/* 8085DDE0  C0 7A 01 20 */	lfs f3, 0x120(r26)
/* 8085DDE4  C0 9A 01 24 */	lfs f4, 0x124(r26)
/* 8085DDE8  4B A1 1B 95 */	bl cLib_addCalc__FPfffff
lbl_8085DDEC:
/* 8085DDEC  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 8085DDF0  28 00 00 00 */	cmplwi r0, 0
/* 8085DDF4  40 82 00 18 */	bne lbl_8085DE0C
/* 8085DDF8  A0 71 00 40 */	lhz r3, 0x40(r17)
/* 8085DDFC  28 03 00 00 */	cmplwi r3, 0
/* 8085DE00  41 82 00 0C */	beq lbl_8085DE0C
/* 8085DE04  38 03 FF FF */	addi r0, r3, -1
/* 8085DE08  B0 11 00 40 */	sth r0, 0x40(r17)
lbl_8085DE0C:
/* 8085DE0C  C0 11 00 24 */	lfs f0, 0x24(r17)
/* 8085DE10  FC 00 B8 40 */	fcmpo cr0, f0, f23
/* 8085DE14  40 81 00 08 */	ble lbl_8085DE1C
/* 8085DE18  3A 73 00 01 */	addi r19, r19, 1
lbl_8085DE1C:
/* 8085DE1C  3A 52 00 01 */	addi r18, r18, 1
/* 8085DE20  3B FF 00 44 */	addi r31, r31, 0x44
lbl_8085DE24:
/* 8085DE24  80 1C 10 54 */	lwz r0, 0x1054(r28)
/* 8085DE28  7C 12 00 00 */	cmpw r18, r0
/* 8085DE2C  41 80 F4 A8 */	blt lbl_8085D2D4
/* 8085DE30  2C 16 00 00 */	cmpwi r22, 0
/* 8085DE34  41 82 00 38 */	beq lbl_8085DE6C
/* 8085DE38  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8085DE3C  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8085DE40  2C 00 00 0B */	cmpwi r0, 0xb
/* 8085DE44  40 82 00 10 */	bne lbl_8085DE54
/* 8085DE48  38 00 00 3C */	li r0, 0x3c
/* 8085DE4C  B0 0F 05 78 */	sth r0, 0x578(r15)
/* 8085DE50  48 00 00 30 */	b lbl_8085DE80
lbl_8085DE54:
/* 8085DE54  A8 6F 05 78 */	lha r3, 0x578(r15)
/* 8085DE58  2C 03 00 28 */	cmpwi r3, 0x28
/* 8085DE5C  40 80 00 24 */	bge lbl_8085DE80
/* 8085DE60  38 03 00 01 */	addi r0, r3, 1
/* 8085DE64  B0 0F 05 78 */	sth r0, 0x578(r15)
/* 8085DE68  48 00 00 18 */	b lbl_8085DE80
lbl_8085DE6C:
/* 8085DE6C  A8 6F 05 78 */	lha r3, 0x578(r15)
/* 8085DE70  2C 03 00 00 */	cmpwi r3, 0
/* 8085DE74  41 82 00 0C */	beq lbl_8085DE80
/* 8085DE78  38 03 FF FF */	addi r0, r3, -1
/* 8085DE7C  B0 0F 05 78 */	sth r0, 0x578(r15)
lbl_8085DE80:
/* 8085DE80  A8 0F 05 78 */	lha r0, 0x578(r15)
/* 8085DE84  2C 00 00 14 */	cmpwi r0, 0x14
/* 8085DE88  41 80 00 2C */	blt lbl_8085DEB4
/* 8085DE8C  7F 03 C3 78 */	mr r3, r24
/* 8085DE90  81 98 06 28 */	lwz r12, 0x628(r24)
/* 8085DE94  81 8C 02 78 */	lwz r12, 0x278(r12)
/* 8085DE98  7D 89 03 A6 */	mtctr r12
/* 8085DE9C  4E 80 04 21 */	bctrl 
/* 8085DEA0  2C 03 00 00 */	cmpwi r3, 0
/* 8085DEA4  40 82 00 10 */	bne lbl_8085DEB4
/* 8085DEA8  80 18 05 88 */	lwz r0, 0x588(r24)
/* 8085DEAC  60 00 00 02 */	ori r0, r0, 2
/* 8085DEB0  90 18 05 88 */	stw r0, 0x588(r24)
lbl_8085DEB4:
/* 8085DEB4  7D E3 7B 78 */	mr r3, r15
/* 8085DEB8  4B FF DD 09 */	bl daKytag12_light_swprd_proc__FP13kytag12_class
/* 8085DEBC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085DEC0  38 A3 CA 54 */	addi r5, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085DEC4  88 05 10 50 */	lbz r0, 0x1050(r5)
/* 8085DEC8  54 04 06 7E */	clrlwi r4, r0, 0x19
/* 8085DECC  98 85 10 50 */	stb r4, 0x1050(r5)
/* 8085DED0  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 8085DED4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8085DED8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8085DEDC  41 82 00 14 */	beq lbl_8085DEF0
/* 8085DEE0  2C 14 00 00 */	cmpwi r20, 0
/* 8085DEE4  40 81 00 0C */	ble lbl_8085DEF0
/* 8085DEE8  60 80 00 80 */	ori r0, r4, 0x80
/* 8085DEEC  98 05 10 50 */	stb r0, 0x1050(r5)
lbl_8085DEF0:
/* 8085DEF0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080216@ha */
/* 8085DEF4  38 03 02 16 */	addi r0, r3, 0x0216 /* 0x00080216@l */
/* 8085DEF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8085DEFC  C0 7A 00 00 */	lfs f3, 0(r26)
/* 8085DF00  C8 5A 01 30 */	lfd f2, 0x130(r26)
/* 8085DF04  6E 60 80 00 */	xoris r0, r19, 0x8000
/* 8085DF08  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8085DF0C  3C 60 43 30 */	lis r3, 0x4330
/* 8085DF10  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 8085DF14  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 8085DF18  EC 20 10 28 */	fsubs f1, f0, f2
/* 8085DF1C  80 1C 10 54 */	lwz r0, 0x1054(r28)
/* 8085DF20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8085DF24  90 01 00 AC */	stw r0, 0xac(r1)
/* 8085DF28  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 8085DF2C  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 8085DF30  EC 00 10 28 */	fsubs f0, f0, f2
/* 8085DF34  EC 01 00 24 */	fdivs f0, f1, f0
/* 8085DF38  EC 23 00 32 */	fmuls f1, f3, f0
/* 8085DF3C  4B B0 41 71 */	bl __cvt_fp2unsigned
/* 8085DF40  7C 66 1B 78 */	mr r6, r3
/* 8085DF44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8085DF48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8085DF4C  80 63 00 00 */	lwz r3, 0(r3)
/* 8085DF50  38 81 00 18 */	addi r4, r1, 0x18
/* 8085DF54  38 AF 04 D0 */	addi r5, r15, 0x4d0
/* 8085DF58  38 E0 00 00 */	li r7, 0
/* 8085DF5C  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 8085DF60  FC 40 08 90 */	fmr f2, f1
/* 8085DF64  C0 7A 00 74 */	lfs f3, 0x74(r26)
/* 8085DF68  FC 80 18 90 */	fmr f4, f3
/* 8085DF6C  39 00 00 00 */	li r8, 0
/* 8085DF70  4B A4 E5 9D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8085DF74  38 60 00 01 */	li r3, 1
lbl_8085DF78:
/* 8085DF78  E3 E1 01 C8 */	psq_l f31, 456(r1), 0, 0 /* qr0 */
/* 8085DF7C  CB E1 01 C0 */	lfd f31, 0x1c0(r1)
/* 8085DF80  E3 C1 01 B8 */	psq_l f30, 440(r1), 0, 0 /* qr0 */
/* 8085DF84  CB C1 01 B0 */	lfd f30, 0x1b0(r1)
/* 8085DF88  E3 A1 01 A8 */	psq_l f29, 424(r1), 0, 0 /* qr0 */
/* 8085DF8C  CB A1 01 A0 */	lfd f29, 0x1a0(r1)
/* 8085DF90  E3 81 01 98 */	psq_l f28, 408(r1), 0, 0 /* qr0 */
/* 8085DF94  CB 81 01 90 */	lfd f28, 0x190(r1)
/* 8085DF98  E3 61 01 88 */	psq_l f27, 392(r1), 0, 0 /* qr0 */
/* 8085DF9C  CB 61 01 80 */	lfd f27, 0x180(r1)
/* 8085DFA0  E3 41 01 78 */	psq_l f26, 376(r1), 0, 0 /* qr0 */
/* 8085DFA4  CB 41 01 70 */	lfd f26, 0x170(r1)
/* 8085DFA8  E3 21 01 68 */	psq_l f25, 360(r1), 0, 0 /* qr0 */
/* 8085DFAC  CB 21 01 60 */	lfd f25, 0x160(r1)
/* 8085DFB0  E3 01 01 58 */	psq_l f24, 344(r1), 0, 0 /* qr0 */
/* 8085DFB4  CB 01 01 50 */	lfd f24, 0x150(r1)
/* 8085DFB8  E2 E1 01 48 */	psq_l f23, 328(r1), 0, 0 /* qr0 */
/* 8085DFBC  CA E1 01 40 */	lfd f23, 0x140(r1)
/* 8085DFC0  E2 C1 01 38 */	psq_l f22, 312(r1), 0, 0 /* qr0 */
/* 8085DFC4  CA C1 01 30 */	lfd f22, 0x130(r1)
/* 8085DFC8  E2 A1 01 28 */	psq_l f21, 296(r1), 0, 0 /* qr0 */
/* 8085DFCC  CA A1 01 20 */	lfd f21, 0x120(r1)
/* 8085DFD0  E2 81 01 18 */	psq_l f20, 280(r1), 0, 0 /* qr0 */
/* 8085DFD4  CA 81 01 10 */	lfd f20, 0x110(r1)
/* 8085DFD8  39 61 01 10 */	addi r11, r1, 0x110
/* 8085DFDC  4B B0 42 11 */	bl __restore_gpr
/* 8085DFE0  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 8085DFE4  7C 08 03 A6 */	mtlr r0
/* 8085DFE8  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 8085DFEC  4E 80 00 20 */	blr 
