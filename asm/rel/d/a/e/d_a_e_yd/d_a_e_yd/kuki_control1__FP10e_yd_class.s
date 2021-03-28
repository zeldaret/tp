lbl_807F54F0:
/* 807F54F0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 807F54F4  7C 08 02 A6 */	mflr r0
/* 807F54F8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 807F54FC  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 807F5500  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 807F5504  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 807F5508  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 807F550C  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 807F5510  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 807F5514  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 807F5518  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 807F551C  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 807F5520  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 807F5524  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 807F5528  F3 41 00 78 */	psq_st f26, 120(r1), 0, 0 /* qr0 */
/* 807F552C  39 61 00 70 */	addi r11, r1, 0x70
/* 807F5530  4B B6 CC 94 */	b _savegpr_23
/* 807F5534  7C 7D 1B 78 */	mr r29, r3
/* 807F5538  3C 60 80 7F */	lis r3, lit_3788@ha
/* 807F553C  38 63 7A 00 */	addi r3, r3, lit_3788@l
/* 807F5540  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807F5544  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 807F5548  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807F554C  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 807F5550  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 807F5554  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 807F5558  C0 23 00 04 */	lfs f1, 4(r3)
/* 807F555C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807F5560  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 807F5564  C0 1D 08 48 */	lfs f0, 0x848(r29)
/* 807F5568  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807F556C  C3 C3 00 38 */	lfs f30, 0x38(r3)
/* 807F5570  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807F5574  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 807F5578  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 807F557C  2C 00 00 06 */	cmpwi r0, 6
/* 807F5580  3B DD 06 B0 */	addi r30, r29, 0x6b0
/* 807F5584  40 82 00 20 */	bne lbl_807F55A4
/* 807F5588  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 807F558C  C3 C3 00 B0 */	lfs f30, 0xb0(r3)
/* 807F5590  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807F5594  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 807F5598  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F559C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807F55A0  48 00 00 0C */	b lbl_807F55AC
lbl_807F55A4:
/* 807F55A4  C0 03 00 DC */	lfs f0, 0xdc(r3)
/* 807F55A8  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_807F55AC:
/* 807F55AC  C3 BD 08 50 */	lfs f29, 0x850(r29)
/* 807F55B0  3B E0 00 01 */	li r31, 1
/* 807F55B4  3B 80 00 02 */	li r28, 2
/* 807F55B8  3B 60 27 10 */	li r27, 0x2710
/* 807F55BC  3B 40 2E E0 */	li r26, 0x2ee0
/* 807F55C0  C3 83 00 04 */	lfs f28, 4(r3)
/* 807F55C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807F55C8  3B 23 07 68 */	addi r25, r3, calc_mtx@l
lbl_807F55CC:
/* 807F55CC  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 807F55D0  2C 00 00 06 */	cmpwi r0, 6
/* 807F55D4  40 82 00 40 */	bne lbl_807F5614
/* 807F55D8  A8 9D 06 6C */	lha r4, 0x66c(r29)
/* 807F55DC  1C 04 03 E8 */	mulli r0, r4, 0x3e8
/* 807F55E0  7C 00 D2 14 */	add r0, r0, r26
/* 807F55E4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F55E8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807F55EC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807F55F0  7C 03 04 2E */	lfsx f0, r3, r0
/* 807F55F4  EF 5E 00 32 */	fmuls f26, f30, f0
/* 807F55F8  1C 04 05 14 */	mulli r0, r4, 0x514
/* 807F55FC  7C 00 DA 14 */	add r0, r0, r27
/* 807F5600  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F5604  7C 63 02 14 */	add r3, r3, r0
/* 807F5608  C0 03 00 04 */	lfs f0, 4(r3)
/* 807F560C  EF FE 00 32 */	fmuls f31, f30, f0
/* 807F5610  48 00 00 E0 */	b lbl_807F56F0
lbl_807F5614:
/* 807F5614  A8 9D 06 6C */	lha r4, 0x66c(r29)
/* 807F5618  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 807F561C  7C 00 D2 14 */	add r0, r0, r26
/* 807F5620  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F5624  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807F5628  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807F562C  7C 03 04 2E */	lfsx f0, r3, r0
/* 807F5630  EF 5E 00 32 */	fmuls f26, f30, f0
/* 807F5634  1C 04 08 FC */	mulli r0, r4, 0x8fc
/* 807F5638  7C 00 DA 14 */	add r0, r0, r27
/* 807F563C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807F5640  7C 63 02 14 */	add r3, r3, r0
/* 807F5644  C0 03 00 04 */	lfs f0, 4(r3)
/* 807F5648  EF FE 00 32 */	fmuls f31, f30, f0
/* 807F564C  88 1D 08 55 */	lbz r0, 0x855(r29)
/* 807F5650  7C 00 07 75 */	extsb. r0, r0
/* 807F5654  41 82 00 48 */	beq lbl_807F569C
/* 807F5658  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807F565C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807F5660  80 63 00 00 */	lwz r3, 0(r3)
/* 807F5664  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807F5668  4B 81 6D 74 */	b mDoMtx_YrotS__FPA4_fs
/* 807F566C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807F5670  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807F5674  80 63 00 00 */	lwz r3, 0(r3)
/* 807F5678  3C 80 80 7F */	lis r4, pow_xa@ha
/* 807F567C  38 04 7B 74 */	addi r0, r4, pow_xa@l
/* 807F5680  7C 80 E2 14 */	add r4, r0, r28
/* 807F5684  A8 84 FF FE */	lha r4, -2(r4)
/* 807F5688  3C 84 00 01 */	addis r4, r4, 1
/* 807F568C  38 04 80 00 */	addi r0, r4, -32768
/* 807F5690  7C 04 07 34 */	extsh r4, r0
/* 807F5694  4B 81 6D 08 */	b mDoMtx_XrotM__FPA4_fs
/* 807F5698  48 00 00 38 */	b lbl_807F56D0
lbl_807F569C:
/* 807F569C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807F56A0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807F56A4  80 63 00 00 */	lwz r3, 0(r3)
/* 807F56A8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807F56AC  4B 81 6D 30 */	b mDoMtx_YrotS__FPA4_fs
/* 807F56B0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807F56B4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807F56B8  80 63 00 00 */	lwz r3, 0(r3)
/* 807F56BC  3C 80 80 7F */	lis r4, pow_xa@ha
/* 807F56C0  38 04 7B 74 */	addi r0, r4, pow_xa@l
/* 807F56C4  7C 80 E2 14 */	add r4, r0, r28
/* 807F56C8  A8 84 FF FE */	lha r4, -2(r4)
/* 807F56CC  4B 81 6C D0 */	b mDoMtx_XrotM__FPA4_fs
lbl_807F56D0:
/* 807F56D0  FC 20 E8 90 */	fmr f1, f29
/* 807F56D4  FC 40 E8 90 */	fmr f2, f29
/* 807F56D8  FC 60 E8 90 */	fmr f3, f29
/* 807F56DC  38 60 00 01 */	li r3, 1
/* 807F56E0  4B A7 B7 C4 */	b MtxScale__FfffUc
/* 807F56E4  38 61 00 20 */	addi r3, r1, 0x20
/* 807F56E8  38 81 00 14 */	addi r4, r1, 0x14
/* 807F56EC  4B A7 B8 00 */	b MtxPosition__FP4cXyzP4cXyz
lbl_807F56F0:
/* 807F56F0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 807F56F4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807F56F8  C0 1E FF F4 */	lfs f0, -0xc(r30)
/* 807F56FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807F5700  EC 02 00 2A */	fadds f0, f2, f0
/* 807F5704  EF 7A 00 2A */	fadds f27, f26, f0
/* 807F5708  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F570C  C0 1E FF F8 */	lfs f0, -8(r30)
/* 807F5710  EC 21 00 28 */	fsubs f1, f1, f0
/* 807F5714  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807F5718  EF 41 00 28 */	fsubs f26, f1, f0
/* 807F571C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 807F5720  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807F5724  C0 1E FF FC */	lfs f0, -4(r30)
/* 807F5728  EC 01 00 28 */	fsubs f0, f1, f0
/* 807F572C  EC 02 00 2A */	fadds f0, f2, f0
/* 807F5730  EF FF 00 2A */	fadds f31, f31, f0
/* 807F5734  FC 20 D8 90 */	fmr f1, f27
/* 807F5738  FC 40 F8 90 */	fmr f2, f31
/* 807F573C  4B A7 1F 38 */	b cM_atan2s__Fff
/* 807F5740  7C 77 07 34 */	extsh r23, r3
/* 807F5744  EC 3B 06 F2 */	fmuls f1, f27, f27
/* 807F5748  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 807F574C  EC 41 00 2A */	fadds f2, f1, f0
/* 807F5750  FC 02 E0 40 */	fcmpo cr0, f2, f28
/* 807F5754  40 81 00 0C */	ble lbl_807F5760
/* 807F5758  FC 00 10 34 */	frsqrte f0, f2
/* 807F575C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807F5760:
/* 807F5760  FC 20 D0 90 */	fmr f1, f26
/* 807F5764  4B A7 1F 10 */	b cM_atan2s__Fff
/* 807F5768  7C 03 00 D0 */	neg r0, r3
/* 807F576C  7C 18 07 34 */	extsh r24, r0
/* 807F5770  80 79 00 00 */	lwz r3, 0(r25)
/* 807F5774  7E E4 BB 78 */	mr r4, r23
/* 807F5778  4B 81 6C 64 */	b mDoMtx_YrotS__FPA4_fs
/* 807F577C  80 79 00 00 */	lwz r3, 0(r25)
/* 807F5780  7F 04 C3 78 */	mr r4, r24
/* 807F5784  4B 81 6C 18 */	b mDoMtx_XrotM__FPA4_fs
/* 807F5788  38 61 00 38 */	addi r3, r1, 0x38
/* 807F578C  38 81 00 2C */	addi r4, r1, 0x2c
/* 807F5790  4B A7 B7 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 807F5794  38 61 00 08 */	addi r3, r1, 8
/* 807F5798  38 9E FF F4 */	addi r4, r30, -12
/* 807F579C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 807F57A0  4B A7 13 44 */	b __pl__4cXyzCFRC3Vec
/* 807F57A4  C0 01 00 08 */	lfs f0, 8(r1)
/* 807F57A8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 807F57AC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807F57B0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 807F57B4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807F57B8  D0 1E 00 08 */	stfs f0, 8(r30)
/* 807F57BC  3B FF 00 01 */	addi r31, r31, 1
/* 807F57C0  2C 1F 00 0C */	cmpwi r31, 0xc
/* 807F57C4  3B 9C 00 02 */	addi r28, r28, 2
/* 807F57C8  3B 7B 27 10 */	addi r27, r27, 0x2710
/* 807F57CC  3B 5A 2E E0 */	addi r26, r26, 0x2ee0
/* 807F57D0  3B DE 00 0C */	addi r30, r30, 0xc
/* 807F57D4  41 80 FD F8 */	blt lbl_807F55CC
/* 807F57D8  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 807F57DC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 807F57E0  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 807F57E4  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 807F57E8  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 807F57EC  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 807F57F0  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 807F57F4  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 807F57F8  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 807F57FC  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 807F5800  E3 41 00 78 */	psq_l f26, 120(r1), 0, 0 /* qr0 */
/* 807F5804  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 807F5808  39 61 00 70 */	addi r11, r1, 0x70
/* 807F580C  4B B6 CA 04 */	b _restgpr_23
/* 807F5810  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807F5814  7C 08 03 A6 */	mtlr r0
/* 807F5818  38 21 00 D0 */	addi r1, r1, 0xd0
/* 807F581C  4E 80 00 20 */	blr 
