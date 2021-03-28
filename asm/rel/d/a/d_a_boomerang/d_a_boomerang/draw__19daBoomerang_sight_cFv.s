lbl_8049EF60:
/* 8049EF60  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8049EF64  7C 08 02 A6 */	mflr r0
/* 8049EF68  90 01 00 64 */	stw r0, 0x64(r1)
/* 8049EF6C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8049EF70  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8049EF74  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8049EF78  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 8049EF7C  39 61 00 40 */	addi r11, r1, 0x40
/* 8049EF80  4B EC 32 38 */	b _savegpr_20
/* 8049EF84  7C 78 1B 78 */	mr r24, r3
/* 8049EF88  3C 60 80 4A */	lis r3, lit_4078@ha
/* 8049EF8C  3B E3 28 50 */	addi r31, r3, lit_4078@l
/* 8049EF90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049EF94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8049EF98  83 C3 5F 50 */	lwz r30, 0x5f50(r3)
/* 8049EF9C  3B B8 00 62 */	addi r29, r24, 0x62
/* 8049EFA0  3B 20 00 00 */	li r25, 0
/* 8049EFA4  3A E0 00 00 */	li r23, 0
lbl_8049EFA8:
/* 8049EFA8  88 1D 00 00 */	lbz r0, 0(r29)
/* 8049EFAC  28 00 00 00 */	cmplwi r0, 0
/* 8049EFB0  41 82 02 94 */	beq lbl_8049F244
/* 8049EFB4  7E D8 BA 14 */	add r22, r24, r23
/* 8049EFB8  C0 16 00 98 */	lfs f0, 0x98(r22)
/* 8049EFBC  80 78 00 5C */	lwz r3, 0x5c(r24)
/* 8049EFC0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049EFC4  C0 36 00 98 */	lfs f1, 0x98(r22)
/* 8049EFC8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8049EFCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8049EFD0  40 81 00 08 */	ble lbl_8049EFD8
/* 8049EFD4  48 00 00 08 */	b lbl_8049EFDC
lbl_8049EFD8:
/* 8049EFD8  FC 00 08 90 */	fmr f0, f1
lbl_8049EFDC:
/* 8049EFDC  80 78 00 58 */	lwz r3, 0x58(r24)
/* 8049EFE0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049EFE4  2C 19 00 05 */	cmpwi r25, 5
/* 8049EFE8  40 82 00 2C */	bne lbl_8049F014
/* 8049EFEC  C0 16 00 B0 */	lfs f0, 0xb0(r22)
/* 8049EFF0  80 78 00 18 */	lwz r3, 0x18(r24)
/* 8049EFF4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049EFF8  82 B8 00 0C */	lwz r21, 0xc(r24)
/* 8049EFFC  83 98 00 10 */	lwz r28, 0x10(r24)
/* 8049F000  83 78 00 14 */	lwz r27, 0x14(r24)
/* 8049F004  83 58 00 04 */	lwz r26, 4(r24)
/* 8049F008  82 98 00 08 */	lwz r20, 8(r24)
/* 8049F00C  C3 FF 00 7C */	lfs f31, 0x7c(r31)
/* 8049F010  48 00 00 64 */	b lbl_8049F074
lbl_8049F014:
/* 8049F014  2C 19 00 00 */	cmpwi r25, 0
/* 8049F018  40 82 00 38 */	bne lbl_8049F050
/* 8049F01C  88 18 00 60 */	lbz r0, 0x60(r24)
/* 8049F020  28 00 00 00 */	cmplwi r0, 0
/* 8049F024  41 82 00 2C */	beq lbl_8049F050
/* 8049F028  C0 16 00 B0 */	lfs f0, 0xb0(r22)
/* 8049F02C  80 78 00 34 */	lwz r3, 0x34(r24)
/* 8049F030  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049F034  82 B8 00 28 */	lwz r21, 0x28(r24)
/* 8049F038  83 98 00 2C */	lwz r28, 0x2c(r24)
/* 8049F03C  83 78 00 30 */	lwz r27, 0x30(r24)
/* 8049F040  83 58 00 20 */	lwz r26, 0x20(r24)
/* 8049F044  82 98 00 24 */	lwz r20, 0x24(r24)
/* 8049F048  C3 FF 00 80 */	lfs f31, 0x80(r31)
/* 8049F04C  48 00 00 28 */	b lbl_8049F074
lbl_8049F050:
/* 8049F050  C0 16 00 B0 */	lfs f0, 0xb0(r22)
/* 8049F054  80 78 00 50 */	lwz r3, 0x50(r24)
/* 8049F058  D0 03 00 08 */	stfs f0, 8(r3)
/* 8049F05C  82 B8 00 44 */	lwz r21, 0x44(r24)
/* 8049F060  83 98 00 48 */	lwz r28, 0x48(r24)
/* 8049F064  83 78 00 4C */	lwz r27, 0x4c(r24)
/* 8049F068  83 58 00 3C */	lwz r26, 0x3c(r24)
/* 8049F06C  82 98 00 40 */	lwz r20, 0x40(r24)
/* 8049F070  C3 FF 00 80 */	lfs f31, 0x80(r31)
lbl_8049F074:
/* 8049F074  7F 43 D3 78 */	mr r3, r26
/* 8049F078  4B E5 A6 18 */	b animation__9J2DScreenFv
/* 8049F07C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8049F080  D0 14 00 CC */	stfs f0, 0xcc(r20)
/* 8049F084  D0 14 00 D0 */	stfs f0, 0xd0(r20)
/* 8049F088  7E 83 A3 78 */	mr r3, r20
/* 8049F08C  81 94 00 00 */	lwz r12, 0(r20)
/* 8049F090  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8049F094  7D 89 03 A6 */	mtctr r12
/* 8049F098  4E 80 04 21 */	bctrl 
/* 8049F09C  C0 36 00 80 */	lfs f1, 0x80(r22)
/* 8049F0A0  C0 16 00 68 */	lfs f0, 0x68(r22)
/* 8049F0A4  D0 14 00 D4 */	stfs f0, 0xd4(r20)
/* 8049F0A8  D0 34 00 D8 */	stfs f1, 0xd8(r20)
/* 8049F0AC  7E 83 A3 78 */	mr r3, r20
/* 8049F0B0  81 94 00 00 */	lwz r12, 0(r20)
/* 8049F0B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8049F0B8  7D 89 03 A6 */	mtctr r12
/* 8049F0BC  4E 80 04 21 */	bctrl 
/* 8049F0C0  C0 76 00 98 */	lfs f3, 0x98(r22)
/* 8049F0C4  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 8049F0C8  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 8049F0CC  41 80 01 64 */	blt lbl_8049F230
/* 8049F0D0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8049F0D4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8049F0D8  40 80 00 18 */	bge lbl_8049F0F0
/* 8049F0DC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8049F0E0  EC 03 10 28 */	fsubs f0, f3, f2
/* 8049F0E4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8049F0E8  EF C1 00 32 */	fmuls f30, f1, f0
/* 8049F0EC  48 00 00 70 */	b lbl_8049F15C
lbl_8049F0F0:
/* 8049F0F0  2C 19 00 05 */	cmpwi r25, 5
/* 8049F0F4  40 82 00 38 */	bne lbl_8049F12C
/* 8049F0F8  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 8049F0FC  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8049F100  88 1D 00 00 */	lbz r0, 0(r29)
/* 8049F104  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 8049F108  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049F10C  3C 00 43 30 */	lis r0, 0x4330
/* 8049F110  90 01 00 08 */	stw r0, 8(r1)
/* 8049F114  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049F118  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049F11C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8049F120  EC 03 00 2A */	fadds f0, f3, f0
/* 8049F124  EF DF 00 32 */	fmuls f30, f31, f0
/* 8049F128  48 00 00 34 */	b lbl_8049F15C
lbl_8049F12C:
/* 8049F12C  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 8049F130  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8049F134  88 1D 00 00 */	lbz r0, 0(r29)
/* 8049F138  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 8049F13C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049F140  3C 00 43 30 */	lis r0, 0x4330
/* 8049F144  90 01 00 08 */	stw r0, 8(r1)
/* 8049F148  C8 01 00 08 */	lfd f0, 8(r1)
/* 8049F14C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8049F150  EC 02 00 32 */	fmuls f0, f2, f0
/* 8049F154  EC 03 00 2A */	fadds f0, f3, f0
/* 8049F158  EF DF 00 32 */	fmuls f30, f31, f0
lbl_8049F15C:
/* 8049F15C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8049F160  D0 15 00 D4 */	stfs f0, 0xd4(r21)
/* 8049F164  FC 00 F0 50 */	fneg f0, f30
/* 8049F168  D0 15 00 D8 */	stfs f0, 0xd8(r21)
/* 8049F16C  7E A3 AB 78 */	mr r3, r21
/* 8049F170  81 95 00 00 */	lwz r12, 0(r21)
/* 8049F174  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8049F178  7D 89 03 A6 */	mtctr r12
/* 8049F17C  4E 80 04 21 */	bctrl 
/* 8049F180  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8049F184  4B DC 84 60 */	b cM_rad2s__Ff
/* 8049F188  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8049F18C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8049F190  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8049F194  7F E3 04 2E */	lfsx f31, r3, r0
/* 8049F198  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8049F19C  4B DC 84 48 */	b cM_rad2s__Ff
/* 8049F1A0  54 64 04 38 */	rlwinm r4, r3, 0, 0x10, 0x1c
/* 8049F1A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8049F1A8  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l
/* 8049F1AC  7C 60 22 14 */	add r3, r0, r4
/* 8049F1B0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8049F1B4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8049F1B8  D0 1C 00 D4 */	stfs f0, 0xd4(r28)
/* 8049F1BC  EC 1E 07 F2 */	fmuls f0, f30, f31
/* 8049F1C0  D0 1C 00 D8 */	stfs f0, 0xd8(r28)
/* 8049F1C4  7F 83 E3 78 */	mr r3, r28
/* 8049F1C8  81 9C 00 00 */	lwz r12, 0(r28)
/* 8049F1CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8049F1D0  7D 89 03 A6 */	mtctr r12
/* 8049F1D4  4E 80 04 21 */	bctrl 
/* 8049F1D8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8049F1DC  4B DC 84 08 */	b cM_rad2s__Ff
/* 8049F1E0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8049F1E4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8049F1E8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8049F1EC  7F E3 04 2E */	lfsx f31, r3, r0
/* 8049F1F0  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 8049F1F4  4B DC 83 F0 */	b cM_rad2s__Ff
/* 8049F1F8  54 64 04 38 */	rlwinm r4, r3, 0, 0x10, 0x1c
/* 8049F1FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8049F200  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l
/* 8049F204  7C 60 22 14 */	add r3, r0, r4
/* 8049F208  C0 03 00 04 */	lfs f0, 4(r3)
/* 8049F20C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8049F210  D0 1B 00 D4 */	stfs f0, 0xd4(r27)
/* 8049F214  EC 1E 07 F2 */	fmuls f0, f30, f31
/* 8049F218  D0 1B 00 D8 */	stfs f0, 0xd8(r27)
/* 8049F21C  7F 63 DB 78 */	mr r3, r27
/* 8049F220  81 9B 00 00 */	lwz r12, 0(r27)
/* 8049F224  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8049F228  7D 89 03 A6 */	mtctr r12
/* 8049F22C  4E 80 04 21 */	bctrl 
lbl_8049F230:
/* 8049F230  7F 43 D3 78 */	mr r3, r26
/* 8049F234  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8049F238  FC 40 08 90 */	fmr f2, f1
/* 8049F23C  7F C4 F3 78 */	mr r4, r30
/* 8049F240  4B E5 9C 94 */	b draw__9J2DScreenFffPC14J2DGrafContext
lbl_8049F244:
/* 8049F244  3B 39 00 01 */	addi r25, r25, 1
/* 8049F248  2C 19 00 06 */	cmpwi r25, 6
/* 8049F24C  3A F7 00 04 */	addi r23, r23, 4
/* 8049F250  3B BD 00 01 */	addi r29, r29, 1
/* 8049F254  41 80 FD 54 */	blt lbl_8049EFA8
/* 8049F258  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8049F25C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8049F260  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 8049F264  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8049F268  39 61 00 40 */	addi r11, r1, 0x40
/* 8049F26C  4B EC 2F 98 */	b _restgpr_20
/* 8049F270  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8049F274  7C 08 03 A6 */	mtlr r0
/* 8049F278  38 21 00 60 */	addi r1, r1, 0x60
/* 8049F27C  4E 80 00 20 */	blr 
