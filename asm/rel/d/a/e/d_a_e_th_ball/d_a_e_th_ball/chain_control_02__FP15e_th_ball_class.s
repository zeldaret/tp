lbl_807B50B0:
/* 807B50B0  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 807B50B4  7C 08 02 A6 */	mflr r0
/* 807B50B8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 807B50BC  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 807B50C0  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 807B50C4  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 807B50C8  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 807B50CC  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 807B50D0  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 807B50D4  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 807B50D8  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 807B50DC  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 807B50E0  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 807B50E4  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 807B50E8  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 807B50EC  39 61 00 90 */	addi r11, r1, 0x90
/* 807B50F0  4B BA D0 D0 */	b _savegpr_22
/* 807B50F4  7C 78 1B 78 */	mr r24, r3
/* 807B50F8  3C 60 80 7B */	lis r3, lit_3746@ha
/* 807B50FC  3B C3 7E B8 */	addi r30, r3, lit_3746@l
/* 807B5100  C0 18 0D D8 */	lfs f0, 0xdd8(r24)
/* 807B5104  D0 18 09 70 */	stfs f0, 0x970(r24)
/* 807B5108  C0 18 0D DC */	lfs f0, 0xddc(r24)
/* 807B510C  D0 18 09 74 */	stfs f0, 0x974(r24)
/* 807B5110  C0 18 0D E0 */	lfs f0, 0xde0(r24)
/* 807B5114  D0 18 09 78 */	stfs f0, 0x978(r24)
/* 807B5118  3B 78 09 64 */	addi r27, r24, 0x964
/* 807B511C  3B 58 0C F4 */	addi r26, r24, 0xcf4
/* 807B5120  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807B5124  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 807B5128  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 807B512C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 807B5130  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807B5134  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807B5138  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807B513C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807B5140  3B 20 00 00 */	li r25, 0
/* 807B5144  3C 60 80 7C */	lis r3, master@ha
/* 807B5148  38 63 80 E0 */	addi r3, r3, master@l
/* 807B514C  80 63 00 00 */	lwz r3, 0(r3)
/* 807B5150  28 03 00 00 */	cmplwi r3, 0
/* 807B5154  41 82 00 14 */	beq lbl_807B5168
/* 807B5158  88 03 0D 8E */	lbz r0, 0xd8e(r3)
/* 807B515C  7C 00 07 75 */	extsb. r0, r0
/* 807B5160  41 82 00 08 */	beq lbl_807B5168
/* 807B5164  3B 20 00 01 */	li r25, 1
lbl_807B5168:
/* 807B5168  3B A0 00 30 */	li r29, 0x30
/* 807B516C  3E E0 FF FD */	lis r23, 0xFFFD /* 0xFFFD5D00@ha */
/* 807B5170  C3 FE 00 04 */	lfs f31, 4(r30)
/* 807B5174  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B5178  3B E3 07 68 */	addi r31, r3, calc_mtx@l
/* 807B517C  C3 BE 00 48 */	lfs f29, 0x48(r30)
/* 807B5180  C3 DE 00 4C */	lfs f30, 0x4c(r30)
/* 807B5184  3A F7 5D 00 */	addi r23, r23, 0x5D00 /* 0xFFFD5D00@l */
lbl_807B5188:
/* 807B5188  7F 20 07 75 */	extsb. r0, r25
/* 807B518C  41 82 00 50 */	beq lbl_807B51DC
/* 807B5190  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807B5194  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807B5198  80 63 00 00 */	lwz r3, 0(r3)
/* 807B519C  A8 98 04 DE */	lha r4, 0x4de(r24)
/* 807B51A0  4B 85 72 3C */	b mDoMtx_YrotS__FPA4_fs
/* 807B51A4  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807B51A8  56 E0 04 38 */	rlwinm r0, r23, 0, 0x10, 0x1c
/* 807B51AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807B51B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807B51B4  7C 03 04 2E */	lfsx f0, r3, r0
/* 807B51B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B51BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807B51C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B51C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807B51C8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 807B51CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807B51D0  38 61 00 24 */	addi r3, r1, 0x24
/* 807B51D4  38 81 00 30 */	addi r4, r1, 0x30
/* 807B51D8  4B AB BD 14 */	b MtxPosition__FP4cXyzP4cXyz
lbl_807B51DC:
/* 807B51DC  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 807B51E0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 807B51E4  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 807B51E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B51EC  EF 82 00 2A */	fadds f28, f2, f0
/* 807B51F0  C0 3B 00 04 */	lfs f1, 4(r27)
/* 807B51F4  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 807B51F8  EF 61 00 28 */	fsubs f27, f1, f0
/* 807B51FC  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 807B5200  C0 3B 00 08 */	lfs f1, 8(r27)
/* 807B5204  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 807B5208  EC 01 00 28 */	fsubs f0, f1, f0
/* 807B520C  EF 42 00 2A */	fadds f26, f2, f0
/* 807B5210  FC 20 E0 90 */	fmr f1, f28
/* 807B5214  FC 40 D0 90 */	fmr f2, f26
/* 807B5218  4B AB 24 5C */	b cM_atan2s__Fff
/* 807B521C  7C 7C 07 34 */	extsh r28, r3
/* 807B5220  EC 3C 07 32 */	fmuls f1, f28, f28
/* 807B5224  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 807B5228  EC 41 00 2A */	fadds f2, f1, f0
/* 807B522C  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 807B5230  40 81 00 0C */	ble lbl_807B523C
/* 807B5234  FC 00 10 34 */	frsqrte f0, f2
/* 807B5238  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807B523C:
/* 807B523C  FC 20 D8 90 */	fmr f1, f27
/* 807B5240  4B AB 24 34 */	b cM_atan2s__Fff
/* 807B5244  7C 03 00 D0 */	neg r0, r3
/* 807B5248  7C 16 07 34 */	extsh r22, r0
/* 807B524C  80 7F 00 00 */	lwz r3, 0(r31)
/* 807B5250  7F 84 E3 78 */	mr r4, r28
/* 807B5254  4B 85 71 88 */	b mDoMtx_YrotS__FPA4_fs
/* 807B5258  80 7F 00 00 */	lwz r3, 0(r31)
/* 807B525C  7E C4 B3 78 */	mr r4, r22
/* 807B5260  4B 85 71 3C */	b mDoMtx_XrotM__FPA4_fs
/* 807B5264  A8 78 0D D0 */	lha r3, 0xdd0(r24)
/* 807B5268  38 1D 00 01 */	addi r0, r29, 1
/* 807B526C  7C 03 00 00 */	cmpw r3, r0
/* 807B5270  40 82 00 0C */	bne lbl_807B527C
/* 807B5274  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807B5278  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_807B527C:
/* 807B527C  38 61 00 54 */	addi r3, r1, 0x54
/* 807B5280  38 81 00 48 */	addi r4, r1, 0x48
/* 807B5284  4B AB BC 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B5288  C0 1B 00 00 */	lfs f0, 0(r27)
/* 807B528C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807B5290  C0 1B 00 04 */	lfs f0, 4(r27)
/* 807B5294  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807B5298  C0 1B 00 08 */	lfs f0, 8(r27)
/* 807B529C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807B52A0  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 807B52A4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807B52A8  EC 01 00 2A */	fadds f0, f1, f0
/* 807B52AC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 807B52B0  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 807B52B4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807B52B8  EC 01 00 2A */	fadds f0, f1, f0
/* 807B52BC  D0 1B 00 04 */	stfs f0, 4(r27)
/* 807B52C0  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 807B52C4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807B52C8  EC 01 00 2A */	fadds f0, f1, f0
/* 807B52CC  D0 1B 00 08 */	stfs f0, 8(r27)
/* 807B52D0  7C 16 00 D0 */	neg r0, r22
/* 807B52D4  B0 1A 00 00 */	sth r0, 0(r26)
/* 807B52D8  38 61 00 18 */	addi r3, r1, 0x18
/* 807B52DC  7F 64 DB 78 */	mr r4, r27
/* 807B52E0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 807B52E4  4B AB 18 50 */	b __mi__4cXyzCFRC3Vec
/* 807B52E8  38 61 00 0C */	addi r3, r1, 0xc
/* 807B52EC  38 81 00 18 */	addi r4, r1, 0x18
/* 807B52F0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807B52F4  4B AB 18 90 */	b __ml__4cXyzCFf
/* 807B52F8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807B52FC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807B5300  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807B5304  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807B5308  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807B530C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807B5310  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 807B5314  38 61 00 3C */	addi r3, r1, 0x3c
/* 807B5318  4B B9 1E 20 */	b PSVECSquareMag
/* 807B531C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807B5320  40 81 00 58 */	ble lbl_807B5378
/* 807B5324  FC 00 08 34 */	frsqrte f0, f1
/* 807B5328  C8 9E 00 30 */	lfd f4, 0x30(r30)
/* 807B532C  FC 44 00 32 */	fmul f2, f4, f0
/* 807B5330  C8 7E 00 38 */	lfd f3, 0x38(r30)
/* 807B5334  FC 00 00 32 */	fmul f0, f0, f0
/* 807B5338  FC 01 00 32 */	fmul f0, f1, f0
/* 807B533C  FC 03 00 28 */	fsub f0, f3, f0
/* 807B5340  FC 02 00 32 */	fmul f0, f2, f0
/* 807B5344  FC 44 00 32 */	fmul f2, f4, f0
/* 807B5348  FC 00 00 32 */	fmul f0, f0, f0
/* 807B534C  FC 01 00 32 */	fmul f0, f1, f0
/* 807B5350  FC 03 00 28 */	fsub f0, f3, f0
/* 807B5354  FC 02 00 32 */	fmul f0, f2, f0
/* 807B5358  FC 44 00 32 */	fmul f2, f4, f0
/* 807B535C  FC 00 00 32 */	fmul f0, f0, f0
/* 807B5360  FC 01 00 32 */	fmul f0, f1, f0
/* 807B5364  FC 03 00 28 */	fsub f0, f3, f0
/* 807B5368  FC 02 00 32 */	fmul f0, f2, f0
/* 807B536C  FC 21 00 32 */	fmul f1, f1, f0
/* 807B5370  FC 20 08 18 */	frsp f1, f1
/* 807B5374  48 00 00 88 */	b lbl_807B53FC
lbl_807B5378:
/* 807B5378  C8 1E 00 40 */	lfd f0, 0x40(r30)
/* 807B537C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B5380  40 80 00 10 */	bge lbl_807B5390
/* 807B5384  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807B5388  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807B538C  48 00 00 70 */	b lbl_807B53FC
lbl_807B5390:
/* 807B5390  D0 21 00 08 */	stfs f1, 8(r1)
/* 807B5394  80 81 00 08 */	lwz r4, 8(r1)
/* 807B5398  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807B539C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807B53A0  7C 03 00 00 */	cmpw r3, r0
/* 807B53A4  41 82 00 14 */	beq lbl_807B53B8
/* 807B53A8  40 80 00 40 */	bge lbl_807B53E8
/* 807B53AC  2C 03 00 00 */	cmpwi r3, 0
/* 807B53B0  41 82 00 20 */	beq lbl_807B53D0
/* 807B53B4  48 00 00 34 */	b lbl_807B53E8
lbl_807B53B8:
/* 807B53B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B53BC  41 82 00 0C */	beq lbl_807B53C8
/* 807B53C0  38 00 00 01 */	li r0, 1
/* 807B53C4  48 00 00 28 */	b lbl_807B53EC
lbl_807B53C8:
/* 807B53C8  38 00 00 02 */	li r0, 2
/* 807B53CC  48 00 00 20 */	b lbl_807B53EC
lbl_807B53D0:
/* 807B53D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B53D4  41 82 00 0C */	beq lbl_807B53E0
/* 807B53D8  38 00 00 05 */	li r0, 5
/* 807B53DC  48 00 00 10 */	b lbl_807B53EC
lbl_807B53E0:
/* 807B53E0  38 00 00 03 */	li r0, 3
/* 807B53E4  48 00 00 08 */	b lbl_807B53EC
lbl_807B53E8:
/* 807B53E8  38 00 00 04 */	li r0, 4
lbl_807B53EC:
/* 807B53EC  2C 00 00 01 */	cmpwi r0, 1
/* 807B53F0  40 82 00 0C */	bne lbl_807B53FC
/* 807B53F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807B53F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807B53FC:
/* 807B53FC  EC 3D 00 72 */	fmuls f1, f29, f1
/* 807B5400  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 807B5404  41 81 00 10 */	bgt lbl_807B5414
/* 807B5408  A8 18 06 4E */	lha r0, 0x64e(r24)
/* 807B540C  2C 00 00 00 */	cmpwi r0, 0
/* 807B5410  41 82 00 14 */	beq lbl_807B5424
lbl_807B5414:
/* 807B5414  3C 7C 00 01 */	addis r3, r28, 1
/* 807B5418  38 03 80 00 */	addi r0, r3, -32768
/* 807B541C  B0 1A 00 02 */	sth r0, 2(r26)
/* 807B5420  48 00 00 38 */	b lbl_807B5458
lbl_807B5424:
/* 807B5424  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 807B5428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B542C  40 80 00 08 */	bge lbl_807B5434
/* 807B5430  FC 20 00 90 */	fmr f1, f0
lbl_807B5434:
/* 807B5434  38 7A 00 02 */	addi r3, r26, 2
/* 807B5438  3C 9C 00 01 */	addis r4, r28, 1
/* 807B543C  38 04 80 00 */	addi r0, r4, -32768
/* 807B5440  7C 04 07 34 */	extsh r4, r0
/* 807B5444  38 A0 00 02 */	li r5, 2
/* 807B5448  FC 00 08 1E */	fctiwz f0, f1
/* 807B544C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 807B5450  80 C1 00 64 */	lwz r6, 0x64(r1)
/* 807B5454  4B AB B1 B4 */	b cLib_addCalcAngleS2__FPssss
lbl_807B5458:
/* 807B5458  37 BD FF FF */	addic. r29, r29, -1
/* 807B545C  3A F7 0E 10 */	addi r23, r23, 0xe10
/* 807B5460  3B 7B FF F4 */	addi r27, r27, -12
/* 807B5464  3B 5A FF FA */	addi r26, r26, -6
/* 807B5468  40 80 FD 20 */	bge lbl_807B5188
/* 807B546C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 807B5470  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 807B5474  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 807B5478  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 807B547C  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 807B5480  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 807B5484  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 807B5488  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 807B548C  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 807B5490  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 807B5494  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 807B5498  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 807B549C  39 61 00 90 */	addi r11, r1, 0x90
/* 807B54A0  4B BA CD 6C */	b _restgpr_22
/* 807B54A4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 807B54A8  7C 08 03 A6 */	mtlr r0
/* 807B54AC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 807B54B0  4E 80 00 20 */	blr 
