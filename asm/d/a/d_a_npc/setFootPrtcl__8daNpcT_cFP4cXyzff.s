lbl_80149D7C:
/* 80149D7C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80149D80  7C 08 02 A6 */	mflr r0
/* 80149D84  90 01 00 94 */	stw r0, 0x94(r1)
/* 80149D88  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80149D8C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80149D90  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80149D94  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80149D98  39 61 00 70 */	addi r11, r1, 0x70
/* 80149D9C  48 21 84 31 */	bl _savegpr_25
/* 80149DA0  7C 7A 1B 78 */	mr r26, r3
/* 80149DA4  7C 9B 23 78 */	mr r27, r4
/* 80149DA8  FF C0 08 90 */	fmr f30, f1
/* 80149DAC  FF E0 10 90 */	fmr f31, f2
/* 80149DB0  C0 63 0D 24 */	lfs f3, 0xd24(r3)
/* 80149DB4  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80149DB8  C0 43 0D 28 */	lfs f2, 0xd28(r3)
/* 80149DBC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80149DC0  C0 23 0D 2C */	lfs f1, 0xd2c(r3)
/* 80149DC4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80149DC8  C0 03 0D 30 */	lfs f0, 0xd30(r3)
/* 80149DCC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80149DD0  C0 03 0D 34 */	lfs f0, 0xd34(r3)
/* 80149DD4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80149DD8  C0 03 0D 38 */	lfs f0, 0xd38(r3)
/* 80149DDC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80149DE0  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80149DE4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80149DE8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80149DEC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80149DF0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80149DF4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80149DF8  FC 00 10 18 */	frsp f0, f2
/* 80149DFC  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80149E00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80149E04  38 7A 0A E0 */	addi r3, r26, 0xae0
/* 80149E08  38 81 00 24 */	addi r4, r1, 0x24
/* 80149E0C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80149E10  7F 46 D3 78 */	mr r6, r26
/* 80149E14  4B F2 DF 51 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80149E18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80149E1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80149E20  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80149E24  7F 23 CB 78 */	mr r3, r25
/* 80149E28  38 9A 0A E0 */	addi r4, r26, 0xae0
/* 80149E2C  4B F2 A5 89 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80149E30  54 7F 06 3F */	clrlwi. r31, r3, 0x18
/* 80149E34  41 82 00 30 */	beq lbl_80149E64
/* 80149E38  C0 1A 0B 14 */	lfs f0, 0xb14(r26)
/* 80149E3C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80149E40  38 7A 0A F4 */	addi r3, r26, 0xaf4
/* 80149E44  A8 9A 0D 7A */	lha r4, 0xd7a(r26)
/* 80149E48  4B ED 3C 9D */	bl fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 80149E4C  B0 7A 0D CE */	sth r3, 0xdce(r26)
/* 80149E50  7F 23 CB 78 */	mr r3, r25
/* 80149E54  38 9A 0A F4 */	addi r4, r26, 0xaf4
/* 80149E58  4B F2 AF F9 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80149E5C  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80149E60  48 00 00 0C */	b lbl_80149E6C
lbl_80149E64:
/* 80149E64  38 00 00 00 */	li r0, 0
/* 80149E68  B0 1A 0D CE */	sth r0, 0xdce(r26)
lbl_80149E6C:
/* 80149E6C  C0 5A 0D 30 */	lfs f2, 0xd30(r26)
/* 80149E70  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80149E74  C0 3A 0D 34 */	lfs f1, 0xd34(r26)
/* 80149E78  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80149E7C  C0 1A 0D 38 */	lfs f0, 0xd38(r26)
/* 80149E80  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80149E84  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80149E88  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80149E8C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80149E90  FC 00 08 18 */	frsp f0, f1
/* 80149E94  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80149E98  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80149E9C  38 7A 0A E0 */	addi r3, r26, 0xae0
/* 80149EA0  38 81 00 24 */	addi r4, r1, 0x24
/* 80149EA4  38 A1 00 18 */	addi r5, r1, 0x18
/* 80149EA8  7F 46 D3 78 */	mr r6, r26
/* 80149EAC  4B F2 DE B9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80149EB0  7F 23 CB 78 */	mr r3, r25
/* 80149EB4  38 9A 0A E0 */	addi r4, r26, 0xae0
/* 80149EB8  4B F2 A4 FD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80149EBC  54 7D 06 3F */	clrlwi. r29, r3, 0x18
/* 80149EC0  41 82 00 30 */	beq lbl_80149EF0
/* 80149EC4  C0 1A 0B 14 */	lfs f0, 0xb14(r26)
/* 80149EC8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80149ECC  38 7A 0A F4 */	addi r3, r26, 0xaf4
/* 80149ED0  A8 9A 0D 7A */	lha r4, 0xd7a(r26)
/* 80149ED4  4B ED 3C 11 */	bl fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 80149ED8  B0 7A 0D D2 */	sth r3, 0xdd2(r26)
/* 80149EDC  7F 23 CB 78 */	mr r3, r25
/* 80149EE0  38 9A 0A F4 */	addi r4, r26, 0xaf4
/* 80149EE4  4B F2 AF 6D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80149EE8  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 80149EEC  48 00 00 0C */	b lbl_80149EF8
lbl_80149EF0:
/* 80149EF0  38 00 00 00 */	li r0, 0
/* 80149EF4  B0 1A 0D D2 */	sth r0, 0xdd2(r26)
lbl_80149EF8:
/* 80149EF8  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80149EFC  7C 04 07 74 */	extsb r4, r0
/* 80149F00  38 60 00 00 */	li r3, 0
/* 80149F04  88 1A 0E 28 */	lbz r0, 0xe28(r26)
/* 80149F08  28 00 00 00 */	cmplwi r0, 0
/* 80149F0C  40 82 00 10 */	bne lbl_80149F1C
/* 80149F10  28 1D 00 01 */	cmplwi r29, 1
/* 80149F14  40 82 00 08 */	bne lbl_80149F1C
/* 80149F18  38 60 00 01 */	li r3, 1
lbl_80149F1C:
/* 80149F1C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80149F20  20 00 00 00 */	subfic r0, r0, 0
/* 80149F24  7C 60 01 10 */	subfe r3, r0, r0
/* 80149F28  38 01 00 30 */	addi r0, r1, 0x30
/* 80149F2C  7C 0A 18 38 */	and r10, r0, r3
/* 80149F30  38 1A 0D 78 */	addi r0, r26, 0xd78
/* 80149F34  90 01 00 08 */	stw r0, 8(r1)
/* 80149F38  93 61 00 0C */	stw r27, 0xc(r1)
/* 80149F3C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80149F40  38 7A 09 C0 */	addi r3, r26, 0x9c0
/* 80149F44  38 9A 01 0C */	addi r4, r26, 0x10c
/* 80149F48  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80149F4C  38 C0 00 00 */	li r6, 0
/* 80149F50  38 E0 00 00 */	li r7, 0
/* 80149F54  39 00 00 00 */	li r8, 0
/* 80149F58  39 20 00 00 */	li r9, 0
/* 80149F5C  88 1A 0E 27 */	lbz r0, 0xe27(r26)
/* 80149F60  28 00 00 00 */	cmplwi r0, 0
/* 80149F64  40 82 00 10 */	bne lbl_80149F74
/* 80149F68  28 1F 00 01 */	cmplwi r31, 1
/* 80149F6C  40 82 00 08 */	bne lbl_80149F74
/* 80149F70  39 20 00 01 */	li r9, 1
lbl_80149F74:
/* 80149F74  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 80149F78  20 00 00 00 */	subfic r0, r0, 0
/* 80149F7C  7D 20 01 10 */	subfe r9, r0, r0
/* 80149F80  38 01 00 3C */	addi r0, r1, 0x3c
/* 80149F84  7C 09 48 38 */	and r9, r0, r9
/* 80149F88  FC 20 F8 90 */	fmr f1, f31
/* 80149F8C  C0 5A 05 2C */	lfs f2, 0x52c(r26)
/* 80149F90  4B F0 71 CD */	bl setEffectTwo__8dPaPoT_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC4cXyzPC4cXyzPC5csXyzPC4cXyzScff
/* 80149F94  88 1A 0E 27 */	lbz r0, 0xe27(r26)
/* 80149F98  28 00 00 00 */	cmplwi r0, 0
/* 80149F9C  40 82 00 44 */	bne lbl_80149FE0
/* 80149FA0  28 1F 00 01 */	cmplwi r31, 1
/* 80149FA4  40 82 00 3C */	bne lbl_80149FE0
/* 80149FA8  2C 1E 00 0D */	cmpwi r30, 0xd
/* 80149FAC  41 82 00 14 */	beq lbl_80149FC0
/* 80149FB0  40 80 00 30 */	bge lbl_80149FE0
/* 80149FB4  2C 1E 00 03 */	cmpwi r30, 3
/* 80149FB8  41 82 00 28 */	beq lbl_80149FE0
/* 80149FBC  48 00 00 24 */	b lbl_80149FE0
lbl_80149FC0:
/* 80149FC0  38 60 03 03 */	li r3, 0x303
/* 80149FC4  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 80149FC8  54 00 80 1E */	slwi r0, r0, 0x10
/* 80149FCC  60 04 00 03 */	ori r4, r0, 3
/* 80149FD0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80149FD4  38 C0 00 00 */	li r6, 0
/* 80149FD8  38 E0 00 00 */	li r7, 0
/* 80149FDC  4B ED 57 DD */	bl fopKyM_create__FsiP4cXyzP4cXyzPFPv_i
lbl_80149FE0:
/* 80149FE0  88 1A 0E 28 */	lbz r0, 0xe28(r26)
/* 80149FE4  28 00 00 00 */	cmplwi r0, 0
/* 80149FE8  40 82 00 44 */	bne lbl_8014A02C
/* 80149FEC  28 1D 00 01 */	cmplwi r29, 1
/* 80149FF0  40 82 00 3C */	bne lbl_8014A02C
/* 80149FF4  2C 1C 00 0D */	cmpwi r28, 0xd
/* 80149FF8  41 82 00 14 */	beq lbl_8014A00C
/* 80149FFC  40 80 00 30 */	bge lbl_8014A02C
/* 8014A000  2C 1C 00 03 */	cmpwi r28, 3
/* 8014A004  41 82 00 28 */	beq lbl_8014A02C
/* 8014A008  48 00 00 24 */	b lbl_8014A02C
lbl_8014A00C:
/* 8014A00C  38 60 03 03 */	li r3, 0x303
/* 8014A010  A8 1A 0D 7A */	lha r0, 0xd7a(r26)
/* 8014A014  54 00 80 1E */	slwi r0, r0, 0x10
/* 8014A018  60 04 00 03 */	ori r4, r0, 3
/* 8014A01C  38 A1 00 30 */	addi r5, r1, 0x30
/* 8014A020  38 C0 00 00 */	li r6, 0
/* 8014A024  38 E0 00 00 */	li r7, 0
/* 8014A028  4B ED 57 91 */	bl fopKyM_create__FsiP4cXyzP4cXyzPFPv_i
lbl_8014A02C:
/* 8014A02C  9B FA 0E 27 */	stb r31, 0xe27(r26)
/* 8014A030  9B BA 0E 28 */	stb r29, 0xe28(r26)
/* 8014A034  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8014A038  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8014A03C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8014A040  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8014A044  39 61 00 70 */	addi r11, r1, 0x70
/* 8014A048  48 21 81 D1 */	bl _restgpr_25
/* 8014A04C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8014A050  7C 08 03 A6 */	mtlr r0
/* 8014A054  38 21 00 90 */	addi r1, r1, 0x90
/* 8014A058  4E 80 00 20 */	blr 
