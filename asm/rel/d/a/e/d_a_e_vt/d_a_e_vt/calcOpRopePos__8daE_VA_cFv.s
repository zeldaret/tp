lbl_807C53FC:
/* 807C53FC  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 807C5400  7C 08 02 A6 */	mflr r0
/* 807C5404  90 01 01 44 */	stw r0, 0x144(r1)
/* 807C5408  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 807C540C  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 807C5410  39 61 01 30 */	addi r11, r1, 0x130
/* 807C5414  4B B9 CD 8C */	b __save_gpr
/* 807C5418  7C 7B 1B 78 */	mr r27, r3
/* 807C541C  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C5420  3A 63 EC A8 */	addi r19, r3, lit_3907@l
/* 807C5424  3B A0 00 00 */	li r29, 0
/* 807C5428  3B 40 00 00 */	li r26, 0
/* 807C542C  3B 20 00 00 */	li r25, 0
/* 807C5430  3B 00 00 00 */	li r24, 0
/* 807C5434  3A E0 00 00 */	li r23, 0
/* 807C5438  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807C543C  3A 83 D4 70 */	addi r20, r3, now__14mDoMtx_stack_c@l
/* 807C5440  3C 60 80 7D */	lis r3, line_start_pos@ha
/* 807C5444  3A A3 F6 6C */	addi r21, r3, line_start_pos@l
/* 807C5448  3C 60 80 7D */	lis r3, line_end_pos@ha
/* 807C544C  39 C3 F5 7C */	addi r14, r3, line_end_pos@l
/* 807C5450  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807C5454  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l
/* 807C5458  90 01 00 E0 */	stw r0, 0xe0(r1)
lbl_807C545C:
/* 807C545C  38 7B 12 2C */	addi r3, r27, 0x122c
/* 807C5460  4B 84 79 04 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 807C5464  C0 33 00 04 */	lfs f1, 4(r19)
/* 807C5468  C0 53 00 B0 */	lfs f2, 0xb0(r19)
/* 807C546C  FC 60 08 90 */	fmr f3, f1
/* 807C5470  4B 84 79 2C */	b transM__14mDoMtx_stack_cFfff
/* 807C5474  38 7B 12 38 */	addi r3, r27, 0x1238
/* 807C5478  4B 84 7A CC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 807C547C  C0 33 00 04 */	lfs f1, 4(r19)
/* 807C5480  C0 53 00 B4 */	lfs f2, 0xb4(r19)
/* 807C5484  FC 60 08 90 */	fmr f3, f1
/* 807C5488  4B 84 79 14 */	b transM__14mDoMtx_stack_cFfff
/* 807C548C  C0 33 00 04 */	lfs f1, 4(r19)
/* 807C5490  C0 53 00 B8 */	lfs f2, 0xb8(r19)
/* 807C5494  FC 60 08 90 */	fmr f3, f1
/* 807C5498  4B 84 79 04 */	b transM__14mDoMtx_stack_cFfff
/* 807C549C  7E 83 A3 78 */	mr r3, r20
/* 807C54A0  A8 9B 12 3E */	lha r4, 0x123e(r27)
/* 807C54A4  4B 84 6E F8 */	b mDoMtx_XrotM__FPA4_fs
/* 807C54A8  C0 33 00 04 */	lfs f1, 4(r19)
/* 807C54AC  C0 53 00 BC */	lfs f2, 0xbc(r19)
/* 807C54B0  FC 60 08 90 */	fmr f3, f1
/* 807C54B4  4B 84 78 E8 */	b transM__14mDoMtx_stack_cFfff
/* 807C54B8  7C 75 C2 14 */	add r3, r21, r24
/* 807C54BC  4B 84 79 18 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 807C54C0  C0 14 00 0C */	lfs f0, 0xc(r20)
/* 807C54C4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807C54C8  C0 14 00 1C */	lfs f0, 0x1c(r20)
/* 807C54CC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807C54D0  C0 14 00 2C */	lfs f0, 0x2c(r20)
/* 807C54D4  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 807C54D8  7C 6E C2 14 */	add r3, r14, r24
/* 807C54DC  C0 03 00 00 */	lfs f0, 0(r3)
/* 807C54E0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807C54E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 807C54E8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807C54EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 807C54F0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807C54F4  C3 F3 00 04 */	lfs f31, 4(r19)
/* 807C54F8  7C 7B CA 14 */	add r3, r27, r25
/* 807C54FC  39 E3 11 04 */	addi r15, r3, 0x1104
/* 807C5500  C0 03 11 04 */	lfs f0, 0x1104(r3)
/* 807C5504  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 807C5508  41 82 00 50 */	beq lbl_807C5558
/* 807C550C  3A 1A 11 2C */	addi r16, r26, 0x112c
/* 807C5510  7C 7B 82 AE */	lhax r3, r27, r16
/* 807C5514  38 03 08 00 */	addi r0, r3, 0x800
/* 807C5518  7C 1B 83 2E */	sthx r0, r27, r16
/* 807C551C  7D E3 7B 78 */	mr r3, r15
/* 807C5520  FC 20 F8 90 */	fmr f1, f31
/* 807C5524  C0 53 00 28 */	lfs f2, 0x28(r19)
/* 807C5528  4B AA B2 18 */	b cLib_chaseF__FPfff
/* 807C552C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 807C5530  38 81 00 BC */	addi r4, r1, 0xbc
/* 807C5534  4B AA B6 D0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807C5538  7C 7E 07 34 */	extsh r30, r3
/* 807C553C  7C 1B 82 AE */	lhax r0, r27, r16
/* 807C5540  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807C5544  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807C5548  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807C554C  7C 23 04 2E */	lfsx f1, r3, r0
/* 807C5550  C0 0F 00 00 */	lfs f0, 0(r15)
/* 807C5554  EF E0 00 72 */	fmuls f31, f0, f1
lbl_807C5558:
/* 807C5558  3B 80 00 00 */	li r28, 0
/* 807C555C  3A C0 00 00 */	li r22, 0
/* 807C5560  57 C3 04 38 */	rlwinm r3, r30, 0, 0x10, 0x1c
/* 807C5564  80 01 00 E0 */	lwz r0, 0xe0(r1)
/* 807C5568  7E 20 1A 14 */	add r17, r0, r3
/* 807C556C  3A 51 00 04 */	addi r18, r17, 4
lbl_807C5570:
/* 807C5570  7F F7 E2 14 */	add r31, r23, r28
/* 807C5574  38 1F 10 9C */	addi r0, r31, 0x109c
/* 807C5578  7C 7B 00 AE */	lbzx r3, r27, r0
/* 807C557C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 807C5580  41 82 01 74 */	beq lbl_807C56F4
/* 807C5584  2C 1C 00 00 */	cmpwi r28, 0
/* 807C5588  40 82 00 28 */	bne lbl_807C55B0
/* 807C558C  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 807C5590  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 807C5594  7C 7B 02 14 */	add r3, r27, r0
/* 807C5598  D0 03 09 94 */	stfs f0, 0x994(r3)
/* 807C559C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 807C55A0  D0 03 09 98 */	stfs f0, 0x998(r3)
/* 807C55A4  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 807C55A8  D0 03 09 9C */	stfs f0, 0x99c(r3)
/* 807C55AC  48 00 03 DC */	b lbl_807C5988
lbl_807C55B0:
/* 807C55B0  38 60 31 30 */	li r3, 0x3130
/* 807C55B4  1C 1F 00 06 */	mulli r0, r31, 6
/* 807C55B8  7D FB 02 14 */	add r15, r27, r0
/* 807C55BC  B0 6F 0E 46 */	sth r3, 0xe46(r15)
/* 807C55C0  A8 6F 0E 48 */	lha r3, 0xe48(r15)
/* 807C55C4  4B B9 FB 0C */	b abs
/* 807C55C8  2C 03 00 20 */	cmpwi r3, 0x20
/* 807C55CC  41 81 00 2C */	bgt lbl_807C55F8
/* 807C55D0  A8 6F 0E 44 */	lha r3, 0xe44(r15)
/* 807C55D4  38 63 40 00 */	addi r3, r3, 0x4000
/* 807C55D8  4B B9 FA F8 */	b abs
/* 807C55DC  2C 03 00 20 */	cmpwi r3, 0x20
/* 807C55E0  41 81 00 18 */	bgt lbl_807C55F8
/* 807C55E4  38 00 C0 00 */	li r0, -16384
/* 807C55E8  B0 0F 0E 44 */	sth r0, 0xe44(r15)
/* 807C55EC  38 00 00 00 */	li r0, 0
/* 807C55F0  B0 0F 0E 48 */	sth r0, 0xe48(r15)
/* 807C55F4  48 00 00 2C */	b lbl_807C5620
lbl_807C55F8:
/* 807C55F8  A8 0F 0E 44 */	lha r0, 0xe44(r15)
/* 807C55FC  2C 00 C0 00 */	cmpwi r0, -16384
/* 807C5600  40 80 00 14 */	bge lbl_807C5614
/* 807C5604  A8 6F 0E 48 */	lha r3, 0xe48(r15)
/* 807C5608  38 03 00 20 */	addi r0, r3, 0x20
/* 807C560C  B0 0F 0E 48 */	sth r0, 0xe48(r15)
/* 807C5610  48 00 00 10 */	b lbl_807C5620
lbl_807C5614:
/* 807C5614  A8 6F 0E 48 */	lha r3, 0xe48(r15)
/* 807C5618  38 03 FF E0 */	addi r0, r3, -32
/* 807C561C  B0 0F 0E 48 */	sth r0, 0xe48(r15)
lbl_807C5620:
/* 807C5620  38 6F 0E 48 */	addi r3, r15, 0xe48
/* 807C5624  38 80 00 00 */	li r4, 0
/* 807C5628  38 A0 00 08 */	li r5, 8
/* 807C562C  4B AA B5 64 */	b cLib_chaseAngleS__FPsss
/* 807C5630  A8 6F 0E 44 */	lha r3, 0xe44(r15)
/* 807C5634  A8 0F 0E 48 */	lha r0, 0xe48(r15)
/* 807C5638  7C 03 02 14 */	add r0, r3, r0
/* 807C563C  B0 0F 0E 44 */	sth r0, 0xe44(r15)
/* 807C5640  7F 63 DB 78 */	mr r3, r27
/* 807C5644  7F A4 EB 78 */	mr r4, r29
/* 807C5648  4B FF FD 95 */	bl getRopeLength__8daE_VA_cFi
/* 807C564C  A8 AF 0E 44 */	lha r5, 0xe44(r15)
/* 807C5650  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 807C5654  7C 00 1E 70 */	srawi r0, r0, 3
/* 807C5658  54 00 18 38 */	slwi r0, r0, 3
/* 807C565C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807C5660  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 807C5664  7C 04 04 2E */	lfsx f0, r4, r0
/* 807C5668  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C566C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807C5670  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 807C5674  7C 64 02 14 */	add r3, r4, r0
/* 807C5678  C0 03 00 04 */	lfs f0, 4(r3)
/* 807C567C  EC 21 00 32 */	fmuls f1, f1, f0
/* 807C5680  A8 0F 0E 46 */	lha r0, 0xe46(r15)
/* 807C5684  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807C5688  7C 64 02 14 */	add r3, r4, r0
/* 807C568C  C0 03 00 04 */	lfs f0, 4(r3)
/* 807C5690  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C5694  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807C5698  7C 04 04 2E */	lfsx f0, r4, r0
/* 807C569C  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C56A0  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 807C56A4  38 61 00 8C */	addi r3, r1, 0x8c
/* 807C56A8  38 1F FF FF */	addi r0, r31, -1
/* 807C56AC  1C 80 00 0C */	mulli r4, r0, 0xc
/* 807C56B0  38 84 09 94 */	addi r4, r4, 0x994
/* 807C56B4  7C 9B 22 14 */	add r4, r27, r4
/* 807C56B8  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 807C56BC  4B AA 14 28 */	b __pl__4cXyzCFRC3Vec
/* 807C56C0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 807C56C4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 807C56C8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 807C56CC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 807C56D0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 807C56D4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807C56D8  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 807C56DC  38 63 09 94 */	addi r3, r3, 0x994
/* 807C56E0  7C 7B 1A 14 */	add r3, r27, r3
/* 807C56E4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 807C56E8  C0 33 00 A0 */	lfs f1, 0xa0(r19)
/* 807C56EC  4B AA B0 C0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 807C56F0  48 00 02 98 */	b lbl_807C5988
lbl_807C56F4:
/* 807C56F4  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 807C56F8  41 82 00 34 */	beq lbl_807C572C
/* 807C56FC  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 807C5700  38 03 09 98 */	addi r0, r3, 0x998
/* 807C5704  7C 3B 04 2E */	lfsx f1, r27, r0
/* 807C5708  C0 13 00 C0 */	lfs f0, 0xc0(r19)
/* 807C570C  EC 01 00 2A */	fadds f0, f1, f0
/* 807C5710  7C 1B 05 2E */	stfsx f0, r27, r0
/* 807C5714  7C 3B 04 2E */	lfsx f1, r27, r0
/* 807C5718  C0 13 00 C4 */	lfs f0, 0xc4(r19)
/* 807C571C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C5720  40 80 02 68 */	bge lbl_807C5988
/* 807C5724  7C 1B 05 2E */	stfsx f0, r27, r0
/* 807C5728  48 00 02 60 */	b lbl_807C5988
lbl_807C572C:
/* 807C572C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 807C5730  41 82 00 34 */	beq lbl_807C5764
/* 807C5734  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 807C5738  38 03 09 98 */	addi r0, r3, 0x998
/* 807C573C  7C 3B 04 2E */	lfsx f1, r27, r0
/* 807C5740  C0 13 00 C8 */	lfs f0, 0xc8(r19)
/* 807C5744  EC 01 00 2A */	fadds f0, f1, f0
/* 807C5748  7C 1B 05 2E */	stfsx f0, r27, r0
/* 807C574C  7C 3B 04 2E */	lfsx f1, r27, r0
/* 807C5750  C0 13 00 C4 */	lfs f0, 0xc4(r19)
/* 807C5754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C5758  40 80 02 30 */	bge lbl_807C5988
/* 807C575C  7C 1B 05 2E */	stfsx f0, r27, r0
/* 807C5760  48 00 02 28 */	b lbl_807C5988
lbl_807C5764:
/* 807C5764  2C 1C 00 00 */	cmpwi r28, 0
/* 807C5768  40 82 00 28 */	bne lbl_807C5790
/* 807C576C  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 807C5770  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 807C5774  7C 7B 02 14 */	add r3, r27, r0
/* 807C5778  D0 03 09 94 */	stfs f0, 0x994(r3)
/* 807C577C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 807C5780  D0 03 09 98 */	stfs f0, 0x998(r3)
/* 807C5784  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 807C5788  D0 03 09 9C */	stfs f0, 0x99c(r3)
/* 807C578C  48 00 01 FC */	b lbl_807C5988
lbl_807C5790:
/* 807C5790  2C 1C 00 09 */	cmpwi r28, 9
/* 807C5794  40 82 00 28 */	bne lbl_807C57BC
/* 807C5798  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 807C579C  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 807C57A0  7C 7B 02 14 */	add r3, r27, r0
/* 807C57A4  D0 03 09 94 */	stfs f0, 0x994(r3)
/* 807C57A8  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 807C57AC  D0 03 09 98 */	stfs f0, 0x998(r3)
/* 807C57B0  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 807C57B4  D0 03 09 9C */	stfs f0, 0x99c(r3)
/* 807C57B8  48 00 01 D0 */	b lbl_807C5988
lbl_807C57BC:
/* 807C57BC  38 61 00 80 */	addi r3, r1, 0x80
/* 807C57C0  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 807C57C4  7D FB 02 14 */	add r15, r27, r0
/* 807C57C8  3A 0F 09 94 */	addi r16, r15, 0x994
/* 807C57CC  7E 04 83 78 */	mr r4, r16
/* 807C57D0  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 807C57D4  4B AA 13 60 */	b __mi__4cXyzCFRC3Vec
/* 807C57D8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 807C57DC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807C57E0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 807C57E4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807C57E8  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 807C57EC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 807C57F0  38 61 00 74 */	addi r3, r1, 0x74
/* 807C57F4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 807C57F8  4B AA 17 50 */	b normalizeZP__4cXyzFv
/* 807C57FC  38 61 00 68 */	addi r3, r1, 0x68
/* 807C5800  38 81 00 BC */	addi r4, r1, 0xbc
/* 807C5804  7E 05 83 78 */	mr r5, r16
/* 807C5808  4B AA 13 2C */	b __mi__4cXyzCFRC3Vec
/* 807C580C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 807C5810  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 807C5814  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807C5818  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 807C581C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 807C5820  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 807C5824  38 61 00 5C */	addi r3, r1, 0x5c
/* 807C5828  38 81 00 98 */	addi r4, r1, 0x98
/* 807C582C  4B AA 17 1C */	b normalizeZP__4cXyzFv
/* 807C5830  38 61 00 50 */	addi r3, r1, 0x50
/* 807C5834  38 81 00 A4 */	addi r4, r1, 0xa4
/* 807C5838  22 1C 00 0A */	subfic r16, r28, 0xa
/* 807C583C  56 00 10 3A */	slwi r0, r16, 2
/* 807C5840  3C A0 80 7D */	lis r5, line_pull_power@ha
/* 807C5844  38 A5 F1 CC */	addi r5, r5, line_pull_power@l
/* 807C5848  7C 25 04 2E */	lfsx f1, r5, r0
/* 807C584C  4B AA 13 38 */	b __ml__4cXyzCFf
/* 807C5850  38 61 00 44 */	addi r3, r1, 0x44
/* 807C5854  38 81 00 50 */	addi r4, r1, 0x50
/* 807C5858  C0 33 00 CC */	lfs f1, 0xcc(r19)
/* 807C585C  4B AA 13 28 */	b __ml__4cXyzCFf
/* 807C5860  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807C5864  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 807C5868  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807C586C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 807C5870  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807C5874  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807C5878  38 61 00 38 */	addi r3, r1, 0x38
/* 807C587C  38 81 00 98 */	addi r4, r1, 0x98
/* 807C5880  3C A0 80 7D */	lis r5, line_pull_power@ha
/* 807C5884  38 A5 F1 CC */	addi r5, r5, line_pull_power@l
/* 807C5888  7C 25 B4 2E */	lfsx f1, r5, r22
/* 807C588C  4B AA 12 F8 */	b __ml__4cXyzCFf
/* 807C5890  38 61 00 2C */	addi r3, r1, 0x2c
/* 807C5894  38 81 00 38 */	addi r4, r1, 0x38
/* 807C5898  C0 33 00 CC */	lfs f1, 0xcc(r19)
/* 807C589C  4B AA 12 E8 */	b __ml__4cXyzCFf
/* 807C58A0  38 61 00 B0 */	addi r3, r1, 0xb0
/* 807C58A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 807C58A8  7C 65 1B 78 */	mr r5, r3
/* 807C58AC  4B B8 17 E4 */	b PSVECAdd
/* 807C58B0  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 807C58B4  C0 13 00 C0 */	lfs f0, 0xc0(r19)
/* 807C58B8  EC 01 00 2A */	fadds f0, f1, f0
/* 807C58BC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 807C58C0  38 61 00 20 */	addi r3, r1, 0x20
/* 807C58C4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 807C58C8  4B AA 16 80 */	b normalizeZP__4cXyzFv
/* 807C58CC  7F 63 DB 78 */	mr r3, r27
/* 807C58D0  7F A4 EB 78 */	mr r4, r29
/* 807C58D4  4B FF FB 09 */	bl getRopeLength__8daE_VA_cFi
/* 807C58D8  38 61 00 14 */	addi r3, r1, 0x14
/* 807C58DC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 807C58E0  4B AA 12 A4 */	b __ml__4cXyzCFf
/* 807C58E4  38 61 00 08 */	addi r3, r1, 8
/* 807C58E8  38 1F FF FF */	addi r0, r31, -1
/* 807C58EC  1C 80 00 0C */	mulli r4, r0, 0xc
/* 807C58F0  38 84 09 94 */	addi r4, r4, 0x994
/* 807C58F4  7C 9B 22 14 */	add r4, r27, r4
/* 807C58F8  38 A1 00 14 */	addi r5, r1, 0x14
/* 807C58FC  4B AA 11 E8 */	b __pl__4cXyzCFRC3Vec
/* 807C5900  C0 01 00 08 */	lfs f0, 8(r1)
/* 807C5904  D0 0F 09 94 */	stfs f0, 0x994(r15)
/* 807C5908  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807C590C  D0 0F 09 98 */	stfs f0, 0x998(r15)
/* 807C5910  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807C5914  D0 0F 09 9C */	stfs f0, 0x99c(r15)
/* 807C5918  C0 2F 09 98 */	lfs f1, 0x998(r15)
/* 807C591C  C0 13 00 C4 */	lfs f0, 0xc4(r19)
/* 807C5920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C5924  40 80 00 08 */	bge lbl_807C592C
/* 807C5928  D0 0F 09 98 */	stfs f0, 0x998(r15)
lbl_807C592C:
/* 807C592C  C0 13 00 04 */	lfs f0, 4(r19)
/* 807C5930  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 807C5934  41 82 00 54 */	beq lbl_807C5988
/* 807C5938  C0 53 00 D0 */	lfs f2, 0xd0(r19)
/* 807C593C  C8 33 00 D8 */	lfd f1, 0xd8(r19)
/* 807C5940  6E 00 80 00 */	xoris r0, r16, 0x8000
/* 807C5944  90 01 00 DC */	stw r0, 0xdc(r1)
/* 807C5948  3C 00 43 30 */	lis r0, 0x4330
/* 807C594C  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 807C5950  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 807C5954  EC 00 08 28 */	fsubs f0, f0, f1
/* 807C5958  EC 00 07 F2 */	fmuls f0, f0, f31
/* 807C595C  EC 42 00 32 */	fmuls f2, f2, f0
/* 807C5960  C0 2F 09 94 */	lfs f1, 0x994(r15)
/* 807C5964  C0 12 00 00 */	lfs f0, 0(r18)
/* 807C5968  EC 02 00 32 */	fmuls f0, f2, f0
/* 807C596C  EC 01 00 2A */	fadds f0, f1, f0
/* 807C5970  D0 0F 09 94 */	stfs f0, 0x994(r15)
/* 807C5974  C0 2F 09 9C */	lfs f1, 0x99c(r15)
/* 807C5978  C0 11 00 00 */	lfs f0, 0(r17)
/* 807C597C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807C5980  EC 01 00 2A */	fadds f0, f1, f0
/* 807C5984  D0 0F 09 9C */	stfs f0, 0x99c(r15)
lbl_807C5988:
/* 807C5988  3B 9C 00 01 */	addi r28, r28, 1
/* 807C598C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 807C5990  3A D6 00 04 */	addi r22, r22, 4
/* 807C5994  41 80 FB DC */	blt lbl_807C5570
/* 807C5998  3B BD 00 01 */	addi r29, r29, 1
/* 807C599C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 807C59A0  3B 5A 00 02 */	addi r26, r26, 2
/* 807C59A4  3B 39 00 04 */	addi r25, r25, 4
/* 807C59A8  3B 18 00 0C */	addi r24, r24, 0xc
/* 807C59AC  3A F7 00 0A */	addi r23, r23, 0xa
/* 807C59B0  41 80 FA AC */	blt lbl_807C545C
/* 807C59B4  39 E0 00 00 */	li r15, 0
/* 807C59B8  3A 00 00 00 */	li r16, 0
/* 807C59BC  3A 20 00 00 */	li r17, 0
/* 807C59C0  3A 40 00 00 */	li r18, 0
/* 807C59C4  3A 80 00 00 */	li r20, 0
lbl_807C59C8:
/* 807C59C8  80 7B 09 90 */	lwz r3, 0x990(r27)
/* 807C59CC  7D C3 A0 2E */	lwzx r14, r3, r20
/* 807C59D0  2C 0F 00 0A */	cmpwi r15, 0xa
/* 807C59D4  41 82 01 64 */	beq lbl_807C5B38
/* 807C59D8  7F 63 DB 78 */	mr r3, r27
/* 807C59DC  7D E4 7B 78 */	mr r4, r15
/* 807C59E0  4B FF F9 FD */	bl getRopeLength__8daE_VA_cFi
/* 807C59E4  38 D1 11 B8 */	addi r6, r17, 0x11b8
/* 807C59E8  7C 1B 34 2E */	lfsx f0, r27, r6
/* 807C59EC  EC 00 08 24 */	fdivs f0, f0, f1
/* 807C59F0  FC 00 00 1E */	fctiwz f0, f0
/* 807C59F4  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 807C59F8  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 807C59FC  38 60 00 00 */	li r3, 0
/* 807C5A00  7C FB 82 14 */	add r7, r27, r16
/* 807C5A04  1C 92 00 0C */	mulli r4, r18, 0xc
/* 807C5A08  7D 1B 22 14 */	add r8, r27, r4
/* 807C5A0C  38 80 00 0A */	li r4, 0xa
/* 807C5A10  7C 89 03 A6 */	mtctr r4
lbl_807C5A14:
/* 807C5A14  7C B2 1A 14 */	add r5, r18, r3
/* 807C5A18  1C 85 00 0C */	mulli r4, r5, 0xc
/* 807C5A1C  7C 9B 22 14 */	add r4, r27, r4
/* 807C5A20  C0 04 09 94 */	lfs f0, 0x994(r4)
/* 807C5A24  D0 0E 00 00 */	stfs f0, 0(r14)
/* 807C5A28  C0 04 09 98 */	lfs f0, 0x998(r4)
/* 807C5A2C  D0 0E 00 04 */	stfs f0, 4(r14)
/* 807C5A30  C0 04 09 9C */	lfs f0, 0x99c(r4)
/* 807C5A34  D0 0E 00 08 */	stfs f0, 8(r14)
/* 807C5A38  2C 00 00 04 */	cmpwi r0, 4
/* 807C5A3C  41 80 00 7C */	blt lbl_807C5AB8
/* 807C5A40  7C 03 00 00 */	cmpw r3, r0
/* 807C5A44  41 81 00 40 */	bgt lbl_807C5A84
/* 807C5A48  7C 3B 34 2E */	lfsx f1, r27, r6
/* 807C5A4C  C0 13 00 04 */	lfs f0, 4(r19)
/* 807C5A50  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C5A54  41 82 00 30 */	beq lbl_807C5A84
/* 807C5A58  C0 07 11 40 */	lfs f0, 0x1140(r7)
/* 807C5A5C  D0 0E 00 00 */	stfs f0, 0(r14)
/* 807C5A60  C0 07 11 44 */	lfs f0, 0x1144(r7)
/* 807C5A64  D0 0E 00 04 */	stfs f0, 4(r14)
/* 807C5A68  C0 07 11 48 */	lfs f0, 0x1148(r7)
/* 807C5A6C  D0 0E 00 08 */	stfs f0, 8(r14)
/* 807C5A70  38 A5 10 9C */	addi r5, r5, 0x109c
/* 807C5A74  7C 9B 28 AE */	lbzx r4, r27, r5
/* 807C5A78  60 84 00 01 */	ori r4, r4, 1
/* 807C5A7C  7C 9B 29 AE */	stbx r4, r27, r5
/* 807C5A80  48 00 00 A8 */	b lbl_807C5B28
lbl_807C5A84:
/* 807C5A84  38 85 10 9C */	addi r4, r5, 0x109c
/* 807C5A88  7C 9B 20 AE */	lbzx r4, r27, r4
/* 807C5A8C  54 84 06 F7 */	rlwinm. r4, r4, 0, 0x1b, 0x1b
/* 807C5A90  41 82 00 98 */	beq lbl_807C5B28
/* 807C5A94  2C 03 00 04 */	cmpwi r3, 4
/* 807C5A98  40 80 00 90 */	bge lbl_807C5B28
/* 807C5A9C  C0 08 09 C4 */	lfs f0, 0x9c4(r8)
/* 807C5AA0  D0 0E 00 00 */	stfs f0, 0(r14)
/* 807C5AA4  C0 08 09 C8 */	lfs f0, 0x9c8(r8)
/* 807C5AA8  D0 0E 00 04 */	stfs f0, 4(r14)
/* 807C5AAC  C0 08 09 CC */	lfs f0, 0x9cc(r8)
/* 807C5AB0  D0 0E 00 08 */	stfs f0, 8(r14)
/* 807C5AB4  48 00 00 74 */	b lbl_807C5B28
lbl_807C5AB8:
/* 807C5AB8  38 A5 10 9C */	addi r5, r5, 0x109c
/* 807C5ABC  7C 9B 28 AE */	lbzx r4, r27, r5
/* 807C5AC0  54 84 06 F7 */	rlwinm. r4, r4, 0, 0x1b, 0x1b
/* 807C5AC4  41 82 00 28 */	beq lbl_807C5AEC
/* 807C5AC8  2C 03 00 04 */	cmpwi r3, 4
/* 807C5ACC  40 80 00 20 */	bge lbl_807C5AEC
/* 807C5AD0  C0 08 09 C4 */	lfs f0, 0x9c4(r8)
/* 807C5AD4  D0 0E 00 00 */	stfs f0, 0(r14)
/* 807C5AD8  C0 08 09 C8 */	lfs f0, 0x9c8(r8)
/* 807C5ADC  D0 0E 00 04 */	stfs f0, 4(r14)
/* 807C5AE0  C0 08 09 CC */	lfs f0, 0x9cc(r8)
/* 807C5AE4  D0 0E 00 08 */	stfs f0, 8(r14)
/* 807C5AE8  48 00 00 40 */	b lbl_807C5B28
lbl_807C5AEC:
/* 807C5AEC  7C 03 00 00 */	cmpw r3, r0
/* 807C5AF0  41 81 00 38 */	bgt lbl_807C5B28
/* 807C5AF4  7C 3B 34 2E */	lfsx f1, r27, r6
/* 807C5AF8  C0 13 00 04 */	lfs f0, 4(r19)
/* 807C5AFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C5B00  41 82 00 28 */	beq lbl_807C5B28
/* 807C5B04  C0 07 11 40 */	lfs f0, 0x1140(r7)
/* 807C5B08  D0 0E 00 00 */	stfs f0, 0(r14)
/* 807C5B0C  C0 07 11 44 */	lfs f0, 0x1144(r7)
/* 807C5B10  D0 0E 00 04 */	stfs f0, 4(r14)
/* 807C5B14  C0 07 11 48 */	lfs f0, 0x1148(r7)
/* 807C5B18  D0 0E 00 08 */	stfs f0, 8(r14)
/* 807C5B1C  7C 9B 28 AE */	lbzx r4, r27, r5
/* 807C5B20  60 84 00 01 */	ori r4, r4, 1
/* 807C5B24  7C 9B 29 AE */	stbx r4, r27, r5
lbl_807C5B28:
/* 807C5B28  38 63 00 01 */	addi r3, r3, 1
/* 807C5B2C  39 CE 00 0C */	addi r14, r14, 0xc
/* 807C5B30  42 00 FE E4 */	bdnz lbl_807C5A14
/* 807C5B34  48 00 00 E8 */	b lbl_807C5C1C
lbl_807C5B38:
/* 807C5B38  7F 63 DB 78 */	mr r3, r27
/* 807C5B3C  38 80 00 05 */	li r4, 5
/* 807C5B40  4B FF F8 9D */	bl getRopeLength__8daE_VA_cFi
/* 807C5B44  C0 1B 11 CC */	lfs f0, 0x11cc(r27)
/* 807C5B48  EC 00 08 24 */	fdivs f0, f0, f1
/* 807C5B4C  FC 00 00 1E */	fctiwz f0, f0
/* 807C5B50  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 807C5B54  80 A1 00 DC */	lwz r5, 0xdc(r1)
/* 807C5B58  38 C0 00 00 */	li r6, 0
/* 807C5B5C  38 00 00 0A */	li r0, 0xa
/* 807C5B60  7C 09 03 A6 */	mtctr r0
lbl_807C5B64:
/* 807C5B64  38 86 00 32 */	addi r4, r6, 0x32
/* 807C5B68  1C 04 00 0C */	mulli r0, r4, 0xc
/* 807C5B6C  7C 7B 02 14 */	add r3, r27, r0
/* 807C5B70  C0 03 09 94 */	lfs f0, 0x994(r3)
/* 807C5B74  D0 0E 00 00 */	stfs f0, 0(r14)
/* 807C5B78  C0 03 09 98 */	lfs f0, 0x998(r3)
/* 807C5B7C  D0 0E 00 04 */	stfs f0, 4(r14)
/* 807C5B80  C0 03 09 9C */	lfs f0, 0x99c(r3)
/* 807C5B84  D0 0E 00 08 */	stfs f0, 8(r14)
/* 807C5B88  2C 05 00 03 */	cmpwi r5, 3
/* 807C5B8C  40 81 00 20 */	ble lbl_807C5BAC
/* 807C5B90  C0 1B 0C 58 */	lfs f0, 0xc58(r27)
/* 807C5B94  D0 0E 00 00 */	stfs f0, 0(r14)
/* 807C5B98  C0 1B 0C 5C */	lfs f0, 0xc5c(r27)
/* 807C5B9C  D0 0E 00 04 */	stfs f0, 4(r14)
/* 807C5BA0  C0 1B 0C 60 */	lfs f0, 0xc60(r27)
/* 807C5BA4  D0 0E 00 08 */	stfs f0, 8(r14)
/* 807C5BA8  48 00 00 68 */	b lbl_807C5C10
lbl_807C5BAC:
/* 807C5BAC  7C 06 28 00 */	cmpw r6, r5
/* 807C5BB0  41 81 00 30 */	bgt lbl_807C5BE0
/* 807C5BB4  C0 3B 11 CC */	lfs f1, 0x11cc(r27)
/* 807C5BB8  C0 13 00 04 */	lfs f0, 4(r19)
/* 807C5BBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C5BC0  41 82 00 20 */	beq lbl_807C5BE0
/* 807C5BC4  C0 1B 11 7C */	lfs f0, 0x117c(r27)
/* 807C5BC8  D0 0E 00 00 */	stfs f0, 0(r14)
/* 807C5BCC  C0 1B 11 80 */	lfs f0, 0x1180(r27)
/* 807C5BD0  D0 0E 00 04 */	stfs f0, 4(r14)
/* 807C5BD4  C0 1B 11 84 */	lfs f0, 0x1184(r27)
/* 807C5BD8  D0 0E 00 08 */	stfs f0, 8(r14)
/* 807C5BDC  48 00 00 34 */	b lbl_807C5C10
lbl_807C5BE0:
/* 807C5BE0  38 04 10 9C */	addi r0, r4, 0x109c
/* 807C5BE4  7C 1B 00 AE */	lbzx r0, r27, r0
/* 807C5BE8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807C5BEC  41 82 00 24 */	beq lbl_807C5C10
/* 807C5BF0  2C 06 00 03 */	cmpwi r6, 3
/* 807C5BF4  41 80 00 1C */	blt lbl_807C5C10
/* 807C5BF8  C0 1B 0C 10 */	lfs f0, 0xc10(r27)
/* 807C5BFC  D0 0E 00 00 */	stfs f0, 0(r14)
/* 807C5C00  C0 1B 0C 14 */	lfs f0, 0xc14(r27)
/* 807C5C04  D0 0E 00 04 */	stfs f0, 4(r14)
/* 807C5C08  C0 1B 0C 18 */	lfs f0, 0xc18(r27)
/* 807C5C0C  D0 0E 00 08 */	stfs f0, 8(r14)
lbl_807C5C10:
/* 807C5C10  38 C6 00 01 */	addi r6, r6, 1
/* 807C5C14  39 CE 00 0C */	addi r14, r14, 0xc
/* 807C5C18  42 00 FF 4C */	bdnz lbl_807C5B64
lbl_807C5C1C:
/* 807C5C1C  39 EF 00 01 */	addi r15, r15, 1
/* 807C5C20  2C 0F 00 0B */	cmpwi r15, 0xb
/* 807C5C24  3A 10 00 0C */	addi r16, r16, 0xc
/* 807C5C28  3A 31 00 04 */	addi r17, r17, 4
/* 807C5C2C  3A 52 00 0A */	addi r18, r18, 0xa
/* 807C5C30  3A 94 00 20 */	addi r20, r20, 0x20
/* 807C5C34  41 80 FD 94 */	blt lbl_807C59C8
/* 807C5C38  39 C0 00 00 */	li r14, 0
/* 807C5C3C  39 E0 00 00 */	li r15, 0
/* 807C5C40  3C 60 80 7D */	lis r3, data_807CF0AC@ha
/* 807C5C44  38 03 F0 AC */	addi r0, r3, data_807CF0AC@l
/* 807C5C48  7C 10 03 78 */	mr r16, r0
lbl_807C5C4C:
/* 807C5C4C  88 B0 00 00 */	lbz r5, 0(r16)
/* 807C5C50  38 85 10 9C */	addi r4, r5, 0x109c
/* 807C5C54  7C 1B 20 AE */	lbzx r0, r27, r4
/* 807C5C58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C5C5C  41 82 00 14 */	beq lbl_807C5C70
/* 807C5C60  38 6E 09 30 */	addi r3, r14, 0x930
/* 807C5C64  7C 1B 18 AE */	lbzx r0, r27, r3
/* 807C5C68  60 00 00 80 */	ori r0, r0, 0x80
/* 807C5C6C  7C 1B 19 AE */	stbx r0, r27, r3
lbl_807C5C70:
/* 807C5C70  7C 1B 20 AE */	lbzx r0, r27, r4
/* 807C5C74  54 00 07 3B */	rlwinm. r0, r0, 0, 0x1c, 0x1d
/* 807C5C78  41 82 00 14 */	beq lbl_807C5C8C
/* 807C5C7C  38 6E 09 30 */	addi r3, r14, 0x930
/* 807C5C80  7C 1B 18 AE */	lbzx r0, r27, r3
/* 807C5C84  60 00 00 08 */	ori r0, r0, 8
/* 807C5C88  7C 1B 19 AE */	stbx r0, r27, r3
lbl_807C5C8C:
/* 807C5C8C  38 05 FF FF */	addi r0, r5, -1
/* 807C5C90  1C 60 00 0C */	mulli r3, r0, 0xc
/* 807C5C94  38 63 09 94 */	addi r3, r3, 0x994
/* 807C5C98  7C 7B 1A 14 */	add r3, r27, r3
/* 807C5C9C  38 05 00 01 */	addi r0, r5, 1
/* 807C5CA0  1C 80 00 0C */	mulli r4, r0, 0xc
/* 807C5CA4  38 84 09 94 */	addi r4, r4, 0x994
/* 807C5CA8  7C 9B 22 14 */	add r4, r27, r4
/* 807C5CAC  4B AA AF 58 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807C5CB0  38 63 40 00 */	addi r3, r3, 0x4000
/* 807C5CB4  38 0F 06 62 */	addi r0, r15, 0x662
/* 807C5CB8  7C 7B 03 2E */	sthx r3, r27, r0
/* 807C5CBC  39 CE 00 01 */	addi r14, r14, 1
/* 807C5CC0  2C 0E 00 28 */	cmpwi r14, 0x28
/* 807C5CC4  39 EF 00 06 */	addi r15, r15, 6
/* 807C5CC8  3A 10 00 01 */	addi r16, r16, 1
/* 807C5CCC  41 80 FF 80 */	blt lbl_807C5C4C
/* 807C5CD0  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 807C5CD4  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 807C5CD8  39 61 01 30 */	addi r11, r1, 0x130
/* 807C5CDC  4B B9 C5 10 */	b __restore_gpr
/* 807C5CE0  80 01 01 44 */	lwz r0, 0x144(r1)
/* 807C5CE4  7C 08 03 A6 */	mtlr r0
/* 807C5CE8  38 21 01 40 */	addi r1, r1, 0x140
/* 807C5CEC  4E 80 00 20 */	blr 
