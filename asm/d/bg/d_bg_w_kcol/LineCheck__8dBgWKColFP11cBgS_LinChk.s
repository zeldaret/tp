lbl_8007EE34:
/* 8007EE34  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8007EE38  7C 08 02 A6 */	mflr r0
/* 8007EE3C  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8007EE40  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 8007EE44  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, 0 /* qr0 */
/* 8007EE48  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 8007EE4C  F3 C1 01 98 */	psq_st f30, 408(r1), 0, 0 /* qr0 */
/* 8007EE50  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 8007EE54  F3 A1 01 88 */	psq_st f29, 392(r1), 0, 0 /* qr0 */
/* 8007EE58  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 8007EE5C  F3 81 01 78 */	psq_st f28, 376(r1), 0, 0 /* qr0 */
/* 8007EE60  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 8007EE64  F3 61 01 68 */	psq_st f27, 360(r1), 0, 0 /* qr0 */
/* 8007EE68  DB 41 01 50 */	stfd f26, 0x150(r1)
/* 8007EE6C  F3 41 01 58 */	psq_st f26, 344(r1), 0, 0 /* qr0 */
/* 8007EE70  DB 21 01 40 */	stfd f25, 0x140(r1)
/* 8007EE74  F3 21 01 48 */	psq_st f25, 328(r1), 0, 0 /* qr0 */
/* 8007EE78  39 61 01 40 */	addi r11, r1, 0x140
/* 8007EE7C  48 2E 33 25 */	bl _savegpr_14
/* 8007EE80  7C 6F 1B 78 */	mr r15, r3
/* 8007EE84  7C 90 23 78 */	mr r16, r4
/* 8007EE88  39 D0 00 24 */	addi r14, r16, 0x24
/* 8007EE8C  3B D0 00 30 */	addi r30, r16, 0x30
/* 8007EE90  7D C3 73 78 */	mr r3, r14
/* 8007EE94  7F C4 F3 78 */	mr r4, r30
/* 8007EE98  48 2C 85 05 */	bl PSVECSquareDistance
/* 8007EE9C  C0 02 8D 18 */	lfs f0, lit_4187(r2)
/* 8007EEA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007EEA4  40 81 00 10 */	ble lbl_8007EEB4
/* 8007EEA8  FC 00 08 34 */	frsqrte f0, f1
/* 8007EEAC  EF A0 00 72 */	fmuls f29, f0, f1
/* 8007EEB0  48 00 00 08 */	b lbl_8007EEB8
lbl_8007EEB4:
/* 8007EEB4  FF A0 08 90 */	fmr f29, f1
lbl_8007EEB8:
/* 8007EEB8  FC 00 EA 10 */	fabs f0, f29
/* 8007EEBC  FC 20 00 18 */	frsp f1, f0
/* 8007EEC0  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007EEC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007EEC8  40 80 00 0C */	bge lbl_8007EED4
/* 8007EECC  38 60 00 00 */	li r3, 0
/* 8007EED0  48 00 07 08 */	b lbl_8007F5D8
lbl_8007EED4:
/* 8007EED4  C3 82 8D 18 */	lfs f28, lit_4187(r2)
/* 8007EED8  7F C3 F3 78 */	mr r3, r30
/* 8007EEDC  7D C4 73 78 */	mr r4, r14
/* 8007EEE0  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8007EEE4  48 2C 81 D1 */	bl PSVECSubtract
/* 8007EEE8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8007EEEC  7C 64 1B 78 */	mr r4, r3
/* 8007EEF0  C0 02 8D 1C */	lfs f0, lit_4188(r2)
/* 8007EEF4  EC 20 E8 24 */	fdivs f1, f0, f29
/* 8007EEF8  48 2C 81 E1 */	bl PSVECScale
/* 8007EEFC  C0 0E 00 00 */	lfs f0, 0(r14)
/* 8007EF00  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8007EF04  C0 0E 00 04 */	lfs f0, 4(r14)
/* 8007EF08  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8007EF0C  C0 0E 00 08 */	lfs f0, 8(r14)
/* 8007EF10  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8007EF14  38 00 00 00 */	li r0, 0
/* 8007EF18  98 01 00 E8 */	stb r0, 0xe8(r1)
/* 8007EF1C  C3 C2 8D 20 */	lfs f30, lit_4189(r2)
/* 8007EF20  C3 62 8D 1C */	lfs f27, lit_4188(r2)
lbl_8007EF24:
/* 8007EF24  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8007EF28  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8007EF2C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8007EF30  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8007EF34  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8007EF38  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8007EF3C  EC 1B E0 2A */	fadds f0, f27, f28
/* 8007EF40  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8007EF44  4C 40 13 82 */	cror 2, 0, 2
/* 8007EF48  40 82 00 18 */	bne lbl_8007EF60
/* 8007EF4C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8007EF50  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8007EF54  7C 65 1B 78 */	mr r5, r3
/* 8007EF58  48 2C 81 39 */	bl PSVECAdd
/* 8007EF5C  48 00 00 1C */	b lbl_8007EF78
lbl_8007EF60:
/* 8007EF60  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8007EF64  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8007EF68  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8007EF6C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8007EF70  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8007EF74  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_8007EF78:
/* 8007EF78  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8007EF7C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8007EF80  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8007EF84  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8007EF88  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8007EF8C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8007EF90  38 61 00 98 */	addi r3, r1, 0x98
/* 8007EF94  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8007EF98  38 84 00 14 */	addi r4, r4, 0x14
/* 8007EF9C  38 A1 00 74 */	addi r5, r1, 0x74
/* 8007EFA0  48 2C 81 15 */	bl PSVECSubtract
/* 8007EFA4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8007EFA8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8007EFAC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8007EFB0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8007EFB4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8007EFB8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8007EFBC  38 61 00 8C */	addi r3, r1, 0x8c
/* 8007EFC0  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8007EFC4  38 84 00 14 */	addi r4, r4, 0x14
/* 8007EFC8  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8007EFCC  48 2C 80 E9 */	bl PSVECSubtract
/* 8007EFD0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8007EFD4  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8007EFD8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007EFDC  7C 00 00 26 */	mfcr r0
/* 8007EFE0  54 00 17 FF */	rlwinm. r0, r0, 2, 0x1f, 0x1f
/* 8007EFE4  41 82 00 08 */	beq lbl_8007EFEC
/* 8007EFE8  D0 21 00 74 */	stfs f1, 0x74(r1)
lbl_8007EFEC:
/* 8007EFEC  28 00 00 00 */	cmplwi r0, 0
/* 8007EFF0  40 82 00 08 */	bne lbl_8007EFF8
/* 8007EFF4  D0 21 00 68 */	stfs f1, 0x68(r1)
lbl_8007EFF8:
/* 8007EFF8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8007EFFC  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8007F000  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007F004  40 81 00 0C */	ble lbl_8007F010
/* 8007F008  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8007F00C  48 00 00 08 */	b lbl_8007F014
lbl_8007F010:
/* 8007F010  D0 21 00 6C */	stfs f1, 0x6c(r1)
lbl_8007F014:
/* 8007F014  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8007F018  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8007F01C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007F020  40 81 00 0C */	ble lbl_8007F02C
/* 8007F024  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8007F028  48 00 00 08 */	b lbl_8007F030
lbl_8007F02C:
/* 8007F02C  D0 21 00 70 */	stfs f1, 0x70(r1)
lbl_8007F030:
/* 8007F030  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8007F034  EC 20 F0 28 */	fsubs f1, f0, f30
/* 8007F038  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8007F03C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8007F040  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8007F044  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8007F048  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8007F04C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8007F050  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8007F054  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8007F058  EC 00 F0 2A */	fadds f0, f0, f30
/* 8007F05C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8007F060  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8007F064  EC 00 F0 2A */	fadds f0, f0, f30
/* 8007F068  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8007F06C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8007F070  EC 00 F0 2A */	fadds f0, f0, f30
/* 8007F074  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8007F078  48 2E 30 35 */	bl __cvt_fp2unsigned
/* 8007F07C  7C 6E 1B 79 */	or. r14, r3, r3
/* 8007F080  40 80 00 08 */	bge lbl_8007F088
/* 8007F084  39 C0 00 00 */	li r14, 0
lbl_8007F088:
/* 8007F088  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8007F08C  48 2E 30 21 */	bl __cvt_fp2unsigned
/* 8007F090  7C 7C 1B 78 */	mr r28, r3
/* 8007F094  82 4F 00 18 */	lwz r18, 0x18(r15)
/* 8007F098  80 12 00 20 */	lwz r0, 0x20(r18)
/* 8007F09C  7C 00 00 F8 */	nor r0, r0, r0
/* 8007F0A0  7C 1C 00 00 */	cmpw r28, r0
/* 8007F0A4  40 81 00 08 */	ble lbl_8007F0AC
/* 8007F0A8  7C 1C 03 78 */	mr r28, r0
lbl_8007F0AC:
/* 8007F0AC  7C 0E E0 00 */	cmpw r14, r28
/* 8007F0B0  40 80 05 14 */	bge lbl_8007F5C4
/* 8007F0B4  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8007F0B8  48 2E 2F F5 */	bl __cvt_fp2unsigned
/* 8007F0BC  7C 7D 1B 79 */	or. r29, r3, r3
/* 8007F0C0  40 80 00 08 */	bge lbl_8007F0C8
/* 8007F0C4  3B A0 00 00 */	li r29, 0
lbl_8007F0C8:
/* 8007F0C8  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8007F0CC  48 2E 2F E1 */	bl __cvt_fp2unsigned
/* 8007F0D0  7C 7B 1B 78 */	mr r27, r3
/* 8007F0D4  80 12 00 24 */	lwz r0, 0x24(r18)
/* 8007F0D8  7C 00 00 F8 */	nor r0, r0, r0
/* 8007F0DC  7C 1B 00 00 */	cmpw r27, r0
/* 8007F0E0  40 81 00 08 */	ble lbl_8007F0E8
/* 8007F0E4  7C 1B 03 78 */	mr r27, r0
lbl_8007F0E8:
/* 8007F0E8  7C 1D D8 00 */	cmpw r29, r27
/* 8007F0EC  40 80 04 D8 */	bge lbl_8007F5C4
/* 8007F0F0  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8007F0F4  48 2E 2F B9 */	bl __cvt_fp2unsigned
/* 8007F0F8  7C 71 1B 79 */	or. r17, r3, r3
/* 8007F0FC  40 80 00 08 */	bge lbl_8007F104
/* 8007F100  3A 20 00 00 */	li r17, 0
lbl_8007F104:
/* 8007F104  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8007F108  48 2E 2F A5 */	bl __cvt_fp2unsigned
/* 8007F10C  7C 7A 1B 78 */	mr r26, r3
/* 8007F110  80 12 00 28 */	lwz r0, 0x28(r18)
/* 8007F114  7C 00 00 F8 */	nor r0, r0, r0
/* 8007F118  7C 1A 00 00 */	cmpw r26, r0
/* 8007F11C  40 81 00 08 */	ble lbl_8007F124
/* 8007F120  7C 1A 03 78 */	mr r26, r0
lbl_8007F124:
/* 8007F124  7C 11 D0 00 */	cmpw r17, r26
/* 8007F128  40 80 04 9C */	bge lbl_8007F5C4
/* 8007F12C  38 00 00 00 */	li r0, 0
/* 8007F130  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8007F134  3A E0 00 00 */	li r23, 0
/* 8007F138  3A C0 00 00 */	li r22, 0
/* 8007F13C  38 00 00 00 */	li r0, 0
/* 8007F140  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8007F144  38 00 00 00 */	li r0, 0
/* 8007F148  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8007F14C  38 00 00 00 */	li r0, 0
/* 8007F150  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 8007F154  7E 35 8B 78 */	mr r21, r17
lbl_8007F158:
/* 8007F158  3C 60 00 0F */	lis r3, 0x000F /* 0x000F4240@ha */
/* 8007F15C  38 03 42 40 */	addi r0, r3, 0x4240 /* 0x000F4240@l */
/* 8007F160  90 01 00 DC */	stw r0, 0xdc(r1)
/* 8007F164  7F B4 EB 78 */	mr r20, r29
lbl_8007F168:
/* 8007F168  3C 60 00 0F */	lis r3, 0x000F /* 0x000F4240@ha */
/* 8007F16C  38 03 42 40 */	addi r0, r3, 0x4240 /* 0x000F4240@l */
/* 8007F170  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8007F174  38 00 00 00 */	li r0, 0
/* 8007F178  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8007F17C  3B 20 00 00 */	li r25, 0
/* 8007F180  3B 00 00 00 */	li r24, 0
/* 8007F184  7D D3 73 78 */	mr r19, r14
lbl_8007F188:
/* 8007F188  81 0F 00 18 */	lwz r8, 0x18(r15)
/* 8007F18C  80 68 00 0C */	lwz r3, 0xc(r8)
/* 8007F190  80 88 00 2C */	lwz r4, 0x2c(r8)
/* 8007F194  7E 67 24 30 */	srw r7, r19, r4
/* 8007F198  7E A5 24 30 */	srw r5, r21, r4
/* 8007F19C  80 08 00 34 */	lwz r0, 0x34(r8)
/* 8007F1A0  7C A6 00 30 */	slw r6, r5, r0
/* 8007F1A4  7E 85 24 30 */	srw r5, r20, r4
/* 8007F1A8  80 08 00 30 */	lwz r0, 0x30(r8)
/* 8007F1AC  7C A0 00 30 */	slw r0, r5, r0
/* 8007F1B0  7C C0 03 78 */	or r0, r6, r0
/* 8007F1B4  7C E0 03 78 */	or r0, r7, r0
/* 8007F1B8  54 05 10 3A */	slwi r5, r0, 2
/* 8007F1BC  48 00 00 28 */	b lbl_8007F1E4
lbl_8007F1C0:
/* 8007F1C0  7C 60 2A 14 */	add r3, r0, r5
/* 8007F1C4  38 84 FF FF */	addi r4, r4, -1
/* 8007F1C8  7E 66 24 30 */	srw r6, r19, r4
/* 8007F1CC  7E A5 24 30 */	srw r5, r21, r4
/* 8007F1D0  7E 80 24 30 */	srw r0, r20, r4
/* 8007F1D4  54 00 0F BC */	rlwinm r0, r0, 1, 0x1e, 0x1e
/* 8007F1D8  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8007F1DC  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 8007F1E0  54 05 10 3A */	slwi r5, r0, 2
lbl_8007F1E4:
/* 8007F1E4  7C 60 1B 78 */	mr r0, r3
/* 8007F1E8  7C A3 28 2E */	lwzx r5, r3, r5
/* 8007F1EC  2C 05 00 00 */	cmpwi r5, 0
/* 8007F1F0  40 80 FF D0 */	bge lbl_8007F1C0
/* 8007F1F4  54 A0 00 7E */	clrlwi r0, r5, 1
/* 8007F1F8  7E 43 02 14 */	add r18, r3, r0
/* 8007F1FC  38 00 00 01 */	li r0, 1
/* 8007F200  7C 03 20 30 */	slw r3, r0, r4
/* 8007F204  38 A3 FF FF */	addi r5, r3, -1
/* 8007F208  7E 60 28 38 */	and r0, r19, r5
/* 8007F20C  7C 00 18 50 */	subf r0, r0, r3
/* 8007F210  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8007F214  7E 80 28 38 */	and r0, r20, r5
/* 8007F218  7C 80 18 50 */	subf r4, r0, r3
/* 8007F21C  7E A0 28 38 */	and r0, r21, r5
/* 8007F220  7C 60 18 50 */	subf r3, r0, r3
/* 8007F224  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 8007F228  7C 03 00 00 */	cmpw r3, r0
/* 8007F22C  40 80 00 08 */	bge lbl_8007F234
/* 8007F230  90 61 00 DC */	stw r3, 0xdc(r1)
lbl_8007F234:
/* 8007F234  80 01 00 E0 */	lwz r0, 0xe0(r1)
/* 8007F238  7C 04 00 00 */	cmpw r4, r0
/* 8007F23C  40 80 00 08 */	bge lbl_8007F244
/* 8007F240  90 81 00 E0 */	stw r4, 0xe0(r1)
lbl_8007F244:
/* 8007F244  A0 12 00 02 */	lhz r0, 2(r18)
/* 8007F248  28 00 00 00 */	cmplwi r0, 0
/* 8007F24C  41 82 00 58 */	beq lbl_8007F2A4
/* 8007F250  7C 04 C0 00 */	cmpw r4, r24
/* 8007F254  40 81 00 50 */	ble lbl_8007F2A4
/* 8007F258  7C 04 C8 00 */	cmpw r4, r25
/* 8007F25C  40 81 00 40 */	ble lbl_8007F29C
/* 8007F260  80 01 00 D8 */	lwz r0, 0xd8(r1)
/* 8007F264  7C 04 00 00 */	cmpw r4, r0
/* 8007F268  40 81 00 20 */	ble lbl_8007F288
/* 8007F26C  7F 38 CB 78 */	mr r24, r25
/* 8007F270  7C 19 03 78 */	mr r25, r0
/* 8007F274  90 81 00 D8 */	stw r4, 0xd8(r1)
/* 8007F278  7E F6 BB 78 */	mr r22, r23
/* 8007F27C  82 E1 00 D4 */	lwz r23, 0xd4(r1)
/* 8007F280  92 41 00 D4 */	stw r18, 0xd4(r1)
/* 8007F284  48 00 00 20 */	b lbl_8007F2A4
lbl_8007F288:
/* 8007F288  7F 38 CB 78 */	mr r24, r25
/* 8007F28C  7C 99 23 78 */	mr r25, r4
/* 8007F290  7E F6 BB 78 */	mr r22, r23
/* 8007F294  7E 57 93 78 */	mr r23, r18
/* 8007F298  48 00 00 0C */	b lbl_8007F2A4
lbl_8007F29C:
/* 8007F29C  7C 98 23 78 */	mr r24, r4
/* 8007F2A0  7E 56 93 78 */	mr r22, r18
lbl_8007F2A4:
/* 8007F2A4  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 8007F2A8  7C 12 00 40 */	cmplw r18, r0
/* 8007F2AC  41 82 02 CC */	beq lbl_8007F578
/* 8007F2B0  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8007F2B4  7C 12 00 40 */	cmplw r18, r0
/* 8007F2B8  41 82 02 C0 */	beq lbl_8007F578
/* 8007F2BC  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 8007F2C0  7C 12 00 40 */	cmplw r18, r0
/* 8007F2C4  40 82 00 08 */	bne lbl_8007F2CC
/* 8007F2C8  48 00 02 B0 */	b lbl_8007F578
lbl_8007F2CC:
/* 8007F2CC  C3 E2 8D 18 */	lfs f31, lit_4187(r2)
/* 8007F2D0  48 00 02 9C */	b lbl_8007F56C
lbl_8007F2D4:
/* 8007F2D4  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8007F2D8  80 64 00 08 */	lwz r3, 8(r4)
/* 8007F2DC  A0 12 00 00 */	lhz r0, 0(r18)
/* 8007F2E0  54 00 20 36 */	slwi r0, r0, 4
/* 8007F2E4  7F E3 02 14 */	add r31, r3, r0
/* 8007F2E8  80 64 00 04 */	lwz r3, 4(r4)
/* 8007F2EC  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8007F2F0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F2F4  7E 23 02 14 */	add r17, r3, r0
/* 8007F2F8  80 64 00 00 */	lwz r3, 0(r4)
/* 8007F2FC  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8007F300  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F304  7C 03 02 14 */	add r0, r3, r0
/* 8007F308  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8007F30C  38 61 00 98 */	addi r3, r1, 0x98
/* 8007F310  7C 04 03 78 */	mr r4, r0
/* 8007F314  38 A1 00 50 */	addi r5, r1, 0x50
/* 8007F318  48 2C 7D 9D */	bl PSVECSubtract
/* 8007F31C  7E 23 8B 78 */	mr r3, r17
/* 8007F320  38 81 00 50 */	addi r4, r1, 0x50
/* 8007F324  48 2C 7E 71 */	bl PSVECDotProduct
/* 8007F328  FF 40 08 90 */	fmr f26, f1
/* 8007F32C  38 61 00 80 */	addi r3, r1, 0x80
/* 8007F330  80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 8007F334  38 A1 00 44 */	addi r5, r1, 0x44
/* 8007F338  48 2C 7D 7D */	bl PSVECSubtract
/* 8007F33C  7E 23 8B 78 */	mr r3, r17
/* 8007F340  38 81 00 44 */	addi r4, r1, 0x44
/* 8007F344  48 2C 7E 51 */	bl PSVECDotProduct
/* 8007F348  FC 1A F8 40 */	fcmpo cr0, f26, f31
/* 8007F34C  4C 41 13 82 */	cror 2, 1, 2
/* 8007F350  40 82 00 20 */	bne lbl_8007F370
/* 8007F354  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8007F358  4C 40 13 82 */	cror 2, 0, 2
/* 8007F35C  40 82 00 14 */	bne lbl_8007F370
/* 8007F360  88 10 00 53 */	lbz r0, 0x53(r16)
/* 8007F364  28 00 00 00 */	cmplwi r0, 0
/* 8007F368  41 82 02 04 */	beq lbl_8007F56C
/* 8007F36C  48 00 00 2C */	b lbl_8007F398
lbl_8007F370:
/* 8007F370  C0 02 8D 18 */	lfs f0, lit_4187(r2)
/* 8007F374  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 8007F378  4C 40 13 82 */	cror 2, 0, 2
/* 8007F37C  40 82 01 F0 */	bne lbl_8007F56C
/* 8007F380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F384  4C 41 13 82 */	cror 2, 1, 2
/* 8007F388  40 82 01 E4 */	bne lbl_8007F56C
/* 8007F38C  88 10 00 54 */	lbz r0, 0x54(r16)
/* 8007F390  28 00 00 00 */	cmplwi r0, 0
/* 8007F394  41 82 01 D8 */	beq lbl_8007F56C
lbl_8007F398:
/* 8007F398  EF 3A 08 28 */	fsubs f25, f26, f1
/* 8007F39C  FC 00 CA 10 */	fabs f0, f25
/* 8007F3A0  FC 00 00 18 */	frsp f0, f0
/* 8007F3A4  FC 00 02 10 */	fabs f0, f0
/* 8007F3A8  FC 20 00 18 */	frsp f1, f0
/* 8007F3AC  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007F3B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F3B4  41 80 01 B8 */	blt lbl_8007F56C
/* 8007F3B8  38 61 00 44 */	addi r3, r1, 0x44
/* 8007F3BC  38 81 00 50 */	addi r4, r1, 0x50
/* 8007F3C0  38 A1 00 38 */	addi r5, r1, 0x38
/* 8007F3C4  48 2C 7C F1 */	bl PSVECSubtract
/* 8007F3C8  38 61 00 38 */	addi r3, r1, 0x38
/* 8007F3CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8007F3D0  EC 3A C8 24 */	fdivs f1, f26, f25
/* 8007F3D4  48 2C 7D 05 */	bl PSVECScale
/* 8007F3D8  38 61 00 50 */	addi r3, r1, 0x50
/* 8007F3DC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8007F3E0  38 A1 00 20 */	addi r5, r1, 0x20
/* 8007F3E4  48 2C 7C AD */	bl PSVECAdd
/* 8007F3E8  38 61 00 20 */	addi r3, r1, 0x20
/* 8007F3EC  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8007F3F0  80 84 00 04 */	lwz r4, 4(r4)
/* 8007F3F4  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8007F3F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F3FC  7C 84 02 14 */	add r4, r4, r0
/* 8007F400  48 2C 7D 95 */	bl PSVECDotProduct
/* 8007F404  C0 02 8D 24 */	lfs f0, lit_4190(r2)
/* 8007F408  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F40C  4C 40 13 82 */	cror 2, 0, 2
/* 8007F410  40 82 01 5C */	bne lbl_8007F56C
/* 8007F414  38 61 00 20 */	addi r3, r1, 0x20
/* 8007F418  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8007F41C  80 84 00 04 */	lwz r4, 4(r4)
/* 8007F420  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8007F424  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F428  7C 84 02 14 */	add r4, r4, r0
/* 8007F42C  48 2C 7D 69 */	bl PSVECDotProduct
/* 8007F430  C0 02 8D 24 */	lfs f0, lit_4190(r2)
/* 8007F434  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F438  4C 40 13 82 */	cror 2, 0, 2
/* 8007F43C  40 82 01 30 */	bne lbl_8007F56C
/* 8007F440  38 61 00 20 */	addi r3, r1, 0x20
/* 8007F444  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8007F448  80 84 00 04 */	lwz r4, 4(r4)
/* 8007F44C  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8007F450  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007F454  7C 84 02 14 */	add r4, r4, r0
/* 8007F458  48 2C 7D 3D */	bl PSVECDotProduct
/* 8007F45C  C0 02 8D 28 */	lfs f0, lit_4191(r2)
/* 8007F460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F464  4C 41 13 82 */	cror 2, 1, 2
/* 8007F468  40 82 01 04 */	bne lbl_8007F56C
/* 8007F46C  C0 42 8D 24 */	lfs f2, lit_4190(r2)
/* 8007F470  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8007F474  EC 02 00 2A */	fadds f0, f2, f0
/* 8007F478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007F47C  4C 40 13 82 */	cror 2, 0, 2
/* 8007F480  40 82 00 EC */	bne lbl_8007F56C
/* 8007F484  C0 31 00 04 */	lfs f1, 4(r17)
/* 8007F488  48 1E 8D 5D */	bl cBgW_CheckBGround__Ff
/* 8007F48C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007F490  41 82 00 14 */	beq lbl_8007F4A4
/* 8007F494  88 10 00 51 */	lbz r0, 0x51(r16)
/* 8007F498  28 00 00 00 */	cmplwi r0, 0
/* 8007F49C  41 82 00 D0 */	beq lbl_8007F56C
/* 8007F4A0  48 00 00 30 */	b lbl_8007F4D0
lbl_8007F4A4:
/* 8007F4A4  C0 31 00 04 */	lfs f1, 4(r17)
/* 8007F4A8  48 1E 8D 55 */	bl cBgW_CheckBRoof__Ff
/* 8007F4AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007F4B0  41 82 00 14 */	beq lbl_8007F4C4
/* 8007F4B4  88 10 00 52 */	lbz r0, 0x52(r16)
/* 8007F4B8  28 00 00 00 */	cmplwi r0, 0
/* 8007F4BC  41 82 00 B0 */	beq lbl_8007F56C
/* 8007F4C0  48 00 00 10 */	b lbl_8007F4D0
lbl_8007F4C4:
/* 8007F4C4  88 10 00 50 */	lbz r0, 0x50(r16)
/* 8007F4C8  28 00 00 00 */	cmplwi r0, 0
/* 8007F4CC  41 82 00 A0 */	beq lbl_8007F56C
lbl_8007F4D0:
/* 8007F4D0  7D E3 7B 78 */	mr r3, r15
/* 8007F4D4  A0 92 00 00 */	lhz r4, 0(r18)
/* 8007F4D8  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8007F4DC  4B FF F6 95 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 8007F4E0  C0 11 00 00 */	lfs f0, 0(r17)
/* 8007F4E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8007F4E8  C0 11 00 04 */	lfs f0, 4(r17)
/* 8007F4EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8007F4F0  C0 11 00 08 */	lfs f0, 8(r17)
/* 8007F4F4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8007F4F8  7D E3 7B 78 */	mr r3, r15
/* 8007F4FC  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8007F500  80 B0 00 00 */	lwz r5, 0(r16)
/* 8007F504  80 D0 00 04 */	lwz r6, 4(r16)
/* 8007F508  38 E1 00 14 */	addi r7, r1, 0x14
/* 8007F50C  4B FF F6 B9 */	bl chkPolyThrough__8dBgWKColCFP5dBgPcP16cBgS_PolyPassChkP15cBgS_GrpPassChkR4cXyz
/* 8007F510  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007F514  40 82 00 58 */	bne lbl_8007F56C
/* 8007F518  38 61 00 20 */	addi r3, r1, 0x20
/* 8007F51C  80 81 00 C4 */	lwz r4, 0xc4(r1)
/* 8007F520  38 A1 00 08 */	addi r5, r1, 8
/* 8007F524  48 2C 7B 6D */	bl PSVECAdd
/* 8007F528  38 00 00 01 */	li r0, 1
/* 8007F52C  98 01 00 E8 */	stb r0, 0xe8(r1)
/* 8007F530  C0 01 00 08 */	lfs f0, 8(r1)
/* 8007F534  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8007F538  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8007F53C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8007F540  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8007F544  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8007F548  C0 01 00 08 */	lfs f0, 8(r1)
/* 8007F54C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8007F550  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8007F554  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8007F558  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8007F55C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8007F560  38 70 00 14 */	addi r3, r16, 0x14
/* 8007F564  A0 92 00 00 */	lhz r4, 0(r18)
/* 8007F568  48 1E 8C 3D */	bl SetPolyIndex__13cBgS_PolyInfoFi
lbl_8007F56C:
/* 8007F56C  A4 12 00 02 */	lhzu r0, 2(r18)
/* 8007F570  28 00 00 00 */	cmplwi r0, 0
/* 8007F574  40 82 FD 60 */	bne lbl_8007F2D4
lbl_8007F578:
/* 8007F578  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8007F57C  7E 73 02 14 */	add r19, r19, r0
/* 8007F580  7C 13 E0 40 */	cmplw r19, r28
/* 8007F584  40 81 FC 04 */	ble lbl_8007F188
/* 8007F588  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8007F58C  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 8007F590  92 E1 00 CC */	stw r23, 0xcc(r1)
/* 8007F594  92 C1 00 C8 */	stw r22, 0xc8(r1)
/* 8007F598  80 01 00 E0 */	lwz r0, 0xe0(r1)
/* 8007F59C  7E 94 02 14 */	add r20, r20, r0
/* 8007F5A0  7C 14 D8 40 */	cmplw r20, r27
/* 8007F5A4  40 81 FB C4 */	ble lbl_8007F168
/* 8007F5A8  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 8007F5AC  7E B5 02 14 */	add r21, r21, r0
/* 8007F5B0  7C 15 D0 40 */	cmplw r21, r26
/* 8007F5B4  40 81 FB A4 */	ble lbl_8007F158
/* 8007F5B8  88 01 00 E8 */	lbz r0, 0xe8(r1)
/* 8007F5BC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8007F5C0  40 82 00 14 */	bne lbl_8007F5D4
lbl_8007F5C4:
/* 8007F5C4  EF 9C D8 2A */	fadds f28, f28, f27
/* 8007F5C8  FC 1C E8 40 */	fcmpo cr0, f28, f29
/* 8007F5CC  4C 40 13 82 */	cror 2, 0, 2
/* 8007F5D0  41 82 F9 54 */	beq lbl_8007EF24
lbl_8007F5D4:
/* 8007F5D4  88 61 00 E8 */	lbz r3, 0xe8(r1)
lbl_8007F5D8:
/* 8007F5D8  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, 0 /* qr0 */
/* 8007F5DC  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 8007F5E0  E3 C1 01 98 */	psq_l f30, 408(r1), 0, 0 /* qr0 */
/* 8007F5E4  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 8007F5E8  E3 A1 01 88 */	psq_l f29, 392(r1), 0, 0 /* qr0 */
/* 8007F5EC  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 8007F5F0  E3 81 01 78 */	psq_l f28, 376(r1), 0, 0 /* qr0 */
/* 8007F5F4  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 8007F5F8  E3 61 01 68 */	psq_l f27, 360(r1), 0, 0 /* qr0 */
/* 8007F5FC  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 8007F600  E3 41 01 58 */	psq_l f26, 344(r1), 0, 0 /* qr0 */
/* 8007F604  CB 41 01 50 */	lfd f26, 0x150(r1)
/* 8007F608  E3 21 01 48 */	psq_l f25, 328(r1), 0, 0 /* qr0 */
/* 8007F60C  CB 21 01 40 */	lfd f25, 0x140(r1)
/* 8007F610  39 61 01 40 */	addi r11, r1, 0x140
/* 8007F614  48 2E 2B D9 */	bl _restgpr_14
/* 8007F618  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8007F61C  7C 08 03 A6 */	mtlr r0
/* 8007F620  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8007F624  4E 80 00 20 */	blr 
