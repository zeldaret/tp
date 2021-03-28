lbl_8020AA84:
/* 8020AA84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020AA88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020AA8C  39 00 00 00 */	li r8, 0
/* 8020AA90  39 20 00 00 */	li r9, 0
/* 8020AA94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8020AA98  38 A4 61 C0 */	addi r5, r4, g_dComIfG_gameInfo@l
/* 8020AA9C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8020AAA0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 8020AAA4  38 00 00 02 */	li r0, 2
/* 8020AAA8  7C 09 03 A6 */	mtctr r0
lbl_8020AAAC:
/* 8020AAAC  7C C3 42 14 */	add r6, r3, r8
/* 8020AAB0  88 06 04 D7 */	lbz r0, 0x4d7(r6)
/* 8020AAB4  28 00 00 00 */	cmplwi r0, 0
/* 8020AAB8  41 82 03 98 */	beq lbl_8020AE50
/* 8020AABC  A0 03 04 B0 */	lhz r0, 0x4b0(r3)
/* 8020AAC0  54 07 07 FF */	clrlwi. r7, r0, 0x1f
/* 8020AAC4  41 82 00 10 */	beq lbl_8020AAD4
/* 8020AAC8  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AACC  28 07 00 00 */	cmplwi r7, 0
/* 8020AAD0  41 82 01 48 */	beq lbl_8020AC18
lbl_8020AAD4:
/* 8020AAD4  54 07 07 BD */	rlwinm. r7, r0, 0, 0x1e, 0x1e
/* 8020AAD8  41 82 00 10 */	beq lbl_8020AAE8
/* 8020AADC  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AAE0  28 07 00 01 */	cmplwi r7, 1
/* 8020AAE4  41 82 01 34 */	beq lbl_8020AC18
lbl_8020AAE8:
/* 8020AAE8  54 07 07 7B */	rlwinm. r7, r0, 0, 0x1d, 0x1d
/* 8020AAEC  41 82 00 10 */	beq lbl_8020AAFC
/* 8020AAF0  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AAF4  28 07 00 02 */	cmplwi r7, 2
/* 8020AAF8  41 82 01 20 */	beq lbl_8020AC18
lbl_8020AAFC:
/* 8020AAFC  54 07 07 39 */	rlwinm. r7, r0, 0, 0x1c, 0x1c
/* 8020AB00  41 82 00 10 */	beq lbl_8020AB10
/* 8020AB04  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AB08  28 07 00 03 */	cmplwi r7, 3
/* 8020AB0C  41 82 01 0C */	beq lbl_8020AC18
lbl_8020AB10:
/* 8020AB10  54 07 06 F7 */	rlwinm. r7, r0, 0, 0x1b, 0x1b
/* 8020AB14  41 82 00 10 */	beq lbl_8020AB24
/* 8020AB18  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AB1C  28 07 00 04 */	cmplwi r7, 4
/* 8020AB20  41 82 00 F8 */	beq lbl_8020AC18
lbl_8020AB24:
/* 8020AB24  54 07 06 B5 */	rlwinm. r7, r0, 0, 0x1a, 0x1a
/* 8020AB28  41 82 00 10 */	beq lbl_8020AB38
/* 8020AB2C  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AB30  28 07 00 05 */	cmplwi r7, 5
/* 8020AB34  41 82 00 E4 */	beq lbl_8020AC18
lbl_8020AB38:
/* 8020AB38  54 07 06 73 */	rlwinm. r7, r0, 0, 0x19, 0x19
/* 8020AB3C  41 82 00 10 */	beq lbl_8020AB4C
/* 8020AB40  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AB44  28 07 00 06 */	cmplwi r7, 6
/* 8020AB48  41 82 00 D0 */	beq lbl_8020AC18
lbl_8020AB4C:
/* 8020AB4C  54 07 06 31 */	rlwinm. r7, r0, 0, 0x18, 0x18
/* 8020AB50  41 82 00 10 */	beq lbl_8020AB60
/* 8020AB54  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AB58  28 07 00 07 */	cmplwi r7, 7
/* 8020AB5C  41 82 00 BC */	beq lbl_8020AC18
lbl_8020AB60:
/* 8020AB60  54 07 05 EF */	rlwinm. r7, r0, 0, 0x17, 0x17
/* 8020AB64  41 82 00 10 */	beq lbl_8020AB74
/* 8020AB68  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AB6C  28 07 00 08 */	cmplwi r7, 8
/* 8020AB70  41 82 00 A8 */	beq lbl_8020AC18
lbl_8020AB74:
/* 8020AB74  54 07 05 AD */	rlwinm. r7, r0, 0, 0x16, 0x16
/* 8020AB78  41 82 00 10 */	beq lbl_8020AB88
/* 8020AB7C  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AB80  28 07 00 09 */	cmplwi r7, 9
/* 8020AB84  41 82 00 94 */	beq lbl_8020AC18
lbl_8020AB88:
/* 8020AB88  54 07 05 6B */	rlwinm. r7, r0, 0, 0x15, 0x15
/* 8020AB8C  41 82 00 10 */	beq lbl_8020AB9C
/* 8020AB90  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020AB94  28 07 00 0A */	cmplwi r7, 0xa
/* 8020AB98  41 82 00 80 */	beq lbl_8020AC18
lbl_8020AB9C:
/* 8020AB9C  54 07 05 29 */	rlwinm. r7, r0, 0, 0x14, 0x14
/* 8020ABA0  41 82 00 10 */	beq lbl_8020ABB0
/* 8020ABA4  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020ABA8  28 07 00 0B */	cmplwi r7, 0xb
/* 8020ABAC  41 82 00 6C */	beq lbl_8020AC18
lbl_8020ABB0:
/* 8020ABB0  54 0A 04 E6 */	rlwinm r10, r0, 0, 0x13, 0x13
/* 8020ABB4  54 07 A7 FF */	rlwinm. r7, r0, 0x14, 0x1f, 0x1f
/* 8020ABB8  41 82 00 10 */	beq lbl_8020ABC8
/* 8020ABBC  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020ABC0  28 07 00 0C */	cmplwi r7, 0xc
/* 8020ABC4  41 82 00 54 */	beq lbl_8020AC18
lbl_8020ABC8:
/* 8020ABC8  54 07 04 A5 */	rlwinm. r7, r0, 0, 0x12, 0x12
/* 8020ABCC  41 82 00 10 */	beq lbl_8020ABDC
/* 8020ABD0  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020ABD4  28 07 00 0D */	cmplwi r7, 0xd
/* 8020ABD8  41 82 00 40 */	beq lbl_8020AC18
lbl_8020ABDC:
/* 8020ABDC  54 07 04 63 */	rlwinm. r7, r0, 0, 0x11, 0x11
/* 8020ABE0  41 82 00 10 */	beq lbl_8020ABF0
/* 8020ABE4  88 E6 04 BE */	lbz r7, 0x4be(r6)
/* 8020ABE8  28 07 00 0E */	cmplwi r7, 0xe
/* 8020ABEC  41 82 00 2C */	beq lbl_8020AC18
lbl_8020ABF0:
/* 8020ABF0  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 8020ABF4  41 82 00 10 */	beq lbl_8020AC04
/* 8020ABF8  88 06 04 BE */	lbz r0, 0x4be(r6)
/* 8020ABFC  28 00 00 0F */	cmplwi r0, 0xf
/* 8020AC00  41 82 00 18 */	beq lbl_8020AC18
lbl_8020AC04:
/* 8020AC04  2C 0A 00 00 */	cmpwi r10, 0
/* 8020AC08  41 82 02 40 */	beq lbl_8020AE48
/* 8020AC0C  88 06 04 BE */	lbz r0, 0x4be(r6)
/* 8020AC10  28 00 00 0C */	cmplwi r0, 0xc
/* 8020AC14  40 82 02 34 */	bne lbl_8020AE48
lbl_8020AC18:
/* 8020AC18  88 05 5E 4A */	lbz r0, 0x5e4a(r5)
/* 8020AC1C  54 07 07 FF */	clrlwi. r7, r0, 0x1f
/* 8020AC20  41 82 00 10 */	beq lbl_8020AC30
/* 8020AC24  88 06 04 BE */	lbz r0, 0x4be(r6)
/* 8020AC28  28 00 00 00 */	cmplwi r0, 0
/* 8020AC2C  41 82 01 F0 */	beq lbl_8020AE1C
lbl_8020AC30:
/* 8020AC30  88 05 5E 43 */	lbz r0, 0x5e43(r5)
/* 8020AC34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020AC38  41 82 00 10 */	beq lbl_8020AC48
/* 8020AC3C  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AC40  28 0A 00 01 */	cmplwi r10, 1
/* 8020AC44  41 82 01 D8 */	beq lbl_8020AE1C
lbl_8020AC48:
/* 8020AC48  89 45 5E 42 */	lbz r10, 0x5e42(r5)
/* 8020AC4C  55 4A 07 FF */	clrlwi. r10, r10, 0x1f
/* 8020AC50  41 82 00 10 */	beq lbl_8020AC60
/* 8020AC54  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AC58  28 0A 00 02 */	cmplwi r10, 2
/* 8020AC5C  41 82 01 C0 */	beq lbl_8020AE1C
lbl_8020AC60:
/* 8020AC60  89 45 5E 4E */	lbz r10, 0x5e4e(r5)
/* 8020AC64  55 4A 07 FF */	clrlwi. r10, r10, 0x1f
/* 8020AC68  41 82 00 10 */	beq lbl_8020AC78
/* 8020AC6C  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AC70  28 0A 00 03 */	cmplwi r10, 3
/* 8020AC74  41 82 01 A8 */	beq lbl_8020AE1C
lbl_8020AC78:
/* 8020AC78  89 45 5E 4B */	lbz r10, 0x5e4b(r5)
/* 8020AC7C  55 4C 07 FF */	clrlwi. r12, r10, 0x1f
/* 8020AC80  41 82 00 10 */	beq lbl_8020AC90
/* 8020AC84  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AC88  28 0A 00 04 */	cmplwi r10, 4
/* 8020AC8C  41 82 01 90 */	beq lbl_8020AE1C
lbl_8020AC90:
/* 8020AC90  89 45 5E 4C */	lbz r10, 0x5e4c(r5)
/* 8020AC94  55 4A 07 FF */	clrlwi. r10, r10, 0x1f
/* 8020AC98  41 82 00 10 */	beq lbl_8020ACA8
/* 8020AC9C  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020ACA0  28 0A 00 05 */	cmplwi r10, 5
/* 8020ACA4  41 82 01 78 */	beq lbl_8020AE1C
lbl_8020ACA8:
/* 8020ACA8  89 45 5E 4D */	lbz r10, 0x5e4d(r5)
/* 8020ACAC  55 4A 07 FF */	clrlwi. r10, r10, 0x1f
/* 8020ACB0  41 82 00 10 */	beq lbl_8020ACC0
/* 8020ACB4  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020ACB8  28 0A 00 06 */	cmplwi r10, 6
/* 8020ACBC  41 82 01 60 */	beq lbl_8020AE1C
lbl_8020ACC0:
/* 8020ACC0  89 45 5E 5E */	lbz r10, 0x5e5e(r5)
/* 8020ACC4  55 4A 07 FF */	clrlwi. r10, r10, 0x1f
/* 8020ACC8  41 82 00 10 */	beq lbl_8020ACD8
/* 8020ACCC  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020ACD0  28 0A 00 07 */	cmplwi r10, 7
/* 8020ACD4  41 82 01 48 */	beq lbl_8020AE1C
lbl_8020ACD8:
/* 8020ACD8  89 45 5E 62 */	lbz r10, 0x5e62(r5)
/* 8020ACDC  55 4A 07 FF */	clrlwi. r10, r10, 0x1f
/* 8020ACE0  41 82 00 10 */	beq lbl_8020ACF0
/* 8020ACE4  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020ACE8  28 0A 00 08 */	cmplwi r10, 8
/* 8020ACEC  41 82 01 30 */	beq lbl_8020AE1C
lbl_8020ACF0:
/* 8020ACF0  89 45 5E 45 */	lbz r10, 0x5e45(r5)
/* 8020ACF4  55 5F 07 FF */	clrlwi. r31, r10, 0x1f
/* 8020ACF8  41 82 00 10 */	beq lbl_8020AD08
/* 8020ACFC  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AD00  28 0A 00 09 */	cmplwi r10, 9
/* 8020AD04  41 82 01 18 */	beq lbl_8020AE1C
lbl_8020AD08:
/* 8020AD08  89 45 5E 47 */	lbz r10, 0x5e47(r5)
/* 8020AD0C  55 4B 07 FF */	clrlwi. r11, r10, 0x1f
/* 8020AD10  41 82 00 10 */	beq lbl_8020AD20
/* 8020AD14  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AD18  28 0A 00 0A */	cmplwi r10, 0xa
/* 8020AD1C  41 82 01 00 */	beq lbl_8020AE1C
lbl_8020AD20:
/* 8020AD20  2C 0B 00 00 */	cmpwi r11, 0
/* 8020AD24  41 82 00 10 */	beq lbl_8020AD34
/* 8020AD28  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AD2C  28 0A 00 0B */	cmplwi r10, 0xb
/* 8020AD30  41 82 00 EC */	beq lbl_8020AE1C
lbl_8020AD34:
/* 8020AD34  2C 00 00 00 */	cmpwi r0, 0
/* 8020AD38  40 82 00 0C */	bne lbl_8020AD44
/* 8020AD3C  2C 0B 00 00 */	cmpwi r11, 0
/* 8020AD40  41 82 00 10 */	beq lbl_8020AD50
lbl_8020AD44:
/* 8020AD44  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AD48  28 0A 00 0A */	cmplwi r10, 0xa
/* 8020AD4C  41 82 00 D0 */	beq lbl_8020AE1C
lbl_8020AD50:
/* 8020AD50  2C 07 00 00 */	cmpwi r7, 0
/* 8020AD54  40 82 00 0C */	bne lbl_8020AD60
/* 8020AD58  2C 0C 00 00 */	cmpwi r12, 0
/* 8020AD5C  41 82 00 10 */	beq lbl_8020AD6C
lbl_8020AD60:
/* 8020AD60  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AD64  28 0A 00 0D */	cmplwi r10, 0xd
/* 8020AD68  41 82 00 B4 */	beq lbl_8020AE1C
lbl_8020AD6C:
/* 8020AD6C  2C 0B 00 00 */	cmpwi r11, 0
/* 8020AD70  40 82 00 0C */	bne lbl_8020AD7C
/* 8020AD74  2C 1F 00 00 */	cmpwi r31, 0
/* 8020AD78  41 82 00 10 */	beq lbl_8020AD88
lbl_8020AD7C:
/* 8020AD7C  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AD80  28 0A 00 0E */	cmplwi r10, 0xe
/* 8020AD84  41 82 00 98 */	beq lbl_8020AE1C
lbl_8020AD88:
/* 8020AD88  2C 0B 00 00 */	cmpwi r11, 0
/* 8020AD8C  40 82 00 0C */	bne lbl_8020AD98
/* 8020AD90  2C 1F 00 00 */	cmpwi r31, 0
/* 8020AD94  41 82 00 10 */	beq lbl_8020ADA4
lbl_8020AD98:
/* 8020AD98  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020AD9C  28 0A 00 0F */	cmplwi r10, 0xf
/* 8020ADA0  41 82 00 7C */	beq lbl_8020AE1C
lbl_8020ADA4:
/* 8020ADA4  2C 1F 00 00 */	cmpwi r31, 0
/* 8020ADA8  41 82 00 10 */	beq lbl_8020ADB8
/* 8020ADAC  89 46 04 BE */	lbz r10, 0x4be(r6)
/* 8020ADB0  28 0A 00 10 */	cmplwi r10, 0x10
/* 8020ADB4  41 82 00 68 */	beq lbl_8020AE1C
lbl_8020ADB8:
/* 8020ADB8  2C 07 00 00 */	cmpwi r7, 0
/* 8020ADBC  40 82 00 0C */	bne lbl_8020ADC8
/* 8020ADC0  2C 00 00 00 */	cmpwi r0, 0
/* 8020ADC4  41 82 00 10 */	beq lbl_8020ADD4
lbl_8020ADC8:
/* 8020ADC8  88 06 04 BE */	lbz r0, 0x4be(r6)
/* 8020ADCC  28 00 00 0C */	cmplwi r0, 0xc
/* 8020ADD0  41 82 00 4C */	beq lbl_8020AE1C
lbl_8020ADD4:
/* 8020ADD4  88 05 5E 65 */	lbz r0, 0x5e65(r5)
/* 8020ADD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020ADDC  41 82 00 10 */	beq lbl_8020ADEC
/* 8020ADE0  88 06 04 BE */	lbz r0, 0x4be(r6)
/* 8020ADE4  28 00 00 13 */	cmplwi r0, 0x13
/* 8020ADE8  41 82 00 34 */	beq lbl_8020AE1C
lbl_8020ADEC:
/* 8020ADEC  88 05 5E 69 */	lbz r0, 0x5e69(r5)
/* 8020ADF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020ADF4  41 82 00 10 */	beq lbl_8020AE04
/* 8020ADF8  88 06 04 BE */	lbz r0, 0x4be(r6)
/* 8020ADFC  28 00 00 14 */	cmplwi r0, 0x14
/* 8020AE00  41 82 00 1C */	beq lbl_8020AE1C
lbl_8020AE04:
/* 8020AE04  88 05 5E 46 */	lbz r0, 0x5e46(r5)
/* 8020AE08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020AE0C  41 82 00 28 */	beq lbl_8020AE34
/* 8020AE10  88 06 04 BE */	lbz r0, 0x4be(r6)
/* 8020AE14  28 00 00 15 */	cmplwi r0, 0x15
/* 8020AE18  40 82 00 1C */	bne lbl_8020AE34
lbl_8020AE1C:
/* 8020AE1C  C0 22 AD 5C */	lfs f1, lit_4514(r2)
/* 8020AE20  C0 04 0E 28 */	lfs f0, 0xe28(r4)
/* 8020AE24  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020AE28  38 09 02 E8 */	addi r0, r9, 0x2e8
/* 8020AE2C  7C 03 05 2E */	stfsx f0, r3, r0
/* 8020AE30  48 00 00 18 */	b lbl_8020AE48
lbl_8020AE34:
/* 8020AE34  C0 22 AD 5C */	lfs f1, lit_4514(r2)
/* 8020AE38  C0 04 0E 10 */	lfs f0, 0xe10(r4)
/* 8020AE3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020AE40  38 09 02 E8 */	addi r0, r9, 0x2e8
/* 8020AE44  7C 03 05 2E */	stfsx f0, r3, r0
lbl_8020AE48:
/* 8020AE48  38 00 00 00 */	li r0, 0
/* 8020AE4C  98 06 04 D7 */	stb r0, 0x4d7(r6)
lbl_8020AE50:
/* 8020AE50  39 08 00 01 */	addi r8, r8, 1
/* 8020AE54  39 29 00 04 */	addi r9, r9, 4
/* 8020AE58  42 00 FC 54 */	bdnz lbl_8020AAAC
/* 8020AE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020AE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8020AE64  4E 80 00 20 */	blr 
