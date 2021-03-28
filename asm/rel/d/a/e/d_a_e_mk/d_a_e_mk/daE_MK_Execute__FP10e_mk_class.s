lbl_8071AF14:
/* 8071AF14  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8071AF18  7C 08 02 A6 */	mflr r0
/* 8071AF1C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8071AF20  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8071AF24  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8071AF28  39 61 00 90 */	addi r11, r1, 0x90
/* 8071AF2C  4B C4 72 A4 */	b _savegpr_26
/* 8071AF30  7C 7F 1B 78 */	mr r31, r3
/* 8071AF34  3C 60 80 72 */	lis r3, lit_3777@ha
/* 8071AF38  3B C3 C5 44 */	addi r30, r3, lit_3777@l
/* 8071AF3C  A8 7F 06 B4 */	lha r3, 0x6b4(r31)
/* 8071AF40  38 03 00 01 */	addi r0, r3, 1
/* 8071AF44  B0 1F 06 B4 */	sth r0, 0x6b4(r31)
/* 8071AF48  38 60 00 00 */	li r3, 0
/* 8071AF4C  38 00 00 04 */	li r0, 4
/* 8071AF50  7C 09 03 A6 */	mtctr r0
lbl_8071AF54:
/* 8071AF54  38 A3 06 FC */	addi r5, r3, 0x6fc
/* 8071AF58  7C 9F 2A AE */	lhax r4, r31, r5
/* 8071AF5C  2C 04 00 00 */	cmpwi r4, 0
/* 8071AF60  41 82 00 0C */	beq lbl_8071AF6C
/* 8071AF64  38 04 FF FF */	addi r0, r4, -1
/* 8071AF68  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8071AF6C:
/* 8071AF6C  38 63 00 02 */	addi r3, r3, 2
/* 8071AF70  42 00 FF E4 */	bdnz lbl_8071AF54
/* 8071AF74  A8 7F 07 04 */	lha r3, 0x704(r31)
/* 8071AF78  2C 03 00 00 */	cmpwi r3, 0
/* 8071AF7C  41 82 00 0C */	beq lbl_8071AF88
/* 8071AF80  38 03 FF FF */	addi r0, r3, -1
/* 8071AF84  B0 1F 07 04 */	sth r0, 0x704(r31)
lbl_8071AF88:
/* 8071AF88  88 7F 07 1A */	lbz r3, 0x71a(r31)
/* 8071AF8C  7C 60 07 75 */	extsb. r0, r3
/* 8071AF90  41 82 00 0C */	beq lbl_8071AF9C
/* 8071AF94  38 03 FF FF */	addi r0, r3, -1
/* 8071AF98  98 1F 07 1A */	stb r0, 0x71a(r31)
lbl_8071AF9C:
/* 8071AF9C  3C 60 80 72 */	lis r3, l_HIO@ha
/* 8071AFA0  38 63 CB 18 */	addi r3, r3, l_HIO@l
/* 8071AFA4  88 03 00 14 */	lbz r0, 0x14(r3)
/* 8071AFA8  28 00 00 00 */	cmplwi r0, 0
/* 8071AFAC  40 82 00 14 */	bne lbl_8071AFC0
/* 8071AFB0  7F E3 FB 78 */	mr r3, r31
/* 8071AFB4  4B FF F5 85 */	bl action__FP10e_mk_class
/* 8071AFB8  7F E3 FB 78 */	mr r3, r31
/* 8071AFBC  4B FF F2 71 */	bl demo_camera__FP10e_mk_class
lbl_8071AFC0:
/* 8071AFC0  88 1F 06 BE */	lbz r0, 0x6be(r31)
/* 8071AFC4  7C 00 07 75 */	extsb. r0, r0
/* 8071AFC8  41 82 02 80 */	beq lbl_8071B248
/* 8071AFCC  38 61 00 38 */	addi r3, r1, 0x38
/* 8071AFD0  38 9F 06 CC */	addi r4, r31, 0x6cc
/* 8071AFD4  38 BF 06 C0 */	addi r5, r31, 0x6c0
/* 8071AFD8  4B B4 BB 5C */	b __mi__4cXyzCFRC3Vec
/* 8071AFDC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8071AFE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8071AFE4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8071AFE8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8071AFEC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8071AFF0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8071AFF4  38 61 00 50 */	addi r3, r1, 0x50
/* 8071AFF8  4B C2 C1 40 */	b PSVECSquareMag
/* 8071AFFC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071B004  40 81 00 58 */	ble lbl_8071B05C
/* 8071B008  FC 00 08 34 */	frsqrte f0, f1
/* 8071B00C  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 8071B010  FC 44 00 32 */	fmul f2, f4, f0
/* 8071B014  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 8071B018  FC 00 00 32 */	fmul f0, f0, f0
/* 8071B01C  FC 01 00 32 */	fmul f0, f1, f0
/* 8071B020  FC 03 00 28 */	fsub f0, f3, f0
/* 8071B024  FC 02 00 32 */	fmul f0, f2, f0
/* 8071B028  FC 44 00 32 */	fmul f2, f4, f0
/* 8071B02C  FC 00 00 32 */	fmul f0, f0, f0
/* 8071B030  FC 01 00 32 */	fmul f0, f1, f0
/* 8071B034  FC 03 00 28 */	fsub f0, f3, f0
/* 8071B038  FC 02 00 32 */	fmul f0, f2, f0
/* 8071B03C  FC 44 00 32 */	fmul f2, f4, f0
/* 8071B040  FC 00 00 32 */	fmul f0, f0, f0
/* 8071B044  FC 01 00 32 */	fmul f0, f1, f0
/* 8071B048  FC 03 00 28 */	fsub f0, f3, f0
/* 8071B04C  FC 02 00 32 */	fmul f0, f2, f0
/* 8071B050  FF E1 00 32 */	fmul f31, f1, f0
/* 8071B054  FF E0 F8 18 */	frsp f31, f31
/* 8071B058  48 00 00 90 */	b lbl_8071B0E8
lbl_8071B05C:
/* 8071B05C  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 8071B060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071B064  40 80 00 10 */	bge lbl_8071B074
/* 8071B068  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071B06C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8071B070  48 00 00 78 */	b lbl_8071B0E8
lbl_8071B074:
/* 8071B074  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8071B078  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8071B07C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8071B080  3C 00 7F 80 */	lis r0, 0x7f80
/* 8071B084  7C 03 00 00 */	cmpw r3, r0
/* 8071B088  41 82 00 14 */	beq lbl_8071B09C
/* 8071B08C  40 80 00 40 */	bge lbl_8071B0CC
/* 8071B090  2C 03 00 00 */	cmpwi r3, 0
/* 8071B094  41 82 00 20 */	beq lbl_8071B0B4
/* 8071B098  48 00 00 34 */	b lbl_8071B0CC
lbl_8071B09C:
/* 8071B09C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071B0A0  41 82 00 0C */	beq lbl_8071B0AC
/* 8071B0A4  38 00 00 01 */	li r0, 1
/* 8071B0A8  48 00 00 28 */	b lbl_8071B0D0
lbl_8071B0AC:
/* 8071B0AC  38 00 00 02 */	li r0, 2
/* 8071B0B0  48 00 00 20 */	b lbl_8071B0D0
lbl_8071B0B4:
/* 8071B0B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071B0B8  41 82 00 0C */	beq lbl_8071B0C4
/* 8071B0BC  38 00 00 05 */	li r0, 5
/* 8071B0C0  48 00 00 10 */	b lbl_8071B0D0
lbl_8071B0C4:
/* 8071B0C4  38 00 00 03 */	li r0, 3
/* 8071B0C8  48 00 00 08 */	b lbl_8071B0D0
lbl_8071B0CC:
/* 8071B0CC  38 00 00 04 */	li r0, 4
lbl_8071B0D0:
/* 8071B0D0  2C 00 00 01 */	cmpwi r0, 1
/* 8071B0D4  40 82 00 10 */	bne lbl_8071B0E4
/* 8071B0D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071B0DC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 8071B0E0  48 00 00 08 */	b lbl_8071B0E8
lbl_8071B0E4:
/* 8071B0E4  FF E0 08 90 */	fmr f31, f1
lbl_8071B0E8:
/* 8071B0E8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8071B0EC  38 9F 06 CC */	addi r4, r31, 0x6cc
/* 8071B0F0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8071B0F4  4B B4 BA 40 */	b __mi__4cXyzCFRC3Vec
/* 8071B0F8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8071B0FC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8071B100  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8071B104  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8071B108  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8071B10C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8071B110  38 61 00 50 */	addi r3, r1, 0x50
/* 8071B114  4B C2 C0 24 */	b PSVECSquareMag
/* 8071B118  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B11C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071B120  40 81 00 58 */	ble lbl_8071B178
/* 8071B124  FC 00 08 34 */	frsqrte f0, f1
/* 8071B128  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 8071B12C  FC 44 00 32 */	fmul f2, f4, f0
/* 8071B130  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 8071B134  FC 00 00 32 */	fmul f0, f0, f0
/* 8071B138  FC 01 00 32 */	fmul f0, f1, f0
/* 8071B13C  FC 03 00 28 */	fsub f0, f3, f0
/* 8071B140  FC 02 00 32 */	fmul f0, f2, f0
/* 8071B144  FC 44 00 32 */	fmul f2, f4, f0
/* 8071B148  FC 00 00 32 */	fmul f0, f0, f0
/* 8071B14C  FC 01 00 32 */	fmul f0, f1, f0
/* 8071B150  FC 03 00 28 */	fsub f0, f3, f0
/* 8071B154  FC 02 00 32 */	fmul f0, f2, f0
/* 8071B158  FC 44 00 32 */	fmul f2, f4, f0
/* 8071B15C  FC 00 00 32 */	fmul f0, f0, f0
/* 8071B160  FC 01 00 32 */	fmul f0, f1, f0
/* 8071B164  FC 03 00 28 */	fsub f0, f3, f0
/* 8071B168  FC 02 00 32 */	fmul f0, f2, f0
/* 8071B16C  FC 21 00 32 */	fmul f1, f1, f0
/* 8071B170  FC 20 08 18 */	frsp f1, f1
/* 8071B174  48 00 00 88 */	b lbl_8071B1FC
lbl_8071B178:
/* 8071B178  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 8071B17C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071B180  40 80 00 10 */	bge lbl_8071B190
/* 8071B184  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071B188  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8071B18C  48 00 00 70 */	b lbl_8071B1FC
lbl_8071B190:
/* 8071B190  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8071B194  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8071B198  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8071B19C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8071B1A0  7C 03 00 00 */	cmpw r3, r0
/* 8071B1A4  41 82 00 14 */	beq lbl_8071B1B8
/* 8071B1A8  40 80 00 40 */	bge lbl_8071B1E8
/* 8071B1AC  2C 03 00 00 */	cmpwi r3, 0
/* 8071B1B0  41 82 00 20 */	beq lbl_8071B1D0
/* 8071B1B4  48 00 00 34 */	b lbl_8071B1E8
lbl_8071B1B8:
/* 8071B1B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071B1BC  41 82 00 0C */	beq lbl_8071B1C8
/* 8071B1C0  38 00 00 01 */	li r0, 1
/* 8071B1C4  48 00 00 28 */	b lbl_8071B1EC
lbl_8071B1C8:
/* 8071B1C8  38 00 00 02 */	li r0, 2
/* 8071B1CC  48 00 00 20 */	b lbl_8071B1EC
lbl_8071B1D0:
/* 8071B1D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8071B1D4  41 82 00 0C */	beq lbl_8071B1E0
/* 8071B1D8  38 00 00 05 */	li r0, 5
/* 8071B1DC  48 00 00 10 */	b lbl_8071B1EC
lbl_8071B1E0:
/* 8071B1E0  38 00 00 03 */	li r0, 3
/* 8071B1E4  48 00 00 08 */	b lbl_8071B1EC
lbl_8071B1E8:
/* 8071B1E8  38 00 00 04 */	li r0, 4
lbl_8071B1EC:
/* 8071B1EC  2C 00 00 01 */	cmpwi r0, 1
/* 8071B1F0  40 82 00 0C */	bne lbl_8071B1FC
/* 8071B1F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8071B1F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8071B1FC:
/* 8071B1FC  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8071B200  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8071B204  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8071B208  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8071B20C  40 81 00 08 */	ble lbl_8071B214
/* 8071B210  FC 60 00 90 */	fmr f3, f0
lbl_8071B214:
/* 8071B214  C0 5E 02 4C */	lfs f2, 0x24c(r30)
/* 8071B218  EC 01 F8 24 */	fdivs f0, f1, f31
/* 8071B21C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8071B220  FC 00 00 1E */	fctiwz f0, f0
/* 8071B224  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8071B228  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8071B22C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8071B230  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8071B234  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8071B238  7C 03 04 2E */	lfsx f0, r3, r0
/* 8071B23C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8071B240  D0 1F 06 D8 */	stfs f0, 0x6d8(r31)
/* 8071B244  48 00 00 0C */	b lbl_8071B250
lbl_8071B248:
/* 8071B248  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B24C  D0 1F 06 D8 */	stfs f0, 0x6d8(r31)
lbl_8071B250:
/* 8071B250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B258  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8071B25C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8071B260  C0 1F 06 D8 */	lfs f0, 0x6d8(r31)
/* 8071B264  EC 42 00 2A */	fadds f2, f2, f0
/* 8071B268  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8071B26C  4B C2 B6 7C */	b PSMTXTrans
/* 8071B270  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B274  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B278  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8071B27C  4B 8F 11 B8 */	b mDoMtx_YrotM__FPA4_fs
/* 8071B280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B284  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B288  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8071B28C  4B 8F 11 10 */	b mDoMtx_XrotM__FPA4_fs
/* 8071B290  3C 60 80 72 */	lis r3, l_HIO@ha
/* 8071B294  3B 83 CB 18 */	addi r28, r3, l_HIO@l
/* 8071B298  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8071B29C  FC 40 08 90 */	fmr f2, f1
/* 8071B2A0  FC 60 08 90 */	fmr f3, f1
/* 8071B2A4  4B 8F 1B 94 */	b scaleM__14mDoMtx_stack_cFfff
/* 8071B2A8  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8071B2AC  83 A3 00 04 */	lwz r29, 4(r3)
/* 8071B2B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B2B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B2B8  38 9D 00 24 */	addi r4, r29, 0x24
/* 8071B2BC  4B C2 B1 F4 */	b PSMTXCopy
/* 8071B2C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8071B2C4  7C 03 07 74 */	extsb r3, r0
/* 8071B2C8  4B 91 1D A4 */	b dComIfGp_getReverb__Fi
/* 8071B2CC  7C 65 1B 78 */	mr r5, r3
/* 8071B2D0  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8071B2D4  38 80 00 00 */	li r4, 0
/* 8071B2D8  4B 8F 5D D8 */	b play__16mDoExt_McaMorfSOFUlSc
/* 8071B2DC  A8 7F 05 D4 */	lha r3, 0x5d4(r31)
/* 8071B2E0  2C 03 00 00 */	cmpwi r3, 0
/* 8071B2E4  40 82 00 28 */	bne lbl_8071B30C
/* 8071B2E8  C0 3E 02 50 */	lfs f1, 0x250(r30)
/* 8071B2EC  4B B4 C6 68 */	b cM_rndF__Ff
/* 8071B2F0  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 8071B2F4  EC 00 08 2A */	fadds f0, f0, f1
/* 8071B2F8  FC 00 00 1E */	fctiwz f0, f0
/* 8071B2FC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8071B300  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8071B304  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 8071B308  48 00 00 4C */	b lbl_8071B354
lbl_8071B30C:
/* 8071B30C  38 03 FF FF */	addi r0, r3, -1
/* 8071B310  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 8071B314  A8 1F 05 D4 */	lha r0, 0x5d4(r31)
/* 8071B318  2C 00 00 0C */	cmpwi r0, 0xc
/* 8071B31C  41 81 00 30 */	bgt lbl_8071B34C
/* 8071B320  C0 5E 02 54 */	lfs f2, 0x254(r30)
/* 8071B324  C8 3E 00 B0 */	lfd f1, 0xb0(r30)
/* 8071B328  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8071B32C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8071B330  3C 00 43 30 */	lis r0, 0x4330
/* 8071B334  90 01 00 60 */	stw r0, 0x60(r1)
/* 8071B338  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8071B33C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8071B340  EC 02 00 28 */	fsubs f0, f2, f0
/* 8071B344  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 8071B348  48 00 00 0C */	b lbl_8071B354
lbl_8071B34C:
/* 8071B34C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B350  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
lbl_8071B354:
/* 8071B354  88 1F 06 0E */	lbz r0, 0x60e(r31)
/* 8071B358  7C 00 07 75 */	extsb. r0, r0
/* 8071B35C  41 82 00 1C */	beq lbl_8071B378
/* 8071B360  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 8071B364  C0 1F 05 D8 */	lfs f0, 0x5d8(r31)
/* 8071B368  EC 01 00 2A */	fadds f0, f1, f0
/* 8071B36C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8071B370  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8071B374  48 00 00 10 */	b lbl_8071B384
lbl_8071B378:
/* 8071B378  C0 1F 05 D8 */	lfs f0, 0x5d8(r31)
/* 8071B37C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8071B380  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_8071B384:
/* 8071B384  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8071B388  4B 8F 5E 64 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8071B38C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8071B390  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071B394  38 63 01 50 */	addi r3, r3, 0x150
/* 8071B398  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8071B39C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8071B3A0  80 84 00 00 */	lwz r4, 0(r4)
/* 8071B3A4  4B C2 B1 0C */	b PSMTXCopy
/* 8071B3A8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B3AC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8071B3B0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8071B3B4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8071B3B8  38 61 00 50 */	addi r3, r1, 0x50
/* 8071B3BC  38 9F 05 38 */	addi r4, r31, 0x538
/* 8071B3C0  4B B5 5B 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 8071B3C4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8071B3C8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8071B3CC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8071B3D0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8071B3D4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8071B3D8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8071B3DC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8071B3E0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8071B3E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8071B3E8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8071B3EC  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 8071B3F0  7C 00 07 75 */	extsb. r0, r0
/* 8071B3F4  41 82 02 60 */	beq lbl_8071B654
/* 8071B3F8  88 1F 05 E0 */	lbz r0, 0x5e0(r31)
/* 8071B3FC  7C 00 07 75 */	extsb. r0, r0
/* 8071B400  40 82 00 78 */	bne lbl_8071B478
/* 8071B404  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8071B408  80 63 00 04 */	lwz r3, 4(r3)
/* 8071B40C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8071B410  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071B414  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8071B418  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8071B41C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8071B420  4B C2 B0 90 */	b PSMTXCopy
/* 8071B424  3C 60 80 72 */	lis r3, l_HIO@ha
/* 8071B428  38 63 CB 18 */	addi r3, r3, l_HIO@l
/* 8071B42C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8071B430  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8071B434  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 8071B438  4B 8F 19 64 */	b transM__14mDoMtx_stack_cFfff
/* 8071B43C  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8071B440  80 83 00 04 */	lwz r4, 4(r3)
/* 8071B444  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B448  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B44C  38 84 00 24 */	addi r4, r4, 0x24
/* 8071B450  4B C2 B0 60 */	b PSMTXCopy
/* 8071B454  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B458  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B45C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8071B460  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 8071B464  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8071B468  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 8071B46C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8071B470  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 8071B474  48 00 01 C4 */	b lbl_8071B638
lbl_8071B478:
/* 8071B478  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8071B47C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8071B480  80 63 00 00 */	lwz r3, 0(r3)
/* 8071B484  A8 9F 05 F2 */	lha r4, 0x5f2(r31)
/* 8071B488  4B 8F 0F 54 */	b mDoMtx_YrotS__FPA4_fs
/* 8071B48C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B490  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8071B494  C0 1F 05 FC */	lfs f0, 0x5fc(r31)
/* 8071B498  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8071B49C  C0 1F 06 00 */	lfs f0, 0x600(r31)
/* 8071B4A0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8071B4A4  38 61 00 50 */	addi r3, r1, 0x50
/* 8071B4A8  38 81 00 44 */	addi r4, r1, 0x44
/* 8071B4AC  4B B5 5A 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071B4B0  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 8071B4B4  38 81 00 44 */	addi r4, r1, 0x44
/* 8071B4B8  7C 65 1B 78 */	mr r5, r3
/* 8071B4BC  4B C2 BB D4 */	b PSVECAdd
/* 8071B4C0  C0 1F 05 FC */	lfs f0, 0x5fc(r31)
/* 8071B4C4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8071B4C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8071B4CC  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 8071B4D0  C0 3F 05 E8 */	lfs f1, 0x5e8(r31)
/* 8071B4D4  3C 60 80 72 */	lis r3, STAGE_CENTER_POS@ha
/* 8071B4D8  38 63 CA FC */	addi r3, r3, STAGE_CENTER_POS@l
/* 8071B4DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8071B4E0  EC 02 00 2A */	fadds f0, f2, f0
/* 8071B4E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071B4E8  4C 40 13 82 */	cror 2, 0, 2
/* 8071B4EC  40 82 00 48 */	bne lbl_8071B534
/* 8071B4F0  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 8071B4F4  C0 3F 05 FC */	lfs f1, 0x5fc(r31)
/* 8071B4F8  C0 1E 02 58 */	lfs f0, 0x258(r30)
/* 8071B4FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071B500  40 80 00 1C */	bge lbl_8071B51C
/* 8071B504  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 8071B508  EC 01 00 32 */	fmuls f0, f1, f0
/* 8071B50C  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
/* 8071B510  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 8071B514  D0 1F 06 04 */	stfs f0, 0x604(r31)
/* 8071B518  48 00 00 0C */	b lbl_8071B524
lbl_8071B51C:
/* 8071B51C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B520  D0 1F 05 FC */	stfs f0, 0x5fc(r31)
lbl_8071B524:
/* 8071B524  C0 3F 06 00 */	lfs f1, 0x600(r31)
/* 8071B528  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8071B52C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8071B530  D0 1F 06 00 */	stfs f0, 0x600(r31)
lbl_8071B534:
/* 8071B534  A8 9F 06 B4 */	lha r4, 0x6b4(r31)
/* 8071B538  1C 04 0B B8 */	mulli r0, r4, 0xbb8
/* 8071B53C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8071B540  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8071B544  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8071B548  7C 03 04 2E */	lfsx f0, r3, r0
/* 8071B54C  C0 3F 06 04 */	lfs f1, 0x604(r31)
/* 8071B550  EC 01 00 32 */	fmuls f0, f1, f0
/* 8071B554  FC 00 00 1E */	fctiwz f0, f0
/* 8071B558  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8071B55C  83 61 00 64 */	lwz r27, 0x64(r1)
/* 8071B560  1C 04 0F A0 */	mulli r0, r4, 0xfa0
/* 8071B564  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8071B568  7C 03 04 2E */	lfsx f0, r3, r0
/* 8071B56C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8071B570  FC 00 00 1E */	fctiwz f0, f0
/* 8071B574  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8071B578  83 41 00 6C */	lwz r26, 0x6c(r1)
/* 8071B57C  38 7F 06 04 */	addi r3, r31, 0x604
/* 8071B580  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8071B584  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8071B588  4B B5 44 F8 */	b cLib_addCalc0__FPfff
/* 8071B58C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B590  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B594  C0 3F 05 E4 */	lfs f1, 0x5e4(r31)
/* 8071B598  C0 5F 05 E8 */	lfs f2, 0x5e8(r31)
/* 8071B59C  C0 7F 05 EC */	lfs f3, 0x5ec(r31)
/* 8071B5A0  4B C2 B3 48 */	b PSMTXTrans
/* 8071B5A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B5A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B5AC  A8 9F 05 F2 */	lha r4, 0x5f2(r31)
/* 8071B5B0  4B 8F 0E 84 */	b mDoMtx_YrotM__FPA4_fs
/* 8071B5B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B5B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B5BC  A8 1F 05 F0 */	lha r0, 0x5f0(r31)
/* 8071B5C0  7C 00 DA 14 */	add r0, r0, r27
/* 8071B5C4  7C 04 07 34 */	extsh r4, r0
/* 8071B5C8  4B 8F 0D D4 */	b mDoMtx_XrotM__FPA4_fs
/* 8071B5CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B5D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B5D4  7F 44 D3 78 */	mr r4, r26
/* 8071B5D8  4B 8F 0E F4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8071B5DC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8071B5E0  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 8071B5E4  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 8071B5E8  4B 8F 17 B4 */	b transM__14mDoMtx_stack_cFfff
/* 8071B5EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B5F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B5F4  38 80 E0 C0 */	li r4, -8000
/* 8071B5F8  4B 8F 0D A4 */	b mDoMtx_XrotM__FPA4_fs
/* 8071B5FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B600  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B604  38 80 C0 00 */	li r4, -16384
/* 8071B608  4B 8F 0E C4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8071B60C  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8071B610  80 83 00 04 */	lwz r4, 4(r3)
/* 8071B614  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B618  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B61C  38 84 00 24 */	addi r4, r4, 0x24
/* 8071B620  4B C2 AE 90 */	b PSMTXCopy
/* 8071B624  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8071B628  38 80 00 00 */	li r4, 0
/* 8071B62C  38 A0 00 02 */	li r5, 2
/* 8071B630  38 C0 04 00 */	li r6, 0x400
/* 8071B634  4B B5 4F D4 */	b cLib_addCalcAngleS2__FPssss
lbl_8071B638:
/* 8071B638  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8071B63C  38 80 00 00 */	li r4, 0
/* 8071B640  38 A0 00 00 */	li r5, 0
/* 8071B644  38 C0 00 00 */	li r6, 0
/* 8071B648  4B 8F 4F 80 */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 8071B64C  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8071B650  4B 8F 50 5C */	b modelCalc__14mDoExt_McaMorfFv
lbl_8071B654:
/* 8071B654  88 1F 06 0D */	lbz r0, 0x60d(r31)
/* 8071B658  7C 00 07 75 */	extsb. r0, r0
/* 8071B65C  41 82 00 90 */	beq lbl_8071B6EC
/* 8071B660  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8071B664  80 63 00 04 */	lwz r3, 4(r3)
/* 8071B668  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8071B66C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071B670  38 63 04 50 */	addi r3, r3, 0x450
/* 8071B674  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8071B678  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8071B67C  4B C2 AE 34 */	b PSMTXCopy
/* 8071B680  3C 60 80 72 */	lis r3, l_HIO@ha
/* 8071B684  38 63 CB 18 */	addi r3, r3, l_HIO@l
/* 8071B688  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8071B68C  FC 40 08 90 */	fmr f2, f1
/* 8071B690  FC 60 08 90 */	fmr f3, f1
/* 8071B694  4B 8F 17 A4 */	b scaleM__14mDoMtx_stack_cFfff
/* 8071B698  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8071B69C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8071B6A0  C0 7E 01 38 */	lfs f3, 0x138(r30)
/* 8071B6A4  4B 8F 16 F8 */	b transM__14mDoMtx_stack_cFfff
/* 8071B6A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B6AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B6B0  38 80 9A D4 */	li r4, -25900
/* 8071B6B4  4B 8F 0D 80 */	b mDoMtx_YrotM__FPA4_fs
/* 8071B6B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B6BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B6C0  38 80 DD E7 */	li r4, -8729
/* 8071B6C4  4B 8F 0C D8 */	b mDoMtx_XrotM__FPA4_fs
/* 8071B6C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B6CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B6D0  38 80 38 D8 */	li r4, 0x38d8
/* 8071B6D4  4B 8F 0D F8 */	b mDoMtx_ZrotM__FPA4_fs
/* 8071B6D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071B6DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071B6E0  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 8071B6E4  38 84 00 24 */	addi r4, r4, 0x24
/* 8071B6E8  4B C2 AD C8 */	b PSMTXCopy
lbl_8071B6EC:
/* 8071B6EC  88 1F 07 07 */	lbz r0, 0x707(r31)
/* 8071B6F0  2C 00 00 07 */	cmpwi r0, 7
/* 8071B6F4  40 82 00 60 */	bne lbl_8071B754
/* 8071B6F8  38 A0 00 00 */	li r5, 0
/* 8071B6FC  A8 1F 0C 32 */	lha r0, 0xc32(r31)
/* 8071B700  2C 00 00 00 */	cmpwi r0, 0
/* 8071B704  41 82 00 08 */	beq lbl_8071B70C
/* 8071B708  38 A0 00 01 */	li r5, 1
lbl_8071B70C:
/* 8071B70C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8071B710  7C 07 07 74 */	extsb r7, r0
/* 8071B714  38 00 00 00 */	li r0, 0
/* 8071B718  90 01 00 08 */	stw r0, 8(r1)
/* 8071B71C  38 60 02 ED */	li r3, 0x2ed
/* 8071B720  28 1F 00 00 */	cmplwi r31, 0
/* 8071B724  41 82 00 0C */	beq lbl_8071B730
/* 8071B728  80 9F 00 04 */	lwz r4, 4(r31)
/* 8071B72C  48 00 00 08 */	b lbl_8071B734
lbl_8071B730:
/* 8071B730  38 80 FF FF */	li r4, -1
lbl_8071B734:
/* 8071B734  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8071B738  39 00 00 00 */	li r8, 0
/* 8071B73C  39 20 00 00 */	li r9, 0
/* 8071B740  39 40 FF FF */	li r10, -1
/* 8071B744  4B 8F E7 AC */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8071B748  90 7F 07 08 */	stw r3, 0x708(r31)
/* 8071B74C  38 00 00 00 */	li r0, 0
/* 8071B750  98 1F 07 07 */	stb r0, 0x707(r31)
lbl_8071B754:
/* 8071B754  88 1F 07 07 */	lbz r0, 0x707(r31)
/* 8071B758  2C 00 00 01 */	cmpwi r0, 1
/* 8071B75C  40 82 00 88 */	bne lbl_8071B7E4
/* 8071B760  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 8071B764  90 01 00 28 */	stw r0, 0x28(r1)
/* 8071B768  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8071B76C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8071B770  38 81 00 28 */	addi r4, r1, 0x28
/* 8071B774  4B 8F E0 84 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8071B778  7C 7B 1B 79 */	or. r27, r3, r3
/* 8071B77C  41 82 00 68 */	beq lbl_8071B7E4
/* 8071B780  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8071B784  80 63 00 04 */	lwz r3, 4(r3)
/* 8071B788  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8071B78C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071B790  38 63 04 50 */	addi r3, r3, 0x450
/* 8071B794  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8071B798  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8071B79C  80 84 00 00 */	lwz r4, 0(r4)
/* 8071B7A0  4B C2 AD 10 */	b PSMTXCopy
/* 8071B7A4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B7A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8071B7AC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8071B7B0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8071B7B4  38 61 00 50 */	addi r3, r1, 0x50
/* 8071B7B8  38 81 00 44 */	addi r4, r1, 0x44
/* 8071B7BC  4B B5 57 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071B7C0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8071B7C4  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 8071B7C8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8071B7CC  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 8071B7D0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8071B7D4  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 8071B7D8  38 00 00 00 */	li r0, 0
/* 8071B7DC  98 1B 09 B4 */	stb r0, 0x9b4(r27)
/* 8071B7E0  98 1F 07 07 */	stb r0, 0x707(r31)
lbl_8071B7E4:
/* 8071B7E4  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8071B7E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071B7EC  38 63 04 80 */	addi r3, r3, 0x480
/* 8071B7F0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8071B7F4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8071B7F8  80 84 00 00 */	lwz r4, 0(r4)
/* 8071B7FC  4B C2 AC B4 */	b PSMTXCopy
/* 8071B800  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 8071B804  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8071B808  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B80C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8071B810  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8071B814  38 61 00 50 */	addi r3, r1, 0x50
/* 8071B818  38 81 00 44 */	addi r4, r1, 0x44
/* 8071B81C  4B B5 56 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071B820  A8 1F 06 B6 */	lha r0, 0x6b6(r31)
/* 8071B824  2C 00 00 09 */	cmpwi r0, 9
/* 8071B828  41 80 00 44 */	blt lbl_8071B86C
/* 8071B82C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8071B830  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8071B834  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8071B838  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8071B83C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8071B840  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8071B844  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8071B848  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8071B84C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8071B850  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8071B854  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8071B858  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8071B85C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8071B860  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8071B864  EC 01 00 2A */	fadds f0, f1, f0
/* 8071B868  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_8071B86C:
/* 8071B86C  A8 1F 07 04 */	lha r0, 0x704(r31)
/* 8071B870  2C 00 00 00 */	cmpwi r0, 0
/* 8071B874  41 82 00 14 */	beq lbl_8071B888
/* 8071B878  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8071B87C  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 8071B880  EC 01 00 2A */	fadds f0, f1, f0
/* 8071B884  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_8071B888:
/* 8071B888  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 8071B88C  38 81 00 44 */	addi r4, r1, 0x44
/* 8071B890  4B B5 3D B8 */	b SetC__8cM3dGSphFRC4cXyz
/* 8071B894  38 7F 0B F4 */	addi r3, r31, 0xbf4
/* 8071B898  C0 3E 02 50 */	lfs f1, 0x250(r30)
/* 8071B89C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8071B8A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8071B8A4  4B B5 3E 64 */	b SetR__8cM3dGSphFf
/* 8071B8A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071B8AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071B8B0  3B 63 23 3C */	addi r27, r3, 0x233c
/* 8071B8B4  7F 63 DB 78 */	mr r3, r27
/* 8071B8B8  38 9F 0A D0 */	addi r4, r31, 0xad0
/* 8071B8BC  4B B4 92 EC */	b Set__4cCcSFP8cCcD_Obj
/* 8071B8C0  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8071B8C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8071B8C8  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8071B8CC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8071B8D0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8071B8D4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8071B8D8  38 61 00 50 */	addi r3, r1, 0x50
/* 8071B8DC  38 81 00 44 */	addi r4, r1, 0x44
/* 8071B8E0  4B B5 56 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 8071B8E4  A8 1F 07 04 */	lha r0, 0x704(r31)
/* 8071B8E8  2C 00 00 00 */	cmpwi r0, 0
/* 8071B8EC  41 82 00 14 */	beq lbl_8071B900
/* 8071B8F0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8071B8F4  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 8071B8F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8071B8FC  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_8071B900:
/* 8071B900  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8071B904  38 81 00 44 */	addi r4, r1, 0x44
/* 8071B908  4B B5 3D 40 */	b SetC__8cM3dGSphFRC4cXyz
/* 8071B90C  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8071B910  C0 3E 02 50 */	lfs f1, 0x250(r30)
/* 8071B914  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8071B918  EC 21 00 32 */	fmuls f1, f1, f0
/* 8071B91C  4B B5 3D EC */	b SetR__8cM3dGSphFf
/* 8071B920  7F 63 DB 78 */	mr r3, r27
/* 8071B924  38 9F 09 98 */	addi r4, r31, 0x998
/* 8071B928  4B B4 92 80 */	b Set__4cCcSFP8cCcD_Obj
/* 8071B92C  88 7F 07 06 */	lbz r3, 0x706(r31)
/* 8071B930  7C 60 07 75 */	extsb. r0, r3
/* 8071B934  41 82 00 64 */	beq lbl_8071B998
/* 8071B938  38 03 FF FF */	addi r0, r3, -1
/* 8071B93C  98 1F 07 06 */	stb r0, 0x706(r31)
/* 8071B940  88 1F 07 06 */	lbz r0, 0x706(r31)
/* 8071B944  7C 00 07 75 */	extsb. r0, r0
/* 8071B948  40 82 00 50 */	bne lbl_8071B998
/* 8071B94C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071B950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071B954  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8071B958  38 80 00 00 */	li r4, 0
/* 8071B95C  90 81 00 08 */	stw r4, 8(r1)
/* 8071B960  38 00 FF FF */	li r0, -1
/* 8071B964  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071B968  90 81 00 10 */	stw r4, 0x10(r1)
/* 8071B96C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071B970  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071B974  38 80 00 00 */	li r4, 0
/* 8071B978  38 A0 01 5E */	li r5, 0x15e
/* 8071B97C  38 DF 05 38 */	addi r6, r31, 0x538
/* 8071B980  38 E0 00 00 */	li r7, 0
/* 8071B984  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 8071B988  39 20 00 00 */	li r9, 0
/* 8071B98C  39 40 00 FF */	li r10, 0xff
/* 8071B990  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071B994  4B 93 10 FC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8071B998:
/* 8071B998  7F E3 FB 78 */	mr r3, r31
/* 8071B99C  4B FF EE 6D */	bl anm_se_set__FP10e_mk_class
/* 8071B9A0  38 60 00 01 */	li r3, 1
/* 8071B9A4  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8071B9A8  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8071B9AC  39 61 00 90 */	addi r11, r1, 0x90
/* 8071B9B0  4B C4 68 6C */	b _restgpr_26
/* 8071B9B4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8071B9B8  7C 08 03 A6 */	mtlr r0
/* 8071B9BC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8071B9C0  4E 80 00 20 */	blr 
