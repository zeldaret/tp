lbl_805B0D6C:
/* 805B0D6C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805B0D70  7C 08 02 A6 */	mflr r0
/* 805B0D74  90 01 00 94 */	stw r0, 0x94(r1)
/* 805B0D78  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 805B0D7C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 805B0D80  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 805B0D84  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 805B0D88  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 805B0D8C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 805B0D90  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 805B0D94  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 805B0D98  39 61 00 50 */	addi r11, r1, 0x50
/* 805B0D9C  4B DB 14 34 */	b _savegpr_26
/* 805B0DA0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 805B0DA4  D0 03 07 88 */	stfs f0, 0x788(r3)
/* 805B0DA8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 805B0DAC  D0 03 07 8C */	stfs f0, 0x78c(r3)
/* 805B0DB0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 805B0DB4  D0 03 07 90 */	stfs f0, 0x790(r3)
/* 805B0DB8  3C 80 80 5B */	lis r4, lit_3778@ha
/* 805B0DBC  C3 E4 31 44 */	lfs f31, lit_3778@l(r4)
/* 805B0DC0  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 805B0DC4  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 805B0DC8  C0 03 09 10 */	lfs f0, 0x910(r3)
/* 805B0DCC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B0DD0  3B C0 00 10 */	li r30, 0x10
/* 805B0DD4  3B 63 07 7C */	addi r27, r3, 0x77c
/* 805B0DD8  3B 43 07 F4 */	addi r26, r3, 0x7f4
/* 805B0DDC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B0DE0  3B E3 07 68 */	addi r31, r3, calc_mtx@l
lbl_805B0DE4:
/* 805B0DE4  C0 3B 00 00 */	lfs f1, 0(r27)
/* 805B0DE8  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 805B0DEC  EF C1 00 28 */	fsubs f30, f1, f0
/* 805B0DF0  C0 3B 00 04 */	lfs f1, 4(r27)
/* 805B0DF4  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 805B0DF8  EF A1 00 28 */	fsubs f29, f1, f0
/* 805B0DFC  C0 3B 00 08 */	lfs f1, 8(r27)
/* 805B0E00  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 805B0E04  EF 81 00 28 */	fsubs f28, f1, f0
/* 805B0E08  FC 20 E8 90 */	fmr f1, f29
/* 805B0E0C  FC 40 E0 90 */	fmr f2, f28
/* 805B0E10  4B CB 68 64 */	b cM_atan2s__Fff
/* 805B0E14  7C 03 00 D0 */	neg r0, r3
/* 805B0E18  7C 1D 07 34 */	extsh r29, r0
/* 805B0E1C  EC 3D 07 72 */	fmuls f1, f29, f29
/* 805B0E20  EC 1C 07 32 */	fmuls f0, f28, f28
/* 805B0E24  EC 41 00 2A */	fadds f2, f1, f0
/* 805B0E28  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 805B0E2C  40 81 00 0C */	ble lbl_805B0E38
/* 805B0E30  FC 00 10 34 */	frsqrte f0, f2
/* 805B0E34  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805B0E38:
/* 805B0E38  FC 20 F0 90 */	fmr f1, f30
/* 805B0E3C  4B CB 68 38 */	b cM_atan2s__Fff
/* 805B0E40  7C 7C 07 34 */	extsh r28, r3
/* 805B0E44  80 7F 00 00 */	lwz r3, 0(r31)
/* 805B0E48  7F A4 EB 78 */	mr r4, r29
/* 805B0E4C  4B A5 B4 F8 */	b mDoMtx_XrotS__FPA4_fs
/* 805B0E50  80 7F 00 00 */	lwz r3, 0(r31)
/* 805B0E54  7F 84 E3 78 */	mr r4, r28
/* 805B0E58  4B A5 B5 DC */	b mDoMtx_YrotM__FPA4_fs
/* 805B0E5C  38 61 00 20 */	addi r3, r1, 0x20
/* 805B0E60  38 81 00 14 */	addi r4, r1, 0x14
/* 805B0E64  4B CC 00 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 805B0E68  38 61 00 08 */	addi r3, r1, 8
/* 805B0E6C  38 9B 00 0C */	addi r4, r27, 0xc
/* 805B0E70  38 A1 00 14 */	addi r5, r1, 0x14
/* 805B0E74  4B CB 5C 70 */	b __pl__4cXyzCFRC3Vec
/* 805B0E78  C0 01 00 08 */	lfs f0, 8(r1)
/* 805B0E7C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 805B0E80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805B0E84  D0 1B 00 04 */	stfs f0, 4(r27)
/* 805B0E88  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805B0E8C  D0 1B 00 08 */	stfs f0, 8(r27)
/* 805B0E90  B3 BA 00 00 */	sth r29, 0(r26)
/* 805B0E94  B3 9A 00 02 */	sth r28, 2(r26)
/* 805B0E98  37 DE FF FF */	addic. r30, r30, -1
/* 805B0E9C  3B 7B FF F4 */	addi r27, r27, -12
/* 805B0EA0  3B 5A FF FA */	addi r26, r26, -6
/* 805B0EA4  40 80 FF 40 */	bge lbl_805B0DE4
/* 805B0EA8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 805B0EAC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 805B0EB0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 805B0EB4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 805B0EB8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 805B0EBC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 805B0EC0  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 805B0EC4  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 805B0EC8  39 61 00 50 */	addi r11, r1, 0x50
/* 805B0ECC  4B DB 13 50 */	b _restgpr_26
/* 805B0ED0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805B0ED4  7C 08 03 A6 */	mtlr r0
/* 805B0ED8  38 21 00 90 */	addi r1, r1, 0x90
/* 805B0EDC  4E 80 00 20 */	blr 
