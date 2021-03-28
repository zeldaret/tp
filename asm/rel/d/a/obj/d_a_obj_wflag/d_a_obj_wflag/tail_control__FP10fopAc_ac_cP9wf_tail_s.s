lbl_80D36CA0:
/* 80D36CA0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80D36CA4  7C 08 02 A6 */	mflr r0
/* 80D36CA8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80D36CAC  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80D36CB0  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80D36CB4  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80D36CB8  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80D36CBC  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 80D36CC0  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 80D36CC4  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 80D36CC8  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 80D36CCC  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 80D36CD0  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 80D36CD4  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 80D36CD8  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 80D36CDC  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 80D36CE0  F3 21 00 88 */	psq_st f25, 136(r1), 0, 0 /* qr0 */
/* 80D36CE4  39 61 00 80 */	addi r11, r1, 0x80
/* 80D36CE8  4B 62 B4 CC */	b _savegpr_19
/* 80D36CEC  7C 73 1B 78 */	mr r19, r3
/* 80D36CF0  7C 9A 23 78 */	mr r26, r4
/* 80D36CF4  3C 60 80 D3 */	lis r3, lit_3883@ha
/* 80D36CF8  3A A3 78 8C */	addi r21, r3, lit_3883@l
/* 80D36CFC  3B 9A 00 10 */	addi r28, r26, 0x10
/* 80D36D00  3B 7A 00 FA */	addi r27, r26, 0xfa
/* 80D36D04  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80D36D08  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80D36D0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D36D10  A8 93 04 DE */	lha r4, 0x4de(r19)
/* 80D36D14  4B 2D 56 C8 */	b mDoMtx_YrotS__FPA4_fs
/* 80D36D18  C0 15 00 00 */	lfs f0, 0(r21)
/* 80D36D1C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D36D20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D36D24  C0 55 00 04 */	lfs f2, 4(r21)
/* 80D36D28  C0 35 00 08 */	lfs f1, 8(r21)
/* 80D36D2C  C0 13 05 2C */	lfs f0, 0x52c(r19)
/* 80D36D30  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D36D34  EC 02 00 2A */	fadds f0, f2, f0
/* 80D36D38  FC 00 00 50 */	fneg f0, f0
/* 80D36D3C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D36D40  38 61 00 38 */	addi r3, r1, 0x38
/* 80D36D44  38 81 00 20 */	addi r4, r1, 0x20
/* 80D36D48  4B 53 A1 A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80D36D4C  C0 35 00 0C */	lfs f1, 0xc(r21)
/* 80D36D50  C0 13 05 2C */	lfs f0, 0x52c(r19)
/* 80D36D54  EF 61 00 32 */	fmuls f27, f1, f0
/* 80D36D58  C3 B5 00 00 */	lfs f29, 0(r21)
/* 80D36D5C  D3 A1 00 38 */	stfs f29, 0x38(r1)
/* 80D36D60  D3 A1 00 3C */	stfs f29, 0x3c(r1)
/* 80D36D64  C0 15 00 04 */	lfs f0, 4(r21)
/* 80D36D68  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D36D6C  3B A0 00 01 */	li r29, 1
/* 80D36D70  3B 20 F6 A0 */	li r25, -2400
/* 80D36D74  3B 00 EF 98 */	li r24, -4200
/* 80D36D78  3A E0 F1 8C */	li r23, -3700
/* 80D36D7C  3A C0 00 04 */	li r22, 4
/* 80D36D80  3C 60 80 D3 */	lis r3, pd@ha
/* 80D36D84  3B C3 78 CC */	addi r30, r3, pd@l
/* 80D36D88  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D36D8C  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l
/* 80D36D90  C3 D5 00 10 */	lfs f30, 0x10(r21)
/* 80D36D94  C3 F5 00 14 */	lfs f31, 0x14(r21)
/* 80D36D98  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80D36D9C  3A A3 07 68 */	addi r21, r3, calc_mtx@l
lbl_80D36DA0:
/* 80D36DA0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80D36DA4  7C 7E B2 14 */	add r3, r30, r22
/* 80D36DA8  C0 23 FF FC */	lfs f1, -4(r3)
/* 80D36DAC  EC 40 00 72 */	fmuls f2, f0, f1
/* 80D36DB0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80D36DB4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D36DB8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D36DBC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D36DC0  A8 7A 00 00 */	lha r3, 0(r26)
/* 80D36DC4  1C 03 15 18 */	mulli r0, r3, 0x1518
/* 80D36DC8  7C 00 BA 14 */	add r0, r0, r23
/* 80D36DCC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D36DD0  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80D36DD4  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80D36DD8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80D36DDC  EC 82 00 2A */	fadds f4, f2, f0
/* 80D36DE0  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80D36DE4  1C 03 16 44 */	mulli r0, r3, 0x1644
/* 80D36DE8  7C 00 C2 14 */	add r0, r0, r24
/* 80D36DEC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D36DF0  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80D36DF4  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80D36DF8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80D36DFC  EC 61 00 2A */	fadds f3, f1, f0
/* 80D36E00  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80D36E04  1C 03 10 68 */	mulli r0, r3, 0x1068
/* 80D36E08  7C 00 CA 14 */	add r0, r0, r25
/* 80D36E0C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D36E10  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80D36E14  EC 5B 00 32 */	fmuls f2, f27, f0
/* 80D36E18  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80D36E1C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80D36E20  C0 1C FF F4 */	lfs f0, -0xc(r28)
/* 80D36E24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D36E28  EF 84 00 2A */	fadds f28, f4, f0
/* 80D36E2C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80D36E30  C0 1C FF F8 */	lfs f0, -8(r28)
/* 80D36E34  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D36E38  EC 1F 00 2A */	fadds f0, f31, f0
/* 80D36E3C  EF 42 00 2A */	fadds f26, f2, f0
/* 80D36E40  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80D36E44  C0 1C FF FC */	lfs f0, -4(r28)
/* 80D36E48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D36E4C  EF 23 00 2A */	fadds f25, f3, f0
/* 80D36E50  FC 20 D0 90 */	fmr f1, f26
/* 80D36E54  FC 40 C8 90 */	fmr f2, f25
/* 80D36E58  4B 53 08 1C */	b cM_atan2s__Fff
/* 80D36E5C  7C 03 00 D0 */	neg r0, r3
/* 80D36E60  7C 14 07 34 */	extsh r20, r0
/* 80D36E64  EC 3A 06 B2 */	fmuls f1, f26, f26
/* 80D36E68  EC 19 06 72 */	fmuls f0, f25, f25
/* 80D36E6C  EC 41 00 2A */	fadds f2, f1, f0
/* 80D36E70  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 80D36E74  40 81 00 0C */	ble lbl_80D36E80
/* 80D36E78  FC 00 10 34 */	frsqrte f0, f2
/* 80D36E7C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80D36E80:
/* 80D36E80  FC 20 E0 90 */	fmr f1, f28
/* 80D36E84  4B 53 07 F0 */	b cM_atan2s__Fff
/* 80D36E88  7C 73 07 34 */	extsh r19, r3
/* 80D36E8C  80 75 00 00 */	lwz r3, 0(r21)
/* 80D36E90  7E 84 A3 78 */	mr r4, r20
/* 80D36E94  4B 2D 54 B0 */	b mDoMtx_XrotS__FPA4_fs
/* 80D36E98  80 75 00 00 */	lwz r3, 0(r21)
/* 80D36E9C  7E 64 9B 78 */	mr r4, r19
/* 80D36EA0  4B 2D 55 94 */	b mDoMtx_YrotM__FPA4_fs
/* 80D36EA4  38 61 00 38 */	addi r3, r1, 0x38
/* 80D36EA8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D36EAC  4B 53 A0 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 80D36EB0  B2 9B FF FA */	sth r20, -6(r27)
/* 80D36EB4  B2 7B FF FC */	sth r19, -4(r27)
/* 80D36EB8  38 61 00 08 */	addi r3, r1, 8
/* 80D36EBC  38 9C FF F4 */	addi r4, r28, -12
/* 80D36EC0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80D36EC4  4B 52 FC 20 */	b __pl__4cXyzCFRC3Vec
/* 80D36EC8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D36ECC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80D36ED0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D36ED4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80D36ED8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D36EDC  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80D36EE0  3B BD 00 01 */	addi r29, r29, 1
/* 80D36EE4  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80D36EE8  3B 39 F6 A0 */	addi r25, r25, -2400
/* 80D36EEC  3B 18 EF 98 */	addi r24, r24, -4200
/* 80D36EF0  3A F7 F1 8C */	addi r23, r23, -3700
/* 80D36EF4  3A D6 00 04 */	addi r22, r22, 4
/* 80D36EF8  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80D36EFC  3B 7B 00 06 */	addi r27, r27, 6
/* 80D36F00  41 80 FE A0 */	blt lbl_80D36DA0
/* 80D36F04  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80D36F08  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80D36F0C  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80D36F10  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80D36F14  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 80D36F18  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80D36F1C  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 80D36F20  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 80D36F24  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 80D36F28  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 80D36F2C  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 80D36F30  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 80D36F34  E3 21 00 88 */	psq_l f25, 136(r1), 0, 0 /* qr0 */
/* 80D36F38  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 80D36F3C  39 61 00 80 */	addi r11, r1, 0x80
/* 80D36F40  4B 62 B2 C0 */	b _restgpr_19
/* 80D36F44  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80D36F48  7C 08 03 A6 */	mtlr r0
/* 80D36F4C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80D36F50  4E 80 00 20 */	blr 
