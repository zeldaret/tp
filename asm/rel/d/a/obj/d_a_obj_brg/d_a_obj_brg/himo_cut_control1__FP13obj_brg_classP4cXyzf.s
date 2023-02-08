lbl_80BBE338:
/* 80BBE338  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BBE33C  7C 08 02 A6 */	mflr r0
/* 80BBE340  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BBE344  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80BBE348  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80BBE34C  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80BBE350  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80BBE354  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80BBE358  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80BBE35C  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 80BBE360  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 80BBE364  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 80BBE368  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 80BBE36C  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 80BBE370  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 80BBE374  39 61 00 50 */	addi r11, r1, 0x50
/* 80BBE378  4B 7A 3E 51 */	bl _savegpr_24
/* 80BBE37C  7C 78 1B 78 */	mr r24, r3
/* 80BBE380  7C 9C 23 78 */	mr r28, r4
/* 80BBE384  FF 40 08 90 */	fmr f26, f1
/* 80BBE388  3C 60 80 BC */	lis r3, lit_3896@ha /* 0x80BC2148@ha */
/* 80BBE38C  3B 63 21 48 */	addi r27, r3, lit_3896@l /* 0x80BC2148@l */
/* 80BBE390  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BBE394  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BBE398  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BBE39C  C0 3B 00 60 */	lfs f1, 0x60(r27)
/* 80BBE3A0  3C 78 00 01 */	addis r3, r24, 1
/* 80BBE3A4  C0 03 AF 30 */	lfs f0, -0x50d0(r3)
/* 80BBE3A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BBE3AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BBE3B0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBE3B4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BBE3B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BBE3BC  3C 80 80 BC */	lis r4, struct_80BC2524+0x2@ha /* 0x80BC2526@ha */
/* 80BBE3C0  38 84 25 26 */	addi r4, r4, struct_80BC2524+0x2@l /* 0x80BC2526@l */
/* 80BBE3C4  A8 84 00 00 */	lha r4, 0(r4)
/* 80BBE3C8  4B 44 E0 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBE3CC  38 61 00 20 */	addi r3, r1, 0x20
/* 80BBE3D0  38 81 00 08 */	addi r4, r1, 8
/* 80BBE3D4  4B 6B 2B 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBE3D8  C3 BB 00 00 */	lfs f29, 0(r27)
/* 80BBE3DC  D3 A1 00 20 */	stfs f29, 0x20(r1)
/* 80BBE3E0  D3 A1 00 24 */	stfs f29, 0x24(r1)
/* 80BBE3E4  D3 41 00 28 */	stfs f26, 0x28(r1)
/* 80BBE3E8  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BBE3EC  7F 9D E3 78 */	mr r29, r28
/* 80BBE3F0  3B C0 00 01 */	li r30, 1
/* 80BBE3F4  3F F8 00 01 */	addis r31, r24, 1
/* 80BBE3F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBE3FC  3B 43 9A 20 */	addi r26, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBE400  C3 DB 00 C4 */	lfs f30, 0xc4(r27)
/* 80BBE404  C3 FB 00 A8 */	lfs f31, 0xa8(r27)
/* 80BBE408  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BBE40C  3B 63 07 68 */	addi r27, r3, calc_mtx@l /* 0x80450768@l */
lbl_80BBE410:
/* 80BBE410  A8 1F AF 20 */	lha r0, -0x50e0(r31)
/* 80BBE414  1C 80 17 70 */	mulli r4, r0, 0x1770
/* 80BBE418  7C 7D F2 14 */	add r3, r29, r30
/* 80BBE41C  1C 03 D8 F0 */	mulli r0, r3, -10000
/* 80BBE420  7C 04 02 14 */	add r0, r4, r0
/* 80BBE424  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBE428  7C 1A 04 2E */	lfsx f0, r26, r0
/* 80BBE42C  1C 03 D1 20 */	mulli r0, r3, -12000
/* 80BBE430  7C 04 02 14 */	add r0, r4, r0
/* 80BBE434  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBE438  7C 9A 04 2E */	lfsx f4, r26, r0
/* 80BBE43C  C0 BF AF 30 */	lfs f5, -0x50d0(r31)
/* 80BBE440  EC 05 00 32 */	fmuls f0, f5, f0
/* 80BBE444  EC 7E 00 32 */	fmuls f3, f30, f0
/* 80BBE448  C0 41 00 08 */	lfs f2, 8(r1)
/* 80BBE44C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80BBE450  C0 1C FF F4 */	lfs f0, -0xc(r28)
/* 80BBE454  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BBE458  EC 02 00 2A */	fadds f0, f2, f0
/* 80BBE45C  EF 63 00 2A */	fadds f27, f3, f0
/* 80BBE460  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80BBE464  C0 1C FF F8 */	lfs f0, -8(r28)
/* 80BBE468  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BBE46C  EF 80 F8 28 */	fsubs f28, f0, f31
/* 80BBE470  EC 05 01 32 */	fmuls f0, f5, f4
/* 80BBE474  EC 7E 00 32 */	fmuls f3, f30, f0
/* 80BBE478  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80BBE47C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80BBE480  C0 1C FF FC */	lfs f0, -4(r28)
/* 80BBE484  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BBE488  EC 02 00 2A */	fadds f0, f2, f0
/* 80BBE48C  EF 43 00 2A */	fadds f26, f3, f0
/* 80BBE490  FC 20 D8 90 */	fmr f1, f27
/* 80BBE494  FC 40 D0 90 */	fmr f2, f26
/* 80BBE498  4B 6A 91 DD */	bl cM_atan2s__Fff
/* 80BBE49C  7C 78 07 34 */	extsh r24, r3
/* 80BBE4A0  EC 3B 06 F2 */	fmuls f1, f27, f27
/* 80BBE4A4  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 80BBE4A8  EC 41 00 2A */	fadds f2, f1, f0
/* 80BBE4AC  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 80BBE4B0  40 81 00 0C */	ble lbl_80BBE4BC
/* 80BBE4B4  FC 00 10 34 */	frsqrte f0, f2
/* 80BBE4B8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80BBE4BC:
/* 80BBE4BC  FC 20 E0 90 */	fmr f1, f28
/* 80BBE4C0  4B 6A 91 B5 */	bl cM_atan2s__Fff
/* 80BBE4C4  7C 03 00 D0 */	neg r0, r3
/* 80BBE4C8  7C 19 07 34 */	extsh r25, r0
/* 80BBE4CC  80 7B 00 00 */	lwz r3, 0(r27)
/* 80BBE4D0  7F 04 C3 78 */	mr r4, r24
/* 80BBE4D4  4B 44 DF 09 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BBE4D8  80 7B 00 00 */	lwz r3, 0(r27)
/* 80BBE4DC  7F 24 CB 78 */	mr r4, r25
/* 80BBE4E0  4B 44 DE BD */	bl mDoMtx_XrotM__FPA4_fs
/* 80BBE4E4  38 61 00 20 */	addi r3, r1, 0x20
/* 80BBE4E8  38 81 00 14 */	addi r4, r1, 0x14
/* 80BBE4EC  4B 6B 2A 01 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BBE4F0  C0 3C FF F4 */	lfs f1, -0xc(r28)
/* 80BBE4F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BBE4F8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE4FC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80BBE500  C0 3C FF F8 */	lfs f1, -8(r28)
/* 80BBE504  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BBE508  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE50C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80BBE510  C0 3C FF FC */	lfs f1, -4(r28)
/* 80BBE514  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BBE518  EC 01 00 2A */	fadds f0, f1, f0
/* 80BBE51C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80BBE520  3B DE 00 01 */	addi r30, r30, 1
/* 80BBE524  2C 1E 00 05 */	cmpwi r30, 5
/* 80BBE528  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80BBE52C  41 80 FE E4 */	blt lbl_80BBE410
/* 80BBE530  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80BBE534  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80BBE538  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80BBE53C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80BBE540  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 80BBE544  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80BBE548  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 80BBE54C  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 80BBE550  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 80BBE554  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 80BBE558  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 80BBE55C  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 80BBE560  39 61 00 50 */	addi r11, r1, 0x50
/* 80BBE564  4B 7A 3C B1 */	bl _restgpr_24
/* 80BBE568  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BBE56C  7C 08 03 A6 */	mtlr r0
/* 80BBE570  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BBE574  4E 80 00 20 */	blr 
