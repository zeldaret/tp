lbl_805EF010:
/* 805EF010  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805EF014  7C 08 02 A6 */	mflr r0
/* 805EF018  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805EF01C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 805EF020  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 805EF024  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805EF028  4B D7 31 AC */	b _savegpr_27
/* 805EF02C  7C 7D 1B 78 */	mr r29, r3
/* 805EF030  3C 60 80 5F */	lis r3, lit_3774@ha
/* 805EF034  3B C3 41 88 */	addi r30, r3, lit_3774@l
/* 805EF038  3C 60 80 5F */	lis r3, l_HIO@ha
/* 805EF03C  3B E3 47 DC */	addi r31, r3, l_HIO@l
/* 805EF040  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 805EF044  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805EF048  83 63 00 04 */	lwz r27, 4(r3)
/* 805EF04C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 805EF050  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EF054  38 63 00 C0 */	addi r3, r3, 0xc0
/* 805EF058  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805EF05C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805EF060  4B D5 74 50 */	b PSMTXCopy
/* 805EF064  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EF068  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 805EF06C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 805EF070  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805EF074  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 805EF078  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805EF07C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 805EF080  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805EF084  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 805EF088  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EF08C  38 63 00 F0 */	addi r3, r3, 0xf0
/* 805EF090  7F 84 E3 78 */	mr r4, r28
/* 805EF094  4B D5 74 1C */	b PSMTXCopy
/* 805EF098  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 805EF09C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805EF0A0  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 805EF0A4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805EF0A8  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 805EF0AC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805EF0B0  38 61 00 44 */	addi r3, r1, 0x44
/* 805EF0B4  38 81 00 50 */	addi r4, r1, 0x50
/* 805EF0B8  38 A1 00 5C */	addi r5, r1, 0x5c
/* 805EF0BC  4B C7 7A 78 */	b __mi__4cXyzCFRC3Vec
/* 805EF0C0  38 61 00 38 */	addi r3, r1, 0x38
/* 805EF0C4  38 81 00 44 */	addi r4, r1, 0x44
/* 805EF0C8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 805EF0CC  4B C7 7A B8 */	b __ml__4cXyzCFf
/* 805EF0D0  38 61 00 2C */	addi r3, r1, 0x2c
/* 805EF0D4  38 81 00 5C */	addi r4, r1, 0x5c
/* 805EF0D8  38 A1 00 38 */	addi r5, r1, 0x38
/* 805EF0DC  4B C7 7A 08 */	b __pl__4cXyzCFRC3Vec
/* 805EF0E0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805EF0E4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805EF0E8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805EF0EC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805EF0F0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805EF0F4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805EF0F8  A8 1D 07 20 */	lha r0, 0x720(r29)
/* 805EF0FC  2C 00 00 01 */	cmpwi r0, 1
/* 805EF100  41 82 00 54 */	beq lbl_805EF154
/* 805EF104  40 80 00 10 */	bge lbl_805EF114
/* 805EF108  2C 00 00 00 */	cmpwi r0, 0
/* 805EF10C  40 80 00 14 */	bge lbl_805EF120
/* 805EF110  48 00 03 B4 */	b lbl_805EF4C4
lbl_805EF114:
/* 805EF114  2C 00 00 03 */	cmpwi r0, 3
/* 805EF118  40 80 03 AC */	bge lbl_805EF4C4
/* 805EF11C  48 00 02 C4 */	b lbl_805EF3E0
lbl_805EF120:
/* 805EF120  7F A3 EB 78 */	mr r3, r29
/* 805EF124  38 80 00 0F */	li r4, 0xf
/* 805EF128  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 805EF12C  38 A0 00 02 */	li r5, 2
/* 805EF130  3C C0 80 5F */	lis r6, l_HIO@ha
/* 805EF134  38 C6 47 DC */	addi r6, r6, l_HIO@l
/* 805EF138  C0 46 00 14 */	lfs f2, 0x14(r6)
/* 805EF13C  4B FF E8 C1 */	bl anm_init__FP10b_gm_classifUcf
/* 805EF140  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805EF144  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 805EF148  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805EF14C  38 00 00 01 */	li r0, 1
/* 805EF150  B0 1D 07 20 */	sth r0, 0x720(r29)
lbl_805EF154:
/* 805EF154  38 61 00 20 */	addi r3, r1, 0x20
/* 805EF158  38 9D 05 B8 */	addi r4, r29, 0x5b8
/* 805EF15C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805EF160  4B C7 79 D4 */	b __mi__4cXyzCFRC3Vec
/* 805EF164  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 805EF168  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805EF16C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805EF170  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805EF174  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 805EF178  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 805EF17C  4B C7 84 F8 */	b cM_atan2s__Fff
/* 805EF180  3C 63 00 01 */	addis r3, r3, 1
/* 805EF184  38 03 80 00 */	addi r0, r3, -32768
/* 805EF188  7C 04 07 34 */	extsh r4, r0
/* 805EF18C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805EF190  38 A0 00 04 */	li r5, 4
/* 805EF194  38 C0 03 00 */	li r6, 0x300
/* 805EF198  4B C8 14 70 */	b cLib_addCalcAngleS2__FPssss
/* 805EF19C  88 1D 1C F9 */	lbz r0, 0x1cf9(r29)
/* 805EF1A0  28 00 00 00 */	cmplwi r0, 0
/* 805EF1A4  40 82 01 18 */	bne lbl_805EF2BC
/* 805EF1A8  A8 1D 1C 8C */	lha r0, 0x1c8c(r29)
/* 805EF1AC  2C 00 00 00 */	cmpwi r0, 0
/* 805EF1B0  40 82 01 0C */	bne lbl_805EF2BC
/* 805EF1B4  38 61 00 5C */	addi r3, r1, 0x5c
/* 805EF1B8  4B D5 7F 80 */	b PSVECSquareMag
/* 805EF1BC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805EF1C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF1C4  40 81 00 58 */	ble lbl_805EF21C
/* 805EF1C8  FC 00 08 34 */	frsqrte f0, f1
/* 805EF1CC  C8 9E 00 60 */	lfd f4, 0x60(r30)
/* 805EF1D0  FC 44 00 32 */	fmul f2, f4, f0
/* 805EF1D4  C8 7E 00 68 */	lfd f3, 0x68(r30)
/* 805EF1D8  FC 00 00 32 */	fmul f0, f0, f0
/* 805EF1DC  FC 01 00 32 */	fmul f0, f1, f0
/* 805EF1E0  FC 03 00 28 */	fsub f0, f3, f0
/* 805EF1E4  FC 02 00 32 */	fmul f0, f2, f0
/* 805EF1E8  FC 44 00 32 */	fmul f2, f4, f0
/* 805EF1EC  FC 00 00 32 */	fmul f0, f0, f0
/* 805EF1F0  FC 01 00 32 */	fmul f0, f1, f0
/* 805EF1F4  FC 03 00 28 */	fsub f0, f3, f0
/* 805EF1F8  FC 02 00 32 */	fmul f0, f2, f0
/* 805EF1FC  FC 44 00 32 */	fmul f2, f4, f0
/* 805EF200  FC 00 00 32 */	fmul f0, f0, f0
/* 805EF204  FC 01 00 32 */	fmul f0, f1, f0
/* 805EF208  FC 03 00 28 */	fsub f0, f3, f0
/* 805EF20C  FC 02 00 32 */	fmul f0, f2, f0
/* 805EF210  FC 21 00 32 */	fmul f1, f1, f0
/* 805EF214  FC 20 08 18 */	frsp f1, f1
/* 805EF218  48 00 00 88 */	b lbl_805EF2A0
lbl_805EF21C:
/* 805EF21C  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 805EF220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF224  40 80 00 10 */	bge lbl_805EF234
/* 805EF228  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805EF22C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805EF230  48 00 00 70 */	b lbl_805EF2A0
lbl_805EF234:
/* 805EF234  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805EF238  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805EF23C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805EF240  3C 00 7F 80 */	lis r0, 0x7f80
/* 805EF244  7C 03 00 00 */	cmpw r3, r0
/* 805EF248  41 82 00 14 */	beq lbl_805EF25C
/* 805EF24C  40 80 00 40 */	bge lbl_805EF28C
/* 805EF250  2C 03 00 00 */	cmpwi r3, 0
/* 805EF254  41 82 00 20 */	beq lbl_805EF274
/* 805EF258  48 00 00 34 */	b lbl_805EF28C
lbl_805EF25C:
/* 805EF25C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EF260  41 82 00 0C */	beq lbl_805EF26C
/* 805EF264  38 00 00 01 */	li r0, 1
/* 805EF268  48 00 00 28 */	b lbl_805EF290
lbl_805EF26C:
/* 805EF26C  38 00 00 02 */	li r0, 2
/* 805EF270  48 00 00 20 */	b lbl_805EF290
lbl_805EF274:
/* 805EF274  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EF278  41 82 00 0C */	beq lbl_805EF284
/* 805EF27C  38 00 00 05 */	li r0, 5
/* 805EF280  48 00 00 10 */	b lbl_805EF290
lbl_805EF284:
/* 805EF284  38 00 00 03 */	li r0, 3
/* 805EF288  48 00 00 08 */	b lbl_805EF290
lbl_805EF28C:
/* 805EF28C  38 00 00 04 */	li r0, 4
lbl_805EF290:
/* 805EF290  2C 00 00 01 */	cmpwi r0, 1
/* 805EF294  40 82 00 0C */	bne lbl_805EF2A0
/* 805EF298  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805EF29C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805EF2A0:
/* 805EF2A0  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 805EF2A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF2A8  40 80 00 14 */	bge lbl_805EF2BC
/* 805EF2AC  38 00 00 0A */	li r0, 0xa
/* 805EF2B0  B0 1D 1C 8C */	sth r0, 0x1c8c(r29)
/* 805EF2B4  38 00 00 01 */	li r0, 1
/* 805EF2B8  98 1D 1C F9 */	stb r0, 0x1cf9(r29)
lbl_805EF2BC:
/* 805EF2BC  38 61 00 5C */	addi r3, r1, 0x5c
/* 805EF2C0  4B D5 7E 78 */	b PSVECSquareMag
/* 805EF2C4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805EF2C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF2CC  40 81 00 58 */	ble lbl_805EF324
/* 805EF2D0  FC 00 08 34 */	frsqrte f0, f1
/* 805EF2D4  C8 9E 00 60 */	lfd f4, 0x60(r30)
/* 805EF2D8  FC 44 00 32 */	fmul f2, f4, f0
/* 805EF2DC  C8 7E 00 68 */	lfd f3, 0x68(r30)
/* 805EF2E0  FC 00 00 32 */	fmul f0, f0, f0
/* 805EF2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 805EF2E8  FC 03 00 28 */	fsub f0, f3, f0
/* 805EF2EC  FC 02 00 32 */	fmul f0, f2, f0
/* 805EF2F0  FC 44 00 32 */	fmul f2, f4, f0
/* 805EF2F4  FC 00 00 32 */	fmul f0, f0, f0
/* 805EF2F8  FC 01 00 32 */	fmul f0, f1, f0
/* 805EF2FC  FC 03 00 28 */	fsub f0, f3, f0
/* 805EF300  FC 02 00 32 */	fmul f0, f2, f0
/* 805EF304  FC 44 00 32 */	fmul f2, f4, f0
/* 805EF308  FC 00 00 32 */	fmul f0, f0, f0
/* 805EF30C  FC 01 00 32 */	fmul f0, f1, f0
/* 805EF310  FC 03 00 28 */	fsub f0, f3, f0
/* 805EF314  FC 02 00 32 */	fmul f0, f2, f0
/* 805EF318  FC 21 00 32 */	fmul f1, f1, f0
/* 805EF31C  FC 20 08 18 */	frsp f1, f1
/* 805EF320  48 00 00 88 */	b lbl_805EF3A8
lbl_805EF324:
/* 805EF324  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 805EF328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF32C  40 80 00 10 */	bge lbl_805EF33C
/* 805EF330  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805EF334  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805EF338  48 00 00 70 */	b lbl_805EF3A8
lbl_805EF33C:
/* 805EF33C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805EF340  80 81 00 10 */	lwz r4, 0x10(r1)
/* 805EF344  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805EF348  3C 00 7F 80 */	lis r0, 0x7f80
/* 805EF34C  7C 03 00 00 */	cmpw r3, r0
/* 805EF350  41 82 00 14 */	beq lbl_805EF364
/* 805EF354  40 80 00 40 */	bge lbl_805EF394
/* 805EF358  2C 03 00 00 */	cmpwi r3, 0
/* 805EF35C  41 82 00 20 */	beq lbl_805EF37C
/* 805EF360  48 00 00 34 */	b lbl_805EF394
lbl_805EF364:
/* 805EF364  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EF368  41 82 00 0C */	beq lbl_805EF374
/* 805EF36C  38 00 00 01 */	li r0, 1
/* 805EF370  48 00 00 28 */	b lbl_805EF398
lbl_805EF374:
/* 805EF374  38 00 00 02 */	li r0, 2
/* 805EF378  48 00 00 20 */	b lbl_805EF398
lbl_805EF37C:
/* 805EF37C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EF380  41 82 00 0C */	beq lbl_805EF38C
/* 805EF384  38 00 00 05 */	li r0, 5
/* 805EF388  48 00 00 10 */	b lbl_805EF398
lbl_805EF38C:
/* 805EF38C  38 00 00 03 */	li r0, 3
/* 805EF390  48 00 00 08 */	b lbl_805EF398
lbl_805EF394:
/* 805EF394  38 00 00 04 */	li r0, 4
lbl_805EF398:
/* 805EF398  2C 00 00 01 */	cmpwi r0, 1
/* 805EF39C  40 82 00 0C */	bne lbl_805EF3A8
/* 805EF3A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805EF3A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805EF3A8:
/* 805EF3A8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805EF3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EF3B0  40 80 01 14 */	bge lbl_805EF4C4
/* 805EF3B4  7F A3 EB 78 */	mr r3, r29
/* 805EF3B8  38 80 00 15 */	li r4, 0x15
/* 805EF3BC  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 805EF3C0  38 A0 00 02 */	li r5, 2
/* 805EF3C4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805EF3C8  4B FF E6 35 */	bl anm_init__FP10b_gm_classifUcf
/* 805EF3CC  38 00 00 C8 */	li r0, 0xc8
/* 805EF3D0  B0 1D 07 22 */	sth r0, 0x722(r29)
/* 805EF3D4  38 00 00 02 */	li r0, 2
/* 805EF3D8  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EF3DC  48 00 00 E8 */	b lbl_805EF4C4
lbl_805EF3E0:
/* 805EF3E0  C3 FE 00 1C */	lfs f31, 0x1c(r30)
/* 805EF3E4  A8 1D 07 22 */	lha r0, 0x722(r29)
/* 805EF3E8  2C 00 00 96 */	cmpwi r0, 0x96
/* 805EF3EC  40 80 00 94 */	bge lbl_805EF480
/* 805EF3F0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805EF3F4  40 81 00 8C */	ble lbl_805EF480
/* 805EF3F8  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 805EF3FC  40 82 00 84 */	bne lbl_805EF480
/* 805EF400  38 00 00 00 */	li r0, 0
/* 805EF404  3C 60 80 5F */	lis r3, ko_ct@ha
/* 805EF408  90 03 48 28 */	stw r0, ko_ct@l(r3)
/* 805EF40C  3C 60 80 5F */	lis r3, s_ko_sub__FPvPv@ha
/* 805EF410  38 63 E6 20 */	addi r3, r3, s_ko_sub__FPvPv@l
/* 805EF414  7F A4 EB 78 */	mr r4, r29
/* 805EF418  4B A3 1F 20 */	b fpcEx_Search__FPFPvPv_PvPv
/* 805EF41C  3C 60 80 5F */	lis r3, ko_ct@ha
/* 805EF420  80 03 48 28 */	lwz r0, ko_ct@l(r3)
/* 805EF424  2C 00 00 64 */	cmpwi r0, 0x64
/* 805EF428  40 80 00 58 */	bge lbl_805EF480
/* 805EF42C  38 61 00 18 */	addi r3, r1, 0x18
/* 805EF430  38 80 00 00 */	li r4, 0
/* 805EF434  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805EF438  38 C0 00 00 */	li r6, 0
/* 805EF43C  4B C7 7F B8 */	b __ct__5csXyzFsss
/* 805EF440  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805EF444  7C 07 07 74 */	extsb r7, r0
/* 805EF448  38 00 00 00 */	li r0, 0
/* 805EF44C  90 01 00 08 */	stw r0, 8(r1)
/* 805EF450  38 60 01 BB */	li r3, 0x1bb
/* 805EF454  28 1D 00 00 */	cmplwi r29, 0
/* 805EF458  41 82 00 0C */	beq lbl_805EF464
/* 805EF45C  80 9D 00 04 */	lwz r4, 4(r29)
/* 805EF460  48 00 00 08 */	b lbl_805EF468
lbl_805EF464:
/* 805EF464  38 80 FF FF */	li r4, -1
lbl_805EF468:
/* 805EF468  38 A0 00 00 */	li r5, 0
/* 805EF46C  38 C1 00 68 */	addi r6, r1, 0x68
/* 805EF470  39 01 00 18 */	addi r8, r1, 0x18
/* 805EF474  39 20 00 00 */	li r9, 0
/* 805EF478  39 40 FF FF */	li r10, -1
/* 805EF47C  4B A2 AA 74 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_805EF480:
/* 805EF480  A8 1D 07 22 */	lha r0, 0x722(r29)
/* 805EF484  2C 00 00 00 */	cmpwi r0, 0
/* 805EF488  40 82 00 3C */	bne lbl_805EF4C4
/* 805EF48C  38 00 00 01 */	li r0, 1
/* 805EF490  B0 1D 07 1E */	sth r0, 0x71e(r29)
/* 805EF494  38 00 00 00 */	li r0, 0
/* 805EF498  B0 1D 07 22 */	sth r0, 0x722(r29)
/* 805EF49C  38 00 00 04 */	li r0, 4
/* 805EF4A0  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EF4A4  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 805EF4A8  4B C7 84 AC */	b cM_rndF__Ff
/* 805EF4AC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805EF4B0  EC 00 08 2A */	fadds f0, f0, f1
/* 805EF4B4  FC 00 00 1E */	fctiwz f0, f0
/* 805EF4B8  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 805EF4BC  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 805EF4C0  B0 1D 07 26 */	sth r0, 0x726(r29)
lbl_805EF4C4:
/* 805EF4C4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 805EF4C8  FC 20 F8 90 */	fmr f1, f31
/* 805EF4CC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805EF4D0  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 805EF4D4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805EF4D8  EC 03 00 32 */	fmuls f0, f3, f0
/* 805EF4DC  EC 62 00 2A */	fadds f3, f2, f0
/* 805EF4E0  4B C8 05 5C */	b cLib_addCalc2__FPffff
/* 805EF4E4  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 805EF4E8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 805EF4EC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805EF4F0  4B D7 2D 30 */	b _restgpr_27
/* 805EF4F4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805EF4F8  7C 08 03 A6 */	mtlr r0
/* 805EF4FC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805EF500  4E 80 00 20 */	blr 
