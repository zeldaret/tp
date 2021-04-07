lbl_8026C944:
/* 8026C944  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8026C948  7C 08 02 A6 */	mflr r0
/* 8026C94C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8026C950  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8026C954  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8026C958  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8026C95C  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 8026C960  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8026C964  48 0F 58 6D */	bl _savegpr_26
/* 8026C968  7C 7E 1B 78 */	mr r30, r3
/* 8026C96C  7C 9B 23 78 */	mr r27, r4
/* 8026C970  7C BC 2B 78 */	mr r28, r5
/* 8026C974  7C DD 33 78 */	mr r29, r6
/* 8026C978  C3 E2 B7 18 */	lfs f31, lit_2256(r2)
/* 8026C97C  FF C0 F8 90 */	fmr f30, f31
/* 8026C980  3B E0 00 00 */	li r31, 0
/* 8026C984  48 00 07 2D */	bl cM3d_Cross_CylPnt__FPC8cM3dGCylPC3Vec
/* 8026C988  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026C98C  41 82 00 50 */	beq lbl_8026C9DC
/* 8026C990  7F C3 F3 78 */	mr r3, r30
/* 8026C994  38 9B 00 0C */	addi r4, r27, 0xc
/* 8026C998  48 00 07 19 */	bl cM3d_Cross_CylPnt__FPC8cM3dGCylPC3Vec
/* 8026C99C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026C9A0  41 82 00 3C */	beq lbl_8026C9DC
/* 8026C9A4  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8026C9A8  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8026C9AC  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8026C9B0  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8026C9B4  C0 1B 00 08 */	lfs f0, 8(r27)
/* 8026C9B8  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8026C9BC  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8026C9C0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8026C9C4  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 8026C9C8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8026C9CC  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 8026C9D0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8026C9D4  38 60 00 02 */	li r3, 2
/* 8026C9D8  48 00 06 44 */	b lbl_8026D01C
lbl_8026C9DC:
/* 8026C9DC  7F 63 DB 78 */	mr r3, r27
/* 8026C9E0  7F C4 F3 78 */	mr r4, r30
/* 8026C9E4  38 A1 00 6C */	addi r5, r1, 0x6c
/* 8026C9E8  48 0D A6 CD */	bl PSVECSubtract
/* 8026C9EC  38 7B 00 0C */	addi r3, r27, 0xc
/* 8026C9F0  7F C4 F3 78 */	mr r4, r30
/* 8026C9F4  38 A1 00 60 */	addi r5, r1, 0x60
/* 8026C9F8  48 0D A6 BD */	bl PSVECSubtract
/* 8026C9FC  38 61 00 60 */	addi r3, r1, 0x60
/* 8026CA00  38 81 00 6C */	addi r4, r1, 0x6c
/* 8026CA04  38 A1 00 54 */	addi r5, r1, 0x54
/* 8026CA08  48 0D A6 AD */	bl PSVECSubtract
/* 8026CA0C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026CA10  EC 20 00 32 */	fmuls f1, f0, f0
/* 8026CA14  C0 81 00 58 */	lfs f4, 0x58(r1)
/* 8026CA18  FC 00 22 10 */	fabs f0, f4
/* 8026CA1C  FC 40 00 18 */	frsp f2, f0
/* 8026CA20  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026CA24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026CA28  41 80 01 10 */	blt lbl_8026CB38
/* 8026CA2C  C0 A1 00 70 */	lfs f5, 0x70(r1)
/* 8026CA30  FC 00 28 50 */	fneg f0, f5
/* 8026CA34  EC 60 20 24 */	fdivs f3, f0, f4
/* 8026CA38  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026CA3C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8026CA40  4C 41 13 82 */	cror 2, 1, 2
/* 8026CA44  40 82 00 6C */	bne lbl_8026CAB0
/* 8026CA48  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026CA4C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8026CA50  4C 40 13 82 */	cror 2, 0, 2
/* 8026CA54  40 82 00 5C */	bne lbl_8026CAB0
/* 8026CA58  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8026CA5C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8026CA60  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8026CA64  EC C2 00 2A */	fadds f6, f2, f0
/* 8026CA68  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 8026CA6C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8026CA70  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8026CA74  EC 62 00 2A */	fadds f3, f2, f0
/* 8026CA78  EC 46 01 B2 */	fmuls f2, f6, f6
/* 8026CA7C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8026CA80  EC 02 00 2A */	fadds f0, f2, f0
/* 8026CA84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026CA88  40 80 00 28 */	bge lbl_8026CAB0
/* 8026CA8C  63 FF 00 01 */	ori r31, r31, 1
/* 8026CA90  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026CA94  EC 06 00 2A */	fadds f0, f6, f0
/* 8026CA98  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8026CA9C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026CAA0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8026CAA4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026CAA8  EC 03 00 2A */	fadds f0, f3, f0
/* 8026CAAC  D0 01 00 80 */	stfs f0, 0x80(r1)
lbl_8026CAB0:
/* 8026CAB0  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 8026CAB4  EC 03 28 28 */	fsubs f0, f3, f5
/* 8026CAB8  EF E0 20 24 */	fdivs f31, f0, f4
/* 8026CABC  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026CAC0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026CAC4  4C 41 13 82 */	cror 2, 1, 2
/* 8026CAC8  40 82 00 70 */	bne lbl_8026CB38
/* 8026CACC  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026CAD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026CAD4  4C 40 13 82 */	cror 2, 0, 2
/* 8026CAD8  40 82 00 60 */	bne lbl_8026CB38
/* 8026CADC  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8026CAE0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8026CAE4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8026CAE8  EC 82 00 2A */	fadds f4, f2, f0
/* 8026CAEC  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 8026CAF0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8026CAF4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8026CAF8  EC A2 00 2A */	fadds f5, f2, f0
/* 8026CAFC  EC 44 01 32 */	fmuls f2, f4, f4
/* 8026CB00  EC 05 01 72 */	fmuls f0, f5, f5
/* 8026CB04  EC 02 00 2A */	fadds f0, f2, f0
/* 8026CB08  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026CB0C  40 80 00 2C */	bge lbl_8026CB38
/* 8026CB10  63 FF 00 02 */	ori r31, r31, 2
/* 8026CB14  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026CB18  EC 04 00 2A */	fadds f0, f4, f0
/* 8026CB1C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8026CB20  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8026CB24  EC 00 18 2A */	fadds f0, f0, f3
/* 8026CB28  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8026CB2C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8026CB30  EC 05 00 2A */	fadds f0, f5, f0
/* 8026CB34  D0 01 00 8C */	stfs f0, 0x8c(r1)
lbl_8026CB38:
/* 8026CB38  C0 A1 00 54 */	lfs f5, 0x54(r1)
/* 8026CB3C  EC 45 01 72 */	fmuls f2, f5, f5
/* 8026CB40  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 8026CB44  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8026CB48  EC E2 00 2A */	fadds f7, f2, f0
/* 8026CB4C  C0 82 B7 BC */	lfs f4, lit_3739(r2)
/* 8026CB50  C0 C1 00 6C */	lfs f6, 0x6c(r1)
/* 8026CB54  EC 45 01 B2 */	fmuls f2, f5, f6
/* 8026CB58  C0 A1 00 74 */	lfs f5, 0x74(r1)
/* 8026CB5C  EC 03 01 72 */	fmuls f0, f3, f5
/* 8026CB60  EC 02 00 2A */	fadds f0, f2, f0
/* 8026CB64  EC 04 00 32 */	fmuls f0, f4, f0
/* 8026CB68  EC 66 01 B2 */	fmuls f3, f6, f6
/* 8026CB6C  EC 45 01 72 */	fmuls f2, f5, f5
/* 8026CB70  EC 43 10 2A */	fadds f2, f3, f2
/* 8026CB74  EC A2 08 28 */	fsubs f5, f2, f1
/* 8026CB78  EC 24 01 F2 */	fmuls f1, f4, f7
/* 8026CB7C  FC 40 0A 10 */	fabs f2, f1
/* 8026CB80  FC 60 10 18 */	frsp f3, f2
/* 8026CB84  C0 4D 8C 00 */	lfs f2, G_CM3D_F_ABS_MIN(r13)
/* 8026CB88  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8026CB8C  41 80 01 5C */	blt lbl_8026CCE8
/* 8026CB90  EC 60 00 32 */	fmuls f3, f0, f0
/* 8026CB94  C0 42 B7 C0 */	lfs f2, lit_3740(r2)
/* 8026CB98  EC 42 01 F2 */	fmuls f2, f2, f7
/* 8026CB9C  EC 42 01 72 */	fmuls f2, f2, f5
/* 8026CBA0  EC C3 10 28 */	fsubs f6, f3, f2
/* 8026CBA4  C0 42 B7 18 */	lfs f2, lit_2256(r2)
/* 8026CBA8  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 8026CBAC  40 80 00 0C */	bge lbl_8026CBB8
/* 8026CBB0  38 60 00 00 */	li r3, 0
/* 8026CBB4  48 00 04 68 */	b lbl_8026D01C
lbl_8026CBB8:
/* 8026CBB8  40 81 00 10 */	ble lbl_8026CBC8
/* 8026CBBC  38 C0 00 01 */	li r6, 1
/* 8026CBC0  38 A0 00 01 */	li r5, 1
/* 8026CBC4  48 00 00 0C */	b lbl_8026CBD0
lbl_8026CBC8:
/* 8026CBC8  38 A0 00 01 */	li r5, 1
/* 8026CBCC  38 C0 00 00 */	li r6, 0
lbl_8026CBD0:
/* 8026CBD0  C0 42 B7 18 */	lfs f2, lit_2256(r2)
/* 8026CBD4  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 8026CBD8  40 81 00 58 */	ble lbl_8026CC30
/* 8026CBDC  FC 40 30 34 */	frsqrte f2, f6
/* 8026CBE0  C8 A2 B7 20 */	lfd f5, lit_2257(r2)
/* 8026CBE4  FC 65 00 B2 */	fmul f3, f5, f2
/* 8026CBE8  C8 82 B7 28 */	lfd f4, lit_2258(r2)
/* 8026CBEC  FC 42 00 B2 */	fmul f2, f2, f2
/* 8026CBF0  FC 46 00 B2 */	fmul f2, f6, f2
/* 8026CBF4  FC 44 10 28 */	fsub f2, f4, f2
/* 8026CBF8  FC 43 00 B2 */	fmul f2, f3, f2
/* 8026CBFC  FC 65 00 B2 */	fmul f3, f5, f2
/* 8026CC00  FC 42 00 B2 */	fmul f2, f2, f2
/* 8026CC04  FC 46 00 B2 */	fmul f2, f6, f2
/* 8026CC08  FC 44 10 28 */	fsub f2, f4, f2
/* 8026CC0C  FC 43 00 B2 */	fmul f2, f3, f2
/* 8026CC10  FC 65 00 B2 */	fmul f3, f5, f2
/* 8026CC14  FC 42 00 B2 */	fmul f2, f2, f2
/* 8026CC18  FC 46 00 B2 */	fmul f2, f6, f2
/* 8026CC1C  FC 44 10 28 */	fsub f2, f4, f2
/* 8026CC20  FC 43 00 B2 */	fmul f2, f3, f2
/* 8026CC24  FC 66 00 B2 */	fmul f3, f6, f2
/* 8026CC28  FC 60 18 18 */	frsp f3, f3
/* 8026CC2C  48 00 00 90 */	b lbl_8026CCBC
lbl_8026CC30:
/* 8026CC30  C8 42 B7 30 */	lfd f2, lit_2259(r2)
/* 8026CC34  FC 06 10 40 */	fcmpo cr0, f6, f2
/* 8026CC38  40 80 00 10 */	bge lbl_8026CC48
/* 8026CC3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026CC40  C0 63 0A E0 */	lfs f3, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8026CC44  48 00 00 78 */	b lbl_8026CCBC
lbl_8026CC48:
/* 8026CC48  D0 C1 00 08 */	stfs f6, 8(r1)
/* 8026CC4C  80 81 00 08 */	lwz r4, 8(r1)
/* 8026CC50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8026CC54  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026CC58  7C 03 00 00 */	cmpw r3, r0
/* 8026CC5C  41 82 00 14 */	beq lbl_8026CC70
/* 8026CC60  40 80 00 40 */	bge lbl_8026CCA0
/* 8026CC64  2C 03 00 00 */	cmpwi r3, 0
/* 8026CC68  41 82 00 20 */	beq lbl_8026CC88
/* 8026CC6C  48 00 00 34 */	b lbl_8026CCA0
lbl_8026CC70:
/* 8026CC70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026CC74  41 82 00 0C */	beq lbl_8026CC80
/* 8026CC78  38 00 00 01 */	li r0, 1
/* 8026CC7C  48 00 00 28 */	b lbl_8026CCA4
lbl_8026CC80:
/* 8026CC80  38 00 00 02 */	li r0, 2
/* 8026CC84  48 00 00 20 */	b lbl_8026CCA4
lbl_8026CC88:
/* 8026CC88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026CC8C  41 82 00 0C */	beq lbl_8026CC98
/* 8026CC90  38 00 00 05 */	li r0, 5
/* 8026CC94  48 00 00 10 */	b lbl_8026CCA4
lbl_8026CC98:
/* 8026CC98  38 00 00 03 */	li r0, 3
/* 8026CC9C  48 00 00 08 */	b lbl_8026CCA4
lbl_8026CCA0:
/* 8026CCA0  38 00 00 04 */	li r0, 4
lbl_8026CCA4:
/* 8026CCA4  2C 00 00 01 */	cmpwi r0, 1
/* 8026CCA8  40 82 00 10 */	bne lbl_8026CCB8
/* 8026CCAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026CCB0  C0 63 0A E0 */	lfs f3, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8026CCB4  48 00 00 08 */	b lbl_8026CCBC
lbl_8026CCB8:
/* 8026CCB8  FC 60 30 90 */	fmr f3, f6
lbl_8026CCBC:
/* 8026CCBC  2C 05 00 00 */	cmpwi r5, 0
/* 8026CCC0  41 82 00 10 */	beq lbl_8026CCD0
/* 8026CCC4  FC 40 00 50 */	fneg f2, f0
/* 8026CCC8  EC 42 18 2A */	fadds f2, f2, f3
/* 8026CCCC  EF E2 08 24 */	fdivs f31, f2, f1
lbl_8026CCD0:
/* 8026CCD0  2C 06 00 00 */	cmpwi r6, 0
/* 8026CCD4  41 82 00 40 */	beq lbl_8026CD14
/* 8026CCD8  FC 00 00 50 */	fneg f0, f0
/* 8026CCDC  EC 00 18 28 */	fsubs f0, f0, f3
/* 8026CCE0  EF C0 08 24 */	fdivs f30, f0, f1
/* 8026CCE4  48 00 00 30 */	b lbl_8026CD14
lbl_8026CCE8:
/* 8026CCE8  FC 20 02 10 */	fabs f1, f0
/* 8026CCEC  FC 20 08 18 */	frsp f1, f1
/* 8026CCF0  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8026CCF4  41 80 00 18 */	blt lbl_8026CD0C
/* 8026CCF8  38 A0 00 01 */	li r5, 1
/* 8026CCFC  38 C0 00 00 */	li r6, 0
/* 8026CD00  FC 20 28 50 */	fneg f1, f5
/* 8026CD04  EF E1 00 24 */	fdivs f31, f1, f0
/* 8026CD08  48 00 00 0C */	b lbl_8026CD14
lbl_8026CD0C:
/* 8026CD0C  38 60 00 00 */	li r3, 0
/* 8026CD10  48 00 03 0C */	b lbl_8026D01C
lbl_8026CD14:
/* 8026CD14  2C 05 00 00 */	cmpwi r5, 0
/* 8026CD18  41 82 00 2C */	beq lbl_8026CD44
/* 8026CD1C  2C 06 00 00 */	cmpwi r6, 0
/* 8026CD20  40 82 00 24 */	bne lbl_8026CD44
/* 8026CD24  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026CD28  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8026CD2C  41 81 00 10 */	bgt lbl_8026CD3C
/* 8026CD30  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026CD34  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026CD38  40 81 00 84 */	ble lbl_8026CDBC
lbl_8026CD3C:
/* 8026CD3C  38 60 00 00 */	li r3, 0
/* 8026CD40  48 00 02 DC */	b lbl_8026D01C
lbl_8026CD44:
/* 8026CD44  38 00 00 00 */	li r0, 0
/* 8026CD48  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026CD4C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8026CD50  41 81 00 10 */	bgt lbl_8026CD60
/* 8026CD54  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026CD58  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026CD5C  40 81 00 08 */	ble lbl_8026CD64
lbl_8026CD60:
/* 8026CD60  38 00 00 01 */	li r0, 1
lbl_8026CD64:
/* 8026CD64  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8026CD68  38 00 00 00 */	li r0, 0
/* 8026CD6C  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026CD70  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8026CD74  41 81 00 10 */	bgt lbl_8026CD84
/* 8026CD78  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026CD7C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8026CD80  40 81 00 08 */	ble lbl_8026CD88
lbl_8026CD84:
/* 8026CD84  38 00 00 01 */	li r0, 1
lbl_8026CD88:
/* 8026CD88  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8026CD8C  2C 03 00 00 */	cmpwi r3, 0
/* 8026CD90  41 82 00 14 */	beq lbl_8026CDA4
/* 8026CD94  2C 00 00 00 */	cmpwi r0, 0
/* 8026CD98  41 82 00 0C */	beq lbl_8026CDA4
/* 8026CD9C  38 60 00 00 */	li r3, 0
/* 8026CDA0  48 00 02 7C */	b lbl_8026D01C
lbl_8026CDA4:
/* 8026CDA4  2C 03 00 00 */	cmpwi r3, 0
/* 8026CDA8  41 82 00 08 */	beq lbl_8026CDB0
/* 8026CDAC  38 A0 00 00 */	li r5, 0
lbl_8026CDB0:
/* 8026CDB0  2C 00 00 00 */	cmpwi r0, 0
/* 8026CDB4  41 82 00 08 */	beq lbl_8026CDBC
/* 8026CDB8  38 C0 00 00 */	li r6, 0
lbl_8026CDBC:
/* 8026CDBC  2C 05 00 00 */	cmpwi r5, 0
/* 8026CDC0  41 82 00 30 */	beq lbl_8026CDF0
/* 8026CDC4  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8026CDC8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8026CDCC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8026CDD0  EC 21 00 2A */	fadds f1, f1, f0
/* 8026CDD4  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026CDD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026CDDC  41 80 00 10 */	blt lbl_8026CDEC
/* 8026CDE0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8026CDE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026CDE8  40 81 00 08 */	ble lbl_8026CDF0
lbl_8026CDEC:
/* 8026CDEC  38 A0 00 00 */	li r5, 0
lbl_8026CDF0:
/* 8026CDF0  2C 06 00 00 */	cmpwi r6, 0
/* 8026CDF4  41 82 00 30 */	beq lbl_8026CE24
/* 8026CDF8  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8026CDFC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8026CE00  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8026CE04  EC 21 00 2A */	fadds f1, f1, f0
/* 8026CE08  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026CE0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026CE10  41 80 00 10 */	blt lbl_8026CE20
/* 8026CE14  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8026CE18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026CE1C  40 81 00 08 */	ble lbl_8026CE24
lbl_8026CE20:
/* 8026CE20  38 C0 00 00 */	li r6, 0
lbl_8026CE24:
/* 8026CE24  2C 05 00 00 */	cmpwi r5, 0
/* 8026CE28  40 82 00 14 */	bne lbl_8026CE3C
/* 8026CE2C  2C 06 00 00 */	cmpwi r6, 0
/* 8026CE30  40 82 00 0C */	bne lbl_8026CE3C
/* 8026CE34  38 60 00 00 */	li r3, 0
/* 8026CE38  48 00 01 E4 */	b lbl_8026D01C
lbl_8026CE3C:
/* 8026CE3C  2C 05 00 00 */	cmpwi r5, 0
/* 8026CE40  41 82 00 64 */	beq lbl_8026CEA4
/* 8026CE44  2C 06 00 00 */	cmpwi r6, 0
/* 8026CE48  41 82 00 5C */	beq lbl_8026CEA4
/* 8026CE4C  38 61 00 6C */	addi r3, r1, 0x6c
/* 8026CE50  7F C4 F3 78 */	mr r4, r30
/* 8026CE54  38 A1 00 48 */	addi r5, r1, 0x48
/* 8026CE58  48 0D A2 39 */	bl PSVECAdd
/* 8026CE5C  38 61 00 54 */	addi r3, r1, 0x54
/* 8026CE60  38 81 00 3C */	addi r4, r1, 0x3c
/* 8026CE64  FC 20 F8 90 */	fmr f1, f31
/* 8026CE68  48 0D A2 71 */	bl PSVECScale
/* 8026CE6C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8026CE70  38 81 00 48 */	addi r4, r1, 0x48
/* 8026CE74  38 A1 00 90 */	addi r5, r1, 0x90
/* 8026CE78  48 0D A2 19 */	bl PSVECAdd
/* 8026CE7C  63 FF 00 0C */	ori r31, r31, 0xc
/* 8026CE80  38 61 00 54 */	addi r3, r1, 0x54
/* 8026CE84  38 81 00 3C */	addi r4, r1, 0x3c
/* 8026CE88  FC 20 F0 90 */	fmr f1, f30
/* 8026CE8C  48 0D A2 4D */	bl PSVECScale
/* 8026CE90  38 61 00 3C */	addi r3, r1, 0x3c
/* 8026CE94  38 81 00 48 */	addi r4, r1, 0x48
/* 8026CE98  38 A1 00 9C */	addi r5, r1, 0x9c
/* 8026CE9C  48 0D A1 F5 */	bl PSVECAdd
/* 8026CEA0  48 00 00 80 */	b lbl_8026CF20
lbl_8026CEA4:
/* 8026CEA4  2C 05 00 00 */	cmpwi r5, 0
/* 8026CEA8  41 82 00 3C */	beq lbl_8026CEE4
/* 8026CEAC  63 FF 00 04 */	ori r31, r31, 4
/* 8026CEB0  38 61 00 54 */	addi r3, r1, 0x54
/* 8026CEB4  38 81 00 30 */	addi r4, r1, 0x30
/* 8026CEB8  FC 20 F8 90 */	fmr f1, f31
/* 8026CEBC  48 0D A2 1D */	bl PSVECScale
/* 8026CEC0  38 61 00 30 */	addi r3, r1, 0x30
/* 8026CEC4  38 81 00 6C */	addi r4, r1, 0x6c
/* 8026CEC8  38 A1 00 24 */	addi r5, r1, 0x24
/* 8026CECC  48 0D A1 C5 */	bl PSVECAdd
/* 8026CED0  38 61 00 24 */	addi r3, r1, 0x24
/* 8026CED4  7F C4 F3 78 */	mr r4, r30
/* 8026CED8  38 A1 00 90 */	addi r5, r1, 0x90
/* 8026CEDC  48 0D A1 B5 */	bl PSVECAdd
/* 8026CEE0  48 00 00 40 */	b lbl_8026CF20
lbl_8026CEE4:
/* 8026CEE4  2C 06 00 00 */	cmpwi r6, 0
/* 8026CEE8  41 82 00 38 */	beq lbl_8026CF20
/* 8026CEEC  63 FF 00 04 */	ori r31, r31, 4
/* 8026CEF0  38 61 00 54 */	addi r3, r1, 0x54
/* 8026CEF4  38 81 00 18 */	addi r4, r1, 0x18
/* 8026CEF8  FC 20 F0 90 */	fmr f1, f30
/* 8026CEFC  48 0D A1 DD */	bl PSVECScale
/* 8026CF00  38 61 00 18 */	addi r3, r1, 0x18
/* 8026CF04  38 81 00 6C */	addi r4, r1, 0x6c
/* 8026CF08  38 A1 00 0C */	addi r5, r1, 0xc
/* 8026CF0C  48 0D A1 85 */	bl PSVECAdd
/* 8026CF10  38 61 00 0C */	addi r3, r1, 0xc
/* 8026CF14  7F C4 F3 78 */	mr r4, r30
/* 8026CF18  38 A1 00 90 */	addi r5, r1, 0x90
/* 8026CF1C  48 0D A1 75 */	bl PSVECAdd
lbl_8026CF20:
/* 8026CF20  3B 40 00 00 */	li r26, 0
/* 8026CF24  38 C0 00 00 */	li r6, 0
/* 8026CF28  38 60 00 00 */	li r3, 0
/* 8026CF2C  38 80 00 01 */	li r4, 1
/* 8026CF30  38 00 00 04 */	li r0, 4
/* 8026CF34  7C 09 03 A6 */	mtctr r0
lbl_8026CF38:
/* 8026CF38  7C 80 30 30 */	slw r0, r4, r6
/* 8026CF3C  7F E0 00 39 */	and. r0, r31, r0
/* 8026CF40  41 82 00 CC */	beq lbl_8026D00C
/* 8026CF44  2C 1A 00 00 */	cmpwi r26, 0
/* 8026CF48  40 82 00 28 */	bne lbl_8026CF70
/* 8026CF4C  38 A1 00 78 */	addi r5, r1, 0x78
/* 8026CF50  7C A5 1A 14 */	add r5, r5, r3
/* 8026CF54  C0 05 00 00 */	lfs f0, 0(r5)
/* 8026CF58  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8026CF5C  C0 05 00 04 */	lfs f0, 4(r5)
/* 8026CF60  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8026CF64  C0 05 00 08 */	lfs f0, 8(r5)
/* 8026CF68  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8026CF6C  48 00 00 9C */	b lbl_8026D008
lbl_8026CF70:
/* 8026CF70  2C 1A 00 01 */	cmpwi r26, 1
/* 8026CF74  40 82 00 94 */	bne lbl_8026D008
/* 8026CF78  7F 63 DB 78 */	mr r3, r27
/* 8026CF7C  1F E6 00 0C */	mulli r31, r6, 0xc
/* 8026CF80  3B C1 00 78 */	addi r30, r1, 0x78
/* 8026CF84  7F DE FA 14 */	add r30, r30, r31
/* 8026CF88  7F C4 F3 78 */	mr r4, r30
/* 8026CF8C  48 0D A4 11 */	bl PSVECSquareDistance
/* 8026CF90  FF C0 08 90 */	fmr f30, f1
/* 8026CF94  7F 63 DB 78 */	mr r3, r27
/* 8026CF98  7F 84 E3 78 */	mr r4, r28
/* 8026CF9C  48 0D A4 01 */	bl PSVECSquareDistance
/* 8026CFA0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8026CFA4  40 80 00 28 */	bge lbl_8026CFCC
/* 8026CFA8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026CFAC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8026CFB0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8026CFB4  7C 03 FC 2E */	lfsx f0, r3, r31
/* 8026CFB8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8026CFBC  38 61 00 80 */	addi r3, r1, 0x80
/* 8026CFC0  7C 03 FC 2E */	lfsx f0, r3, r31
/* 8026CFC4  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8026CFC8  48 00 00 50 */	b lbl_8026D018
lbl_8026CFCC:
/* 8026CFCC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8026CFD0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8026CFD4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8026CFD8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 8026CFDC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8026CFE0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8026CFE4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8026CFE8  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8026CFEC  38 61 00 7C */	addi r3, r1, 0x7c
/* 8026CFF0  7C 03 FC 2E */	lfsx f0, r3, r31
/* 8026CFF4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8026CFF8  38 61 00 80 */	addi r3, r1, 0x80
/* 8026CFFC  7C 03 FC 2E */	lfsx f0, r3, r31
/* 8026D000  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8026D004  48 00 00 14 */	b lbl_8026D018
lbl_8026D008:
/* 8026D008  3B 5A 00 01 */	addi r26, r26, 1
lbl_8026D00C:
/* 8026D00C  38 C6 00 01 */	addi r6, r6, 1
/* 8026D010  38 63 00 0C */	addi r3, r3, 0xc
/* 8026D014  42 00 FF 24 */	bdnz lbl_8026CF38
lbl_8026D018:
/* 8026D018  7F 43 D3 78 */	mr r3, r26
lbl_8026D01C:
/* 8026D01C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8026D020  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8026D024  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 8026D028  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8026D02C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8026D030  48 0F 51 ED */	bl _restgpr_26
/* 8026D034  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8026D038  7C 08 03 A6 */	mtlr r0
/* 8026D03C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8026D040  4E 80 00 20 */	blr 
