lbl_8007C910:
/* 8007C910  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8007C914  7C 08 02 A6 */	mflr r0
/* 8007C918  90 01 01 04 */	stw r0, 0x104(r1)
/* 8007C91C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8007C920  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 8007C924  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 8007C928  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 8007C92C  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 8007C930  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 8007C934  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 8007C938  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 8007C93C  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 8007C940  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 8007C944  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 8007C948  F3 41 00 A8 */	psq_st f26, 168(r1), 0, 0 /* qr0 */
/* 8007C94C  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 8007C950  F3 21 00 98 */	psq_st f25, 152(r1), 0, 0 /* qr0 */
/* 8007C954  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 8007C958  F3 01 00 88 */	psq_st f24, 136(r1), 0, 0 /* qr0 */
/* 8007C95C  DA E1 00 70 */	stfd f23, 0x70(r1)
/* 8007C960  F2 E1 00 78 */	psq_st f23, 120(r1), 0, 0 /* qr0 */
/* 8007C964  39 61 00 70 */	addi r11, r1, 0x70
/* 8007C968  48 2E 58 5D */	bl _savegpr_23
/* 8007C96C  7C 78 1B 78 */	mr r24, r3
/* 8007C970  7C 99 23 78 */	mr r25, r4
/* 8007C974  38 00 00 00 */	li r0, 0
/* 8007C978  90 0D 8A 00 */	stw r0, l_start(r13)
/* 8007C97C  90 0D 8A 04 */	stw r0, l_wcsbuf_num(r13)
/* 8007C980  A0 A3 00 92 */	lhz r5, 0x92(r3)
/* 8007C984  38 C0 00 01 */	li r6, 1
/* 8007C988  4B FF FE 81 */	bl WallCorrectGrpRpSort__4dBgWFP9dBgS_Acchii
/* 8007C98C  3B E0 00 00 */	li r31, 0
/* 8007C990  83 CD 8A 00 */	lwz r30, l_start(r13)
/* 8007C994  C3 E2 8C F8 */	lfs f31, lit_3717(r2)
/* 8007C998  C3 C2 8D 04 */	lfs f30, lit_3937(r2)
lbl_8007C99C:
/* 8007C99C  28 1E 00 00 */	cmplwi r30, 0
/* 8007C9A0  41 82 06 D8 */	beq lbl_8007D078
/* 8007C9A4  A3 BE 00 04 */	lhz r29, 4(r30)
/* 8007C9A8  80 78 00 94 */	lwz r3, 0x94(r24)
/* 8007C9AC  1C 1D 00 18 */	mulli r0, r29, 0x18
/* 8007C9B0  7F 83 02 14 */	add r28, r3, r0
/* 8007C9B4  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8007C9B8  EC 20 00 32 */	fmuls f1, f0, f0
/* 8007C9BC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8007C9C0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8007C9C4  EC 21 00 2A */	fadds f1, f1, f0
/* 8007C9C8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8007C9CC  40 81 00 0C */	ble lbl_8007C9D8
/* 8007C9D0  FC 00 08 34 */	frsqrte f0, f1
/* 8007C9D4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8007C9D8:
/* 8007C9D8  EF 9E 08 24 */	fdivs f28, f30, f1
/* 8007C9DC  80 78 00 A0 */	lwz r3, 0xa0(r24)
/* 8007C9E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8007C9E4  1C 1D 00 0A */	mulli r0, r29, 0xa
/* 8007C9E8  7F 63 02 14 */	add r27, r3, r0
/* 8007C9EC  3B 40 00 00 */	li r26, 0
/* 8007C9F0  3A E0 00 00 */	li r23, 0
/* 8007C9F4  48 00 06 70 */	b lbl_8007D064
lbl_8007C9F8:
/* 8007C9F8  80 79 00 8C */	lwz r3, 0x8c(r25)
/* 8007C9FC  38 17 00 34 */	addi r0, r23, 0x34
/* 8007CA00  7C 03 04 2E */	lfsx f0, r3, r0
/* 8007CA04  EC 3C 00 32 */	fmuls f1, f28, f0
/* 8007CA08  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8007CA0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8007CA10  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8007CA14  D3 E1 00 34 */	stfs f31, 0x34(r1)
/* 8007CA18  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8007CA1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8007CA20  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8007CA24  7C 63 BA 14 */	add r3, r3, r23
/* 8007CA28  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8007CA2C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8007CA30  40 82 00 38 */	bne lbl_8007CA68
/* 8007CA34  C3 03 00 30 */	lfs f24, 0x30(r3)
/* 8007CA38  7F 23 CB 78 */	mr r3, r25
/* 8007CA3C  4B FF A7 A9 */	bl GetSpeedY__9dBgS_AcchFv
/* 8007CA40  FE E0 08 90 */	fmr f23, f1
/* 8007CA44  7F 23 CB 78 */	mr r3, r25
/* 8007CA48  38 81 00 30 */	addi r4, r1, 0x30
/* 8007CA4C  4B FF A7 B5 */	bl GetWallAddY__9dBgS_AcchFR3Vec
/* 8007CA50  80 79 00 30 */	lwz r3, 0x30(r25)
/* 8007CA54  C0 03 00 04 */	lfs f0, 4(r3)
/* 8007CA58  EC 00 C0 2A */	fadds f0, f0, f24
/* 8007CA5C  EC 01 00 2A */	fadds f0, f1, f0
/* 8007CA60  EC 60 B8 28 */	fsubs f3, f0, f23
/* 8007CA64  48 00 00 08 */	b lbl_8007CA6C
lbl_8007CA68:
/* 8007CA68  C0 63 00 38 */	lfs f3, 0x38(r3)
lbl_8007CA6C:
/* 8007CA6C  80 98 00 9C */	lwz r4, 0x9c(r24)
/* 8007CA70  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8007CA74  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8007CA78  38 03 00 04 */	addi r0, r3, 4
/* 8007CA7C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8007CA80  EC 40 18 28 */	fsubs f2, f0, f3
/* 8007CA84  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8007CA88  A0 1B 00 02 */	lhz r0, 2(r27)
/* 8007CA8C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8007CA90  38 03 00 04 */	addi r0, r3, 4
/* 8007CA94  7C 04 04 2E */	lfsx f0, r4, r0
/* 8007CA98  EC 20 18 28 */	fsubs f1, f0, f3
/* 8007CA9C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8007CAA0  A0 1B 00 04 */	lhz r0, 4(r27)
/* 8007CAA4  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8007CAA8  38 03 00 04 */	addi r0, r3, 4
/* 8007CAAC  7C 04 04 2E */	lfsx f0, r4, r0
/* 8007CAB0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8007CAB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8007CAB8  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 8007CABC  40 81 00 14 */	ble lbl_8007CAD0
/* 8007CAC0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8007CAC4  40 81 00 0C */	ble lbl_8007CAD0
/* 8007CAC8  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8007CACC  41 81 05 90 */	bgt lbl_8007D05C
lbl_8007CAD0:
/* 8007CAD0  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007CAD4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007CAD8  40 80 00 1C */	bge lbl_8007CAF4
/* 8007CADC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8007CAE0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CAE4  40 80 00 10 */	bge lbl_8007CAF4
/* 8007CAE8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007CAEC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CAF0  41 80 05 6C */	blt lbl_8007D05C
lbl_8007CAF4:
/* 8007CAF4  38 60 00 00 */	li r3, 0
/* 8007CAF8  FC 00 12 10 */	fabs f0, f2
/* 8007CAFC  FC 20 00 18 */	frsp f1, f0
/* 8007CB00  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007CB04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007CB08  40 80 00 08 */	bge lbl_8007CB10
/* 8007CB0C  38 60 00 01 */	li r3, 1
lbl_8007CB10:
/* 8007CB10  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8007CB14  FC 00 02 10 */	fabs f0, f0
/* 8007CB18  FC 20 00 18 */	frsp f1, f0
/* 8007CB1C  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007CB20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007CB24  40 80 00 08 */	bge lbl_8007CB2C
/* 8007CB28  38 63 00 01 */	addi r3, r3, 1
lbl_8007CB2C:
/* 8007CB2C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007CB30  FC 00 02 10 */	fabs f0, f0
/* 8007CB34  FC 20 00 18 */	frsp f1, f0
/* 8007CB38  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007CB3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007CB40  40 80 00 08 */	bge lbl_8007CB48
/* 8007CB44  38 63 00 01 */	addi r3, r3, 1
lbl_8007CB48:
/* 8007CB48  2C 03 00 01 */	cmpwi r3, 1
/* 8007CB4C  41 82 05 10 */	beq lbl_8007D05C
/* 8007CB50  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8007CB54  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007CB58  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007CB5C  40 81 00 24 */	ble lbl_8007CB80
/* 8007CB60  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8007CB64  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CB68  4C 40 13 82 */	cror 2, 0, 2
/* 8007CB6C  40 82 00 14 */	bne lbl_8007CB80
/* 8007CB70  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007CB74  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CB78  4C 40 13 82 */	cror 2, 0, 2
/* 8007CB7C  41 82 00 30 */	beq lbl_8007CBAC
lbl_8007CB80:
/* 8007CB80  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007CB84  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007CB88  40 80 00 34 */	bge lbl_8007CBBC
/* 8007CB8C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8007CB90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CB94  4C 41 13 82 */	cror 2, 1, 2
/* 8007CB98  40 82 00 24 */	bne lbl_8007CBBC
/* 8007CB9C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007CBA0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CBA4  4C 41 13 82 */	cror 2, 1, 2
/* 8007CBA8  40 82 00 14 */	bne lbl_8007CBBC
lbl_8007CBAC:
/* 8007CBAC  38 A0 00 00 */	li r5, 0
/* 8007CBB0  38 80 00 01 */	li r4, 1
/* 8007CBB4  38 C0 00 02 */	li r6, 2
/* 8007CBB8  48 00 00 74 */	b lbl_8007CC2C
lbl_8007CBBC:
/* 8007CBBC  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 8007CBC0  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007CBC4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8007CBC8  40 81 00 20 */	ble lbl_8007CBE8
/* 8007CBCC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007CBD0  4C 40 13 82 */	cror 2, 0, 2
/* 8007CBD4  40 82 00 14 */	bne lbl_8007CBE8
/* 8007CBD8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007CBDC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CBE0  4C 40 13 82 */	cror 2, 0, 2
/* 8007CBE4  41 82 00 2C */	beq lbl_8007CC10
lbl_8007CBE8:
/* 8007CBE8  C0 22 8C F8 */	lfs f1, lit_3717(r2)
/* 8007CBEC  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 8007CBF0  40 80 00 30 */	bge lbl_8007CC20
/* 8007CBF4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8007CBF8  4C 41 13 82 */	cror 2, 1, 2
/* 8007CBFC  40 82 00 24 */	bne lbl_8007CC20
/* 8007CC00  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007CC04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CC08  4C 41 13 82 */	cror 2, 1, 2
/* 8007CC0C  40 82 00 14 */	bne lbl_8007CC20
lbl_8007CC10:
/* 8007CC10  38 A0 00 01 */	li r5, 1
/* 8007CC14  38 80 00 00 */	li r4, 0
/* 8007CC18  38 C0 00 02 */	li r6, 2
/* 8007CC1C  48 00 00 10 */	b lbl_8007CC2C
lbl_8007CC20:
/* 8007CC20  38 A0 00 02 */	li r5, 2
/* 8007CC24  38 80 00 00 */	li r4, 0
/* 8007CC28  38 C0 00 01 */	li r6, 1
lbl_8007CC2C:
/* 8007CC2C  54 A0 10 3A */	slwi r0, r5, 2
/* 8007CC30  38 61 00 24 */	addi r3, r1, 0x24
/* 8007CC34  7C 03 04 2E */	lfsx f0, r3, r0
/* 8007CC38  54 80 10 3A */	slwi r0, r4, 2
/* 8007CC3C  7C 63 04 2E */	lfsx f3, r3, r0
/* 8007CC40  EC 80 18 28 */	fsubs f4, f0, f3
/* 8007CC44  54 C0 10 3A */	slwi r0, r6, 2
/* 8007CC48  7C 43 04 2E */	lfsx f2, r3, r0
/* 8007CC4C  EC A0 10 28 */	fsubs f5, f0, f2
/* 8007CC50  FC 00 22 10 */	fabs f0, f4
/* 8007CC54  FC 00 00 18 */	frsp f0, f0
/* 8007CC58  C0 2D 8C 00 */	lfs f1, G_CM3D_F_ABS_MIN(r13)
/* 8007CC5C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CC60  41 80 03 FC */	blt lbl_8007D05C
/* 8007CC64  FC 00 2A 10 */	fabs f0, f5
/* 8007CC68  FC 00 00 18 */	frsp f0, f0
/* 8007CC6C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007CC70  41 80 03 EC */	blt lbl_8007D05C
/* 8007CC74  FC 00 18 50 */	fneg f0, f3
/* 8007CC78  EC 60 20 24 */	fdivs f3, f0, f4
/* 8007CC7C  FC 00 10 50 */	fneg f0, f2
/* 8007CC80  EC 40 28 24 */	fdivs f2, f0, f5
/* 8007CC84  80 98 00 9C */	lwz r4, 0x9c(r24)
/* 8007CC88  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8007CC8C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007CC90  7C 64 02 14 */	add r3, r4, r0
/* 8007CC94  C0 83 00 00 */	lfs f4, 0(r3)
/* 8007CC98  C0 A3 00 08 */	lfs f5, 8(r3)
/* 8007CC9C  A0 1B 00 02 */	lhz r0, 2(r27)
/* 8007CCA0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007CCA4  7C 64 02 14 */	add r3, r4, r0
/* 8007CCA8  C0 C3 00 00 */	lfs f6, 0(r3)
/* 8007CCAC  C0 E3 00 08 */	lfs f7, 8(r3)
/* 8007CCB0  A0 1B 00 04 */	lhz r0, 4(r27)
/* 8007CCB4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007CCB8  7C 64 02 14 */	add r3, r4, r0
/* 8007CCBC  C1 03 00 00 */	lfs f8, 0(r3)
/* 8007CCC0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8007CCC4  2C 05 00 00 */	cmpwi r5, 0
/* 8007CCC8  40 82 00 38 */	bne lbl_8007CD00
/* 8007CCCC  EC 24 30 28 */	fsubs f1, f4, f6
/* 8007CCD0  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007CCD4  EF 66 08 2A */	fadds f27, f6, f1
/* 8007CCD8  EC 25 38 28 */	fsubs f1, f5, f7
/* 8007CCDC  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007CCE0  EF 47 08 2A */	fadds f26, f7, f1
/* 8007CCE4  EC 24 40 28 */	fsubs f1, f4, f8
/* 8007CCE8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007CCEC  EF 28 08 2A */	fadds f25, f8, f1
/* 8007CCF0  EC 25 00 28 */	fsubs f1, f5, f0
/* 8007CCF4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007CCF8  EF 00 08 2A */	fadds f24, f0, f1
/* 8007CCFC  48 00 00 70 */	b lbl_8007CD6C
lbl_8007CD00:
/* 8007CD00  2C 05 00 01 */	cmpwi r5, 1
/* 8007CD04  40 82 00 38 */	bne lbl_8007CD3C
/* 8007CD08  EC 26 20 28 */	fsubs f1, f6, f4
/* 8007CD0C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007CD10  EF 64 08 2A */	fadds f27, f4, f1
/* 8007CD14  EC 27 28 28 */	fsubs f1, f7, f5
/* 8007CD18  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007CD1C  EF 45 08 2A */	fadds f26, f5, f1
/* 8007CD20  EC 26 40 28 */	fsubs f1, f6, f8
/* 8007CD24  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007CD28  EF 28 08 2A */	fadds f25, f8, f1
/* 8007CD2C  EC 27 00 28 */	fsubs f1, f7, f0
/* 8007CD30  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007CD34  EF 00 08 2A */	fadds f24, f0, f1
/* 8007CD38  48 00 00 34 */	b lbl_8007CD6C
lbl_8007CD3C:
/* 8007CD3C  EC 28 20 28 */	fsubs f1, f8, f4
/* 8007CD40  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007CD44  EF 64 08 2A */	fadds f27, f4, f1
/* 8007CD48  EC 20 28 28 */	fsubs f1, f0, f5
/* 8007CD4C  EC 23 00 72 */	fmuls f1, f3, f1
/* 8007CD50  EF 45 08 2A */	fadds f26, f5, f1
/* 8007CD54  EC 28 30 28 */	fsubs f1, f8, f6
/* 8007CD58  EC 22 00 72 */	fmuls f1, f2, f1
/* 8007CD5C  EF 26 08 2A */	fadds f25, f6, f1
/* 8007CD60  EC 00 38 28 */	fsubs f0, f0, f7
/* 8007CD64  EC 02 00 32 */	fmuls f0, f2, f0
/* 8007CD68  EF 07 00 2A */	fadds f24, f7, f0
lbl_8007CD6C:
/* 8007CD6C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8007CD70  EF 7B 00 2A */	fadds f27, f27, f0
/* 8007CD74  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8007CD78  EF 5A 08 2A */	fadds f26, f26, f1
/* 8007CD7C  EF 39 00 2A */	fadds f25, f25, f0
/* 8007CD80  EF 18 08 2A */	fadds f24, f24, f1
/* 8007CD84  80 79 00 30 */	lwz r3, 0x30(r25)
/* 8007CD88  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007CD8C  C0 43 00 08 */	lfs f2, 8(r3)
/* 8007CD90  FC 60 D8 90 */	fmr f3, f27
/* 8007CD94  FC 80 D0 90 */	fmr f4, f26
/* 8007CD98  FC A0 C8 90 */	fmr f5, f25
/* 8007CD9C  FC C0 C0 90 */	fmr f6, f24
/* 8007CDA0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8007CDA4  38 81 00 18 */	addi r4, r1, 0x18
/* 8007CDA8  38 A1 00 20 */	addi r5, r1, 0x20
/* 8007CDAC  48 1E B8 81 */	bl cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf
/* 8007CDB0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8007CDB4  80 D9 00 30 */	lwz r6, 0x30(r25)
/* 8007CDB8  C0 66 00 00 */	lfs f3, 0(r6)
/* 8007CDBC  EC 20 18 28 */	fsubs f1, f0, f3
/* 8007CDC0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8007CDC4  C0 86 00 08 */	lfs f4, 8(r6)
/* 8007CDC8  EC 00 20 28 */	fsubs f0, f0, f4
/* 8007CDCC  80 99 00 8C */	lwz r4, 0x8c(r25)
/* 8007CDD0  38 17 00 28 */	addi r0, r23, 0x28
/* 8007CDD4  7F A4 04 2E */	lfsx f29, r4, r0
/* 8007CDD8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8007CDDC  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 8007CDE0  41 81 02 7C */	bgt lbl_8007D05C
/* 8007CDE4  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 8007CDE8  EC 21 01 72 */	fmuls f1, f1, f5
/* 8007CDEC  C0 C1 00 38 */	lfs f6, 0x38(r1)
/* 8007CDF0  EC 00 01 B2 */	fmuls f0, f0, f6
/* 8007CDF4  EC 21 00 2A */	fadds f1, f1, f0
/* 8007CDF8  C0 02 8C F8 */	lfs f0, lit_3717(r2)
/* 8007CDFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007CE00  41 80 02 5C */	blt lbl_8007D05C
/* 8007CE04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8007CE08  28 00 00 01 */	cmplwi r0, 1
/* 8007CE0C  40 82 00 74 */	bne lbl_8007CE80
/* 8007CE10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007CE14  40 81 00 0C */	ble lbl_8007CE20
/* 8007CE18  FC 00 10 34 */	frsqrte f0, f2
/* 8007CE1C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8007CE20:
/* 8007CE20  7F 03 C3 78 */	mr r3, r24
/* 8007CE24  7F 24 CB 78 */	mr r4, r25
/* 8007CE28  FC 20 E0 90 */	fmr f1, f28
/* 8007CE2C  7F 85 E3 78 */	mr r5, r28
/* 8007CE30  4B FF EB BD */	bl positionWallCorrect__4dBgWFP9dBgS_AcchfR8cM3dGPlaP4cXyzf
/* 8007CE34  7F 23 CB 78 */	mr r3, r25
/* 8007CE38  4B FF A4 B1 */	bl CalcMovePosWork__9dBgS_AcchFv
/* 8007CE3C  80 99 00 8C */	lwz r4, 0x8c(r25)
/* 8007CE40  38 77 00 10 */	addi r3, r23, 0x10
/* 8007CE44  7C 04 18 2E */	lwzx r0, r4, r3
/* 8007CE48  60 00 00 02 */	ori r0, r0, 2
/* 8007CE4C  7C 04 19 2E */	stwx r0, r4, r3
/* 8007CE50  7F 23 CB 78 */	mr r3, r25
/* 8007CE54  7F 44 D3 78 */	mr r4, r26
/* 8007CE58  7F A5 EB 78 */	mr r5, r29
/* 8007CE5C  4B FF A4 2D */	bl SetWallPolyIndex__9dBgS_AcchFii
/* 8007CE60  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8007CE64  C0 5C 00 08 */	lfs f2, 8(r28)
/* 8007CE68  48 1E A8 0D */	bl cM_atan2s__Fff
/* 8007CE6C  80 99 00 8C */	lwz r4, 0x8c(r25)
/* 8007CE70  38 17 00 3C */	addi r0, r23, 0x3c
/* 8007CE74  7C 64 03 2E */	sthx r3, r4, r0
/* 8007CE78  3B E0 00 01 */	li r31, 1
/* 8007CE7C  48 00 01 E0 */	b lbl_8007D05C
lbl_8007CE80:
/* 8007CE80  EF 7B 28 28 */	fsubs f27, f27, f5
/* 8007CE84  EF 5A 30 28 */	fsubs f26, f26, f6
/* 8007CE88  EF 39 28 28 */	fsubs f25, f25, f5
/* 8007CE8C  EF 18 30 28 */	fsubs f24, f24, f6
/* 8007CE90  FC 20 D8 90 */	fmr f1, f27
/* 8007CE94  FC 40 D0 90 */	fmr f2, f26
/* 8007CE98  48 1E B7 7D */	bl cM3d_Len2dSq__Fffff
/* 8007CE9C  FE E0 08 90 */	fmr f23, f1
/* 8007CEA0  80 79 00 30 */	lwz r3, 0x30(r25)
/* 8007CEA4  FC 20 C8 90 */	fmr f1, f25
/* 8007CEA8  FC 40 C0 90 */	fmr f2, f24
/* 8007CEAC  C0 63 00 00 */	lfs f3, 0(r3)
/* 8007CEB0  C0 83 00 08 */	lfs f4, 8(r3)
/* 8007CEB4  48 1E B7 61 */	bl cM3d_Len2dSq__Fffff
/* 8007CEB8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8007CEBC  FC 60 00 50 */	fneg f3, f0
/* 8007CEC0  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8007CEC4  FC 80 00 50 */	fneg f4, f0
/* 8007CEC8  FC 17 08 40 */	fcmpo cr0, f23, f1
/* 8007CECC  40 80 00 CC */	bge lbl_8007CF98
/* 8007CED0  FC 17 E8 40 */	fcmpo cr0, f23, f29
/* 8007CED4  41 81 01 88 */	bgt lbl_8007D05C
/* 8007CED8  EC 17 E8 28 */	fsubs f0, f23, f29
/* 8007CEDC  FC 00 02 10 */	fabs f0, f0
/* 8007CEE0  FC 20 00 18 */	frsp f1, f0
/* 8007CEE4  C0 02 8D 10 */	lfs f0, lit_4962(r2)
/* 8007CEE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007CEEC  41 80 01 70 */	blt lbl_8007D05C
/* 8007CEF0  80 19 00 8C */	lwz r0, 0x8c(r25)
/* 8007CEF4  38 77 00 14 */	addi r3, r23, 0x14
/* 8007CEF8  7C 60 1A 14 */	add r3, r0, r3
/* 8007CEFC  FC 20 D8 90 */	fmr f1, f27
/* 8007CF00  FC 40 D0 90 */	fmr f2, f26
/* 8007CF04  38 81 00 14 */	addi r4, r1, 0x14
/* 8007CF08  38 A1 00 10 */	addi r5, r1, 0x10
/* 8007CF0C  48 1E B3 55 */	bl cM2d_CrossCirLin__FR8cM2dGCirffffPfPf
/* 8007CF10  80 79 00 30 */	lwz r3, 0x30(r25)
/* 8007CF14  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007CF18  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8007CF1C  EC 1B 00 28 */	fsubs f0, f27, f0
/* 8007CF20  EC 01 00 2A */	fadds f0, f1, f0
/* 8007CF24  D0 03 00 00 */	stfs f0, 0(r3)
/* 8007CF28  80 79 00 30 */	lwz r3, 0x30(r25)
/* 8007CF2C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8007CF30  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8007CF34  EC 1A 00 28 */	fsubs f0, f26, f0
/* 8007CF38  EC 01 00 2A */	fadds f0, f1, f0
/* 8007CF3C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8007CF40  7F 23 CB 78 */	mr r3, r25
/* 8007CF44  4B FF A3 A5 */	bl CalcMovePosWork__9dBgS_AcchFv
/* 8007CF48  80 99 00 8C */	lwz r4, 0x8c(r25)
/* 8007CF4C  38 77 00 10 */	addi r3, r23, 0x10
/* 8007CF50  7C 04 18 2E */	lwzx r0, r4, r3
/* 8007CF54  60 00 00 02 */	ori r0, r0, 2
/* 8007CF58  7C 04 19 2E */	stwx r0, r4, r3
/* 8007CF5C  7F 23 CB 78 */	mr r3, r25
/* 8007CF60  7F 44 D3 78 */	mr r4, r26
/* 8007CF64  7F A5 EB 78 */	mr r5, r29
/* 8007CF68  4B FF A3 21 */	bl SetWallPolyIndex__9dBgS_AcchFii
/* 8007CF6C  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8007CF70  C0 5C 00 08 */	lfs f2, 8(r28)
/* 8007CF74  48 1E A7 01 */	bl cM_atan2s__Fff
/* 8007CF78  80 99 00 8C */	lwz r4, 0x8c(r25)
/* 8007CF7C  38 17 00 3C */	addi r0, r23, 0x3c
/* 8007CF80  7C 64 03 2E */	sthx r3, r4, r0
/* 8007CF84  3B E0 00 01 */	li r31, 1
/* 8007CF88  80 19 00 2C */	lwz r0, 0x2c(r25)
/* 8007CF8C  60 00 00 10 */	ori r0, r0, 0x10
/* 8007CF90  90 19 00 2C */	stw r0, 0x2c(r25)
/* 8007CF94  48 00 00 C8 */	b lbl_8007D05C
lbl_8007CF98:
/* 8007CF98  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8007CF9C  41 81 00 C0 */	bgt lbl_8007D05C
/* 8007CFA0  EC 01 E8 28 */	fsubs f0, f1, f29
/* 8007CFA4  FC 00 02 10 */	fabs f0, f0
/* 8007CFA8  FC 20 00 18 */	frsp f1, f0
/* 8007CFAC  C0 02 8D 10 */	lfs f0, lit_4962(r2)
/* 8007CFB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007CFB4  41 80 00 A8 */	blt lbl_8007D05C
/* 8007CFB8  80 19 00 8C */	lwz r0, 0x8c(r25)
/* 8007CFBC  38 77 00 14 */	addi r3, r23, 0x14
/* 8007CFC0  7C 60 1A 14 */	add r3, r0, r3
/* 8007CFC4  FC 20 C8 90 */	fmr f1, f25
/* 8007CFC8  FC 40 C0 90 */	fmr f2, f24
/* 8007CFCC  38 81 00 0C */	addi r4, r1, 0xc
/* 8007CFD0  38 A1 00 08 */	addi r5, r1, 8
/* 8007CFD4  48 1E B2 8D */	bl cM2d_CrossCirLin__FR8cM2dGCirffffPfPf
/* 8007CFD8  80 79 00 30 */	lwz r3, 0x30(r25)
/* 8007CFDC  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007CFE0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8007CFE4  EC 19 00 28 */	fsubs f0, f25, f0
/* 8007CFE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8007CFEC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8007CFF0  80 79 00 30 */	lwz r3, 0x30(r25)
/* 8007CFF4  C0 23 00 08 */	lfs f1, 8(r3)
/* 8007CFF8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8007CFFC  EC 18 00 28 */	fsubs f0, f24, f0
/* 8007D000  EC 01 00 2A */	fadds f0, f1, f0
/* 8007D004  D0 03 00 08 */	stfs f0, 8(r3)
/* 8007D008  7F 23 CB 78 */	mr r3, r25
/* 8007D00C  4B FF A2 DD */	bl CalcMovePosWork__9dBgS_AcchFv
/* 8007D010  80 99 00 8C */	lwz r4, 0x8c(r25)
/* 8007D014  38 77 00 10 */	addi r3, r23, 0x10
/* 8007D018  7C 04 18 2E */	lwzx r0, r4, r3
/* 8007D01C  60 00 00 02 */	ori r0, r0, 2
/* 8007D020  7C 04 19 2E */	stwx r0, r4, r3
/* 8007D024  7F 23 CB 78 */	mr r3, r25
/* 8007D028  7F 44 D3 78 */	mr r4, r26
/* 8007D02C  7F A5 EB 78 */	mr r5, r29
/* 8007D030  4B FF A2 59 */	bl SetWallPolyIndex__9dBgS_AcchFii
/* 8007D034  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8007D038  C0 5C 00 08 */	lfs f2, 8(r28)
/* 8007D03C  48 1E A6 39 */	bl cM_atan2s__Fff
/* 8007D040  80 99 00 8C */	lwz r4, 0x8c(r25)
/* 8007D044  38 17 00 3C */	addi r0, r23, 0x3c
/* 8007D048  7C 64 03 2E */	sthx r3, r4, r0
/* 8007D04C  3B E0 00 01 */	li r31, 1
/* 8007D050  80 19 00 2C */	lwz r0, 0x2c(r25)
/* 8007D054  60 00 00 10 */	ori r0, r0, 0x10
/* 8007D058  90 19 00 2C */	stw r0, 0x2c(r25)
lbl_8007D05C:
/* 8007D05C  3B 5A 00 01 */	addi r26, r26, 1
/* 8007D060  3A F7 00 40 */	addi r23, r23, 0x40
lbl_8007D064:
/* 8007D064  80 19 00 88 */	lwz r0, 0x88(r25)
/* 8007D068  7C 1A 00 00 */	cmpw r26, r0
/* 8007D06C  41 80 F9 8C */	blt lbl_8007C9F8
/* 8007D070  83 DE 00 08 */	lwz r30, 8(r30)
/* 8007D074  4B FF F9 28 */	b lbl_8007C99C
lbl_8007D078:
/* 8007D078  7F E3 FB 78 */	mr r3, r31
/* 8007D07C  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 8007D080  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 8007D084  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 8007D088  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 8007D08C  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 8007D090  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 8007D094  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 8007D098  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 8007D09C  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 8007D0A0  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 8007D0A4  E3 41 00 A8 */	psq_l f26, 168(r1), 0, 0 /* qr0 */
/* 8007D0A8  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 8007D0AC  E3 21 00 98 */	psq_l f25, 152(r1), 0, 0 /* qr0 */
/* 8007D0B0  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 8007D0B4  E3 01 00 88 */	psq_l f24, 136(r1), 0, 0 /* qr0 */
/* 8007D0B8  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 8007D0BC  E2 E1 00 78 */	psq_l f23, 120(r1), 0, 0 /* qr0 */
/* 8007D0C0  CA E1 00 70 */	lfd f23, 0x70(r1)
/* 8007D0C4  39 61 00 70 */	addi r11, r1, 0x70
/* 8007D0C8  48 2E 51 49 */	bl _restgpr_23
/* 8007D0CC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8007D0D0  7C 08 03 A6 */	mtlr r0
/* 8007D0D4  38 21 01 00 */	addi r1, r1, 0x100
/* 8007D0D8  4E 80 00 20 */	blr 
