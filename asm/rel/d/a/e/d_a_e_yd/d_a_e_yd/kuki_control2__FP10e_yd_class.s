lbl_807F5820:
/* 807F5820  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807F5824  7C 08 02 A6 */	mflr r0
/* 807F5828  90 01 00 94 */	stw r0, 0x94(r1)
/* 807F582C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 807F5830  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 807F5834  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 807F5838  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 807F583C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 807F5840  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 807F5844  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 807F5848  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 807F584C  39 61 00 50 */	addi r11, r1, 0x50
/* 807F5850  4B B6 C9 80 */	b _savegpr_26
/* 807F5854  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807F5858  D0 03 07 28 */	stfs f0, 0x728(r3)
/* 807F585C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807F5860  D0 03 07 2C */	stfs f0, 0x72c(r3)
/* 807F5864  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807F5868  D0 03 07 30 */	stfs f0, 0x730(r3)
/* 807F586C  3C 80 80 7F */	lis r4, lit_3789@ha
/* 807F5870  C3 E4 7A 04 */	lfs f31, lit_3789@l(r4)
/* 807F5874  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 807F5878  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 807F587C  C0 03 08 48 */	lfs f0, 0x848(r3)
/* 807F5880  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807F5884  3B C0 00 0A */	li r30, 0xa
/* 807F5888  3B 63 07 1C */	addi r27, r3, 0x71c
/* 807F588C  3B 43 07 70 */	addi r26, r3, 0x770
/* 807F5890  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807F5894  3B E3 07 68 */	addi r31, r3, calc_mtx@l
lbl_807F5898:
/* 807F5898  C0 3B 00 00 */	lfs f1, 0(r27)
/* 807F589C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 807F58A0  EF C1 00 28 */	fsubs f30, f1, f0
/* 807F58A4  C0 3B 00 04 */	lfs f1, 4(r27)
/* 807F58A8  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 807F58AC  EF A1 00 28 */	fsubs f29, f1, f0
/* 807F58B0  C0 3B 00 08 */	lfs f1, 8(r27)
/* 807F58B4  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 807F58B8  EF 81 00 28 */	fsubs f28, f1, f0
/* 807F58BC  FC 20 F0 90 */	fmr f1, f30
/* 807F58C0  FC 40 E0 90 */	fmr f2, f28
/* 807F58C4  4B A7 1D B0 */	b cM_atan2s__Fff
/* 807F58C8  7C 7C 07 34 */	extsh r28, r3
/* 807F58CC  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 807F58D0  EC 1C 07 32 */	fmuls f0, f28, f28
/* 807F58D4  EC 41 00 2A */	fadds f2, f1, f0
/* 807F58D8  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 807F58DC  40 81 00 0C */	ble lbl_807F58E8
/* 807F58E0  FC 00 10 34 */	frsqrte f0, f2
/* 807F58E4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807F58E8:
/* 807F58E8  FC 20 E8 90 */	fmr f1, f29
/* 807F58EC  4B A7 1D 88 */	b cM_atan2s__Fff
/* 807F58F0  7C 03 00 D0 */	neg r0, r3
/* 807F58F4  7C 1D 07 34 */	extsh r29, r0
/* 807F58F8  80 7F 00 00 */	lwz r3, 0(r31)
/* 807F58FC  7F 84 E3 78 */	mr r4, r28
/* 807F5900  4B 81 6A DC */	b mDoMtx_YrotS__FPA4_fs
/* 807F5904  80 7F 00 00 */	lwz r3, 0(r31)
/* 807F5908  7F A4 EB 78 */	mr r4, r29
/* 807F590C  4B 81 6A 90 */	b mDoMtx_XrotM__FPA4_fs
/* 807F5910  38 61 00 20 */	addi r3, r1, 0x20
/* 807F5914  38 81 00 14 */	addi r4, r1, 0x14
/* 807F5918  4B A7 B5 D4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807F591C  38 61 00 08 */	addi r3, r1, 8
/* 807F5920  38 9B 00 0C */	addi r4, r27, 0xc
/* 807F5924  38 A1 00 14 */	addi r5, r1, 0x14
/* 807F5928  4B A7 11 BC */	b __pl__4cXyzCFRC3Vec
/* 807F592C  C0 01 00 08 */	lfs f0, 8(r1)
/* 807F5930  D0 1B 00 00 */	stfs f0, 0(r27)
/* 807F5934  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807F5938  D0 1B 00 04 */	stfs f0, 4(r27)
/* 807F593C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807F5940  D0 1B 00 08 */	stfs f0, 8(r27)
/* 807F5944  B3 BA 00 00 */	sth r29, 0(r26)
/* 807F5948  B3 9A 00 02 */	sth r28, 2(r26)
/* 807F594C  37 DE FF FF */	addic. r30, r30, -1
/* 807F5950  3B 7B FF F4 */	addi r27, r27, -12
/* 807F5954  3B 5A FF FA */	addi r26, r26, -6
/* 807F5958  40 80 FF 40 */	bge lbl_807F5898
/* 807F595C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 807F5960  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 807F5964  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 807F5968  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 807F596C  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 807F5970  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 807F5974  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 807F5978  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 807F597C  39 61 00 50 */	addi r11, r1, 0x50
/* 807F5980  4B B6 C8 9C */	b _restgpr_26
/* 807F5984  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807F5988  7C 08 03 A6 */	mtlr r0
/* 807F598C  38 21 00 90 */	addi r1, r1, 0x90
/* 807F5990  4E 80 00 20 */	blr 
