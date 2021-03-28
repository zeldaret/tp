lbl_805FB0F0:
/* 805FB0F0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 805FB0F4  7C 08 02 A6 */	mflr r0
/* 805FB0F8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 805FB0FC  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 805FB100  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 805FB104  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 805FB108  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 805FB10C  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 805FB110  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 805FB114  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 805FB118  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 805FB11C  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 805FB120  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 805FB124  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 805FB128  F3 41 00 78 */	psq_st f26, 120(r1), 0, 0 /* qr0 */
/* 805FB12C  39 61 00 70 */	addi r11, r1, 0x70
/* 805FB130  4B D6 70 98 */	b _savegpr_24
/* 805FB134  7C 7F 1B 78 */	mr r31, r3
/* 805FB138  7C BA 2B 78 */	mr r26, r5
/* 805FB13C  7C D8 33 78 */	mr r24, r6
/* 805FB140  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805FB144  3B A3 26 64 */	addi r29, r3, lit_3815@l
/* 805FB148  1C 7A 00 C0 */	mulli r3, r26, 0xc0
/* 805FB14C  3B 23 1F F0 */	addi r25, r3, 0x1ff0
/* 805FB150  7F 3F CA 14 */	add r25, r31, r25
/* 805FB154  C0 04 00 00 */	lfs f0, 0(r4)
/* 805FB158  D0 19 00 00 */	stfs f0, 0(r25)
/* 805FB15C  C0 04 00 04 */	lfs f0, 4(r4)
/* 805FB160  D0 19 00 04 */	stfs f0, 4(r25)
/* 805FB164  C0 04 00 08 */	lfs f0, 8(r4)
/* 805FB168  D0 19 00 08 */	stfs f0, 8(r25)
/* 805FB16C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FB170  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FB174  80 63 00 00 */	lwz r3, 0(r3)
/* 805FB178  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805FB17C  4B A1 12 60 */	b mDoMtx_YrotS__FPA4_fs
/* 805FB180  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FB184  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805FB188  80 63 00 00 */	lwz r3, 0(r3)
/* 805FB18C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 805FB190  4B A1 12 0C */	b mDoMtx_XrotM__FPA4_fs
/* 805FB194  C0 3D 01 28 */	lfs f1, 0x128(r29)
/* 805FB198  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805FB19C  2C 1A 00 00 */	cmpwi r26, 0
/* 805FB1A0  40 82 00 10 */	bne lbl_805FB1B0
/* 805FB1A4  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805FB1A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805FB1AC  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_805FB1B0:
/* 805FB1B0  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805FB1B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805FB1B8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805FB1BC  38 61 00 44 */	addi r3, r1, 0x44
/* 805FB1C0  38 81 00 2C */	addi r4, r1, 0x2c
/* 805FB1C4  4B C7 5D 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FB1C8  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805FB1CC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805FB1D0  C0 1F 1F D0 */	lfs f0, 0x1fd0(r31)
/* 805FB1D4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805FB1D8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805FB1DC  38 61 00 44 */	addi r3, r1, 0x44
/* 805FB1E0  38 81 00 14 */	addi r4, r1, 0x14
/* 805FB1E4  4B C7 5D 08 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FB1E8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 805FB1EC  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 805FB1F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805FB1F4  40 81 00 14 */	ble lbl_805FB208
/* 805FB1F8  C0 3D 01 50 */	lfs f1, 0x150(r29)
/* 805FB1FC  C0 1F 1F D0 */	lfs f0, 0x1fd0(r31)
/* 805FB200  EC 01 00 32 */	fmuls f0, f1, f0
/* 805FB204  48 00 00 10 */	b lbl_805FB214
lbl_805FB208:
/* 805FB208  C0 3D 00 C4 */	lfs f1, 0xc4(r29)
/* 805FB20C  C0 1F 1F D0 */	lfs f0, 0x1fd0(r31)
/* 805FB210  EC 01 00 32 */	fmuls f0, f1, f0
lbl_805FB214:
/* 805FB214  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805FB218  2C 1A 00 00 */	cmpwi r26, 0
/* 805FB21C  40 82 00 14 */	bne lbl_805FB230
/* 805FB220  FC 20 00 18 */	frsp f1, f0
/* 805FB224  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805FB228  EC 01 00 32 */	fmuls f0, f1, f0
/* 805FB22C  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_805FB230:
/* 805FB230  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805FB234  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805FB238  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805FB23C  38 61 00 44 */	addi r3, r1, 0x44
/* 805FB240  38 81 00 08 */	addi r4, r1, 8
/* 805FB244  4B C7 5C A8 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FB248  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805FB24C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805FB250  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805FB254  7F 00 07 75 */	extsb. r0, r24
/* 805FB258  41 82 00 10 */	beq lbl_805FB268
/* 805FB25C  C0 1D 00 A4 */	lfs f0, 0xa4(r29)
/* 805FB260  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805FB264  48 00 00 0C */	b lbl_805FB270
lbl_805FB268:
/* 805FB268  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 805FB26C  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_805FB270:
/* 805FB270  3B 60 00 01 */	li r27, 1
/* 805FB274  3B C0 17 70 */	li r30, 0x1770
/* 805FB278  3B 19 00 0C */	addi r24, r25, 0xc
/* 805FB27C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805FB280  3B 83 9A 20 */	addi r28, r3, sincosTable___5JMath@l
/* 805FB284  C3 DD 00 00 */	lfs f30, 0(r29)
/* 805FB288  C3 FD 01 28 */	lfs f31, 0x128(r29)
/* 805FB28C  C3 7D 00 14 */	lfs f27, 0x14(r29)
/* 805FB290  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805FB294  3B A3 07 68 */	addi r29, r3, calc_mtx@l
lbl_805FB298:
/* 805FB298  A8 1F 1F D4 */	lha r0, 0x1fd4(r31)
/* 805FB29C  7C 00 F2 14 */	add r0, r0, r30
/* 805FB2A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805FB2A4  7C 3C 04 2E */	lfsx f1, r28, r0
/* 805FB2A8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805FB2AC  EC A0 00 72 */	fmuls f5, f0, f1
/* 805FB2B0  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 805FB2B4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805FB2B8  EC 80 00 72 */	fmuls f4, f0, f1
/* 805FB2BC  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 805FB2C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805FB2C4  EC 60 00 72 */	fmuls f3, f0, f1
/* 805FB2C8  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 805FB2CC  C0 41 00 08 */	lfs f2, 8(r1)
/* 805FB2D0  C0 38 00 00 */	lfs f1, 0(r24)
/* 805FB2D4  C0 18 FF F4 */	lfs f0, -0xc(r24)
/* 805FB2D8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805FB2DC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805FB2E0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 805FB2E4  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB2E8  EC 05 00 2A */	fadds f0, f5, f0
/* 805FB2EC  EF A2 00 2A */	fadds f29, f2, f0
/* 805FB2F0  C0 38 00 04 */	lfs f1, 4(r24)
/* 805FB2F4  C0 18 FF F8 */	lfs f0, -8(r24)
/* 805FB2F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805FB2FC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805FB300  EF 84 00 2A */	fadds f28, f4, f0
/* 805FB304  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805FB308  C0 38 00 08 */	lfs f1, 8(r24)
/* 805FB30C  C0 18 FF FC */	lfs f0, -4(r24)
/* 805FB310  EC 21 00 28 */	fsubs f1, f1, f0
/* 805FB314  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805FB318  EC 00 07 B2 */	fmuls f0, f0, f30
/* 805FB31C  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB320  EC 03 00 2A */	fadds f0, f3, f0
/* 805FB324  EF 42 00 2A */	fadds f26, f2, f0
/* 805FB328  FC 20 E8 90 */	fmr f1, f29
/* 805FB32C  FC 40 D0 90 */	fmr f2, f26
/* 805FB330  4B C6 C3 44 */	b cM_atan2s__Fff
/* 805FB334  7C 79 07 34 */	extsh r25, r3
/* 805FB338  EC 3D 07 72 */	fmuls f1, f29, f29
/* 805FB33C  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 805FB340  EC 41 00 2A */	fadds f2, f1, f0
/* 805FB344  FC 02 D8 40 */	fcmpo cr0, f2, f27
/* 805FB348  40 81 00 0C */	ble lbl_805FB354
/* 805FB34C  FC 00 10 34 */	frsqrte f0, f2
/* 805FB350  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805FB354:
/* 805FB354  FC 20 E0 90 */	fmr f1, f28
/* 805FB358  4B C6 C3 1C */	b cM_atan2s__Fff
/* 805FB35C  7C 03 00 D0 */	neg r0, r3
/* 805FB360  7C 1A 07 34 */	extsh r26, r0
/* 805FB364  80 7D 00 00 */	lwz r3, 0(r29)
/* 805FB368  7F 24 CB 78 */	mr r4, r25
/* 805FB36C  4B A1 10 70 */	b mDoMtx_YrotS__FPA4_fs
/* 805FB370  80 7D 00 00 */	lwz r3, 0(r29)
/* 805FB374  7F 44 D3 78 */	mr r4, r26
/* 805FB378  4B A1 10 24 */	b mDoMtx_XrotM__FPA4_fs
/* 805FB37C  38 61 00 44 */	addi r3, r1, 0x44
/* 805FB380  38 81 00 38 */	addi r4, r1, 0x38
/* 805FB384  4B C7 5B 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 805FB388  C0 38 FF F4 */	lfs f1, -0xc(r24)
/* 805FB38C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805FB390  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB394  D0 18 00 00 */	stfs f0, 0(r24)
/* 805FB398  C0 38 FF F8 */	lfs f1, -8(r24)
/* 805FB39C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805FB3A0  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB3A4  D0 18 00 04 */	stfs f0, 4(r24)
/* 805FB3A8  C0 38 FF FC */	lfs f1, -4(r24)
/* 805FB3AC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805FB3B0  EC 01 00 2A */	fadds f0, f1, f0
/* 805FB3B4  D0 18 00 08 */	stfs f0, 8(r24)
/* 805FB3B8  3B 7B 00 01 */	addi r27, r27, 1
/* 805FB3BC  2C 1B 00 10 */	cmpwi r27, 0x10
/* 805FB3C0  3B DE 17 70 */	addi r30, r30, 0x1770
/* 805FB3C4  3B 18 00 0C */	addi r24, r24, 0xc
/* 805FB3C8  41 80 FE D0 */	blt lbl_805FB298
/* 805FB3CC  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 805FB3D0  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 805FB3D4  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 805FB3D8  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 805FB3DC  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 805FB3E0  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 805FB3E4  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 805FB3E8  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 805FB3EC  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 805FB3F0  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 805FB3F4  E3 41 00 78 */	psq_l f26, 120(r1), 0, 0 /* qr0 */
/* 805FB3F8  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 805FB3FC  39 61 00 70 */	addi r11, r1, 0x70
/* 805FB400  4B D6 6E 14 */	b _restgpr_24
/* 805FB404  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 805FB408  7C 08 03 A6 */	mtlr r0
/* 805FB40C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 805FB410  4E 80 00 20 */	blr 
