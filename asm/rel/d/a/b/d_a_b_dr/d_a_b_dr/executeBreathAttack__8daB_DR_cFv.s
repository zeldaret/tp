lbl_805BFD88:
/* 805BFD88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BFD8C  7C 08 02 A6 */	mflr r0
/* 805BFD90  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BFD94  39 61 00 30 */	addi r11, r1, 0x30
/* 805BFD98  4B DA 24 34 */	b _savegpr_25
/* 805BFD9C  7C 7A 1B 78 */	mr r26, r3
/* 805BFDA0  3C 80 80 5C */	lis r4, lit_3800@ha
/* 805BFDA4  3B C4 6C 74 */	addi r30, r4, lit_3800@l
/* 805BFDA8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805BFDAC  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 805BFDB0  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 805BFDB4  3B 80 00 00 */	li r28, 0
/* 805BFDB8  3B 60 00 0A */	li r27, 0xa
/* 805BFDBC  A8 1D 05 6C */	lha r0, 0x56c(r29)
/* 805BFDC0  7C 00 07 35 */	extsh. r0, r0
/* 805BFDC4  40 82 00 10 */	bne lbl_805BFDD4
/* 805BFDC8  4B FF D2 95 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805BFDCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BFDD0  40 82 00 50 */	bne lbl_805BFE20
lbl_805BFDD4:
/* 805BFDD4  80 1A 07 0C */	lwz r0, 0x70c(r26)
/* 805BFDD8  2C 00 00 04 */	cmpwi r0, 4
/* 805BFDDC  41 82 00 0C */	beq lbl_805BFDE8
/* 805BFDE0  2C 00 00 14 */	cmpwi r0, 0x14
/* 805BFDE4  40 82 00 3C */	bne lbl_805BFE20
lbl_805BFDE8:
/* 805BFDE8  7F 43 D3 78 */	mr r3, r26
/* 805BFDEC  38 80 00 00 */	li r4, 0
/* 805BFDF0  4B FF B8 5D */	bl mStatusONOFF__8daB_DR_cFi
/* 805BFDF4  7F 43 D3 78 */	mr r3, r26
/* 805BFDF8  4B FF CE 21 */	bl mAllClr__8daB_DR_cFv
/* 805BFDFC  38 00 00 0A */	li r0, 0xa
/* 805BFE00  90 1A 07 0C */	stw r0, 0x70c(r26)
/* 805BFE04  7F 43 D3 78 */	mr r3, r26
/* 805BFE08  38 80 00 2A */	li r4, 0x2a
/* 805BFE0C  38 A0 00 00 */	li r5, 0
/* 805BFE10  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BFE14  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BFE18  4B FF B5 F1 */	bl setBck__8daB_DR_cFiUcff
/* 805BFE1C  48 00 07 F8 */	b lbl_805C0614
lbl_805BFE20:
/* 805BFE20  38 7A 05 2C */	addi r3, r26, 0x52c
/* 805BFE24  C0 3E 03 DC */	lfs f1, 0x3dc(r30)
/* 805BFE28  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805BFE2C  4B CA FC 54 */	b cLib_addCalc0__FPfff
/* 805BFE30  38 7A 04 FC */	addi r3, r26, 0x4fc
/* 805BFE34  C0 3E 03 DC */	lfs f1, 0x3dc(r30)
/* 805BFE38  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805BFE3C  4B CA FC 44 */	b cLib_addCalc0__FPfff
/* 805BFE40  80 1A 07 0C */	lwz r0, 0x70c(r26)
/* 805BFE44  2C 00 00 0A */	cmpwi r0, 0xa
/* 805BFE48  41 82 04 00 */	beq lbl_805C0248
/* 805BFE4C  40 80 00 3C */	bge lbl_805BFE88
/* 805BFE50  2C 00 00 03 */	cmpwi r0, 3
/* 805BFE54  41 82 01 74 */	beq lbl_805BFFC8
/* 805BFE58  40 80 00 1C */	bge lbl_805BFE74
/* 805BFE5C  2C 00 00 01 */	cmpwi r0, 1
/* 805BFE60  41 82 00 98 */	beq lbl_805BFEF8
/* 805BFE64  40 80 00 E4 */	bge lbl_805BFF48
/* 805BFE68  2C 00 00 00 */	cmpwi r0, 0
/* 805BFE6C  40 80 00 44 */	bge lbl_805BFEB0
/* 805BFE70  48 00 07 30 */	b lbl_805C05A0
lbl_805BFE74:
/* 805BFE74  2C 00 00 09 */	cmpwi r0, 9
/* 805BFE78  40 80 03 80 */	bge lbl_805C01F8
/* 805BFE7C  2C 00 00 05 */	cmpwi r0, 5
/* 805BFE80  40 80 07 20 */	bge lbl_805C05A0
/* 805BFE84  48 00 02 44 */	b lbl_805C00C8
lbl_805BFE88:
/* 805BFE88  2C 00 00 14 */	cmpwi r0, 0x14
/* 805BFE8C  41 82 02 3C */	beq lbl_805C00C8
/* 805BFE90  40 80 00 14 */	bge lbl_805BFEA4
/* 805BFE94  2C 00 00 0C */	cmpwi r0, 0xc
/* 805BFE98  41 82 04 F4 */	beq lbl_805C038C
/* 805BFE9C  40 80 07 04 */	bge lbl_805C05A0
/* 805BFEA0  48 00 04 98 */	b lbl_805C0338
lbl_805BFEA4:
/* 805BFEA4  2C 00 00 64 */	cmpwi r0, 0x64
/* 805BFEA8  41 82 05 BC */	beq lbl_805C0464
/* 805BFEAC  48 00 06 F4 */	b lbl_805C05A0
lbl_805BFEB0:
/* 805BFEB0  7F 43 D3 78 */	mr r3, r26
/* 805BFEB4  4B FF CD 65 */	bl mAllClr__8daB_DR_cFv
/* 805BFEB8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BFEBC  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 805BFEC0  38 00 00 C8 */	li r0, 0xc8
/* 805BFEC4  B0 1A 07 50 */	sth r0, 0x750(r26)
/* 805BFEC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BFECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BFED0  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 805BFED4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805BFED8  41 82 00 14 */	beq lbl_805BFEEC
/* 805BFEDC  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805BFEE0  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805BFEE4  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 805BFEE8  90 1A 07 CC */	stw r0, 0x7cc(r26)
lbl_805BFEEC:
/* 805BFEEC  80 7A 07 0C */	lwz r3, 0x70c(r26)
/* 805BFEF0  38 03 00 01 */	addi r0, r3, 1
/* 805BFEF4  90 1A 07 0C */	stw r0, 0x70c(r26)
lbl_805BFEF8:
/* 805BFEF8  7F 43 D3 78 */	mr r3, r26
/* 805BFEFC  38 80 00 00 */	li r4, 0
/* 805BFF00  4B FF F8 69 */	bl mBreathHighSet__8daB_DR_cFb
/* 805BFF04  38 7A 07 CC */	addi r3, r26, 0x7cc
/* 805BFF08  48 00 6C D5 */	bl func_805C6BDC
/* 805BFF0C  2C 03 00 00 */	cmpwi r3, 0
/* 805BFF10  41 82 00 2C */	beq lbl_805BFF3C
/* 805BFF14  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 805BFF18  2C 00 00 35 */	cmpwi r0, 0x35
/* 805BFF1C  40 82 06 84 */	bne lbl_805C05A0
/* 805BFF20  88 1A 07 D1 */	lbz r0, 0x7d1(r26)
/* 805BFF24  28 00 00 02 */	cmplwi r0, 2
/* 805BFF28  41 82 06 78 */	beq lbl_805C05A0
/* 805BFF2C  7F 43 D3 78 */	mr r3, r26
/* 805BFF30  38 80 00 01 */	li r4, 1
/* 805BFF34  4B FF B7 19 */	bl mStatusONOFF__8daB_DR_cFi
/* 805BFF38  48 00 06 68 */	b lbl_805C05A0
lbl_805BFF3C:
/* 805BFF3C  80 7A 07 0C */	lwz r3, 0x70c(r26)
/* 805BFF40  38 03 00 01 */	addi r0, r3, 1
/* 805BFF44  90 1A 07 0C */	stw r0, 0x70c(r26)
lbl_805BFF48:
/* 805BFF48  7F 43 D3 78 */	mr r3, r26
/* 805BFF4C  38 80 00 00 */	li r4, 0
/* 805BFF50  4B FF F8 19 */	bl mBreathHighSet__8daB_DR_cFb
/* 805BFF54  7C 7D 1B 78 */	mr r29, r3
/* 805BFF58  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 805BFF5C  2C 00 00 35 */	cmpwi r0, 0x35
/* 805BFF60  40 82 06 40 */	bne lbl_805C05A0
/* 805BFF64  88 1A 07 D1 */	lbz r0, 0x7d1(r26)
/* 805BFF68  28 00 00 02 */	cmplwi r0, 2
/* 805BFF6C  41 82 00 10 */	beq lbl_805BFF7C
/* 805BFF70  7F 43 D3 78 */	mr r3, r26
/* 805BFF74  38 80 00 01 */	li r4, 1
/* 805BFF78  4B FF B6 D5 */	bl mStatusONOFF__8daB_DR_cFi
lbl_805BFF7C:
/* 805BFF7C  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 805BFF80  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BFF84  FC 00 00 1E */	fctiwz f0, f0
/* 805BFF88  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BFF8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BFF90  2C 00 00 21 */	cmpwi r0, 0x21
/* 805BFF94  41 80 06 0C */	blt lbl_805C05A0
/* 805BFF98  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 805BFF9C  41 82 06 04 */	beq lbl_805C05A0
/* 805BFFA0  7F 43 D3 78 */	mr r3, r26
/* 805BFFA4  38 80 00 28 */	li r4, 0x28
/* 805BFFA8  38 A0 00 00 */	li r5, 0
/* 805BFFAC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805BFFB0  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805BFFB4  4B FF B4 55 */	bl setBck__8daB_DR_cFiUcff
/* 805BFFB8  80 7A 07 0C */	lwz r3, 0x70c(r26)
/* 805BFFBC  38 03 00 01 */	addi r0, r3, 1
/* 805BFFC0  90 1A 07 0C */	stw r0, 0x70c(r26)
/* 805BFFC4  48 00 05 DC */	b lbl_805C05A0
lbl_805BFFC8:
/* 805BFFC8  7F 43 D3 78 */	mr r3, r26
/* 805BFFCC  38 80 00 01 */	li r4, 1
/* 805BFFD0  4B FF F7 99 */	bl mBreathHighSet__8daB_DR_cFb
/* 805BFFD4  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 805BFFD8  38 80 00 01 */	li r4, 1
/* 805BFFDC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BFFE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BFFE4  40 82 00 18 */	bne lbl_805BFFFC
/* 805BFFE8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805BFFEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BFFF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BFFF4  41 82 00 08 */	beq lbl_805BFFFC
/* 805BFFF8  38 80 00 00 */	li r4, 0
lbl_805BFFFC:
/* 805BFFFC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C0000  41 82 05 A0 */	beq lbl_805C05A0
/* 805C0004  88 1A 07 D1 */	lbz r0, 0x7d1(r26)
/* 805C0008  28 00 00 02 */	cmplwi r0, 2
/* 805C000C  40 82 00 28 */	bne lbl_805C0034
/* 805C0010  C0 3A 07 20 */	lfs f1, 0x720(r26)
/* 805C0014  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C0018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C001C  41 81 00 18 */	bgt lbl_805C0034
/* 805C0020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C0024  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C0028  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 805C002C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805C0030  41 82 00 18 */	beq lbl_805C0048
lbl_805C0034:
/* 805C0034  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C0038  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C003C  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 805C0040  90 1A 07 C8 */	stw r0, 0x7c8(r26)
/* 805C0044  48 00 00 30 */	b lbl_805C0074
lbl_805C0048:
/* 805C0048  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C004C  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C0050  A8 03 00 3E */	lha r0, 0x3e(r3)
/* 805C0054  90 1A 07 C8 */	stw r0, 0x7c8(r26)
/* 805C0058  A8 1A 05 62 */	lha r0, 0x562(r26)
/* 805C005C  2C 00 00 08 */	cmpwi r0, 8
/* 805C0060  41 81 00 0C */	bgt lbl_805C006C
/* 805C0064  A8 03 00 40 */	lha r0, 0x40(r3)
/* 805C0068  90 1A 07 C8 */	stw r0, 0x7c8(r26)
lbl_805C006C:
/* 805C006C  38 00 00 06 */	li r0, 6
/* 805C0070  90 1A 07 08 */	stw r0, 0x708(r26)
lbl_805C0074:
/* 805C0074  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805C0078  D0 1A 07 2C */	stfs f0, 0x72c(r26)
/* 805C007C  7F 43 D3 78 */	mr r3, r26
/* 805C0080  38 80 00 29 */	li r4, 0x29
/* 805C0084  38 A0 00 02 */	li r5, 2
/* 805C0088  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C008C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C0090  4B FF B3 79 */	bl setBck__8daB_DR_cFiUcff
/* 805C0094  80 7A 07 0C */	lwz r3, 0x70c(r26)
/* 805C0098  38 03 00 01 */	addi r0, r3, 1
/* 805C009C  90 1A 07 0C */	stw r0, 0x70c(r26)
/* 805C00A0  38 00 00 00 */	li r0, 0
/* 805C00A4  98 1A 07 E7 */	stb r0, 0x7e7(r26)
/* 805C00A8  90 1A 07 18 */	stw r0, 0x718(r26)
/* 805C00AC  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C00B0  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C00B4  88 03 00 65 */	lbz r0, 0x65(r3)
/* 805C00B8  28 00 00 00 */	cmplwi r0, 0
/* 805C00BC  41 82 00 0C */	beq lbl_805C00C8
/* 805C00C0  38 00 00 14 */	li r0, 0x14
/* 805C00C4  90 1A 07 0C */	stw r0, 0x70c(r26)
lbl_805C00C8:
/* 805C00C8  7F 43 D3 78 */	mr r3, r26
/* 805C00CC  38 80 00 01 */	li r4, 1
/* 805C00D0  4B FF F6 99 */	bl mBreathHighSet__8daB_DR_cFb
/* 805C00D4  80 1A 07 08 */	lwz r0, 0x708(r26)
/* 805C00D8  2C 00 00 06 */	cmpwi r0, 6
/* 805C00DC  40 82 01 08 */	bne lbl_805C01E4
/* 805C00E0  38 7A 07 60 */	addi r3, r26, 0x760
/* 805C00E4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805C00E8  4B CB 0B 1C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805C00EC  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 805C00F0  7C 00 18 50 */	subf r0, r0, r3
/* 805C00F4  7C 00 00 D0 */	neg r0, r0
/* 805C00F8  7C 1C 07 34 */	extsh r28, r0
/* 805C00FC  2C 1C 20 00 */	cmpwi r28, 0x2000
/* 805C0100  40 81 00 08 */	ble lbl_805C0108
/* 805C0104  3B 80 20 00 */	li r28, 0x2000
lbl_805C0108:
/* 805C0108  7F 80 07 34 */	extsh r0, r28
/* 805C010C  2C 00 E0 00 */	cmpwi r0, -8192
/* 805C0110  40 80 00 08 */	bge lbl_805C0118
/* 805C0114  3B 80 E0 00 */	li r28, -8192
lbl_805C0118:
/* 805C0118  A8 9A 05 62 */	lha r4, 0x562(r26)
/* 805C011C  2C 04 00 10 */	cmpwi r4, 0x10
/* 805C0120  41 81 00 18 */	bgt lbl_805C0138
/* 805C0124  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C0128  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C012C  AB 63 00 54 */	lha r27, 0x54(r3)
/* 805C0130  AB 23 00 5A */	lha r25, 0x5a(r3)
/* 805C0134  48 00 00 14 */	b lbl_805C0148
lbl_805C0138:
/* 805C0138  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C013C  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C0140  AB 63 00 52 */	lha r27, 0x52(r3)
/* 805C0144  AB 23 00 58 */	lha r25, 0x58(r3)
lbl_805C0148:
/* 805C0148  80 1A 07 0C */	lwz r0, 0x70c(r26)
/* 805C014C  2C 00 00 14 */	cmpwi r0, 0x14
/* 805C0150  40 82 00 28 */	bne lbl_805C0178
/* 805C0154  80 1A 07 08 */	lwz r0, 0x708(r26)
/* 805C0158  2C 00 00 06 */	cmpwi r0, 6
/* 805C015C  40 82 00 1C */	bne lbl_805C0178
/* 805C0160  2C 04 00 08 */	cmpwi r4, 8
/* 805C0164  41 81 00 14 */	bgt lbl_805C0178
/* 805C0168  7F 43 D3 78 */	mr r3, r26
/* 805C016C  4B FF F9 01 */	bl mFeintBreath__8daB_DR_cFv
/* 805C0170  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C0174  41 82 04 2C */	beq lbl_805C05A0
lbl_805C0178:
/* 805C0178  7F 43 D3 78 */	mr r3, r26
/* 805C017C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805C0180  4B A5 A5 90 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805C0184  7C 64 1B 78 */	mr r4, r3
/* 805C0188  38 7A 04 DE */	addi r3, r26, 0x4de
/* 805C018C  7F 25 CB 78 */	mr r5, r25
/* 805C0190  3C C0 80 5C */	lis r6, l_HIO@ha
/* 805C0194  38 C6 79 0C */	addi r6, r6, l_HIO@l
/* 805C0198  A8 C6 00 5C */	lha r6, 0x5c(r6)
/* 805C019C  4B CB 04 6C */	b cLib_addCalcAngleS2__FPssss
/* 805C01A0  A8 7A 04 E6 */	lha r3, 0x4e6(r26)
/* 805C01A4  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 805C01A8  7C 03 00 50 */	subf r0, r3, r0
/* 805C01AC  B0 1A 07 56 */	sth r0, 0x756(r26)
/* 805C01B0  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 805C01B4  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 805C01B8  38 A0 00 04 */	li r5, 4
/* 805C01BC  38 C0 04 00 */	li r6, 0x400
/* 805C01C0  4B CB 04 48 */	b cLib_addCalcAngleS2__FPssss
/* 805C01C4  C0 3A 07 20 */	lfs f1, 0x720(r26)
/* 805C01C8  C0 1E 03 6C */	lfs f0, 0x36c(r30)
/* 805C01CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805C01D0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C01D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C01D8  40 81 00 0C */	ble lbl_805C01E4
/* 805C01DC  38 00 00 00 */	li r0, 0
/* 805C01E0  90 1A 07 C8 */	stw r0, 0x7c8(r26)
lbl_805C01E4:
/* 805C01E4  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 805C01E8  2C 00 00 29 */	cmpwi r0, 0x29
/* 805C01EC  40 82 00 0C */	bne lbl_805C01F8
/* 805C01F0  7F 43 D3 78 */	mr r3, r26
/* 805C01F4  4B FF F2 D5 */	bl mBreathSet__8daB_DR_cFv
lbl_805C01F8:
/* 805C01F8  38 7A 07 C8 */	addi r3, r26, 0x7c8
/* 805C01FC  48 00 69 E1 */	bl func_805C6BDC
/* 805C0200  2C 03 00 00 */	cmpwi r3, 0
/* 805C0204  40 82 03 9C */	bne lbl_805C05A0
/* 805C0208  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 805C020C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805C0210  FC 00 00 1E */	fctiwz f0, f0
/* 805C0214  D8 01 00 08 */	stfd f0, 8(r1)
/* 805C0218  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805C021C  2C 00 00 30 */	cmpwi r0, 0x30
/* 805C0220  41 80 03 80 */	blt lbl_805C05A0
/* 805C0224  7F 43 D3 78 */	mr r3, r26
/* 805C0228  38 80 00 2A */	li r4, 0x2a
/* 805C022C  38 A0 00 00 */	li r5, 0
/* 805C0230  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C0234  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C0238  4B FF B1 D1 */	bl setBck__8daB_DR_cFiUcff
/* 805C023C  38 00 00 0A */	li r0, 0xa
/* 805C0240  90 1A 07 0C */	stw r0, 0x70c(r26)
/* 805C0244  48 00 03 5C */	b lbl_805C05A0
lbl_805C0248:
/* 805C0248  7F 43 D3 78 */	mr r3, r26
/* 805C024C  38 80 00 01 */	li r4, 1
/* 805C0250  4B FF F5 19 */	bl mBreathHighSet__8daB_DR_cFb
/* 805C0254  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 805C0258  38 80 00 01 */	li r4, 1
/* 805C025C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C0260  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C0264  40 82 00 18 */	bne lbl_805C027C
/* 805C0268  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C026C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C0270  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C0274  41 82 00 08 */	beq lbl_805C027C
/* 805C0278  38 80 00 00 */	li r4, 0
lbl_805C027C:
/* 805C027C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C0280  40 82 00 1C */	bne lbl_805C029C
/* 805C0284  38 7A 07 5A */	addi r3, r26, 0x75a
/* 805C0288  38 80 00 00 */	li r4, 0
/* 805C028C  38 A0 00 64 */	li r5, 0x64
/* 805C0290  38 C0 02 00 */	li r6, 0x200
/* 805C0294  4B CB 03 74 */	b cLib_addCalcAngleS2__FPssss
/* 805C0298  48 00 03 08 */	b lbl_805C05A0
lbl_805C029C:
/* 805C029C  80 1A 07 08 */	lwz r0, 0x708(r26)
/* 805C02A0  2C 00 00 06 */	cmpwi r0, 6
/* 805C02A4  40 82 00 6C */	bne lbl_805C0310
/* 805C02A8  88 1A 07 D1 */	lbz r0, 0x7d1(r26)
/* 805C02AC  28 00 00 02 */	cmplwi r0, 2
/* 805C02B0  40 82 00 60 */	bne lbl_805C0310
/* 805C02B4  C0 3A 07 20 */	lfs f1, 0x720(r26)
/* 805C02B8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C02BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C02C0  40 80 00 50 */	bge lbl_805C0310
/* 805C02C4  7F 43 D3 78 */	mr r3, r26
/* 805C02C8  38 80 00 2B */	li r4, 0x2b
/* 805C02CC  38 A0 00 02 */	li r5, 2
/* 805C02D0  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805C02D4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C02D8  4B FF B1 31 */	bl setBck__8daB_DR_cFiUcff
/* 805C02DC  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C02E0  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C02E4  A8 03 00 50 */	lha r0, 0x50(r3)
/* 805C02E8  90 1A 07 CC */	stw r0, 0x7cc(r26)
/* 805C02EC  80 1A 0A 5C */	lwz r0, 0xa5c(r26)
/* 805C02F0  60 00 00 01 */	ori r0, r0, 1
/* 805C02F4  90 1A 0A 5C */	stw r0, 0xa5c(r26)
/* 805C02F8  7F 43 D3 78 */	mr r3, r26
/* 805C02FC  38 80 00 01 */	li r4, 1
/* 805C0300  4B FF B3 4D */	bl mStatusONOFF__8daB_DR_cFi
/* 805C0304  38 00 00 64 */	li r0, 0x64
/* 805C0308  90 1A 07 0C */	stw r0, 0x70c(r26)
/* 805C030C  48 00 02 94 */	b lbl_805C05A0
lbl_805C0310:
/* 805C0310  7F 43 D3 78 */	mr r3, r26
/* 805C0314  38 80 00 2C */	li r4, 0x2c
/* 805C0318  38 A0 00 00 */	li r5, 0
/* 805C031C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C0320  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C0324  4B FF B0 E5 */	bl setBck__8daB_DR_cFiUcff
/* 805C0328  80 7A 07 0C */	lwz r3, 0x70c(r26)
/* 805C032C  38 03 00 01 */	addi r0, r3, 1
/* 805C0330  90 1A 07 0C */	stw r0, 0x70c(r26)
/* 805C0334  48 00 02 6C */	b lbl_805C05A0
lbl_805C0338:
/* 805C0338  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 805C033C  38 80 00 01 */	li r4, 1
/* 805C0340  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805C0344  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C0348  40 82 00 18 */	bne lbl_805C0360
/* 805C034C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 805C0350  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805C0354  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C0358  41 82 00 08 */	beq lbl_805C0360
/* 805C035C  38 80 00 00 */	li r4, 0
lbl_805C0360:
/* 805C0360  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805C0364  41 82 02 3C */	beq lbl_805C05A0
/* 805C0368  7F 43 D3 78 */	mr r3, r26
/* 805C036C  38 80 00 35 */	li r4, 0x35
/* 805C0370  38 A0 00 02 */	li r5, 2
/* 805C0374  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C0378  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C037C  4B FF B0 8D */	bl setBck__8daB_DR_cFiUcff
/* 805C0380  80 7A 07 0C */	lwz r3, 0x70c(r26)
/* 805C0384  38 03 00 01 */	addi r0, r3, 1
/* 805C0388  90 1A 07 0C */	stw r0, 0x70c(r26)
lbl_805C038C:
/* 805C038C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805C0390  D0 1A 07 24 */	stfs f0, 0x724(r26)
/* 805C0394  38 00 00 01 */	li r0, 1
/* 805C0398  98 1A 07 D6 */	stb r0, 0x7d6(r26)
/* 805C039C  7F 43 D3 78 */	mr r3, r26
/* 805C03A0  4B FF CC BD */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C03A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C03A8  40 82 00 68 */	bne lbl_805C0410
/* 805C03AC  88 1A 07 D1 */	lbz r0, 0x7d1(r26)
/* 805C03B0  28 00 00 02 */	cmplwi r0, 2
/* 805C03B4  41 82 00 40 */	beq lbl_805C03F4
/* 805C03B8  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 805C03BC  D0 1A 07 24 */	stfs f0, 0x724(r26)
/* 805C03C0  88 1A 07 D1 */	lbz r0, 0x7d1(r26)
/* 805C03C4  28 00 00 00 */	cmplwi r0, 0
/* 805C03C8  41 82 00 18 */	beq lbl_805C03E0
/* 805C03CC  7F 43 D3 78 */	mr r3, r26
/* 805C03D0  38 80 00 00 */	li r4, 0
/* 805C03D4  38 A0 00 00 */	li r5, 0
/* 805C03D8  4B FF B0 DD */	bl setActionMode__8daB_DR_cFii
/* 805C03DC  48 00 02 38 */	b lbl_805C0614
lbl_805C03E0:
/* 805C03E0  7F 43 D3 78 */	mr r3, r26
/* 805C03E4  38 80 00 04 */	li r4, 4
/* 805C03E8  38 A0 00 00 */	li r5, 0
/* 805C03EC  4B FF B0 C9 */	bl setActionMode__8daB_DR_cFii
/* 805C03F0  48 00 02 24 */	b lbl_805C0614
lbl_805C03F4:
/* 805C03F4  38 00 00 C8 */	li r0, 0xc8
/* 805C03F8  B0 1A 07 50 */	sth r0, 0x750(r26)
/* 805C03FC  7F 43 D3 78 */	mr r3, r26
/* 805C0400  38 80 00 01 */	li r4, 1
/* 805C0404  38 A0 00 00 */	li r5, 0
/* 805C0408  4B FF B0 AD */	bl setActionMode__8daB_DR_cFii
/* 805C040C  48 00 02 08 */	b lbl_805C0614
lbl_805C0410:
/* 805C0410  88 1A 07 D1 */	lbz r0, 0x7d1(r26)
/* 805C0414  28 00 00 02 */	cmplwi r0, 2
/* 805C0418  41 82 00 10 */	beq lbl_805C0428
/* 805C041C  7F 43 D3 78 */	mr r3, r26
/* 805C0420  38 80 00 01 */	li r4, 1
/* 805C0424  4B FF B2 29 */	bl mStatusONOFF__8daB_DR_cFi
lbl_805C0428:
/* 805C0428  88 1A 07 D1 */	lbz r0, 0x7d1(r26)
/* 805C042C  28 00 00 02 */	cmplwi r0, 2
/* 805C0430  41 82 00 18 */	beq lbl_805C0448
/* 805C0434  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C0438  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C043C  A8 03 00 46 */	lha r0, 0x46(r3)
/* 805C0440  90 1A 07 CC */	stw r0, 0x7cc(r26)
/* 805C0444  48 00 00 14 */	b lbl_805C0458
lbl_805C0448:
/* 805C0448  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805C044C  38 63 79 0C */	addi r3, r3, l_HIO@l
/* 805C0450  A8 03 00 4A */	lha r0, 0x4a(r3)
/* 805C0454  90 1A 07 CC */	stw r0, 0x7cc(r26)
lbl_805C0458:
/* 805C0458  38 00 00 01 */	li r0, 1
/* 805C045C  90 1A 07 0C */	stw r0, 0x70c(r26)
/* 805C0460  48 00 01 40 */	b lbl_805C05A0
lbl_805C0464:
/* 805C0464  7F 43 D3 78 */	mr r3, r26
/* 805C0468  38 80 00 01 */	li r4, 1
/* 805C046C  4B FF F2 FD */	bl mBreathHighSet__8daB_DR_cFb
/* 805C0470  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 805C0474  60 00 00 04 */	ori r0, r0, 4
/* 805C0478  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 805C047C  38 7A 07 CC */	addi r3, r26, 0x7cc
/* 805C0480  48 00 67 5D */	bl func_805C6BDC
/* 805C0484  2C 03 00 00 */	cmpwi r3, 0
/* 805C0488  41 82 00 E0 */	beq lbl_805C0568
/* 805C048C  C0 3A 07 20 */	lfs f1, 0x720(r26)
/* 805C0490  C0 1E 03 6C */	lfs f0, 0x36c(r30)
/* 805C0494  EC 21 00 28 */	fsubs f1, f1, f0
/* 805C0498  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C049C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C04A0  40 80 00 C8 */	bge lbl_805C0568
/* 805C04A4  7F 43 D3 78 */	mr r3, r26
/* 805C04A8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805C04AC  4B A5 A2 64 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805C04B0  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 805C04B4  7C 00 18 50 */	subf r0, r0, r3
/* 805C04B8  7C 03 07 34 */	extsh r3, r0
/* 805C04BC  4B DA 4C 14 */	b abs
/* 805C04C0  2C 03 50 00 */	cmpwi r3, 0x5000
/* 805C04C4  40 80 00 20 */	bge lbl_805C04E4
/* 805C04C8  80 1A 0A 5C */	lwz r0, 0xa5c(r26)
/* 805C04CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805C04D0  90 1A 0A 5C */	stw r0, 0xa5c(r26)
/* 805C04D4  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 805C04D8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805C04DC  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 805C04E0  48 00 00 C0 */	b lbl_805C05A0
lbl_805C04E4:
/* 805C04E4  80 1A 0A 5C */	lwz r0, 0xa5c(r26)
/* 805C04E8  60 00 00 01 */	ori r0, r0, 1
/* 805C04EC  90 1A 0A 5C */	stw r0, 0xa5c(r26)
/* 805C04F0  88 1A 07 D9 */	lbz r0, 0x7d9(r26)
/* 805C04F4  28 00 00 00 */	cmplwi r0, 0
/* 805C04F8  40 82 00 4C */	bne lbl_805C0544
/* 805C04FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C0500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C0504  3B A3 56 B8 */	addi r29, r3, 0x56b8
/* 805C0508  7F A3 EB 78 */	mr r3, r29
/* 805C050C  38 80 00 00 */	li r4, 0
/* 805C0510  4B AB 03 34 */	b GetLockonList__12dAttention_cFl
/* 805C0514  28 03 00 00 */	cmplwi r3, 0
/* 805C0518  41 82 00 38 */	beq lbl_805C0550
/* 805C051C  7F A3 EB 78 */	mr r3, r29
/* 805C0520  4B AB 32 C4 */	b LockonTruth__12dAttention_cFv
/* 805C0524  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C0528  41 82 00 28 */	beq lbl_805C0550
/* 805C052C  7F A3 EB 78 */	mr r3, r29
/* 805C0530  38 80 00 00 */	li r4, 0
/* 805C0534  4B AB 03 10 */	b GetLockonList__12dAttention_cFl
/* 805C0538  4B AB 33 2C */	b getActor__10dAttList_cFv
/* 805C053C  7C 03 D0 40 */	cmplw r3, r26
/* 805C0540  40 82 00 10 */	bne lbl_805C0550
lbl_805C0544:
/* 805C0544  38 00 00 00 */	li r0, 0
/* 805C0548  98 1A 07 D9 */	stb r0, 0x7d9(r26)
/* 805C054C  48 00 00 54 */	b lbl_805C05A0
lbl_805C0550:
/* 805C0550  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 805C0554  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805C0558  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 805C055C  38 00 00 00 */	li r0, 0
/* 805C0560  98 1A 07 D9 */	stb r0, 0x7d9(r26)
/* 805C0564  48 00 00 3C */	b lbl_805C05A0
lbl_805C0568:
/* 805C0568  80 1A 0A 5C */	lwz r0, 0xa5c(r26)
/* 805C056C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805C0570  90 1A 0A 5C */	stw r0, 0xa5c(r26)
/* 805C0574  7F 43 D3 78 */	mr r3, r26
/* 805C0578  38 80 00 00 */	li r4, 0
/* 805C057C  4B FF B0 D1 */	bl mStatusONOFF__8daB_DR_cFi
/* 805C0580  7F 43 D3 78 */	mr r3, r26
/* 805C0584  38 80 00 2C */	li r4, 0x2c
/* 805C0588  38 A0 00 00 */	li r5, 0
/* 805C058C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 805C0590  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805C0594  4B FF AE 75 */	bl setBck__8daB_DR_cFiUcff
/* 805C0598  38 00 00 0B */	li r0, 0xb
/* 805C059C  90 1A 07 0C */	stw r0, 0x70c(r26)
lbl_805C05A0:
/* 805C05A0  38 7A 07 58 */	addi r3, r26, 0x758
/* 805C05A4  38 80 00 00 */	li r4, 0
/* 805C05A8  38 A0 00 64 */	li r5, 0x64
/* 805C05AC  38 C0 02 00 */	li r6, 0x200
/* 805C05B0  4B CB 00 58 */	b cLib_addCalcAngleS2__FPssss
/* 805C05B4  38 7A 07 5A */	addi r3, r26, 0x75a
/* 805C05B8  7F 84 E3 78 */	mr r4, r28
/* 805C05BC  7F 65 DB 78 */	mr r5, r27
/* 805C05C0  3C C0 80 5C */	lis r6, l_HIO@ha
/* 805C05C4  38 C6 79 0C */	addi r6, r6, l_HIO@l
/* 805C05C8  A8 C6 00 56 */	lha r6, 0x56(r6)
/* 805C05CC  4B CB 00 3C */	b cLib_addCalcAngleS2__FPssss
/* 805C05D0  80 1A 07 0C */	lwz r0, 0x70c(r26)
/* 805C05D4  2C 00 00 09 */	cmpwi r0, 9
/* 805C05D8  40 80 00 3C */	bge lbl_805C0614
/* 805C05DC  7F 43 D3 78 */	mr r3, r26
/* 805C05E0  4B FF CA 7D */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805C05E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C05E8  40 82 00 2C */	bne lbl_805C0614
/* 805C05EC  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 805C05F0  2C 00 00 29 */	cmpwi r0, 0x29
/* 805C05F4  40 82 00 18 */	bne lbl_805C060C
/* 805C05F8  38 00 00 00 */	li r0, 0
/* 805C05FC  90 1A 07 C8 */	stw r0, 0x7c8(r26)
/* 805C0600  38 00 00 09 */	li r0, 9
/* 805C0604  90 1A 07 0C */	stw r0, 0x70c(r26)
/* 805C0608  48 00 00 0C */	b lbl_805C0614
lbl_805C060C:
/* 805C060C  38 00 00 0C */	li r0, 0xc
/* 805C0610  90 1A 07 0C */	stw r0, 0x70c(r26)
lbl_805C0614:
/* 805C0614  39 61 00 30 */	addi r11, r1, 0x30
/* 805C0618  4B DA 1C 00 */	b _restgpr_25
/* 805C061C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C0620  7C 08 03 A6 */	mtlr r0
/* 805C0624  38 21 00 30 */	addi r1, r1, 0x30
/* 805C0628  4E 80 00 20 */	blr 
