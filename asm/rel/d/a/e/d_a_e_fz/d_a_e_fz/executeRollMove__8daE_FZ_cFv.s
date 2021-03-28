lbl_806BFF94:
/* 806BFF94  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806BFF98  7C 08 02 A6 */	mflr r0
/* 806BFF9C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806BFFA0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806BFFA4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806BFFA8  39 61 00 30 */	addi r11, r1, 0x30
/* 806BFFAC  4B CA 22 30 */	b _savegpr_29
/* 806BFFB0  7C 7E 1B 78 */	mr r30, r3
/* 806BFFB4  3C 60 80 6C */	lis r3, lit_3803@ha
/* 806BFFB8  3B E3 19 38 */	addi r31, r3, lit_3803@l
/* 806BFFBC  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 806BFFC0  38 9E 07 18 */	addi r4, r30, 0x718
/* 806BFFC4  4B 95 99 F8 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806BFFC8  2C 03 00 00 */	cmpwi r3, 0
/* 806BFFCC  41 82 02 38 */	beq lbl_806C0204
/* 806BFFD0  80 7E 07 18 */	lwz r3, 0x718(r30)
/* 806BFFD4  28 03 00 00 */	cmplwi r3, 0
/* 806BFFD8  40 82 00 08 */	bne lbl_806BFFE0
/* 806BFFDC  48 00 02 28 */	b lbl_806C0204
lbl_806BFFE0:
/* 806BFFE0  88 03 0F A8 */	lbz r0, 0xfa8(r3)
/* 806BFFE4  28 00 00 04 */	cmplwi r0, 4
/* 806BFFE8  41 80 00 0C */	blt lbl_806BFFF4
/* 806BFFEC  28 00 00 06 */	cmplwi r0, 6
/* 806BFFF0  40 81 00 10 */	ble lbl_806C0000
lbl_806BFFF4:
/* 806BFFF4  7F C3 F3 78 */	mr r3, r30
/* 806BFFF8  4B 95 9C 84 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806BFFFC  48 00 02 08 */	b lbl_806C0204
lbl_806C0000:
/* 806C0000  AB A3 0F 5C */	lha r29, 0xf5c(r3)
/* 806C0004  C0 23 0F 54 */	lfs f1, 0xf54(r3)
/* 806C0008  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806C000C  EF E0 08 2A */	fadds f31, f0, f1
/* 806C0010  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806C0014  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806C0018  40 80 00 08 */	bge lbl_806C0020
/* 806C001C  FF E0 00 90 */	fmr f31, f0
lbl_806C0020:
/* 806C0020  80 1E 06 F8 */	lwz r0, 0x6f8(r30)
/* 806C0024  2C 00 00 01 */	cmpwi r0, 1
/* 806C0028  41 82 00 4C */	beq lbl_806C0074
/* 806C002C  40 80 00 10 */	bge lbl_806C003C
/* 806C0030  2C 00 00 00 */	cmpwi r0, 0
/* 806C0034  40 80 00 14 */	bge lbl_806C0048
/* 806C0038  48 00 01 BC */	b lbl_806C01F4
lbl_806C003C:
/* 806C003C  2C 00 00 03 */	cmpwi r0, 3
/* 806C0040  40 80 01 B4 */	bge lbl_806C01F4
/* 806C0044  48 00 00 F8 */	b lbl_806C013C
lbl_806C0048:
/* 806C0048  38 00 00 00 */	li r0, 0
/* 806C004C  B0 1E 07 04 */	sth r0, 0x704(r30)
/* 806C0050  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C0054  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806C0058  D0 1E 07 00 */	stfs f0, 0x700(r30)
/* 806C005C  38 00 00 01 */	li r0, 1
/* 806C0060  90 1E 06 F8 */	stw r0, 0x6f8(r30)
/* 806C0064  88 1E 07 15 */	lbz r0, 0x715(r30)
/* 806C0068  20 00 00 14 */	subfic r0, r0, 0x14
/* 806C006C  54 00 0E 3C */	rlwinm r0, r0, 1, 0x18, 0x1e
/* 806C0070  98 1E 07 10 */	stb r0, 0x710(r30)
lbl_806C0074:
/* 806C0074  88 1E 07 10 */	lbz r0, 0x710(r30)
/* 806C0078  28 00 00 00 */	cmplwi r0, 0
/* 806C007C  40 82 00 14 */	bne lbl_806C0090
/* 806C0080  38 7E 07 00 */	addi r3, r30, 0x700
/* 806C0084  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C0088  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 806C008C  4B BB 06 B4 */	b cLib_chaseF__FPfff
lbl_806C0090:
/* 806C0090  38 7E 07 04 */	addi r3, r30, 0x704
/* 806C0094  38 80 04 00 */	li r4, 0x400
/* 806C0098  38 A0 00 10 */	li r5, 0x10
/* 806C009C  4B BB 0A F4 */	b cLib_chaseAngleS__FPsss
/* 806C00A0  80 7E 07 18 */	lwz r3, 0x718(r30)
/* 806C00A4  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 806C00A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806C00AC  C0 63 04 D4 */	lfs f3, 0x4d4(r3)
/* 806C00B0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 806C00B4  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 806C00B8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 806C00BC  88 1E 07 15 */	lbz r0, 0x715(r30)
/* 806C00C0  1C 00 0C CC */	mulli r0, r0, 0xccc
/* 806C00C4  7C 1D 02 14 */	add r0, r29, r0
/* 806C00C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C00CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806C00D0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806C00D4  7C 03 04 2E */	lfsx f0, r3, r0
/* 806C00D8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 806C00DC  EC 21 00 2A */	fadds f1, f1, f0
/* 806C00E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806C00E4  7C 63 02 14 */	add r3, r3, r0
/* 806C00E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 806C00EC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 806C00F0  EC 02 00 2A */	fadds f0, f2, f0
/* 806C00F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806C00F8  D0 3E 04 D0 */	stfs f1, 0x4d0(r30)
/* 806C00FC  D0 7E 04 D4 */	stfs f3, 0x4d4(r30)
/* 806C0100  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 806C0104  80 7E 07 18 */	lwz r3, 0x718(r30)
/* 806C0108  88 03 0F AD */	lbz r0, 0xfad(r3)
/* 806C010C  28 00 00 03 */	cmplwi r0, 3
/* 806C0110  40 82 00 E4 */	bne lbl_806C01F4
/* 806C0114  38 00 00 02 */	li r0, 2
/* 806C0118  90 1E 06 F8 */	stw r0, 0x6f8(r30)
/* 806C011C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806C0120  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806C0124  80 7E 07 18 */	lwz r3, 0x718(r30)
/* 806C0128  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806C012C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806C0130  4B BB 0A D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806C0134  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 806C0138  48 00 00 BC */	b lbl_806C01F4
lbl_806C013C:
/* 806C013C  38 7E 07 00 */	addi r3, r30, 0x700
/* 806C0140  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C0144  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 806C0148  4B BB 05 F8 */	b cLib_chaseF__FPfff
/* 806C014C  38 7E 07 04 */	addi r3, r30, 0x704
/* 806C0150  38 80 02 00 */	li r4, 0x200
/* 806C0154  38 A0 00 10 */	li r5, 0x10
/* 806C0158  4B BB 0A 38 */	b cLib_chaseAngleS__FPsss
/* 806C015C  80 7E 07 98 */	lwz r3, 0x798(r30)
/* 806C0160  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 806C0164  40 82 00 0C */	bne lbl_806C0170
/* 806C0168  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 806C016C  40 82 00 44 */	bne lbl_806C01B0
lbl_806C0170:
/* 806C0170  7F C3 F3 78 */	mr r3, r30
/* 806C0174  38 80 00 03 */	li r4, 3
/* 806C0178  38 A0 00 00 */	li r5, 0
/* 806C017C  4B FF E9 7D */	bl setActionMode__8daE_FZ_cFii
/* 806C0180  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070322@ha */
/* 806C0184  38 03 03 22 */	addi r0, r3, 0x0322 /* 0x00070322@l */
/* 806C0188  90 01 00 08 */	stw r0, 8(r1)
/* 806C018C  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 806C0190  38 81 00 08 */	addi r4, r1, 8
/* 806C0194  38 A0 00 00 */	li r5, 0
/* 806C0198  38 C0 FF FF */	li r6, -1
/* 806C019C  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 806C01A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806C01A4  7D 89 03 A6 */	mtctr r12
/* 806C01A8  4E 80 04 21 */	bctrl 
/* 806C01AC  48 00 00 58 */	b lbl_806C0204
lbl_806C01B0:
/* 806C01B0  38 7E 0A B8 */	addi r3, r30, 0xab8
/* 806C01B4  4B 9C 41 0C */	b ChkAtHit__12dCcD_GObjInfFv
/* 806C01B8  28 03 00 00 */	cmplwi r3, 0
/* 806C01BC  41 82 00 38 */	beq lbl_806C01F4
/* 806C01C0  38 7E 0B 10 */	addi r3, r30, 0xb10
/* 806C01C4  4B 9C 34 C4 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 806C01C8  A8 03 00 08 */	lha r0, 8(r3)
/* 806C01CC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 806C01D0  41 82 00 10 */	beq lbl_806C01E0
/* 806C01D4  80 1E 0B 14 */	lwz r0, 0xb14(r30)
/* 806C01D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C01DC  41 82 00 18 */	beq lbl_806C01F4
lbl_806C01E0:
/* 806C01E0  7F C3 F3 78 */	mr r3, r30
/* 806C01E4  38 80 00 03 */	li r4, 3
/* 806C01E8  38 A0 00 00 */	li r5, 0
/* 806C01EC  4B FF E9 0D */	bl setActionMode__8daE_FZ_cFii
/* 806C01F0  48 00 00 14 */	b lbl_806C0204
lbl_806C01F4:
/* 806C01F4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 806C01F8  A8 1E 07 04 */	lha r0, 0x704(r30)
/* 806C01FC  7C 03 02 14 */	add r0, r3, r0
/* 806C0200  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_806C0204:
/* 806C0204  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806C0208  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806C020C  39 61 00 30 */	addi r11, r1, 0x30
/* 806C0210  4B CA 20 18 */	b _restgpr_29
/* 806C0214  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C0218  7C 08 03 A6 */	mtlr r0
/* 806C021C  38 21 00 40 */	addi r1, r1, 0x40
/* 806C0220  4E 80 00 20 */	blr 
