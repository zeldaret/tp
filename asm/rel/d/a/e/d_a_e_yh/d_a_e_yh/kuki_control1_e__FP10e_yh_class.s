lbl_80800C40:
/* 80800C40  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80800C44  7C 08 02 A6 */	mflr r0
/* 80800C48  90 01 01 54 */	stw r0, 0x154(r1)
/* 80800C4C  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80800C50  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 80800C54  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 80800C58  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 80800C5C  DB A1 01 20 */	stfd f29, 0x120(r1)
/* 80800C60  F3 A1 01 28 */	psq_st f29, 296(r1), 0, 0 /* qr0 */
/* 80800C64  DB 81 01 10 */	stfd f28, 0x110(r1)
/* 80800C68  F3 81 01 18 */	psq_st f28, 280(r1), 0, 0 /* qr0 */
/* 80800C6C  DB 61 01 00 */	stfd f27, 0x100(r1)
/* 80800C70  F3 61 01 08 */	psq_st f27, 264(r1), 0, 0 /* qr0 */
/* 80800C74  DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 80800C78  F3 41 00 F8 */	psq_st f26, 248(r1), 0, 0 /* qr0 */
/* 80800C7C  DB 21 00 E0 */	stfd f25, 0xe0(r1)
/* 80800C80  F3 21 00 E8 */	psq_st f25, 232(r1), 0, 0 /* qr0 */
/* 80800C84  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80800C88  4B B6 15 30 */	b _savegpr_20
/* 80800C8C  7C 78 1B 78 */	mr r24, r3
/* 80800C90  3C 60 80 80 */	lis r3, lit_3902@ha
/* 80800C94  3B C3 42 7C */	addi r30, r3, lit_3902@l
/* 80800C98  38 61 00 50 */	addi r3, r1, 0x50
/* 80800C9C  4B 87 68 E0 */	b __ct__11dBgS_GndChkFv
/* 80800CA0  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 80800CA4  D0 18 06 A0 */	stfs f0, 0x6a0(r24)
/* 80800CA8  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 80800CAC  D0 18 06 A4 */	stfs f0, 0x6a4(r24)
/* 80800CB0  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 80800CB4  D0 18 06 A8 */	stfs f0, 0x6a8(r24)
/* 80800CB8  3B 78 06 AC */	addi r27, r24, 0x6ac
/* 80800CBC  3B 58 07 36 */	addi r26, r24, 0x736
/* 80800CC0  3B 38 07 AC */	addi r25, r24, 0x7ac
/* 80800CC4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80800CC8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80800CCC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80800CD0  C0 18 08 44 */	lfs f0, 0x844(r24)
/* 80800CD4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80800CD8  C3 98 08 68 */	lfs f28, 0x868(r24)
/* 80800CDC  38 78 08 68 */	addi r3, r24, 0x868
/* 80800CE0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80800CE4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80800CE8  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 80800CEC  4B A6 ED 50 */	b cLib_addCalc2__FPffff
/* 80800CF0  A8 78 08 50 */	lha r3, 0x850(r24)
/* 80800CF4  A8 18 08 52 */	lha r0, 0x852(r24)
/* 80800CF8  7C 03 02 14 */	add r0, r3, r0
/* 80800CFC  B0 18 08 50 */	sth r0, 0x850(r24)
/* 80800D00  3B 80 00 01 */	li r28, 1
/* 80800D04  3A E0 27 10 */	li r23, 0x2710
/* 80800D08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80800D0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80800D10  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80800D14  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80800D18  3B E3 07 68 */	addi r31, r3, calc_mtx@l
/* 80800D1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80800D20  3A C3 9A 20 */	addi r22, r3, sincosTable___5JMath@l
/* 80800D24  C3 BE 00 44 */	lfs f29, 0x44(r30)
/* 80800D28  C3 DE 00 04 */	lfs f30, 4(r30)
/* 80800D2C  C3 FE 00 FC */	lfs f31, 0xfc(r30)
lbl_80800D30:
/* 80800D30  80 7F 00 00 */	lwz r3, 0(r31)
/* 80800D34  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 80800D38  4B 80 B6 A4 */	b mDoMtx_YrotS__FPA4_fs
/* 80800D3C  A8 18 08 50 */	lha r0, 0x850(r24)
/* 80800D40  7C 00 BA 14 */	add r0, r0, r23
/* 80800D44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80800D48  7C 16 04 2E */	lfsx f0, r22, r0
/* 80800D4C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80800D50  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80800D54  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 80800D58  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 80800D5C  38 61 00 14 */	addi r3, r1, 0x14
/* 80800D60  38 81 00 20 */	addi r4, r1, 0x20
/* 80800D64  4B A7 01 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 80800D68  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80800D6C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80800D70  C0 1B FF F4 */	lfs f0, -0xc(r27)
/* 80800D74  EC 01 00 28 */	fsubs f0, f1, f0
/* 80800D78  EF 62 00 2A */	fadds f27, f2, f0
/* 80800D7C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80800D80  EC 20 E0 2A */	fadds f1, f0, f28
/* 80800D84  C0 19 00 00 */	lfs f0, 0(r25)
/* 80800D88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80800D8C  4C 40 13 82 */	cror 2, 0, 2
/* 80800D90  40 82 00 08 */	bne lbl_80800D98
/* 80800D94  FC 20 00 90 */	fmr f1, f0
lbl_80800D98:
/* 80800D98  C0 1B FF F8 */	lfs f0, -8(r27)
/* 80800D9C  EF 41 00 28 */	fsubs f26, f1, f0
/* 80800DA0  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80800DA4  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80800DA8  C0 1B FF FC */	lfs f0, -4(r27)
/* 80800DAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80800DB0  EF 22 00 2A */	fadds f25, f2, f0
/* 80800DB4  FC 20 D8 90 */	fmr f1, f27
/* 80800DB8  FC 40 C8 90 */	fmr f2, f25
/* 80800DBC  4B A6 68 B8 */	b cM_atan2s__Fff
/* 80800DC0  7C 74 07 34 */	extsh r20, r3
/* 80800DC4  EC 3B 06 F2 */	fmuls f1, f27, f27
/* 80800DC8  EC 19 06 72 */	fmuls f0, f25, f25
/* 80800DCC  EC 41 00 2A */	fadds f2, f1, f0
/* 80800DD0  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 80800DD4  40 81 00 0C */	ble lbl_80800DE0
/* 80800DD8  FC 00 10 34 */	frsqrte f0, f2
/* 80800DDC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80800DE0:
/* 80800DE0  FC 20 D0 90 */	fmr f1, f26
/* 80800DE4  4B A6 68 90 */	b cM_atan2s__Fff
/* 80800DE8  7C 03 00 D0 */	neg r0, r3
/* 80800DEC  7C 15 07 34 */	extsh r21, r0
/* 80800DF0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80800DF4  7E 84 A3 78 */	mr r4, r20
/* 80800DF8  4B 80 B5 E4 */	b mDoMtx_YrotS__FPA4_fs
/* 80800DFC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80800E00  7E A4 AB 78 */	mr r4, r21
/* 80800E04  4B 80 B5 98 */	b mDoMtx_XrotM__FPA4_fs
/* 80800E08  38 61 00 44 */	addi r3, r1, 0x44
/* 80800E0C  38 81 00 38 */	addi r4, r1, 0x38
/* 80800E10  4B A7 00 DC */	b MtxPosition__FP4cXyzP4cXyz
/* 80800E14  38 61 00 08 */	addi r3, r1, 8
/* 80800E18  38 9B FF F4 */	addi r4, r27, -12
/* 80800E1C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80800E20  4B A6 5C C4 */	b __pl__4cXyzCFRC3Vec
/* 80800E24  C0 01 00 08 */	lfs f0, 8(r1)
/* 80800E28  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80800E2C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80800E30  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80800E34  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80800E38  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80800E3C  B2 BA 00 00 */	sth r21, 0(r26)
/* 80800E40  B2 9A 00 02 */	sth r20, 2(r26)
/* 80800E44  A8 18 06 6C */	lha r0, 0x66c(r24)
/* 80800E48  7C 00 E2 14 */	add r0, r0, r28
/* 80800E4C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80800E50  40 82 00 6C */	bne lbl_80800EBC
/* 80800E54  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80800E58  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80800E5C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 80800E60  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80800E64  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80800E68  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80800E6C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80800E70  EC 01 00 2A */	fadds f0, f1, f0
/* 80800E74  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80800E78  38 61 00 50 */	addi r3, r1, 0x50
/* 80800E7C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80800E80  4B A6 6E 8C */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80800E84  7F A3 EB 78 */	mr r3, r29
/* 80800E88  38 81 00 50 */	addi r4, r1, 0x50
/* 80800E8C  4B 87 36 14 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80800E90  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80800E94  EC 00 08 2A */	fadds f0, f0, f1
/* 80800E98  D0 19 00 00 */	stfs f0, 0(r25)
/* 80800E9C  C0 19 00 00 */	lfs f0, 0(r25)
/* 80800EA0  C0 5B 00 04 */	lfs f2, 4(r27)
/* 80800EA4  EC 20 10 28 */	fsubs f1, f0, f2
/* 80800EA8  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80800EAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80800EB0  40 81 00 1C */	ble lbl_80800ECC
/* 80800EB4  D0 59 00 00 */	stfs f2, 0(r25)
/* 80800EB8  48 00 00 14 */	b lbl_80800ECC
lbl_80800EBC:
/* 80800EBC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80800EC0  C0 18 10 F8 */	lfs f0, 0x10f8(r24)
/* 80800EC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80800EC8  D0 19 00 00 */	stfs f0, 0(r25)
lbl_80800ECC:
/* 80800ECC  3B 9C 00 01 */	addi r28, r28, 1
/* 80800ED0  2C 1C 00 0C */	cmpwi r28, 0xc
/* 80800ED4  3A F7 27 10 */	addi r23, r23, 0x2710
/* 80800ED8  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80800EDC  3B 5A 00 06 */	addi r26, r26, 6
/* 80800EE0  3B 39 00 04 */	addi r25, r25, 4
/* 80800EE4  41 80 FE 4C */	blt lbl_80800D30
/* 80800EE8  38 61 00 50 */	addi r3, r1, 0x50
/* 80800EEC  38 80 FF FF */	li r4, -1
/* 80800EF0  4B 87 67 00 */	b __dt__11dBgS_GndChkFv
/* 80800EF4  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 80800EF8  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80800EFC  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 80800F00  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 80800F04  E3 A1 01 28 */	psq_l f29, 296(r1), 0, 0 /* qr0 */
/* 80800F08  CB A1 01 20 */	lfd f29, 0x120(r1)
/* 80800F0C  E3 81 01 18 */	psq_l f28, 280(r1), 0, 0 /* qr0 */
/* 80800F10  CB 81 01 10 */	lfd f28, 0x110(r1)
/* 80800F14  E3 61 01 08 */	psq_l f27, 264(r1), 0, 0 /* qr0 */
/* 80800F18  CB 61 01 00 */	lfd f27, 0x100(r1)
/* 80800F1C  E3 41 00 F8 */	psq_l f26, 248(r1), 0, 0 /* qr0 */
/* 80800F20  CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 80800F24  E3 21 00 E8 */	psq_l f25, 232(r1), 0, 0 /* qr0 */
/* 80800F28  CB 21 00 E0 */	lfd f25, 0xe0(r1)
/* 80800F2C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80800F30  4B B6 12 D4 */	b _restgpr_20
/* 80800F34  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80800F38  7C 08 03 A6 */	mtlr r0
/* 80800F3C  38 21 01 50 */	addi r1, r1, 0x150
/* 80800F40  4E 80 00 20 */	blr 
