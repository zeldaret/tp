lbl_8009F034:
/* 8009F034  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 8009F038  7C 08 02 A6 */	mflr r0
/* 8009F03C  90 01 01 84 */	stw r0, 0x184(r1)
/* 8009F040  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 8009F044  F3 E1 01 78 */	psq_st f31, 376(r1), 0, 0 /* qr0 */
/* 8009F048  DB C1 01 60 */	stfd f30, 0x160(r1)
/* 8009F04C  F3 C1 01 68 */	psq_st f30, 360(r1), 0, 0 /* qr0 */
/* 8009F050  DB A1 01 50 */	stfd f29, 0x150(r1)
/* 8009F054  F3 A1 01 58 */	psq_st f29, 344(r1), 0, 0 /* qr0 */
/* 8009F058  DB 81 01 40 */	stfd f28, 0x140(r1)
/* 8009F05C  F3 81 01 48 */	psq_st f28, 328(r1), 0, 0 /* qr0 */
/* 8009F060  DB 61 01 30 */	stfd f27, 0x130(r1)
/* 8009F064  F3 61 01 38 */	psq_st f27, 312(r1), 0, 0 /* qr0 */
/* 8009F068  39 61 01 30 */	addi r11, r1, 0x130
/* 8009F06C  48 2C 31 4D */	bl _savegpr_20
/* 8009F070  7C 7F 1B 78 */	mr r31, r3
/* 8009F074  80 63 20 60 */	lwz r3, 0x2060(r3)
/* 8009F078  88 03 00 00 */	lbz r0, 0(r3)
/* 8009F07C  28 00 00 00 */	cmplwi r0, 0
/* 8009F080  41 82 0F 38 */	beq lbl_8009FFB8
/* 8009F084  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 8009F088  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8009F08C  41 82 00 2C */	beq lbl_8009F0B8
/* 8009F090  38 60 00 00 */	li r3, 0
/* 8009F094  7C 65 1B 78 */	mr r5, r3
/* 8009F098  7C 64 1B 78 */	mr r4, r3
/* 8009F09C  38 00 00 03 */	li r0, 3
/* 8009F0A0  7C 09 03 A6 */	mtctr r0
lbl_8009F0A4:
/* 8009F0A4  7C DF 1A 14 */	add r6, r31, r3
/* 8009F0A8  B0 A6 30 54 */	sth r5, 0x3054(r6)
/* 8009F0AC  B0 86 30 5A */	sth r4, 0x305a(r6)
/* 8009F0B0  38 63 00 02 */	addi r3, r3, 2
/* 8009F0B4  42 00 FF F0 */	bdnz lbl_8009F0A4
lbl_8009F0B8:
/* 8009F0B8  80 7F 06 58 */	lwz r3, 0x658(r31)
/* 8009F0BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009F0C0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8009F0C4  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 8009F0C8  54 00 02 D8 */	rlwinm r0, r0, 0, 0xb, 0xc
/* 8009F0CC  20 00 00 00 */	subfic r0, r0, 0
/* 8009F0D0  7C 60 01 10 */	subfe r3, r0, r0
/* 8009F0D4  38 00 00 07 */	li r0, 7
/* 8009F0D8  7C 00 18 78 */	andc r0, r0, r3
/* 8009F0DC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8009F0E0  7C 64 02 14 */	add r3, r4, r0
/* 8009F0E4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009F0E8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8009F0EC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8009F0F0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8009F0F4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8009F0F8  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8009F0FC  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 8009F100  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 8009F104  40 82 00 48 */	bne lbl_8009F14C
/* 8009F108  38 7F 35 B8 */	addi r3, r31, 0x35b8
/* 8009F10C  48 2A 80 2D */	bl PSVECSquareMag
/* 8009F110  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 8009F114  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8009F118  41 81 00 2C */	bgt lbl_8009F144
/* 8009F11C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 8009F120  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8009F124  41 82 00 28 */	beq lbl_8009F14C
/* 8009F128  C0 1F 34 00 */	lfs f0, 0x3400(r31)
/* 8009F12C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8009F130  C0 1F 34 04 */	lfs f0, 0x3404(r31)
/* 8009F134  EC 00 00 32 */	fmuls f0, f0, f0
/* 8009F138  EC 01 00 2A */	fadds f0, f1, f0
/* 8009F13C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8009F140  40 81 00 0C */	ble lbl_8009F14C
lbl_8009F144:
/* 8009F144  3B C0 00 01 */	li r30, 1
/* 8009F148  48 00 00 08 */	b lbl_8009F150
lbl_8009F14C:
/* 8009F14C  3B C0 00 00 */	li r30, 0
lbl_8009F150:
/* 8009F150  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8009F154  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8009F158  38 A1 00 18 */	addi r5, r1, 0x18
/* 8009F15C  4B FB C1 9D */	bl dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 8009F160  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8009F164  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8009F168  40 82 00 10 */	bne lbl_8009F178
/* 8009F16C  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 8009F170  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 8009F174  41 82 00 10 */	beq lbl_8009F184
lbl_8009F178:
/* 8009F178  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F17C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8009F180  48 00 00 14 */	b lbl_8009F194
lbl_8009F184:
/* 8009F184  2C 1E 00 00 */	cmpwi r30, 0
/* 8009F188  41 82 00 0C */	beq lbl_8009F194
/* 8009F18C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8009F190  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_8009F194:
/* 8009F194  C0 22 92 9C */	lfs f1, lit_5944(r2)
/* 8009F198  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8009F19C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8009F1A0  EF 61 00 32 */	fmuls f27, f1, f0
/* 8009F1A4  AA FF 30 60 */	lha r23, 0x3060(r31)
/* 8009F1A8  AB 1F 30 62 */	lha r24, 0x3062(r31)
/* 8009F1AC  38 61 00 7C */	addi r3, r1, 0x7c
/* 8009F1B0  38 9F 05 38 */	addi r4, r31, 0x538
/* 8009F1B4  38 BF 34 E0 */	addi r5, r31, 0x34e0
/* 8009F1B8  48 1C 79 7D */	bl __mi__4cXyzCFRC3Vec
/* 8009F1BC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8009F1C0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8009F1C4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8009F1C8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8009F1CC  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8009F1D0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8009F1D4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8009F1D8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8009F1DC  41 82 00 70 */	beq lbl_8009F24C
/* 8009F1E0  38 7F 2C 78 */	addi r3, r31, 0x2c78
/* 8009F1E4  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8009F1E8  7C 85 23 78 */	mr r5, r4
/* 8009F1EC  48 2A 7C 61 */	bl PSMTXMultVecSR
/* 8009F1F0  80 7F 06 58 */	lwz r3, 0x658(r31)
/* 8009F1F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009F1F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009F1FC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009F200  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8009F204  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8009F208  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8009F20C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8009F210  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8009F214  38 61 00 70 */	addi r3, r1, 0x70
/* 8009F218  38 9F 34 E0 */	addi r4, r31, 0x34e0
/* 8009F21C  38 A1 00 AC */	addi r5, r1, 0xac
/* 8009F220  48 1C 79 15 */	bl __mi__4cXyzCFRC3Vec
/* 8009F224  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8009F228  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8009F22C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8009F230  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8009F234  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8009F238  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8009F23C  38 7F 2C 78 */	addi r3, r31, 0x2c78
/* 8009F240  38 81 00 AC */	addi r4, r1, 0xac
/* 8009F244  7C 85 23 78 */	mr r5, r4
/* 8009F248  48 2A 7C 05 */	bl PSMTXMultVecSR
lbl_8009F24C:
/* 8009F24C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8009F250  48 1C 7E D9 */	bl atan2sX_Z__4cXyzCFv
/* 8009F254  B0 7F 30 62 */	sth r3, 0x3062(r31)
/* 8009F258  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 8009F25C  28 00 00 C0 */	cmplwi r0, 0xc0
/* 8009F260  40 82 00 34 */	bne lbl_8009F294
/* 8009F264  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8009F268  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009F26C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009F270  38 63 00 30 */	addi r3, r3, 0x30
/* 8009F274  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 8009F278  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 8009F27C  38 A1 00 AC */	addi r5, r1, 0xac
/* 8009F280  48 2A 7B CD */	bl PSMTXMultVecSR
/* 8009F284  38 61 00 AC */	addi r3, r1, 0xac
/* 8009F288  48 1C 7E A1 */	bl atan2sX_Z__4cXyzCFv
/* 8009F28C  7C 79 1B 78 */	mr r25, r3
/* 8009F290  48 00 00 9C */	b lbl_8009F32C
lbl_8009F294:
/* 8009F294  7F E3 FB 78 */	mr r3, r31
/* 8009F298  38 80 00 52 */	li r4, 0x52
/* 8009F29C  48 00 D2 BD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8009F2A0  2C 03 00 00 */	cmpwi r3, 0
/* 8009F2A4  41 82 00 44 */	beq lbl_8009F2E8
/* 8009F2A8  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 8009F2AC  C0 02 97 F0 */	lfs f0, lit_55047(r2)
/* 8009F2B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F2B4  40 80 00 34 */	bge lbl_8009F2E8
/* 8009F2B8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8009F2BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009F2C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009F2C4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8009F2C8  3C 80 80 43 */	lis r4, BaseX__4cXyz@ha /* 0x80430D0C@ha */
/* 8009F2CC  38 84 0D 0C */	addi r4, r4, BaseX__4cXyz@l /* 0x80430D0C@l */
/* 8009F2D0  38 A1 00 AC */	addi r5, r1, 0xac
/* 8009F2D4  48 2A 7B 79 */	bl PSMTXMultVecSR
/* 8009F2D8  38 61 00 AC */	addi r3, r1, 0xac
/* 8009F2DC  48 1C 7E 4D */	bl atan2sX_Z__4cXyzCFv
/* 8009F2E0  7C 79 1B 78 */	mr r25, r3
/* 8009F2E4  48 00 00 48 */	b lbl_8009F32C
lbl_8009F2E8:
/* 8009F2E8  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 8009F2EC  28 00 00 D7 */	cmplwi r0, 0xd7
/* 8009F2F0  40 82 00 2C */	bne lbl_8009F31C
/* 8009F2F4  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8009F2F8  2C 00 00 00 */	cmpwi r0, 0
/* 8009F2FC  40 82 00 20 */	bne lbl_8009F31C
/* 8009F300  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8009F304  A8 7F 05 9E */	lha r3, 0x59e(r31)
/* 8009F308  3C 63 00 01 */	addis r3, r3, 1
/* 8009F30C  38 63 80 00 */	addi r3, r3, -32768
/* 8009F310  7C 00 1A 14 */	add r0, r0, r3
/* 8009F314  7C 19 07 34 */	extsh r25, r0
/* 8009F318  48 00 00 14 */	b lbl_8009F32C
lbl_8009F31C:
/* 8009F31C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8009F320  A8 1F 05 9E */	lha r0, 0x59e(r31)
/* 8009F324  7C 03 02 14 */	add r0, r3, r0
/* 8009F328  7C 19 07 34 */	extsh r25, r0
lbl_8009F32C:
/* 8009F32C  A8 7F 30 62 */	lha r3, 0x3062(r31)
/* 8009F330  7F 24 CB 78 */	mr r4, r25
/* 8009F334  48 1D 1A F1 */	bl cLib_distanceAngleS__Fss
/* 8009F338  2C 03 70 00 */	cmpwi r3, 0x7000
/* 8009F33C  40 81 01 28 */	ble lbl_8009F464
/* 8009F340  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8009F344  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8009F348  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F34C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8009F350  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8009F354  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8009F358  38 61 00 34 */	addi r3, r1, 0x34
/* 8009F35C  48 2A 7D DD */	bl PSVECSquareMag
/* 8009F360  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F368  40 81 00 58 */	ble lbl_8009F3C0
/* 8009F36C  FC 00 08 34 */	frsqrte f0, f1
/* 8009F370  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8009F374  FC 44 00 32 */	fmul f2, f4, f0
/* 8009F378  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8009F37C  FC 00 00 32 */	fmul f0, f0, f0
/* 8009F380  FC 01 00 32 */	fmul f0, f1, f0
/* 8009F384  FC 03 00 28 */	fsub f0, f3, f0
/* 8009F388  FC 02 00 32 */	fmul f0, f2, f0
/* 8009F38C  FC 44 00 32 */	fmul f2, f4, f0
/* 8009F390  FC 00 00 32 */	fmul f0, f0, f0
/* 8009F394  FC 01 00 32 */	fmul f0, f1, f0
/* 8009F398  FC 03 00 28 */	fsub f0, f3, f0
/* 8009F39C  FC 02 00 32 */	fmul f0, f2, f0
/* 8009F3A0  FC 44 00 32 */	fmul f2, f4, f0
/* 8009F3A4  FC 00 00 32 */	fmul f0, f0, f0
/* 8009F3A8  FC 01 00 32 */	fmul f0, f1, f0
/* 8009F3AC  FC 03 00 28 */	fsub f0, f3, f0
/* 8009F3B0  FC 02 00 32 */	fmul f0, f2, f0
/* 8009F3B4  FC 41 00 32 */	fmul f2, f1, f0
/* 8009F3B8  FC 40 10 18 */	frsp f2, f2
/* 8009F3BC  48 00 00 90 */	b lbl_8009F44C
lbl_8009F3C0:
/* 8009F3C0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8009F3C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F3C8  40 80 00 10 */	bge lbl_8009F3D8
/* 8009F3CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009F3D0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8009F3D4  48 00 00 78 */	b lbl_8009F44C
lbl_8009F3D8:
/* 8009F3D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8009F3DC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8009F3E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8009F3E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8009F3E8  7C 03 00 00 */	cmpw r3, r0
/* 8009F3EC  41 82 00 14 */	beq lbl_8009F400
/* 8009F3F0  40 80 00 40 */	bge lbl_8009F430
/* 8009F3F4  2C 03 00 00 */	cmpwi r3, 0
/* 8009F3F8  41 82 00 20 */	beq lbl_8009F418
/* 8009F3FC  48 00 00 34 */	b lbl_8009F430
lbl_8009F400:
/* 8009F400  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009F404  41 82 00 0C */	beq lbl_8009F410
/* 8009F408  38 00 00 01 */	li r0, 1
/* 8009F40C  48 00 00 28 */	b lbl_8009F434
lbl_8009F410:
/* 8009F410  38 00 00 02 */	li r0, 2
/* 8009F414  48 00 00 20 */	b lbl_8009F434
lbl_8009F418:
/* 8009F418  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009F41C  41 82 00 0C */	beq lbl_8009F428
/* 8009F420  38 00 00 05 */	li r0, 5
/* 8009F424  48 00 00 10 */	b lbl_8009F434
lbl_8009F428:
/* 8009F428  38 00 00 03 */	li r0, 3
/* 8009F42C  48 00 00 08 */	b lbl_8009F434
lbl_8009F430:
/* 8009F430  38 00 00 04 */	li r0, 4
lbl_8009F434:
/* 8009F434  2C 00 00 01 */	cmpwi r0, 1
/* 8009F438  40 82 00 10 */	bne lbl_8009F448
/* 8009F43C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009F440  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8009F444  48 00 00 08 */	b lbl_8009F44C
lbl_8009F448:
/* 8009F448  FC 40 08 90 */	fmr f2, f1
lbl_8009F44C:
/* 8009F44C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8009F450  FC 20 00 50 */	fneg f1, f0
/* 8009F454  FC 40 10 50 */	fneg f2, f2
/* 8009F458  48 1C 82 1D */	bl cM_atan2s__Fff
/* 8009F45C  B0 7F 30 60 */	sth r3, 0x3060(r31)
/* 8009F460  48 00 00 10 */	b lbl_8009F470
lbl_8009F464:
/* 8009F464  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8009F468  48 1C 7C E9 */	bl atan2sY_XZ__4cXyzCFv
/* 8009F46C  B0 7F 30 60 */	sth r3, 0x3060(r31)
lbl_8009F470:
/* 8009F470  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8009F474  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8009F478  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F47C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8009F480  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8009F484  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8009F488  38 61 00 28 */	addi r3, r1, 0x28
/* 8009F48C  48 2A 7C AD */	bl PSVECSquareMag
/* 8009F490  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F498  40 81 00 58 */	ble lbl_8009F4F0
/* 8009F49C  FC 00 08 34 */	frsqrte f0, f1
/* 8009F4A0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8009F4A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8009F4A8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8009F4AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8009F4B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8009F4B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8009F4B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8009F4BC  FC 44 00 32 */	fmul f2, f4, f0
/* 8009F4C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8009F4C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8009F4C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8009F4CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8009F4D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8009F4D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8009F4D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8009F4DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8009F4E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8009F4E4  FC 21 00 32 */	fmul f1, f1, f0
/* 8009F4E8  FC 20 08 18 */	frsp f1, f1
/* 8009F4EC  48 00 00 88 */	b lbl_8009F574
lbl_8009F4F0:
/* 8009F4F0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8009F4F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F4F8  40 80 00 10 */	bge lbl_8009F508
/* 8009F4FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009F500  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8009F504  48 00 00 70 */	b lbl_8009F574
lbl_8009F508:
/* 8009F508  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8009F50C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8009F510  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8009F514  3C 00 7F 80 */	lis r0, 0x7f80
/* 8009F518  7C 03 00 00 */	cmpw r3, r0
/* 8009F51C  41 82 00 14 */	beq lbl_8009F530
/* 8009F520  40 80 00 40 */	bge lbl_8009F560
/* 8009F524  2C 03 00 00 */	cmpwi r3, 0
/* 8009F528  41 82 00 20 */	beq lbl_8009F548
/* 8009F52C  48 00 00 34 */	b lbl_8009F560
lbl_8009F530:
/* 8009F530  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009F534  41 82 00 0C */	beq lbl_8009F540
/* 8009F538  38 00 00 01 */	li r0, 1
/* 8009F53C  48 00 00 28 */	b lbl_8009F564
lbl_8009F540:
/* 8009F540  38 00 00 02 */	li r0, 2
/* 8009F544  48 00 00 20 */	b lbl_8009F564
lbl_8009F548:
/* 8009F548  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009F54C  41 82 00 0C */	beq lbl_8009F558
/* 8009F550  38 00 00 05 */	li r0, 5
/* 8009F554  48 00 00 10 */	b lbl_8009F564
lbl_8009F558:
/* 8009F558  38 00 00 03 */	li r0, 3
/* 8009F55C  48 00 00 08 */	b lbl_8009F564
lbl_8009F560:
/* 8009F560  38 00 00 04 */	li r0, 4
lbl_8009F564:
/* 8009F564  2C 00 00 01 */	cmpwi r0, 1
/* 8009F568  40 82 00 0C */	bne lbl_8009F574
/* 8009F56C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009F570  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8009F574:
/* 8009F574  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 8009F578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F57C  40 80 00 20 */	bge lbl_8009F59C
/* 8009F580  57 20 04 38 */	rlwinm r0, r25, 0, 0x10, 0x1c
/* 8009F584  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8009F588  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8009F58C  7F A3 04 2E */	lfsx f29, r3, r0
/* 8009F590  7C 63 02 14 */	add r3, r3, r0
/* 8009F594  C3 83 00 04 */	lfs f28, 4(r3)
/* 8009F598  48 00 00 1C */	b lbl_8009F5B4
lbl_8009F59C:
/* 8009F59C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8009F5A0  EC 20 08 24 */	fdivs f1, f0, f1
/* 8009F5A4  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8009F5A8  EF A0 00 72 */	fmuls f29, f0, f1
/* 8009F5AC  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8009F5B0  EF 80 00 72 */	fmuls f28, f0, f1
lbl_8009F5B4:
/* 8009F5B4  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 8009F5B8  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8009F5BC  41 82 00 2C */	beq lbl_8009F5E8
/* 8009F5C0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8009F5C4  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 8009F5C8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8009F5CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009F5D0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8009F5D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009F5D8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8009F5DC  3A E0 00 00 */	li r23, 0
/* 8009F5E0  3B 00 00 00 */	li r24, 0
/* 8009F5E4  48 00 00 78 */	b lbl_8009F65C
lbl_8009F5E8:
/* 8009F5E8  A8 7F 30 60 */	lha r3, 0x3060(r31)
/* 8009F5EC  7C 17 18 50 */	subf r0, r23, r3
/* 8009F5F0  7C 00 07 34 */	extsh r0, r0
/* 8009F5F4  7C 00 0E 70 */	srawi r0, r0, 1
/* 8009F5F8  7C 17 07 34 */	extsh r23, r0
/* 8009F5FC  48 2C 5A D5 */	bl abs
/* 8009F600  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8009F604  40 81 00 1C */	ble lbl_8009F620
/* 8009F608  A8 7F 30 60 */	lha r3, 0x3060(r31)
/* 8009F60C  48 2C 5A C5 */	bl abs
/* 8009F610  2C 03 50 00 */	cmpwi r3, 0x5000
/* 8009F614  40 80 00 0C */	bge lbl_8009F620
/* 8009F618  3B 00 00 00 */	li r24, 0
/* 8009F61C  48 00 00 18 */	b lbl_8009F634
lbl_8009F620:
/* 8009F620  A8 1F 30 62 */	lha r0, 0x3062(r31)
/* 8009F624  7C 18 00 50 */	subf r0, r24, r0
/* 8009F628  7C 00 07 34 */	extsh r0, r0
/* 8009F62C  7C 00 0E 70 */	srawi r0, r0, 1
/* 8009F630  7C 18 07 34 */	extsh r24, r0
lbl_8009F634:
/* 8009F634  38 61 00 64 */	addi r3, r1, 0x64
/* 8009F638  38 9F 34 C8 */	addi r4, r31, 0x34c8
/* 8009F63C  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 8009F640  48 1C 74 F5 */	bl __mi__4cXyzCFRC3Vec
/* 8009F644  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8009F648  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8009F64C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8009F650  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8009F654  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8009F658  D0 01 00 C0 */	stfs f0, 0xc0(r1)
lbl_8009F65C:
/* 8009F65C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8009F660  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8009F664  41 82 00 28 */	beq lbl_8009F68C
/* 8009F668  38 61 00 58 */	addi r3, r1, 0x58
/* 8009F66C  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8009F670  FC 20 D8 90 */	fmr f1, f27
/* 8009F674  48 1C 75 11 */	bl __ml__4cXyzCFf
/* 8009F678  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8009F67C  38 81 00 58 */	addi r4, r1, 0x58
/* 8009F680  7C 65 1B 78 */	mr r5, r3
/* 8009F684  48 2A 7A 0D */	bl PSVECAdd
/* 8009F688  48 00 00 54 */	b lbl_8009F6DC
lbl_8009F68C:
/* 8009F68C  C0 5F 37 A0 */	lfs f2, 0x37a0(r31)
/* 8009F690  C0 1F 37 98 */	lfs f0, 0x3798(r31)
/* 8009F694  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8009F698  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8009F69C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8009F6A0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8009F6A4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8009F6A8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8009F6AC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8009F6B0  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8009F6B4  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8009F6B8  38 61 00 40 */	addi r3, r1, 0x40
/* 8009F6BC  38 81 00 4C */	addi r4, r1, 0x4c
/* 8009F6C0  48 2A 7C DD */	bl PSVECSquareDistance
/* 8009F6C4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8009F6C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F6CC  40 80 00 10 */	bge lbl_8009F6DC
/* 8009F6D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F6D4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8009F6D8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
lbl_8009F6DC:
/* 8009F6DC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8009F6E0  38 9F 35 B8 */	addi r4, r31, 0x35b8
/* 8009F6E4  7C 65 1B 78 */	mr r5, r3
/* 8009F6E8  48 2A 79 A9 */	bl PSVECAdd
/* 8009F6EC  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 8009F6F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8009F6F4  41 82 00 24 */	beq lbl_8009F718
/* 8009F6F8  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 8009F6FC  C0 1F 34 00 */	lfs f0, 0x3400(r31)
/* 8009F700  EC 01 00 2A */	fadds f0, f1, f0
/* 8009F704  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8009F708  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 8009F70C  C0 1F 34 04 */	lfs f0, 0x3404(r31)
/* 8009F710  EC 01 00 2A */	fadds f0, f1, f0
/* 8009F714  D0 01 00 C0 */	stfs f0, 0xc0(r1)
lbl_8009F718:
/* 8009F718  7F E3 FB 78 */	mr r3, r31
/* 8009F71C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8009F720  48 04 2D 5D */	bl multVecMagneBootInvMtx__9daAlink_cFP4cXyz
/* 8009F724  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8009F728  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8009F72C  40 82 00 18 */	bne lbl_8009F744
/* 8009F730  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8009F734  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 8009F738  EC 01 00 28 */	fsubs f0, f1, f0
/* 8009F73C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8009F740  48 00 00 48 */	b lbl_8009F788
lbl_8009F744:
/* 8009F744  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 8009F748  41 82 00 30 */	beq lbl_8009F778
/* 8009F74C  38 7F 1D C0 */	addi r3, r31, 0x1dc0
/* 8009F750  38 80 00 00 */	li r4, 0
/* 8009F754  48 00 2A 8D */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 8009F758  7C 60 07 34 */	extsh r0, r3
/* 8009F75C  2C 00 00 C6 */	cmpwi r0, 0xc6
/* 8009F760  40 82 00 18 */	bne lbl_8009F778
/* 8009F764  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8009F768  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8009F76C  EC 01 00 2A */	fadds f0, f1, f0
/* 8009F770  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8009F774  48 00 00 14 */	b lbl_8009F788
lbl_8009F778:
/* 8009F778  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8009F77C  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8009F780  EC 01 00 28 */	fsubs f0, f1, f0
/* 8009F784  D0 01 00 BC */	stfs f0, 0xbc(r1)
lbl_8009F788:
/* 8009F788  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8009F78C  FC 00 02 10 */	fabs f0, f0
/* 8009F790  FC 20 00 18 */	frsp f1, f0
/* 8009F794  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 8009F798  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F79C  40 80 00 0C */	bge lbl_8009F7A8
/* 8009F7A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F7A4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
lbl_8009F7A8:
/* 8009F7A8  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8009F7AC  FC 00 02 10 */	fabs f0, f0
/* 8009F7B0  FC 20 00 18 */	frsp f1, f0
/* 8009F7B4  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 8009F7B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F7BC  40 80 00 0C */	bge lbl_8009F7C8
/* 8009F7C0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F7C4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
lbl_8009F7C8:
/* 8009F7C8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8009F7CC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8009F7D0  41 82 00 38 */	beq lbl_8009F808
/* 8009F7D4  38 7F 2C 78 */	addi r3, r31, 0x2c78
/* 8009F7D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009F7DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009F7E0  48 2A 6C D1 */	bl PSMTXCopy
/* 8009F7E4  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8009F7E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009F7EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009F7F0  38 83 00 60 */	addi r4, r3, 0x60
/* 8009F7F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009F7F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009F7FC  7C 65 1B 78 */	mr r5, r3
/* 8009F800  48 2A 6C E5 */	bl PSMTXConcat
/* 8009F804  48 00 00 20 */	b lbl_8009F824
lbl_8009F808:
/* 8009F808  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 8009F80C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009F810  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009F814  38 63 00 60 */	addi r3, r3, 0x60
/* 8009F818  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009F81C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009F820  48 2A 6C 91 */	bl PSMTXCopy
lbl_8009F824:
/* 8009F824  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009F828  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009F82C  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 8009F830  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 8009F834  38 A1 00 94 */	addi r5, r1, 0x94
/* 8009F838  48 2A 76 15 */	bl PSMTXMultVecSR
/* 8009F83C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009F840  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009F844  3C 80 80 43 */	lis r4, BaseX__4cXyz@ha /* 0x80430D0C@ha */
/* 8009F848  38 84 0D 0C */	addi r4, r4, BaseX__4cXyz@l /* 0x80430D0C@l */
/* 8009F84C  38 A1 00 88 */	addi r5, r1, 0x88
/* 8009F850  48 2A 75 1D */	bl PSMTXMultVec
/* 8009F854  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 8009F858  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009F85C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009F860  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8009F864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F868  40 80 01 3C */	bge lbl_8009F9A4
/* 8009F86C  7F E3 FB 78 */	mr r3, r31
/* 8009F870  38 80 01 16 */	li r4, 0x116
/* 8009F874  48 00 CC E5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8009F878  2C 03 00 00 */	cmpwi r3, 0
/* 8009F87C  40 82 01 28 */	bne lbl_8009F9A4
/* 8009F880  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8009F884  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8009F888  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F88C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8009F890  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8009F894  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8009F898  38 61 00 1C */	addi r3, r1, 0x1c
/* 8009F89C  48 2A 78 9D */	bl PSVECSquareMag
/* 8009F8A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009F8A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F8A8  40 81 00 58 */	ble lbl_8009F900
/* 8009F8AC  FC 00 08 34 */	frsqrte f0, f1
/* 8009F8B0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8009F8B4  FC 44 00 32 */	fmul f2, f4, f0
/* 8009F8B8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8009F8BC  FC 00 00 32 */	fmul f0, f0, f0
/* 8009F8C0  FC 01 00 32 */	fmul f0, f1, f0
/* 8009F8C4  FC 03 00 28 */	fsub f0, f3, f0
/* 8009F8C8  FC 02 00 32 */	fmul f0, f2, f0
/* 8009F8CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8009F8D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8009F8D4  FC 01 00 32 */	fmul f0, f1, f0
/* 8009F8D8  FC 03 00 28 */	fsub f0, f3, f0
/* 8009F8DC  FC 02 00 32 */	fmul f0, f2, f0
/* 8009F8E0  FC 44 00 32 */	fmul f2, f4, f0
/* 8009F8E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8009F8E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8009F8EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8009F8F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8009F8F4  FC 41 00 32 */	fmul f2, f1, f0
/* 8009F8F8  FC 40 10 18 */	frsp f2, f2
/* 8009F8FC  48 00 00 90 */	b lbl_8009F98C
lbl_8009F900:
/* 8009F900  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8009F904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009F908  40 80 00 10 */	bge lbl_8009F918
/* 8009F90C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009F910  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8009F914  48 00 00 78 */	b lbl_8009F98C
lbl_8009F918:
/* 8009F918  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8009F91C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8009F920  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8009F924  3C 00 7F 80 */	lis r0, 0x7f80
/* 8009F928  7C 03 00 00 */	cmpw r3, r0
/* 8009F92C  41 82 00 14 */	beq lbl_8009F940
/* 8009F930  40 80 00 40 */	bge lbl_8009F970
/* 8009F934  2C 03 00 00 */	cmpwi r3, 0
/* 8009F938  41 82 00 20 */	beq lbl_8009F958
/* 8009F93C  48 00 00 34 */	b lbl_8009F970
lbl_8009F940:
/* 8009F940  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009F944  41 82 00 0C */	beq lbl_8009F950
/* 8009F948  38 00 00 01 */	li r0, 1
/* 8009F94C  48 00 00 28 */	b lbl_8009F974
lbl_8009F950:
/* 8009F950  38 00 00 02 */	li r0, 2
/* 8009F954  48 00 00 20 */	b lbl_8009F974
lbl_8009F958:
/* 8009F958  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009F95C  41 82 00 0C */	beq lbl_8009F968
/* 8009F960  38 00 00 05 */	li r0, 5
/* 8009F964  48 00 00 10 */	b lbl_8009F974
lbl_8009F968:
/* 8009F968  38 00 00 03 */	li r0, 3
/* 8009F96C  48 00 00 08 */	b lbl_8009F974
lbl_8009F970:
/* 8009F970  38 00 00 04 */	li r0, 4
lbl_8009F974:
/* 8009F974  2C 00 00 01 */	cmpwi r0, 1
/* 8009F978  40 82 00 10 */	bne lbl_8009F988
/* 8009F97C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009F980  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8009F984  48 00 00 08 */	b lbl_8009F98C
lbl_8009F988:
/* 8009F988  FC 40 08 90 */	fmr f2, f1
lbl_8009F98C:
/* 8009F98C  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8009F990  FC 20 00 50 */	fneg f1, f0
/* 8009F994  FC 40 10 50 */	fneg f2, f2
/* 8009F998  48 1C 7C DD */	bl cM_atan2s__Fff
/* 8009F99C  7C 7B 07 34 */	extsh r27, r3
/* 8009F9A0  48 00 00 10 */	b lbl_8009F9B0
lbl_8009F9A4:
/* 8009F9A4  38 61 00 94 */	addi r3, r1, 0x94
/* 8009F9A8  48 1C 77 A9 */	bl atan2sY_XZ__4cXyzCFv
/* 8009F9AC  7C 7B 07 34 */	extsh r27, r3
lbl_8009F9B0:
/* 8009F9B0  3B 5F 30 3A */	addi r26, r31, 0x303a
/* 8009F9B4  3B 3F 30 4E */	addi r25, r31, 0x304e
/* 8009F9B8  A8 1F 30 3A */	lha r0, 0x303a(r31)
/* 8009F9BC  7C 17 00 50 */	subf r0, r23, r0
/* 8009F9C0  B0 1F 30 3A */	sth r0, 0x303a(r31)
/* 8009F9C4  A8 1F 30 4E */	lha r0, 0x304e(r31)
/* 8009F9C8  7C 18 00 50 */	subf r0, r24, r0
/* 8009F9CC  B0 1F 30 4E */	sth r0, 0x304e(r31)
/* 8009F9D0  AB BF 30 3A */	lha r29, 0x303a(r31)
/* 8009F9D4  AB 9F 30 4E */	lha r28, 0x304e(r31)
/* 8009F9D8  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8009F9DC  EC 20 07 32 */	fmuls f1, f0, f28
/* 8009F9E0  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8009F9E4  EC 00 07 72 */	fmuls f0, f0, f29
/* 8009F9E8  EF C1 00 2A */	fadds f30, f1, f0
/* 8009F9EC  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8009F9F0  FC 40 F0 50 */	fneg f2, f30
/* 8009F9F4  48 1C 7C 81 */	bl cM_atan2s__Fff
/* 8009F9F8  A8 9F 30 60 */	lha r4, 0x3060(r31)
/* 8009F9FC  7C 60 07 34 */	extsh r0, r3
/* 8009FA00  7C 04 00 50 */	subf r0, r4, r0
/* 8009FA04  2C 00 C8 00 */	cmpwi r0, -14336
/* 8009FA08  40 80 00 0C */	bge lbl_8009FA14
/* 8009FA0C  38 60 C8 00 */	li r3, -14336
/* 8009FA10  48 00 00 14 */	b lbl_8009FA24
lbl_8009FA14:
/* 8009FA14  2C 00 38 00 */	cmpwi r0, 0x3800
/* 8009FA18  38 60 38 00 */	li r3, 0x3800
/* 8009FA1C  41 81 00 08 */	bgt lbl_8009FA24
/* 8009FA20  7C 03 03 78 */	mr r3, r0
lbl_8009FA24:
/* 8009FA24  7C 03 22 14 */	add r0, r3, r4
/* 8009FA28  7C 03 07 34 */	extsh r3, r0
/* 8009FA2C  38 1B C8 00 */	addi r0, r27, -14336
/* 8009FA30  7C 03 00 00 */	cmpw r3, r0
/* 8009FA34  40 80 00 08 */	bge lbl_8009FA3C
/* 8009FA38  7C 03 07 34 */	extsh r3, r0
lbl_8009FA3C:
/* 8009FA3C  7C 60 07 34 */	extsh r0, r3
/* 8009FA40  7C 84 00 50 */	subf r4, r4, r0
/* 8009FA44  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 8009FA48  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8009FA4C  41 82 00 0C */	beq lbl_8009FA58
/* 8009FA50  B0 9A 00 00 */	sth r4, 0(r26)
/* 8009FA54  48 00 00 18 */	b lbl_8009FA6C
lbl_8009FA58:
/* 8009FA58  7F 43 D3 78 */	mr r3, r26
/* 8009FA5C  7C 84 07 34 */	extsh r4, r4
/* 8009FA60  38 A0 00 05 */	li r5, 5
/* 8009FA64  38 C0 04 00 */	li r6, 0x400
/* 8009FA68  48 1D 0B A1 */	bl cLib_addCalcAngleS2__FPssss
lbl_8009FA6C:
/* 8009FA6C  A8 7A 00 00 */	lha r3, 0(r26)
/* 8009FA70  A8 1F 30 54 */	lha r0, 0x3054(r31)
/* 8009FA74  7C 03 02 14 */	add r0, r3, r0
/* 8009FA78  7C 03 07 34 */	extsh r3, r0
/* 8009FA7C  2C 03 C8 00 */	cmpwi r3, -14336
/* 8009FA80  40 80 00 0C */	bge lbl_8009FA8C
/* 8009FA84  38 00 C8 00 */	li r0, -14336
/* 8009FA88  48 00 00 14 */	b lbl_8009FA9C
lbl_8009FA8C:
/* 8009FA8C  2C 03 38 00 */	cmpwi r3, 0x3800
/* 8009FA90  38 00 38 00 */	li r0, 0x3800
/* 8009FA94  41 81 00 08 */	bgt lbl_8009FA9C
/* 8009FA98  7C 60 1B 78 */	mr r0, r3
lbl_8009FA9C:
/* 8009FA9C  B0 1A 00 00 */	sth r0, 0(r26)
/* 8009FAA0  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 8009FAA4  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8009FAA8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8009FAAC  EC 41 00 2A */	fadds f2, f1, f0
/* 8009FAB0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009FAB4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8009FAB8  40 81 00 0C */	ble lbl_8009FAC4
/* 8009FABC  FC 00 10 34 */	frsqrte f0, f2
/* 8009FAC0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8009FAC4:
/* 8009FAC4  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8009FAC8  EC 20 07 32 */	fmuls f1, f0, f28
/* 8009FACC  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8009FAD0  EC 00 07 72 */	fmuls f0, f0, f29
/* 8009FAD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8009FAD8  FC 20 00 50 */	fneg f1, f0
/* 8009FADC  48 1C 7B 99 */	bl cM_atan2s__Fff
/* 8009FAE0  7C 60 07 34 */	extsh r0, r3
/* 8009FAE4  2C 00 D8 00 */	cmpwi r0, -10240
/* 8009FAE8  40 80 00 0C */	bge lbl_8009FAF4
/* 8009FAEC  38 00 D8 00 */	li r0, -10240
/* 8009FAF0  48 00 00 14 */	b lbl_8009FB04
lbl_8009FAF4:
/* 8009FAF4  2C 00 28 00 */	cmpwi r0, 0x2800
/* 8009FAF8  38 00 28 00 */	li r0, 0x2800
/* 8009FAFC  41 81 00 08 */	bgt lbl_8009FB04
/* 8009FB00  7C 60 1B 78 */	mr r0, r3
lbl_8009FB04:
/* 8009FB04  7C 04 07 34 */	extsh r4, r0
/* 8009FB08  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 8009FB0C  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8009FB10  41 82 00 0C */	beq lbl_8009FB1C
/* 8009FB14  B0 99 00 00 */	sth r4, 0(r25)
/* 8009FB18  48 00 00 14 */	b lbl_8009FB2C
lbl_8009FB1C:
/* 8009FB1C  7F 23 CB 78 */	mr r3, r25
/* 8009FB20  38 A0 00 05 */	li r5, 5
/* 8009FB24  38 C0 04 00 */	li r6, 0x400
/* 8009FB28  48 1D 0A E1 */	bl cLib_addCalcAngleS2__FPssss
lbl_8009FB2C:
/* 8009FB2C  A8 79 00 00 */	lha r3, 0(r25)
/* 8009FB30  A8 1F 30 5A */	lha r0, 0x305a(r31)
/* 8009FB34  7C 03 02 14 */	add r0, r3, r0
/* 8009FB38  7C 03 07 34 */	extsh r3, r0
/* 8009FB3C  2C 03 D8 00 */	cmpwi r3, -10240
/* 8009FB40  40 80 00 0C */	bge lbl_8009FB4C
/* 8009FB44  38 00 D8 00 */	li r0, -10240
/* 8009FB48  48 00 00 14 */	b lbl_8009FB5C
lbl_8009FB4C:
/* 8009FB4C  2C 03 28 00 */	cmpwi r3, 0x2800
/* 8009FB50  38 00 28 00 */	li r0, 0x2800
/* 8009FB54  41 81 00 08 */	bgt lbl_8009FB5C
/* 8009FB58  7C 60 1B 78 */	mr r0, r3
lbl_8009FB5C:
/* 8009FB5C  B0 19 00 00 */	sth r0, 0(r25)
/* 8009FB60  C3 C2 93 F8 */	lfs f30, lit_13700(r2)
/* 8009FB64  A8 1A 00 00 */	lha r0, 0(r26)
/* 8009FB68  7C 1D 00 50 */	subf r0, r29, r0
/* 8009FB6C  CB E2 92 B0 */	lfd f31, lit_6025(r2)
/* 8009FB70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009FB74  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8009FB78  3F 00 43 30 */	lis r24, 0x4330
/* 8009FB7C  93 01 00 E0 */	stw r24, 0xe0(r1)
/* 8009FB80  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8009FB84  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8009FB88  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8009FB8C  FC 00 00 1E */	fctiwz f0, f0
/* 8009FB90  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 8009FB94  80 01 00 EC */	lwz r0, 0xec(r1)
/* 8009FB98  B0 1F 30 54 */	sth r0, 0x3054(r31)
/* 8009FB9C  A8 19 00 00 */	lha r0, 0(r25)
/* 8009FBA0  7C 1C 00 50 */	subf r0, r28, r0
/* 8009FBA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009FBA8  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8009FBAC  93 01 00 F0 */	stw r24, 0xf0(r1)
/* 8009FBB0  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 8009FBB4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8009FBB8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8009FBBC  FC 00 00 1E */	fctiwz f0, f0
/* 8009FBC0  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 8009FBC4  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 8009FBC8  B0 1F 30 5A */	sth r0, 0x305a(r31)
/* 8009FBCC  A8 7A 00 00 */	lha r3, 0(r26)
/* 8009FBD0  A8 1F 30 60 */	lha r0, 0x3060(r31)
/* 8009FBD4  7C 03 02 14 */	add r0, r3, r0
/* 8009FBD8  7C 17 07 34 */	extsh r23, r0
/* 8009FBDC  3A 80 00 01 */	li r20, 1
/* 8009FBE0  3A DF 30 56 */	addi r22, r31, 0x3056
/* 8009FBE4  3A BF 30 5C */	addi r21, r31, 0x305c
/* 8009FBE8  3B 7B C8 00 */	addi r27, r27, -14336
/* 8009FBEC  3B 5A 00 02 */	addi r26, r26, 2
/* 8009FBF0  3B 39 00 02 */	addi r25, r25, 2
lbl_8009FBF4:
/* 8009FBF4  A8 1A FF FE */	lha r0, -2(r26)
/* 8009FBF8  7C 1D 00 50 */	subf r0, r29, r0
/* 8009FBFC  7C 00 07 34 */	extsh r0, r0
/* 8009FC00  7C 03 0E 70 */	srawi r3, r0, 1
/* 8009FC04  A8 1A 00 00 */	lha r0, 0(r26)
/* 8009FC08  7C 03 00 50 */	subf r0, r3, r0
/* 8009FC0C  B0 1A 00 00 */	sth r0, 0(r26)
/* 8009FC10  A8 19 FF FE */	lha r0, -2(r25)
/* 8009FC14  7C 1C 00 50 */	subf r0, r28, r0
/* 8009FC18  7C 00 07 34 */	extsh r0, r0
/* 8009FC1C  7C 03 0E 70 */	srawi r3, r0, 1
/* 8009FC20  A8 19 00 00 */	lha r0, 0(r25)
/* 8009FC24  7C 03 00 50 */	subf r0, r3, r0
/* 8009FC28  B0 19 00 00 */	sth r0, 0(r25)
/* 8009FC2C  AB BA 00 00 */	lha r29, 0(r26)
/* 8009FC30  AB 99 00 00 */	lha r28, 0(r25)
/* 8009FC34  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 8009FC38  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8009FC3C  41 82 00 14 */	beq lbl_8009FC50
/* 8009FC40  38 00 00 00 */	li r0, 0
/* 8009FC44  B0 1A 00 00 */	sth r0, 0(r26)
/* 8009FC48  B0 19 00 00 */	sth r0, 0(r25)
/* 8009FC4C  48 00 00 2C */	b lbl_8009FC78
lbl_8009FC50:
/* 8009FC50  7F 43 D3 78 */	mr r3, r26
/* 8009FC54  38 80 00 00 */	li r4, 0
/* 8009FC58  38 A0 00 05 */	li r5, 5
/* 8009FC5C  38 C0 04 00 */	li r6, 0x400
/* 8009FC60  48 1D 09 A9 */	bl cLib_addCalcAngleS2__FPssss
/* 8009FC64  7F 23 CB 78 */	mr r3, r25
/* 8009FC68  38 80 00 00 */	li r4, 0
/* 8009FC6C  38 A0 00 05 */	li r5, 5
/* 8009FC70  38 C0 04 00 */	li r6, 0x400
/* 8009FC74  48 1D 09 95 */	bl cLib_addCalcAngleS2__FPssss
lbl_8009FC78:
/* 8009FC78  A8 7A 00 00 */	lha r3, 0(r26)
/* 8009FC7C  A8 16 00 00 */	lha r0, 0(r22)
/* 8009FC80  7C 03 02 14 */	add r0, r3, r0
/* 8009FC84  7C 03 07 34 */	extsh r3, r0
/* 8009FC88  2C 03 F0 00 */	cmpwi r3, -4096
/* 8009FC8C  40 80 00 0C */	bge lbl_8009FC98
/* 8009FC90  38 00 F0 00 */	li r0, -4096
/* 8009FC94  48 00 00 14 */	b lbl_8009FCA8
lbl_8009FC98:
/* 8009FC98  2C 03 10 00 */	cmpwi r3, 0x1000
/* 8009FC9C  38 00 10 00 */	li r0, 0x1000
/* 8009FCA0  41 81 00 08 */	bgt lbl_8009FCA8
/* 8009FCA4  7C 60 1B 78 */	mr r0, r3
lbl_8009FCA8:
/* 8009FCA8  B0 1A 00 00 */	sth r0, 0(r26)
/* 8009FCAC  A8 7A 00 00 */	lha r3, 0(r26)
/* 8009FCB0  7E F7 1A 14 */	add r23, r23, r3
/* 8009FCB4  7E E0 07 34 */	extsh r0, r23
/* 8009FCB8  7C 00 D8 00 */	cmpw r0, r27
/* 8009FCBC  40 80 00 14 */	bge lbl_8009FCD0
/* 8009FCC0  7C 00 D8 50 */	subf r0, r0, r27
/* 8009FCC4  7C 03 02 14 */	add r0, r3, r0
/* 8009FCC8  B0 1A 00 00 */	sth r0, 0(r26)
/* 8009FCCC  7F 77 07 34 */	extsh r23, r27
lbl_8009FCD0:
/* 8009FCD0  A8 79 00 00 */	lha r3, 0(r25)
/* 8009FCD4  A8 15 00 00 */	lha r0, 0(r21)
/* 8009FCD8  7C 03 02 14 */	add r0, r3, r0
/* 8009FCDC  7C 03 07 34 */	extsh r3, r0
/* 8009FCE0  2C 03 E0 00 */	cmpwi r3, -8192
/* 8009FCE4  40 80 00 0C */	bge lbl_8009FCF0
/* 8009FCE8  38 00 E0 00 */	li r0, -8192
/* 8009FCEC  48 00 00 14 */	b lbl_8009FD00
lbl_8009FCF0:
/* 8009FCF0  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8009FCF4  38 00 20 00 */	li r0, 0x2000
/* 8009FCF8  41 81 00 08 */	bgt lbl_8009FD00
/* 8009FCFC  7C 60 1B 78 */	mr r0, r3
lbl_8009FD00:
/* 8009FD00  B0 19 00 00 */	sth r0, 0(r25)
/* 8009FD04  A8 1A 00 00 */	lha r0, 0(r26)
/* 8009FD08  7C 1D 00 50 */	subf r0, r29, r0
/* 8009FD0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009FD10  90 01 00 FC */	stw r0, 0xfc(r1)
/* 8009FD14  93 01 00 F8 */	stw r24, 0xf8(r1)
/* 8009FD18  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 8009FD1C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8009FD20  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8009FD24  FC 00 00 1E */	fctiwz f0, f0
/* 8009FD28  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 8009FD2C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8009FD30  B0 16 00 00 */	sth r0, 0(r22)
/* 8009FD34  A8 19 00 00 */	lha r0, 0(r25)
/* 8009FD38  7C 1C 00 50 */	subf r0, r28, r0
/* 8009FD3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009FD40  90 01 00 EC */	stw r0, 0xec(r1)
/* 8009FD44  93 01 00 E8 */	stw r24, 0xe8(r1)
/* 8009FD48  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 8009FD4C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8009FD50  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8009FD54  FC 00 00 1E */	fctiwz f0, f0
/* 8009FD58  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8009FD5C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8009FD60  B0 15 00 00 */	sth r0, 0(r21)
/* 8009FD64  3A 94 00 01 */	addi r20, r20, 1
/* 8009FD68  2C 14 00 03 */	cmpwi r20, 3
/* 8009FD6C  3B 5A 00 02 */	addi r26, r26, 2
/* 8009FD70  3B 39 00 02 */	addi r25, r25, 2
/* 8009FD74  3A D6 00 02 */	addi r22, r22, 2
/* 8009FD78  3A B5 00 02 */	addi r21, r21, 2
/* 8009FD7C  41 80 FE 78 */	blt lbl_8009FBF4
/* 8009FD80  38 7F 34 C8 */	addi r3, r31, 0x34c8
/* 8009FD84  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8009FD88  48 2A 76 15 */	bl PSVECSquareDistance
/* 8009FD8C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009FD90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009FD94  40 81 00 58 */	ble lbl_8009FDEC
/* 8009FD98  FC 00 08 34 */	frsqrte f0, f1
/* 8009FD9C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8009FDA0  FC 44 00 32 */	fmul f2, f4, f0
/* 8009FDA4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8009FDA8  FC 00 00 32 */	fmul f0, f0, f0
/* 8009FDAC  FC 01 00 32 */	fmul f0, f1, f0
/* 8009FDB0  FC 03 00 28 */	fsub f0, f3, f0
/* 8009FDB4  FC 02 00 32 */	fmul f0, f2, f0
/* 8009FDB8  FC 44 00 32 */	fmul f2, f4, f0
/* 8009FDBC  FC 00 00 32 */	fmul f0, f0, f0
/* 8009FDC0  FC 01 00 32 */	fmul f0, f1, f0
/* 8009FDC4  FC 03 00 28 */	fsub f0, f3, f0
/* 8009FDC8  FC 02 00 32 */	fmul f0, f2, f0
/* 8009FDCC  FC 44 00 32 */	fmul f2, f4, f0
/* 8009FDD0  FC 00 00 32 */	fmul f0, f0, f0
/* 8009FDD4  FC 01 00 32 */	fmul f0, f1, f0
/* 8009FDD8  FC 03 00 28 */	fsub f0, f3, f0
/* 8009FDDC  FC 02 00 32 */	fmul f0, f2, f0
/* 8009FDE0  FC 21 00 32 */	fmul f1, f1, f0
/* 8009FDE4  FC 20 08 18 */	frsp f1, f1
/* 8009FDE8  48 00 00 88 */	b lbl_8009FE70
lbl_8009FDEC:
/* 8009FDEC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8009FDF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8009FDF4  40 80 00 10 */	bge lbl_8009FE04
/* 8009FDF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009FDFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8009FE00  48 00 00 70 */	b lbl_8009FE70
lbl_8009FE04:
/* 8009FE04  D0 21 00 08 */	stfs f1, 8(r1)
/* 8009FE08  80 81 00 08 */	lwz r4, 8(r1)
/* 8009FE0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8009FE10  3C 00 7F 80 */	lis r0, 0x7f80
/* 8009FE14  7C 03 00 00 */	cmpw r3, r0
/* 8009FE18  41 82 00 14 */	beq lbl_8009FE2C
/* 8009FE1C  40 80 00 40 */	bge lbl_8009FE5C
/* 8009FE20  2C 03 00 00 */	cmpwi r3, 0
/* 8009FE24  41 82 00 20 */	beq lbl_8009FE44
/* 8009FE28  48 00 00 34 */	b lbl_8009FE5C
lbl_8009FE2C:
/* 8009FE2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009FE30  41 82 00 0C */	beq lbl_8009FE3C
/* 8009FE34  38 00 00 01 */	li r0, 1
/* 8009FE38  48 00 00 28 */	b lbl_8009FE60
lbl_8009FE3C:
/* 8009FE3C  38 00 00 02 */	li r0, 2
/* 8009FE40  48 00 00 20 */	b lbl_8009FE60
lbl_8009FE44:
/* 8009FE44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8009FE48  41 82 00 0C */	beq lbl_8009FE54
/* 8009FE4C  38 00 00 05 */	li r0, 5
/* 8009FE50  48 00 00 10 */	b lbl_8009FE60
lbl_8009FE54:
/* 8009FE54  38 00 00 03 */	li r0, 3
/* 8009FE58  48 00 00 08 */	b lbl_8009FE60
lbl_8009FE5C:
/* 8009FE5C  38 00 00 04 */	li r0, 4
lbl_8009FE60:
/* 8009FE60  2C 00 00 01 */	cmpwi r0, 1
/* 8009FE64  40 82 00 0C */	bne lbl_8009FE70
/* 8009FE68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8009FE6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8009FE70:
/* 8009FE70  C0 02 97 00 */	lfs f0, lit_41718(r2)
/* 8009FE74  EC 00 00 72 */	fmuls f0, f0, f1
/* 8009FE78  EC 3B 00 2A */	fadds f1, f27, f0
/* 8009FE7C  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 8009FE80  EC 41 00 24 */	fdivs f2, f1, f0
/* 8009FE84  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8009FE88  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8009FE8C  40 81 00 08 */	ble lbl_8009FE94
/* 8009FE90  FC 40 00 90 */	fmr f2, f0
lbl_8009FE94:
/* 8009FE94  FC 80 10 90 */	fmr f4, f2
/* 8009FE98  2C 1E 00 00 */	cmpwi r30, 0
/* 8009FE9C  41 82 00 18 */	beq lbl_8009FEB4
/* 8009FEA0  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 8009FEA4  54 00 02 D9 */	rlwinm. r0, r0, 0, 0xb, 0xc
/* 8009FEA8  40 82 00 0C */	bne lbl_8009FEB4
/* 8009FEAC  C0 42 96 58 */	lfs f2, lit_37152(r2)
/* 8009FEB0  C0 82 92 B8 */	lfs f4, lit_6040(r2)
lbl_8009FEB4:
/* 8009FEB4  C0 22 95 0C */	lfs f1, lit_20496(r2)
/* 8009FEB8  C0 02 97 F4 */	lfs f0, lit_55048(r2)
/* 8009FEBC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8009FEC0  EC 01 00 2A */	fadds f0, f1, f0
/* 8009FEC4  FC 00 00 1E */	fctiwz f0, f0
/* 8009FEC8  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 8009FECC  80 81 00 FC */	lwz r4, 0xfc(r1)
/* 8009FED0  A8 1F 30 64 */	lha r0, 0x3064(r31)
/* 8009FED4  7C 00 22 14 */	add r0, r0, r4
/* 8009FED8  B0 1F 30 64 */	sth r0, 0x3064(r31)
/* 8009FEDC  39 00 00 00 */	li r8, 0
/* 8009FEE0  38 60 00 00 */	li r3, 0
/* 8009FEE4  7C 87 07 34 */	extsh r7, r4
/* 8009FEE8  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8009FEEC  38 C4 9A 20 */	addi r6, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8009FEF0  C0 42 94 D4 */	lfs f2, lit_18929(r2)
/* 8009FEF4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8009FEF8  3C A0 43 30 */	lis r5, 0x4330
/* 8009FEFC  38 00 00 03 */	li r0, 3
/* 8009FF00  7C 09 03 A6 */	mtctr r0
lbl_8009FF04:
/* 8009FF04  38 08 00 03 */	addi r0, r8, 3
/* 8009FF08  7C 80 39 D6 */	mullw r4, r0, r7
/* 8009FF0C  A8 1F 30 64 */	lha r0, 0x3064(r31)
/* 8009FF10  7C 04 00 50 */	subf r0, r4, r0
/* 8009FF14  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8009FF18  7C 86 02 14 */	add r4, r6, r0
/* 8009FF1C  C0 64 00 04 */	lfs f3, 4(r4)
/* 8009FF20  38 08 00 01 */	addi r0, r8, 1
/* 8009FF24  54 00 10 3A */	slwi r0, r0, 2
/* 8009FF28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009FF2C  90 01 00 FC */	stw r0, 0xfc(r1)
/* 8009FF30  90 A1 00 F8 */	stw r5, 0xf8(r1)
/* 8009FF34  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 8009FF38  EC 00 08 28 */	fsubs f0, f0, f1
/* 8009FF3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8009FF40  FC 00 00 1E */	fctiwz f0, f0
/* 8009FF44  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 8009FF48  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8009FF4C  7C 00 07 34 */	extsh r0, r0
/* 8009FF50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009FF54  90 01 00 EC */	stw r0, 0xec(r1)
/* 8009FF58  90 A1 00 E8 */	stw r5, 0xe8(r1)
/* 8009FF5C  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 8009FF60  EC 00 08 28 */	fsubs f0, f0, f1
/* 8009FF64  EC 04 00 32 */	fmuls f0, f4, f0
/* 8009FF68  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8009FF6C  FC 00 00 1E */	fctiwz f0, f0
/* 8009FF70  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 8009FF74  80 81 00 E4 */	lwz r4, 0xe4(r1)
/* 8009FF78  38 03 30 66 */	addi r0, r3, 0x3066
/* 8009FF7C  7C 9F 03 2E */	sthx r4, r31, r0
/* 8009FF80  39 08 00 01 */	addi r8, r8, 1
/* 8009FF84  38 63 00 02 */	addi r3, r3, 2
/* 8009FF88  42 00 FF 7C */	bdnz lbl_8009FF04
/* 8009FF8C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8009FF90  D0 1F 34 C8 */	stfs f0, 0x34c8(r31)
/* 8009FF94  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8009FF98  D0 1F 34 CC */	stfs f0, 0x34cc(r31)
/* 8009FF9C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8009FFA0  D0 1F 34 D0 */	stfs f0, 0x34d0(r31)
/* 8009FFA4  7F E3 FB 78 */	mr r3, r31
/* 8009FFA8  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8009FFAC  FC 20 E8 90 */	fmr f1, f29
/* 8009FFB0  FC 40 E0 90 */	fmr f2, f28
/* 8009FFB4  48 00 00 79 */	bl setHairAngle__9daAlink_cFP4cXyzff
lbl_8009FFB8:
/* 8009FFB8  E3 E1 01 78 */	psq_l f31, 376(r1), 0, 0 /* qr0 */
/* 8009FFBC  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 8009FFC0  E3 C1 01 68 */	psq_l f30, 360(r1), 0, 0 /* qr0 */
/* 8009FFC4  CB C1 01 60 */	lfd f30, 0x160(r1)
/* 8009FFC8  E3 A1 01 58 */	psq_l f29, 344(r1), 0, 0 /* qr0 */
/* 8009FFCC  CB A1 01 50 */	lfd f29, 0x150(r1)
/* 8009FFD0  E3 81 01 48 */	psq_l f28, 328(r1), 0, 0 /* qr0 */
/* 8009FFD4  CB 81 01 40 */	lfd f28, 0x140(r1)
/* 8009FFD8  E3 61 01 38 */	psq_l f27, 312(r1), 0, 0 /* qr0 */
/* 8009FFDC  CB 61 01 30 */	lfd f27, 0x130(r1)
/* 8009FFE0  39 61 01 30 */	addi r11, r1, 0x130
/* 8009FFE4  48 2C 22 21 */	bl _restgpr_20
/* 8009FFE8  80 01 01 84 */	lwz r0, 0x184(r1)
/* 8009FFEC  7C 08 03 A6 */	mtlr r0
/* 8009FFF0  38 21 01 80 */	addi r1, r1, 0x180
/* 8009FFF4  4E 80 00 20 */	blr 
