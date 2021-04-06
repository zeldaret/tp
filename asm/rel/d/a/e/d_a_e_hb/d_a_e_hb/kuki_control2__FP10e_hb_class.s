lbl_804FE8F8:
/* 804FE8F8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804FE8FC  7C 08 02 A6 */	mflr r0
/* 804FE900  90 01 00 94 */	stw r0, 0x94(r1)
/* 804FE904  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804FE908  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804FE90C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804FE910  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804FE914  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 804FE918  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 804FE91C  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 804FE920  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 804FE924  39 61 00 50 */	addi r11, r1, 0x50
/* 804FE928  4B E6 38 A9 */	bl _savegpr_26
/* 804FE92C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 804FE930  D0 03 07 24 */	stfs f0, 0x724(r3)
/* 804FE934  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 804FE938  D0 03 07 28 */	stfs f0, 0x728(r3)
/* 804FE93C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 804FE940  D0 03 07 2C */	stfs f0, 0x72c(r3)
/* 804FE944  3C 80 80 50 */	lis r4, lit_3789@ha /* 0x80500B08@ha */
/* 804FE948  C3 E4 0B 08 */	lfs f31, lit_3789@l(r4)  /* 0x80500B08@l */
/* 804FE94C  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 804FE950  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 804FE954  C0 03 08 44 */	lfs f0, 0x844(r3)
/* 804FE958  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804FE95C  3B C0 00 0A */	li r30, 0xa
/* 804FE960  3B 63 07 18 */	addi r27, r3, 0x718
/* 804FE964  3B 43 07 6C */	addi r26, r3, 0x76c
/* 804FE968  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FE96C  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
lbl_804FE970:
/* 804FE970  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804FE974  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 804FE978  EF C1 00 28 */	fsubs f30, f1, f0
/* 804FE97C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 804FE980  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 804FE984  EF A1 00 28 */	fsubs f29, f1, f0
/* 804FE988  C0 3B 00 08 */	lfs f1, 8(r27)
/* 804FE98C  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 804FE990  EF 81 00 28 */	fsubs f28, f1, f0
/* 804FE994  FC 20 F0 90 */	fmr f1, f30
/* 804FE998  FC 40 E0 90 */	fmr f2, f28
/* 804FE99C  4B D6 8C D9 */	bl cM_atan2s__Fff
/* 804FE9A0  7C 7C 07 34 */	extsh r28, r3
/* 804FE9A4  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 804FE9A8  EC 1C 07 32 */	fmuls f0, f28, f28
/* 804FE9AC  EC 41 00 2A */	fadds f2, f1, f0
/* 804FE9B0  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 804FE9B4  40 81 00 0C */	ble lbl_804FE9C0
/* 804FE9B8  FC 00 10 34 */	frsqrte f0, f2
/* 804FE9BC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804FE9C0:
/* 804FE9C0  FC 20 E8 90 */	fmr f1, f29
/* 804FE9C4  4B D6 8C B1 */	bl cM_atan2s__Fff
/* 804FE9C8  7C 03 00 D0 */	neg r0, r3
/* 804FE9CC  7C 1D 07 34 */	extsh r29, r0
/* 804FE9D0  80 7F 00 00 */	lwz r3, 0(r31)
/* 804FE9D4  7F 84 E3 78 */	mr r4, r28
/* 804FE9D8  4B B0 DA 05 */	bl mDoMtx_YrotS__FPA4_fs
/* 804FE9DC  80 7F 00 00 */	lwz r3, 0(r31)
/* 804FE9E0  7F A4 EB 78 */	mr r4, r29
/* 804FE9E4  4B B0 D9 B9 */	bl mDoMtx_XrotM__FPA4_fs
/* 804FE9E8  38 61 00 20 */	addi r3, r1, 0x20
/* 804FE9EC  38 81 00 14 */	addi r4, r1, 0x14
/* 804FE9F0  4B D7 24 FD */	bl MtxPosition__FP4cXyzP4cXyz
/* 804FE9F4  38 61 00 08 */	addi r3, r1, 8
/* 804FE9F8  38 9B 00 0C */	addi r4, r27, 0xc
/* 804FE9FC  38 A1 00 14 */	addi r5, r1, 0x14
/* 804FEA00  4B D6 80 E5 */	bl __pl__4cXyzCFRC3Vec
/* 804FEA04  C0 01 00 08 */	lfs f0, 8(r1)
/* 804FEA08  D0 1B 00 00 */	stfs f0, 0(r27)
/* 804FEA0C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804FEA10  D0 1B 00 04 */	stfs f0, 4(r27)
/* 804FEA14  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804FEA18  D0 1B 00 08 */	stfs f0, 8(r27)
/* 804FEA1C  B3 BA 00 00 */	sth r29, 0(r26)
/* 804FEA20  B3 9A 00 02 */	sth r28, 2(r26)
/* 804FEA24  37 DE FF FF */	addic. r30, r30, -1
/* 804FEA28  3B 7B FF F4 */	addi r27, r27, -12
/* 804FEA2C  3B 5A FF FA */	addi r26, r26, -6
/* 804FEA30  40 80 FF 40 */	bge lbl_804FE970
/* 804FEA34  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804FEA38  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804FEA3C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804FEA40  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804FEA44  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 804FEA48  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 804FEA4C  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 804FEA50  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 804FEA54  39 61 00 50 */	addi r11, r1, 0x50
/* 804FEA58  4B E6 37 C5 */	bl _restgpr_26
/* 804FEA5C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804FEA60  7C 08 03 A6 */	mtlr r0
/* 804FEA64  38 21 00 90 */	addi r1, r1, 0x90
/* 804FEA68  4E 80 00 20 */	blr 
