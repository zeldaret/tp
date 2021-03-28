lbl_80C45430:
/* 80C45430  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80C45434  7C 08 02 A6 */	mflr r0
/* 80C45438  90 01 01 04 */	stw r0, 0x104(r1)
/* 80C4543C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80C45440  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80C45444  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 80C45448  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 80C4544C  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 80C45450  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 80C45454  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 80C45458  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 80C4545C  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 80C45460  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 80C45464  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 80C45468  F3 41 00 A8 */	psq_st f26, 168(r1), 0, 0 /* qr0 */
/* 80C4546C  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 80C45470  F3 21 00 98 */	psq_st f25, 152(r1), 0, 0 /* qr0 */
/* 80C45474  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 80C45478  F3 01 00 88 */	psq_st f24, 136(r1), 0, 0 /* qr0 */
/* 80C4547C  39 61 00 80 */	addi r11, r1, 0x80
/* 80C45480  4B 71 CD 44 */	b _savegpr_23
/* 80C45484  7C 7A 1B 78 */	mr r26, r3
/* 80C45488  3C 60 80 C4 */	lis r3, lit_3769@ha
/* 80C4548C  3B A3 5F 1C */	addi r29, r3, lit_3769@l
/* 80C45490  88 7A 05 90 */	lbz r3, 0x590(r26)
/* 80C45494  7C 60 07 75 */	extsb. r0, r3
/* 80C45498  41 82 00 0C */	beq lbl_80C454A4
/* 80C4549C  38 03 FF FF */	addi r0, r3, -1
/* 80C454A0  98 1A 05 90 */	stb r0, 0x590(r26)
lbl_80C454A4:
/* 80C454A4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C454A8  D0 1A 05 98 */	stfs f0, 0x598(r26)
/* 80C454AC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C454B0  D0 1A 05 9C */	stfs f0, 0x59c(r26)
/* 80C454B4  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C454B8  D0 1A 05 A0 */	stfs f0, 0x5a0(r26)
/* 80C454BC  4B 41 56 34 */	b dKyw_get_wind_pow__Fv
/* 80C454C0  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80C454C4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80C454C8  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80C454CC  EC 20 08 2A */	fadds f1, f0, f1
/* 80C454D0  38 7A 05 80 */	addi r3, r26, 0x580
/* 80C454D4  C0 5D 00 18 */	lfs f2, 0x18(r29)
/* 80C454D8  C0 7D 00 1C */	lfs f3, 0x1c(r29)
/* 80C454DC  4B 62 A5 60 */	b cLib_addCalc2__FPffff
/* 80C454E0  C3 BA 05 80 */	lfs f29, 0x580(r26)
/* 80C454E4  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 80C454E8  EC 1D 00 24 */	fdivs f0, f29, f0
/* 80C454EC  FC 00 00 1E */	fctiwz f0, f0
/* 80C454F0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80C454F4  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 80C454F8  2C 06 00 7F */	cmpwi r6, 0x7f
/* 80C454FC  40 81 00 08 */	ble lbl_80C45504
/* 80C45500  38 C0 00 7F */	li r6, 0x7f
lbl_80C45504:
/* 80C45504  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800BF@ha */
/* 80C45508  38 03 00 BF */	addi r0, r3, 0x00BF /* 0x000800BF@l */
/* 80C4550C  90 01 00 08 */	stw r0, 8(r1)
/* 80C45510  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C45514  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C45518  80 63 00 00 */	lwz r3, 0(r3)
/* 80C4551C  38 81 00 08 */	addi r4, r1, 8
/* 80C45520  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 80C45524  7C 00 0E 70 */	srawi r0, r0, 1
/* 80C45528  7C 00 01 94 */	addze r0, r0
/* 80C4552C  1C A0 00 60 */	mulli r5, r0, 0x60
/* 80C45530  38 A5 05 98 */	addi r5, r5, 0x598
/* 80C45534  7C BA 2A 14 */	add r5, r26, r5
/* 80C45538  38 E0 00 00 */	li r7, 0
/* 80C4553C  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80C45540  FC 40 08 90 */	fmr f2, f1
/* 80C45544  C0 7D 00 24 */	lfs f3, 0x24(r29)
/* 80C45548  FC 80 18 90 */	fmr f4, f3
/* 80C4554C  39 00 00 00 */	li r8, 0
/* 80C45550  4B 66 6F BC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C45554  4B 41 55 8C */	b dKyw_get_wind_vec__Fv
/* 80C45558  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80C4555C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80C45560  40 81 00 14 */	ble lbl_80C45574
/* 80C45564  C0 23 00 00 */	lfs f1, 0(r3)
/* 80C45568  C0 43 00 08 */	lfs f2, 8(r3)
/* 80C4556C  4B 62 21 08 */	b cM_atan2s__Fff
/* 80C45570  B0 7A 04 DE */	sth r3, 0x4de(r26)
lbl_80C45574:
/* 80C45574  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C45578  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C4557C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C45580  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 80C45584  4B 3C 6E 58 */	b mDoMtx_YrotS__FPA4_fs
/* 80C45588  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80C4558C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C45590  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C45594  D3 A1 00 38 */	stfs f29, 0x38(r1)
/* 80C45598  38 61 00 30 */	addi r3, r1, 0x30
/* 80C4559C  38 81 00 18 */	addi r4, r1, 0x18
/* 80C455A0  4B 62 B9 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 80C455A4  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 80C455A8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C455AC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C455B0  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C455B4  38 63 60 00 */	addi r3, r3, l_HIO@l
/* 80C455B8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C455BC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C455C0  88 1A 05 90 */	lbz r0, 0x590(r26)
/* 80C455C4  7C 00 07 75 */	extsb. r0, r0
/* 80C455C8  41 82 00 28 */	beq lbl_80C455F0
/* 80C455CC  38 00 13 88 */	li r0, 0x1388
/* 80C455D0  B0 1A 05 88 */	sth r0, 0x588(r26)
/* 80C455D4  38 00 14 50 */	li r0, 0x1450
/* 80C455D8  B0 1A 05 8A */	sth r0, 0x58a(r26)
/* 80C455DC  38 00 27 10 */	li r0, 0x2710
/* 80C455E0  B0 1A 05 8C */	sth r0, 0x58c(r26)
/* 80C455E4  38 00 23 28 */	li r0, 0x2328
/* 80C455E8  B0 1A 05 8E */	sth r0, 0x58e(r26)
/* 80C455EC  48 00 00 AC */	b lbl_80C45698
lbl_80C455F0:
/* 80C455F0  A8 1A 05 72 */	lha r0, 0x572(r26)
/* 80C455F4  54 00 54 2A */	rlwinm r0, r0, 0xa, 0x10, 0x15
/* 80C455F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C455FC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C45600  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C45604  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 80C45608  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80C4560C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C45610  EC 02 00 2A */	fadds f0, f2, f0
/* 80C45614  FC 00 00 1E */	fctiwz f0, f0
/* 80C45618  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80C4561C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C45620  B0 1A 05 8C */	sth r0, 0x58c(r26)
/* 80C45624  A8 1A 05 72 */	lha r0, 0x572(r26)
/* 80C45628  1C 00 04 30 */	mulli r0, r0, 0x430
/* 80C4562C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C45630  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C45634  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C45638  EC 02 00 2A */	fadds f0, f2, f0
/* 80C4563C  FC 00 00 1E */	fctiwz f0, f0
/* 80C45640  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C45644  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C45648  B0 1A 05 8E */	sth r0, 0x58e(r26)
/* 80C4564C  A8 1A 05 72 */	lha r0, 0x572(r26)
/* 80C45650  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 80C45654  40 82 00 44 */	bne lbl_80C45698
/* 80C45658  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 80C4565C  4B 62 23 30 */	b cM_rndFX__Ff
/* 80C45660  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80C45664  EC 00 08 2A */	fadds f0, f0, f1
/* 80C45668  FC 00 00 1E */	fctiwz f0, f0
/* 80C4566C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C45670  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C45674  B0 1A 05 88 */	sth r0, 0x588(r26)
/* 80C45678  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 80C4567C  4B 62 23 10 */	b cM_rndFX__Ff
/* 80C45680  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80C45684  EC 00 08 2A */	fadds f0, f0, f1
/* 80C45688  FC 00 00 1E */	fctiwz f0, f0
/* 80C4568C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80C45690  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C45694  B0 1A 05 8A */	sth r0, 0x58a(r26)
lbl_80C45698:
/* 80C45698  A8 7A 05 84 */	lha r3, 0x584(r26)
/* 80C4569C  A8 1A 05 88 */	lha r0, 0x588(r26)
/* 80C456A0  7C 03 02 14 */	add r0, r3, r0
/* 80C456A4  B0 1A 05 84 */	sth r0, 0x584(r26)
/* 80C456A8  A8 7A 05 86 */	lha r3, 0x586(r26)
/* 80C456AC  A8 1A 05 8A */	lha r0, 0x58a(r26)
/* 80C456B0  7C 03 02 14 */	add r0, r3, r0
/* 80C456B4  B0 1A 05 86 */	sth r0, 0x586(r26)
/* 80C456B8  3B 60 00 01 */	li r27, 1
/* 80C456BC  3B 20 00 60 */	li r25, 0x60
/* 80C456C0  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C456C4  3B C3 60 00 */	addi r30, r3, l_HIO@l
/* 80C456C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C456CC  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l
/* 80C456D0  C3 DD 00 3C */	lfs f30, 0x3c(r29)
/* 80C456D4  C3 FD 00 40 */	lfs f31, 0x40(r29)
/* 80C456D8  C3 7D 00 28 */	lfs f27, 0x28(r29)
/* 80C456DC  C3 9D 00 44 */	lfs f28, 0x44(r29)
/* 80C456E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C456E4  3B 03 07 68 */	addi r24, r3, calc_mtx@l
/* 80C456E8  48 00 01 8C */	b lbl_80C45874
lbl_80C456EC:
/* 80C456EC  A8 7A 05 84 */	lha r3, 0x584(r26)
/* 80C456F0  A8 1A 05 8C */	lha r0, 0x58c(r26)
/* 80C456F4  7C 00 00 D0 */	neg r0, r0
/* 80C456F8  7C 1B 01 D6 */	mullw r0, r27, r0
/* 80C456FC  7C 03 02 14 */	add r0, r3, r0
/* 80C45700  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C45704  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80C45708  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80C4570C  EC 7E 00 32 */	fmuls f3, f30, f0
/* 80C45710  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80C45714  88 1A 05 90 */	lbz r0, 0x590(r26)
/* 80C45718  7C 00 07 75 */	extsb. r0, r0
/* 80C4571C  40 82 00 38 */	bne lbl_80C45754
/* 80C45720  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80C45724  C8 3D 00 48 */	lfd f1, 0x48(r29)
/* 80C45728  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80C4572C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80C45730  3C 00 43 30 */	lis r0, 0x4330
/* 80C45734  90 01 00 48 */	stw r0, 0x48(r1)
/* 80C45738  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80C4573C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C45740  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80C45744  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C45748  EC 02 00 2A */	fadds f0, f2, f0
/* 80C4574C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C45750  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80C45754:
/* 80C45754  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80C45758  7F 9A CA 14 */	add r28, r26, r25
/* 80C4575C  C0 3C 05 98 */	lfs f1, 0x598(r28)
/* 80C45760  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80C45764  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C45768  EF 42 00 2A */	fadds f26, f2, f0
/* 80C4576C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80C45770  C0 3C 05 9C */	lfs f1, 0x59c(r28)
/* 80C45774  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80C45778  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C4577C  EC 1F 00 2A */	fadds f0, f31, f0
/* 80C45780  EF 22 00 2A */	fadds f25, f2, f0
/* 80C45784  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80C45788  C0 3C 05 A0 */	lfs f1, 0x5a0(r28)
/* 80C4578C  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80C45790  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C45794  EF 02 00 2A */	fadds f24, f2, f0
/* 80C45798  FC 20 D0 90 */	fmr f1, f26
/* 80C4579C  FC 40 C0 90 */	fmr f2, f24
/* 80C457A0  4B 62 1E D4 */	b cM_atan2s__Fff
/* 80C457A4  B0 7C 05 52 */	sth r3, 0x552(r28)
/* 80C457A8  EC 3A 06 B2 */	fmuls f1, f26, f26
/* 80C457AC  EC 18 06 32 */	fmuls f0, f24, f24
/* 80C457B0  EC 41 00 2A */	fadds f2, f1, f0
/* 80C457B4  FC 02 D8 40 */	fcmpo cr0, f2, f27
/* 80C457B8  40 81 00 0C */	ble lbl_80C457C4
/* 80C457BC  FC 00 10 34 */	frsqrte f0, f2
/* 80C457C0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80C457C4:
/* 80C457C4  FC 20 C8 90 */	fmr f1, f25
/* 80C457C8  4B 62 1E AC */	b cM_atan2s__Fff
/* 80C457CC  7C 03 00 D0 */	neg r0, r3
/* 80C457D0  B0 1C 05 50 */	sth r0, 0x550(r28)
/* 80C457D4  A8 7A 05 86 */	lha r3, 0x586(r26)
/* 80C457D8  A8 1A 05 8E */	lha r0, 0x58e(r26)
/* 80C457DC  7C 00 00 D0 */	neg r0, r0
/* 80C457E0  7C 1B 01 D6 */	mullw r0, r27, r0
/* 80C457E4  7C 03 02 14 */	add r0, r3, r0
/* 80C457E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C457EC  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80C457F0  38 1B FF FF */	addi r0, r27, -1
/* 80C457F4  1C 00 00 60 */	mulli r0, r0, 0x60
/* 80C457F8  7E FA 02 14 */	add r23, r26, r0
/* 80C457FC  38 77 05 B4 */	addi r3, r23, 0x5b4
/* 80C45800  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80C45804  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80C45808  FC 00 00 1E */	fctiwz f0, f0
/* 80C4580C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C45810  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80C45814  38 A0 00 02 */	li r5, 2
/* 80C45818  38 C0 06 00 */	li r6, 0x600
/* 80C4581C  4B 62 AD EC */	b cLib_addCalcAngleS2__FPssss
/* 80C45820  80 78 00 00 */	lwz r3, 0(r24)
/* 80C45824  A8 9C 05 52 */	lha r4, 0x552(r28)
/* 80C45828  4B 3C 6B B4 */	b mDoMtx_YrotS__FPA4_fs
/* 80C4582C  80 78 00 00 */	lwz r3, 0(r24)
/* 80C45830  A8 9C 05 50 */	lha r4, 0x550(r28)
/* 80C45834  4B 3C 6B 68 */	b mDoMtx_XrotM__FPA4_fs
/* 80C45838  38 61 00 30 */	addi r3, r1, 0x30
/* 80C4583C  38 81 00 24 */	addi r4, r1, 0x24
/* 80C45840  4B 62 B6 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80C45844  38 61 00 0C */	addi r3, r1, 0xc
/* 80C45848  38 97 05 98 */	addi r4, r23, 0x598
/* 80C4584C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80C45850  4B 62 12 94 */	b __pl__4cXyzCFRC3Vec
/* 80C45854  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C45858  D0 1C 05 98 */	stfs f0, 0x598(r28)
/* 80C4585C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C45860  D0 1C 05 9C */	stfs f0, 0x59c(r28)
/* 80C45864  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C45868  D0 1C 05 A0 */	stfs f0, 0x5a0(r28)
/* 80C4586C  3B 7B 00 01 */	addi r27, r27, 1
/* 80C45870  3B 39 00 60 */	addi r25, r25, 0x60
lbl_80C45874:
/* 80C45874  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 80C45878  7C 1B 00 00 */	cmpw r27, r0
/* 80C4587C  41 80 FE 70 */	blt lbl_80C456EC
/* 80C45880  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80C45884  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80C45888  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 80C4588C  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80C45890  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 80C45894  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 80C45898  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 80C4589C  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 80C458A0  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 80C458A4  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 80C458A8  E3 41 00 A8 */	psq_l f26, 168(r1), 0, 0 /* qr0 */
/* 80C458AC  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 80C458B0  E3 21 00 98 */	psq_l f25, 152(r1), 0, 0 /* qr0 */
/* 80C458B4  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 80C458B8  E3 01 00 88 */	psq_l f24, 136(r1), 0, 0 /* qr0 */
/* 80C458BC  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 80C458C0  39 61 00 80 */	addi r11, r1, 0x80
/* 80C458C4  4B 71 C9 4C */	b _restgpr_23
/* 80C458C8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80C458CC  7C 08 03 A6 */	mtlr r0
/* 80C458D0  38 21 01 00 */	addi r1, r1, 0x100
/* 80C458D4  4E 80 00 20 */	blr 
