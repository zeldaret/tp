lbl_80BBE008:
/* 80BBE008  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80BBE00C  7C 08 02 A6 */	mflr r0
/* 80BBE010  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80BBE014  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80BBE018  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80BBE01C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80BBE020  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80BBE024  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80BBE028  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 80BBE02C  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 80BBE030  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 80BBE034  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 80BBE038  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 80BBE03C  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 80BBE040  F3 41 00 78 */	psq_st f26, 120(r1), 0, 0 /* qr0 */
/* 80BBE044  39 61 00 70 */	addi r11, r1, 0x70
/* 80BBE048  4B 7A 41 84 */	b _savegpr_25
/* 80BBE04C  7C 7C 1B 78 */	mr r28, r3
/* 80BBE050  3C 60 80 BC */	lis r3, lit_3896@ha
/* 80BBE054  3B A3 21 48 */	addi r29, r3, lit_3896@l
/* 80BBE058  3C 7C 00 01 */	addis r3, r28, 1
/* 80BBE05C  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BBE060  7C 03 07 74 */	extsb r3, r0
/* 80BBE064  38 03 FF FE */	addi r0, r3, -2
/* 80BBE068  1C 00 07 0C */	mulli r0, r0, 0x70c
/* 80BBE06C  7F 64 02 14 */	add r27, r4, r0
/* 80BBE070  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BBE074  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BBE078  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBE07C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80BBE080  4B 44 E3 5C */	b mDoMtx_YrotS__FPA4_fs
/* 80BBE084  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BBE088  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BBE08C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BBE090  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 80BBE094  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BBE098  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BBE09C  38 81 00 14 */	addi r4, r1, 0x14
/* 80BBE0A0  4B 6B 2E 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 80BBE0A4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BBE0A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BBE0AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BBE0B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BBE0B4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80BBE0B8  2C 00 00 04 */	cmpwi r0, 4
/* 80BBE0BC  40 82 00 80 */	bne lbl_80BBE13C
/* 80BBE0C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BBE0C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BBE0C8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80BBE0CC  28 00 00 00 */	cmplwi r0, 0
/* 80BBE0D0  40 82 00 6C */	bne lbl_80BBE13C
/* 80BBE0D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BBE0D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BBE0DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBE0E0  3C 80 80 BC */	lis r4, struct_80BC2524+0x2@ha
/* 80BBE0E4  38 84 25 26 */	addi r4, r4, struct_80BC2524+0x2@l
/* 80BBE0E8  A8 84 00 00 */	lha r4, 0(r4)
/* 80BBE0EC  4B 44 E2 F0 */	b mDoMtx_YrotS__FPA4_fs
/* 80BBE0F0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BBE0F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BBE0F8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BBE0FC  3C 9C 00 01 */	addis r4, r28, 1
/* 80BBE100  A8 04 AF 1E */	lha r0, -0x50e2(r4)
/* 80BBE104  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBE108  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BBE10C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BBE110  7C 63 04 2E */	lfsx f3, r3, r0
/* 80BBE114  C0 44 AF 30 */	lfs f2, -0x50d0(r4)
/* 80BBE118  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 80BBE11C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80BBE120  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80BBE124  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE128  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BBE12C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BBE130  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BBE134  38 81 00 08 */	addi r4, r1, 8
/* 80BBE138  4B 6B 2D B4 */	b MtxPosition__FP4cXyzP4cXyz
lbl_80BBE13C:
/* 80BBE13C  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80BBE140  3F DC 00 01 */	addis r30, r28, 1
/* 80BBE144  C0 1E AE DC */	lfs f0, -0x5124(r30)
/* 80BBE148  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBE14C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BBE150  3B 80 00 00 */	li r28, 0
/* 80BBE154  C3 DD 00 C0 */	lfs f30, 0xc0(r29)
/* 80BBE158  CB FD 00 B0 */	lfd f31, 0xb0(r29)
/* 80BBE15C  3F E0 43 30 */	lis r31, 0x4330
/* 80BBE160  C3 9D 00 00 */	lfs f28, 0(r29)
/* 80BBE164  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BBE168  3B A3 07 68 */	addi r29, r3, calc_mtx@l
/* 80BBE16C  48 00 01 68 */	b lbl_80BBE2D4
lbl_80BBE170:
/* 80BBE170  C0 3B 00 B4 */	lfs f1, 0xb4(r27)
/* 80BBE174  C0 1B 00 EC */	lfs f0, 0xec(r27)
/* 80BBE178  EC 21 00 2A */	fadds f1, f1, f0
/* 80BBE17C  C0 1B 00 DC */	lfs f0, 0xdc(r27)
/* 80BBE180  EC 1E 00 2A */	fadds f0, f30, f0
/* 80BBE184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BBE188  40 80 00 14 */	bge lbl_80BBE19C
/* 80BBE18C  FC 20 00 90 */	fmr f1, f0
/* 80BBE190  88 7B 07 07 */	lbz r3, 0x707(r27)
/* 80BBE194  38 03 00 01 */	addi r0, r3, 1
/* 80BBE198  98 1B 07 07 */	stb r0, 0x707(r27)
lbl_80BBE19C:
/* 80BBE19C  C0 1B 07 C0 */	lfs f0, 0x7c0(r27)
/* 80BBE1A0  EF A1 00 28 */	fsubs f29, f1, f0
/* 80BBE1A4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80BBE1A8  C0 3B 00 B0 */	lfs f1, 0xb0(r27)
/* 80BBE1AC  C0 1B 07 BC */	lfs f0, 0x7bc(r27)
/* 80BBE1B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BBE1B4  EC 42 00 2A */	fadds f2, f2, f0
/* 80BBE1B8  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BBE1BC  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80BBE1C0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80BBE1C4  93 E1 00 38 */	stw r31, 0x38(r1)
/* 80BBE1C8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80BBE1CC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BBE1D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBE1D4  EF 62 00 2A */	fadds f27, f2, f0
/* 80BBE1D8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80BBE1DC  C0 3B 00 B8 */	lfs f1, 0xb8(r27)
/* 80BBE1E0  C0 1B 07 C4 */	lfs f0, 0x7c4(r27)
/* 80BBE1E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BBE1E8  EC 42 00 2A */	fadds f2, f2, f0
/* 80BBE1EC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80BBE1F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BBE1F4  93 E1 00 40 */	stw r31, 0x40(r1)
/* 80BBE1F8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80BBE1FC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BBE200  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBE204  EF 42 00 2A */	fadds f26, f2, f0
/* 80BBE208  FC 20 D8 90 */	fmr f1, f27
/* 80BBE20C  FC 40 D0 90 */	fmr f2, f26
/* 80BBE210  4B 6A 94 64 */	b cM_atan2s__Fff
/* 80BBE214  7C 79 07 34 */	extsh r25, r3
/* 80BBE218  EC 3B 06 F2 */	fmuls f1, f27, f27
/* 80BBE21C  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 80BBE220  EC 41 00 2A */	fadds f2, f1, f0
/* 80BBE224  FC 02 E0 40 */	fcmpo cr0, f2, f28
/* 80BBE228  40 81 00 0C */	ble lbl_80BBE234
/* 80BBE22C  FC 00 10 34 */	frsqrte f0, f2
/* 80BBE230  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80BBE234:
/* 80BBE234  FC 20 E8 90 */	fmr f1, f29
/* 80BBE238  4B 6A 94 3C */	b cM_atan2s__Fff
/* 80BBE23C  7C 03 00 D0 */	neg r0, r3
/* 80BBE240  7C 1A 07 34 */	extsh r26, r0
/* 80BBE244  B3 3B 07 E2 */	sth r25, 0x7e2(r27)
/* 80BBE248  B0 1B 07 E0 */	sth r0, 0x7e0(r27)
/* 80BBE24C  80 9E AE D0 */	lwz r4, -0x5130(r30)
/* 80BBE250  88 1E B1 EA */	lbz r0, -0x4e16(r30)
/* 80BBE254  7C 03 07 74 */	extsb r3, r0
/* 80BBE258  38 03 FF FE */	addi r0, r3, -2
/* 80BBE25C  7C 04 00 50 */	subf r0, r4, r0
/* 80BBE260  7C 1C 00 00 */	cmpw r28, r0
/* 80BBE264  40 82 00 14 */	bne lbl_80BBE278
/* 80BBE268  B3 3B 00 D6 */	sth r25, 0xd6(r27)
/* 80BBE26C  3C 7A 00 01 */	addis r3, r26, 1
/* 80BBE270  38 03 80 00 */	addi r0, r3, -32768
/* 80BBE274  B0 1B 00 D4 */	sth r0, 0xd4(r27)
lbl_80BBE278:
/* 80BBE278  80 7D 00 00 */	lwz r3, 0(r29)
/* 80BBE27C  7F 24 CB 78 */	mr r4, r25
/* 80BBE280  4B 44 E1 5C */	b mDoMtx_YrotS__FPA4_fs
/* 80BBE284  80 7D 00 00 */	lwz r3, 0(r29)
/* 80BBE288  7F 44 D3 78 */	mr r4, r26
/* 80BBE28C  4B 44 E1 10 */	b mDoMtx_XrotM__FPA4_fs
/* 80BBE290  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BBE294  38 81 00 20 */	addi r4, r1, 0x20
/* 80BBE298  4B 6B 2C 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BBE29C  C0 3B 07 BC */	lfs f1, 0x7bc(r27)
/* 80BBE2A0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BBE2A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE2A8  D0 1B 00 B0 */	stfs f0, 0xb0(r27)
/* 80BBE2AC  C0 3B 07 C0 */	lfs f1, 0x7c0(r27)
/* 80BBE2B0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BBE2B4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE2B8  D0 1B 00 B4 */	stfs f0, 0xb4(r27)
/* 80BBE2BC  C0 3B 07 C4 */	lfs f1, 0x7c4(r27)
/* 80BBE2C0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BBE2C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE2C8  D0 1B 00 B8 */	stfs f0, 0xb8(r27)
/* 80BBE2CC  3B 9C 00 01 */	addi r28, r28, 1
/* 80BBE2D0  3B 7B F8 F4 */	addi r27, r27, -1804
lbl_80BBE2D4:
/* 80BBE2D4  80 9E AE D0 */	lwz r4, -0x5130(r30)
/* 80BBE2D8  88 1E B1 EA */	lbz r0, -0x4e16(r30)
/* 80BBE2DC  7C 03 07 74 */	extsb r3, r0
/* 80BBE2E0  38 03 FF FF */	addi r0, r3, -1
/* 80BBE2E4  7C 04 00 50 */	subf r0, r4, r0
/* 80BBE2E8  7C 1C 00 00 */	cmpw r28, r0
/* 80BBE2EC  41 80 FE 84 */	blt lbl_80BBE170
/* 80BBE2F0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80BBE2F4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80BBE2F8  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80BBE2FC  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80BBE300  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 80BBE304  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80BBE308  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 80BBE30C  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 80BBE310  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 80BBE314  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 80BBE318  E3 41 00 78 */	psq_l f26, 120(r1), 0, 0 /* qr0 */
/* 80BBE31C  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 80BBE320  39 61 00 70 */	addi r11, r1, 0x70
/* 80BBE324  4B 7A 3E F4 */	b _restgpr_25
/* 80BBE328  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80BBE32C  7C 08 03 A6 */	mtlr r0
/* 80BBE330  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80BBE334  4E 80 00 20 */	blr 
