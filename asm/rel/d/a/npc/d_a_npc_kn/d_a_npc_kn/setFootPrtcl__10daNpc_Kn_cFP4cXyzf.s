lbl_80A39F84:
/* 80A39F84  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A39F88  7C 08 02 A6 */	mflr r0
/* 80A39F8C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A39F90  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80A39F94  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80A39F98  39 61 00 70 */	addi r11, r1, 0x70
/* 80A39F9C  4B 92 82 31 */	bl _savegpr_25
/* 80A39FA0  7C 7A 1B 78 */	mr r26, r3
/* 80A39FA4  7C 9B 23 78 */	mr r27, r4
/* 80A39FA8  FF E0 08 90 */	fmr f31, f1
/* 80A39FAC  C0 63 0D 58 */	lfs f3, 0xd58(r3)
/* 80A39FB0  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80A39FB4  C0 43 0D 5C */	lfs f2, 0xd5c(r3)
/* 80A39FB8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80A39FBC  C0 23 0D 60 */	lfs f1, 0xd60(r3)
/* 80A39FC0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80A39FC4  C0 03 0D 64 */	lfs f0, 0xd64(r3)
/* 80A39FC8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A39FCC  C0 03 0D 68 */	lfs f0, 0xd68(r3)
/* 80A39FD0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A39FD4  C0 03 0D 6C */	lfs f0, 0xd6c(r3)
/* 80A39FD8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A39FDC  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80A39FE0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80A39FE4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A39FE8  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80A39FEC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80A39FF0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A39FF4  FC 00 10 18 */	frsp f0, f2
/* 80A39FF8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80A39FFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A3A000  38 7A 0B 14 */	addi r3, r26, 0xb14
/* 80A3A004  38 81 00 24 */	addi r4, r1, 0x24
/* 80A3A008  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A3A00C  7F 46 D3 78 */	mr r6, r26
/* 80A3A010  4B 63 DD 55 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A3A014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3A018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A3A01C  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80A3A020  7F 23 CB 78 */	mr r3, r25
/* 80A3A024  38 9A 0B 14 */	addi r4, r26, 0xb14
/* 80A3A028  4B 63 A3 8D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A3A02C  54 7F 06 3F */	clrlwi. r31, r3, 0x18
/* 80A3A030  41 82 00 30 */	beq lbl_80A3A060
/* 80A3A034  C0 1A 0B 48 */	lfs f0, 0xb48(r26)
/* 80A3A038  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A3A03C  38 7A 0B 28 */	addi r3, r26, 0xb28
/* 80A3A040  A8 9A 0D AE */	lha r4, 0xdae(r26)
/* 80A3A044  4B 5E 3A A1 */	bl fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 80A3A048  B0 7A 0D F4 */	sth r3, 0xdf4(r26)
/* 80A3A04C  7F 23 CB 78 */	mr r3, r25
/* 80A3A050  38 9A 0B 28 */	addi r4, r26, 0xb28
/* 80A3A054  4B 63 AD FD */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80A3A058  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80A3A05C  48 00 00 0C */	b lbl_80A3A068
lbl_80A3A060:
/* 80A3A060  38 00 00 00 */	li r0, 0
/* 80A3A064  B0 1A 0D F4 */	sth r0, 0xdf4(r26)
lbl_80A3A068:
/* 80A3A068  C0 5A 0D 64 */	lfs f2, 0xd64(r26)
/* 80A3A06C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A3A070  C0 3A 0D 68 */	lfs f1, 0xd68(r26)
/* 80A3A074  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A3A078  C0 1A 0D 6C */	lfs f0, 0xd6c(r26)
/* 80A3A07C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A3A080  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80A3A084  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80A3A088  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A3A08C  FC 00 08 18 */	frsp f0, f1
/* 80A3A090  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80A3A094  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A3A098  38 7A 0B 14 */	addi r3, r26, 0xb14
/* 80A3A09C  38 81 00 24 */	addi r4, r1, 0x24
/* 80A3A0A0  38 A1 00 18 */	addi r5, r1, 0x18
/* 80A3A0A4  7F 46 D3 78 */	mr r6, r26
/* 80A3A0A8  4B 63 DC BD */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A3A0AC  7F 23 CB 78 */	mr r3, r25
/* 80A3A0B0  38 9A 0B 14 */	addi r4, r26, 0xb14
/* 80A3A0B4  4B 63 A3 01 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A3A0B8  54 7D 06 3F */	clrlwi. r29, r3, 0x18
/* 80A3A0BC  41 82 00 30 */	beq lbl_80A3A0EC
/* 80A3A0C0  C0 1A 0B 48 */	lfs f0, 0xb48(r26)
/* 80A3A0C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A3A0C8  38 7A 0B 28 */	addi r3, r26, 0xb28
/* 80A3A0CC  A8 9A 0D AE */	lha r4, 0xdae(r26)
/* 80A3A0D0  4B 5E 3A 15 */	bl fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 80A3A0D4  B0 7A 0D F8 */	sth r3, 0xdf8(r26)
/* 80A3A0D8  7F 23 CB 78 */	mr r3, r25
/* 80A3A0DC  38 9A 0B 28 */	addi r4, r26, 0xb28
/* 80A3A0E0  4B 63 AD 71 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80A3A0E4  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 80A3A0E8  48 00 00 0C */	b lbl_80A3A0F4
lbl_80A3A0EC:
/* 80A3A0EC  38 00 00 00 */	li r0, 0
/* 80A3A0F0  B0 1A 0D F8 */	sth r0, 0xdf8(r26)
lbl_80A3A0F4:
/* 80A3A0F4  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80A3A0F8  7C 04 07 74 */	extsb r4, r0
/* 80A3A0FC  38 60 00 00 */	li r3, 0
/* 80A3A100  88 1A 0E 2F */	lbz r0, 0xe2f(r26)
/* 80A3A104  28 00 00 00 */	cmplwi r0, 0
/* 80A3A108  40 82 00 10 */	bne lbl_80A3A118
/* 80A3A10C  28 1D 00 01 */	cmplwi r29, 1
/* 80A3A110  40 82 00 08 */	bne lbl_80A3A118
/* 80A3A114  38 60 00 01 */	li r3, 1
lbl_80A3A118:
/* 80A3A118  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80A3A11C  20 00 00 00 */	subfic r0, r0, 0
/* 80A3A120  7C 60 01 10 */	subfe r3, r0, r0
/* 80A3A124  38 01 00 30 */	addi r0, r1, 0x30
/* 80A3A128  7C 0A 18 38 */	and r10, r0, r3
/* 80A3A12C  38 1A 0D AC */	addi r0, r26, 0xdac
/* 80A3A130  90 01 00 08 */	stw r0, 8(r1)
/* 80A3A134  93 61 00 0C */	stw r27, 0xc(r1)
/* 80A3A138  90 81 00 10 */	stw r4, 0x10(r1)
/* 80A3A13C  38 7A 09 F4 */	addi r3, r26, 0x9f4
/* 80A3A140  38 9A 01 0C */	addi r4, r26, 0x10c
/* 80A3A144  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80A3A148  38 C0 00 00 */	li r6, 0
/* 80A3A14C  38 E0 00 00 */	li r7, 0
/* 80A3A150  39 00 00 00 */	li r8, 0
/* 80A3A154  39 20 00 00 */	li r9, 0
/* 80A3A158  88 1A 0E 2E */	lbz r0, 0xe2e(r26)
/* 80A3A15C  28 00 00 00 */	cmplwi r0, 0
/* 80A3A160  40 82 00 10 */	bne lbl_80A3A170
/* 80A3A164  28 1F 00 01 */	cmplwi r31, 1
/* 80A3A168  40 82 00 08 */	bne lbl_80A3A170
/* 80A3A16C  39 20 00 01 */	li r9, 1
lbl_80A3A170:
/* 80A3A170  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 80A3A174  20 00 00 00 */	subfic r0, r0, 0
/* 80A3A178  7D 20 01 10 */	subfe r9, r0, r0
/* 80A3A17C  38 01 00 3C */	addi r0, r1, 0x3c
/* 80A3A180  7C 09 48 38 */	and r9, r0, r9
/* 80A3A184  3D 60 80 A4 */	lis r11, lit_4204@ha /* 0x80A40900@ha */
/* 80A3A188  C0 2B 09 00 */	lfs f1, lit_4204@l(r11)  /* 0x80A40900@l */
/* 80A3A18C  C0 5A 05 2C */	lfs f2, 0x52c(r26)
/* 80A3A190  4B 61 6F CD */	bl setEffectTwo__8dPaPoT_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff
/* 80A3A194  88 1A 0E 2E */	lbz r0, 0xe2e(r26)
/* 80A3A198  28 00 00 00 */	cmplwi r0, 0
/* 80A3A19C  40 82 00 44 */	bne lbl_80A3A1E0
/* 80A3A1A0  28 1F 00 01 */	cmplwi r31, 1
/* 80A3A1A4  40 82 00 3C */	bne lbl_80A3A1E0
/* 80A3A1A8  2C 1E 00 0D */	cmpwi r30, 0xd
/* 80A3A1AC  41 82 00 14 */	beq lbl_80A3A1C0
/* 80A3A1B0  40 80 00 30 */	bge lbl_80A3A1E0
/* 80A3A1B4  2C 1E 00 03 */	cmpwi r30, 3
/* 80A3A1B8  41 82 00 28 */	beq lbl_80A3A1E0
/* 80A3A1BC  48 00 00 24 */	b lbl_80A3A1E0
lbl_80A3A1C0:
/* 80A3A1C0  38 60 03 03 */	li r3, 0x303
/* 80A3A1C4  A8 1A 0D AE */	lha r0, 0xdae(r26)
/* 80A3A1C8  54 00 80 1E */	slwi r0, r0, 0x10
/* 80A3A1CC  60 04 00 03 */	ori r4, r0, 3
/* 80A3A1D0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80A3A1D4  38 C0 00 00 */	li r6, 0
/* 80A3A1D8  38 E0 00 00 */	li r7, 0
/* 80A3A1DC  4B 5E 55 DD */	bl fopKyM_create__FsiP4cXyzP4cXyzPFPv_i
lbl_80A3A1E0:
/* 80A3A1E0  88 1A 0E 2F */	lbz r0, 0xe2f(r26)
/* 80A3A1E4  28 00 00 00 */	cmplwi r0, 0
/* 80A3A1E8  40 82 00 44 */	bne lbl_80A3A22C
/* 80A3A1EC  28 1D 00 01 */	cmplwi r29, 1
/* 80A3A1F0  40 82 00 3C */	bne lbl_80A3A22C
/* 80A3A1F4  2C 1C 00 0D */	cmpwi r28, 0xd
/* 80A3A1F8  41 82 00 14 */	beq lbl_80A3A20C
/* 80A3A1FC  40 80 00 30 */	bge lbl_80A3A22C
/* 80A3A200  2C 1C 00 03 */	cmpwi r28, 3
/* 80A3A204  41 82 00 28 */	beq lbl_80A3A22C
/* 80A3A208  48 00 00 24 */	b lbl_80A3A22C
lbl_80A3A20C:
/* 80A3A20C  38 60 03 03 */	li r3, 0x303
/* 80A3A210  A8 1A 0D AE */	lha r0, 0xdae(r26)
/* 80A3A214  54 00 80 1E */	slwi r0, r0, 0x10
/* 80A3A218  60 04 00 03 */	ori r4, r0, 3
/* 80A3A21C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80A3A220  38 C0 00 00 */	li r6, 0
/* 80A3A224  38 E0 00 00 */	li r7, 0
/* 80A3A228  4B 5E 55 91 */	bl fopKyM_create__FsiP4cXyzP4cXyzPFPv_i
lbl_80A3A22C:
/* 80A3A22C  9B FA 0E 2E */	stb r31, 0xe2e(r26)
/* 80A3A230  9B BA 0E 2F */	stb r29, 0xe2f(r26)
/* 80A3A234  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80A3A238  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80A3A23C  39 61 00 70 */	addi r11, r1, 0x70
/* 80A3A240  4B 92 7F D9 */	bl _restgpr_25
/* 80A3A244  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A3A248  7C 08 03 A6 */	mtlr r0
/* 80A3A24C  38 21 00 80 */	addi r1, r1, 0x80
/* 80A3A250  4E 80 00 20 */	blr 
