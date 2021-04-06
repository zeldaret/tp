lbl_8083ED88:
/* 8083ED88  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8083ED8C  7C 08 02 A6 */	mflr r0
/* 8083ED90  90 01 01 74 */	stw r0, 0x174(r1)
/* 8083ED94  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 8083ED98  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 8083ED9C  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 8083EDA0  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 8083EDA4  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 8083EDA8  F3 A1 01 48 */	psq_st f29, 328(r1), 0, 0 /* qr0 */
/* 8083EDAC  DB 81 01 30 */	stfd f28, 0x130(r1)
/* 8083EDB0  F3 81 01 38 */	psq_st f28, 312(r1), 0, 0 /* qr0 */
/* 8083EDB4  DB 61 01 20 */	stfd f27, 0x120(r1)
/* 8083EDB8  F3 61 01 28 */	psq_st f27, 296(r1), 0, 0 /* qr0 */
/* 8083EDBC  DB 41 01 10 */	stfd f26, 0x110(r1)
/* 8083EDC0  F3 41 01 18 */	psq_st f26, 280(r1), 0, 0 /* qr0 */
/* 8083EDC4  DB 21 01 00 */	stfd f25, 0x100(r1)
/* 8083EDC8  F3 21 01 08 */	psq_st f25, 264(r1), 0, 0 /* qr0 */
/* 8083EDCC  39 61 01 00 */	addi r11, r1, 0x100
/* 8083EDD0  4B B2 33 F5 */	bl _savegpr_23
/* 8083EDD4  FF 60 08 90 */	fmr f27, f1
/* 8083EDD8  7C 99 23 78 */	mr r25, r4
/* 8083EDDC  7C DA 33 78 */	mr r26, r6
/* 8083EDE0  3C 80 80 84 */	lis r4, lit_3894@ha /* 0x808454AC@ha */
/* 8083EDE4  3B E4 54 AC */	addi r31, r4, lit_3894@l /* 0x808454AC@l */
/* 8083EDE8  FC 00 DA 10 */	fabs f0, f27
/* 8083EDEC  FC 20 00 18 */	frsp f1, f0
/* 8083EDF0  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 8083EDF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083EDF8  41 80 00 1C */	blt lbl_8083EE14
/* 8083EDFC  2C 19 00 00 */	cmpwi r25, 0
/* 8083EE00  41 82 00 0C */	beq lbl_8083EE0C
/* 8083EE04  2C 19 00 01 */	cmpwi r25, 1
/* 8083EE08  40 82 00 14 */	bne lbl_8083EE1C
lbl_8083EE0C:
/* 8083EE0C  2C 05 00 00 */	cmpwi r5, 0
/* 8083EE10  40 82 00 0C */	bne lbl_8083EE1C
lbl_8083EE14:
/* 8083EE14  38 60 00 00 */	li r3, 0
/* 8083EE18  48 00 05 48 */	b lbl_8083F360
lbl_8083EE1C:
/* 8083EE1C  3B C0 00 00 */	li r30, 0
/* 8083EE20  3A E0 00 00 */	li r23, 0
/* 8083EE24  3B 00 00 00 */	li r24, 0
/* 8083EE28  1C 19 00 E4 */	mulli r0, r25, 0xe4
/* 8083EE2C  7F 83 02 14 */	add r28, r3, r0
/* 8083EE30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8083EE34  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8083EE38  C3 3F 01 50 */	lfs f25, 0x150(r31)
lbl_8083EE3C:
/* 8083EE3C  7C 7C C2 14 */	add r3, r28, r24
/* 8083EE40  C0 03 13 54 */	lfs f0, 0x1354(r3)
/* 8083EE44  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8083EE48  C0 03 13 64 */	lfs f0, 0x1364(r3)
/* 8083EE4C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8083EE50  C0 03 13 74 */	lfs f0, 0x1374(r3)
/* 8083EE54  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8083EE58  7F 63 DB 78 */	mr r3, r27
/* 8083EE5C  38 81 00 9C */	addi r4, r1, 0x9c
/* 8083EE60  3B A1 00 A8 */	addi r29, r1, 0xa8
/* 8083EE64  7F BD BA 14 */	add r29, r29, r23
/* 8083EE68  7F A5 EB 78 */	mr r5, r29
/* 8083EE6C  4B B0 7F 01 */	bl PSMTXMultVec
/* 8083EE70  D3 3D 00 00 */	stfs f25, 0(r29)
/* 8083EE74  3B DE 00 01 */	addi r30, r30, 1
/* 8083EE78  2C 1E 00 04 */	cmpwi r30, 4
/* 8083EE7C  3A F7 00 0C */	addi r23, r23, 0xc
/* 8083EE80  3B 18 00 30 */	addi r24, r24, 0x30
/* 8083EE84  41 80 FF B8 */	blt lbl_8083EE3C
/* 8083EE88  2C 19 00 00 */	cmpwi r25, 0
/* 8083EE8C  41 82 00 0C */	beq lbl_8083EE98
/* 8083EE90  2C 19 00 01 */	cmpwi r25, 1
/* 8083EE94  40 82 00 0C */	bne lbl_8083EEA0
lbl_8083EE98:
/* 8083EE98  C0 3F 02 94 */	lfs f1, 0x294(r31)
/* 8083EE9C  48 00 00 08 */	b lbl_8083EEA4
lbl_8083EEA0:
/* 8083EEA0  C0 3F 01 CC */	lfs f1, 0x1cc(r31)
lbl_8083EEA4:
/* 8083EEA4  3B C0 00 00 */	li r30, 0
/* 8083EEA8  3B 00 00 00 */	li r24, 0
/* 8083EEAC  3A E0 00 00 */	li r23, 0
/* 8083EEB0  EF 5B 00 72 */	fmuls f26, f27, f1
/* 8083EEB4  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8083EEB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8083EEBC  EF 3B 00 32 */	fmuls f25, f27, f0
/* 8083EEC0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 8083EEC4  C3 A3 11 80 */	lfs f29, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 8083EEC8  C3 DF 01 50 */	lfs f30, 0x150(r31)
/* 8083EECC  C3 FF 02 60 */	lfs f31, 0x260(r31)
lbl_8083EED0:
/* 8083EED0  3B A1 00 A8 */	addi r29, r1, 0xa8
/* 8083EED4  7F BD BA 14 */	add r29, r29, r23
/* 8083EED8  38 1E 00 01 */	addi r0, r30, 1
/* 8083EEDC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8083EEE0  3B 81 00 A8 */	addi r28, r1, 0xa8
/* 8083EEE4  7F 9C 02 14 */	add r28, r28, r0
/* 8083EEE8  38 1E 00 02 */	addi r0, r30, 2
/* 8083EEEC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8083EEF0  3B 61 00 A8 */	addi r27, r1, 0xa8
/* 8083EEF4  7F 7B 02 14 */	add r27, r27, r0
/* 8083EEF8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8083EEFC  7F 84 E3 78 */	mr r4, r28
/* 8083EF00  7F A5 EB 78 */	mr r5, r29
/* 8083EF04  4B A2 7C 31 */	bl __mi__4cXyzCFRC3Vec
/* 8083EF08  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8083EF0C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8083EF10  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8083EF14  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8083EF18  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8083EF1C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8083EF20  38 61 00 30 */	addi r3, r1, 0x30
/* 8083EF24  7F 64 DB 78 */	mr r4, r27
/* 8083EF28  7F 85 E3 78 */	mr r5, r28
/* 8083EF2C  4B A2 7C 09 */	bl __mi__4cXyzCFRC3Vec
/* 8083EF30  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8083EF34  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8083EF38  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8083EF3C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8083EF40  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8083EF44  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8083EF48  2C 1E 00 00 */	cmpwi r30, 0
/* 8083EF4C  40 82 00 14 */	bne lbl_8083EF60
/* 8083EF50  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8083EF54  EC 00 D0 2A */	fadds f0, f0, f26
/* 8083EF58  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8083EF5C  48 00 00 10 */	b lbl_8083EF6C
lbl_8083EF60:
/* 8083EF60  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8083EF64  EC 00 C8 2A */	fadds f0, f0, f25
/* 8083EF68  D0 1B 00 04 */	stfs f0, 4(r27)
lbl_8083EF6C:
/* 8083EF6C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 8083EF70  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8083EF74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083EF78  4C 41 13 82 */	cror 2, 1, 2
/* 8083EF7C  40 82 00 0C */	bne lbl_8083EF88
/* 8083EF80  38 60 00 00 */	li r3, 0
/* 8083EF84  48 00 03 DC */	b lbl_8083F360
lbl_8083EF88:
/* 8083EF88  38 61 00 24 */	addi r3, r1, 0x24
/* 8083EF8C  7F 64 DB 78 */	mr r4, r27
/* 8083EF90  7F A5 EB 78 */	mr r5, r29
/* 8083EF94  4B A2 7B A1 */	bl __mi__4cXyzCFRC3Vec
/* 8083EF98  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8083EF9C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8083EFA0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8083EFA4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8083EFA8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8083EFAC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8083EFB0  38 61 00 60 */	addi r3, r1, 0x60
/* 8083EFB4  4B B0 81 85 */	bl PSVECSquareMag
/* 8083EFB8  FF 80 08 90 */	fmr f28, f1
/* 8083EFBC  FC 00 E2 10 */	fabs f0, f28
/* 8083EFC0  FC 00 00 18 */	frsp f0, f0
/* 8083EFC4  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8083EFC8  40 80 00 0C */	bge lbl_8083EFD4
/* 8083EFCC  38 60 00 00 */	li r3, 0
/* 8083EFD0  48 00 03 90 */	b lbl_8083F360
lbl_8083EFD4:
/* 8083EFD4  38 61 00 90 */	addi r3, r1, 0x90
/* 8083EFD8  4B B0 81 61 */	bl PSVECSquareMag
/* 8083EFDC  FF 60 08 90 */	fmr f27, f1
/* 8083EFE0  38 61 00 84 */	addi r3, r1, 0x84
/* 8083EFE4  4B B0 81 55 */	bl PSVECSquareMag
/* 8083EFE8  FC 1B F0 40 */	fcmpo cr0, f27, f30
/* 8083EFEC  40 81 00 10 */	ble lbl_8083EFFC
/* 8083EFF0  FC 00 D8 34 */	frsqrte f0, f27
/* 8083EFF4  EC 00 06 F2 */	fmuls f0, f0, f27
/* 8083EFF8  48 00 00 08 */	b lbl_8083F000
lbl_8083EFFC:
/* 8083EFFC  FC 00 D8 90 */	fmr f0, f27
lbl_8083F000:
/* 8083F000  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8083F004  40 81 00 10 */	ble lbl_8083F014
/* 8083F008  FC 40 08 34 */	frsqrte f2, f1
/* 8083F00C  EC 42 00 72 */	fmuls f2, f2, f1
/* 8083F010  48 00 00 08 */	b lbl_8083F018
lbl_8083F014:
/* 8083F014  FC 40 08 90 */	fmr f2, f1
lbl_8083F018:
/* 8083F018  FC 1C F0 40 */	fcmpo cr0, f28, f30
/* 8083F01C  40 81 00 10 */	ble lbl_8083F02C
/* 8083F020  FC 60 E0 34 */	frsqrte f3, f28
/* 8083F024  EC 63 07 32 */	fmuls f3, f3, f28
/* 8083F028  48 00 00 08 */	b lbl_8083F030
lbl_8083F02C:
/* 8083F02C  FC 60 E0 90 */	fmr f3, f28
lbl_8083F030:
/* 8083F030  EC 00 10 2A */	fadds f0, f0, f2
/* 8083F034  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8083F038  4C 40 13 82 */	cror 2, 0, 2
/* 8083F03C  40 82 00 0C */	bne lbl_8083F048
/* 8083F040  38 60 00 00 */	li r3, 0
/* 8083F044  48 00 03 1C */	b lbl_8083F360
lbl_8083F048:
/* 8083F048  EC 1C D8 2A */	fadds f0, f28, f27
/* 8083F04C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8083F050  EC 1F 07 32 */	fmuls f0, f31, f28
/* 8083F054  EC 41 00 24 */	fdivs f2, f1, f0
/* 8083F058  D3 C1 00 54 */	stfs f30, 0x54(r1)
/* 8083F05C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8083F060  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8083F064  EC 02 00 32 */	fmuls f0, f2, f0
/* 8083F068  EC 01 00 2A */	fadds f0, f1, f0
/* 8083F06C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8083F070  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8083F074  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8083F078  EC 02 00 32 */	fmuls f0, f2, f0
/* 8083F07C  EC 01 00 2A */	fadds f0, f1, f0
/* 8083F080  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8083F084  EC 1C 00 B2 */	fmuls f0, f28, f2
/* 8083F088  EC 02 00 32 */	fmuls f0, f2, f0
/* 8083F08C  EC 3B 00 28 */	fsubs f1, f27, f0
/* 8083F090  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8083F094  40 80 00 08 */	bge lbl_8083F09C
/* 8083F098  FC 20 F0 90 */	fmr f1, f30
lbl_8083F09C:
/* 8083F09C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8083F0A0  40 81 00 10 */	ble lbl_8083F0B0
/* 8083F0A4  FC 00 08 34 */	frsqrte f0, f1
/* 8083F0A8  EF 80 00 72 */	fmuls f28, f0, f1
/* 8083F0AC  48 00 00 08 */	b lbl_8083F0B4
lbl_8083F0B0:
/* 8083F0B0  FF 80 08 90 */	fmr f28, f1
lbl_8083F0B4:
/* 8083F0B4  2C 19 00 00 */	cmpwi r25, 0
/* 8083F0B8  41 82 00 0C */	beq lbl_8083F0C4
/* 8083F0BC  2C 19 00 01 */	cmpwi r25, 1
/* 8083F0C0  40 82 00 4C */	bne lbl_8083F10C
lbl_8083F0C4:
/* 8083F0C4  2C 1E 00 00 */	cmpwi r30, 0
/* 8083F0C8  40 82 00 24 */	bne lbl_8083F0EC
/* 8083F0CC  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083F0D0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8083F0D4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8083F0D8  FC 00 00 50 */	fneg f0, f0
/* 8083F0DC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8083F0E0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8083F0E4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8083F0E8  48 00 00 68 */	b lbl_8083F150
lbl_8083F0EC:
/* 8083F0EC  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083F0F0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8083F0F4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8083F0F8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8083F0FC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8083F100  FC 00 00 50 */	fneg f0, f0
/* 8083F104  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8083F108  48 00 00 48 */	b lbl_8083F150
lbl_8083F10C:
/* 8083F10C  2C 1E 00 00 */	cmpwi r30, 0
/* 8083F110  40 82 00 24 */	bne lbl_8083F134
/* 8083F114  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083F118  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8083F11C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8083F120  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8083F124  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8083F128  FC 00 00 50 */	fneg f0, f0
/* 8083F12C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8083F130  48 00 00 20 */	b lbl_8083F150
lbl_8083F134:
/* 8083F134  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 8083F138  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8083F13C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8083F140  FC 00 00 50 */	fneg f0, f0
/* 8083F144  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8083F148  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8083F14C  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_8083F150:
/* 8083F150  38 61 00 48 */	addi r3, r1, 0x48
/* 8083F154  4B B0 7F E5 */	bl PSVECSquareMag
/* 8083F158  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8083F15C  40 81 00 58 */	ble lbl_8083F1B4
/* 8083F160  FC 00 08 34 */	frsqrte f0, f1
/* 8083F164  C8 9F 01 60 */	lfd f4, 0x160(r31)
/* 8083F168  FC 44 00 32 */	fmul f2, f4, f0
/* 8083F16C  C8 7F 01 68 */	lfd f3, 0x168(r31)
/* 8083F170  FC 00 00 32 */	fmul f0, f0, f0
/* 8083F174  FC 01 00 32 */	fmul f0, f1, f0
/* 8083F178  FC 03 00 28 */	fsub f0, f3, f0
/* 8083F17C  FC 02 00 32 */	fmul f0, f2, f0
/* 8083F180  FC 44 00 32 */	fmul f2, f4, f0
/* 8083F184  FC 00 00 32 */	fmul f0, f0, f0
/* 8083F188  FC 01 00 32 */	fmul f0, f1, f0
/* 8083F18C  FC 03 00 28 */	fsub f0, f3, f0
/* 8083F190  FC 02 00 32 */	fmul f0, f2, f0
/* 8083F194  FC 44 00 32 */	fmul f2, f4, f0
/* 8083F198  FC 00 00 32 */	fmul f0, f0, f0
/* 8083F19C  FC 01 00 32 */	fmul f0, f1, f0
/* 8083F1A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8083F1A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8083F1A8  FC 21 00 32 */	fmul f1, f1, f0
/* 8083F1AC  FC 20 08 18 */	frsp f1, f1
/* 8083F1B0  48 00 00 88 */	b lbl_8083F238
lbl_8083F1B4:
/* 8083F1B4  C8 1F 01 70 */	lfd f0, 0x170(r31)
/* 8083F1B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083F1BC  40 80 00 10 */	bge lbl_8083F1CC
/* 8083F1C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8083F1C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8083F1C8  48 00 00 70 */	b lbl_8083F238
lbl_8083F1CC:
/* 8083F1CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8083F1D0  80 81 00 08 */	lwz r4, 8(r1)
/* 8083F1D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8083F1D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8083F1DC  7C 03 00 00 */	cmpw r3, r0
/* 8083F1E0  41 82 00 14 */	beq lbl_8083F1F4
/* 8083F1E4  40 80 00 40 */	bge lbl_8083F224
/* 8083F1E8  2C 03 00 00 */	cmpwi r3, 0
/* 8083F1EC  41 82 00 20 */	beq lbl_8083F20C
/* 8083F1F0  48 00 00 34 */	b lbl_8083F224
lbl_8083F1F4:
/* 8083F1F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083F1F8  41 82 00 0C */	beq lbl_8083F204
/* 8083F1FC  38 00 00 01 */	li r0, 1
/* 8083F200  48 00 00 28 */	b lbl_8083F228
lbl_8083F204:
/* 8083F204  38 00 00 02 */	li r0, 2
/* 8083F208  48 00 00 20 */	b lbl_8083F228
lbl_8083F20C:
/* 8083F20C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8083F210  41 82 00 0C */	beq lbl_8083F21C
/* 8083F214  38 00 00 05 */	li r0, 5
/* 8083F218  48 00 00 10 */	b lbl_8083F228
lbl_8083F21C:
/* 8083F21C  38 00 00 03 */	li r0, 3
/* 8083F220  48 00 00 08 */	b lbl_8083F228
lbl_8083F224:
/* 8083F224  38 00 00 04 */	li r0, 4
lbl_8083F228:
/* 8083F228  2C 00 00 01 */	cmpwi r0, 1
/* 8083F22C  40 82 00 0C */	bne lbl_8083F238
/* 8083F230  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8083F234  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8083F238:
/* 8083F238  FC 00 0A 10 */	fabs f0, f1
/* 8083F23C  FC 00 00 18 */	frsp f0, f0
/* 8083F240  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8083F244  40 80 00 0C */	bge lbl_8083F250
/* 8083F248  38 60 00 00 */	li r3, 0
/* 8083F24C  48 00 01 14 */	b lbl_8083F360
lbl_8083F250:
/* 8083F250  EC 7C 08 24 */	fdivs f3, f28, f1
/* 8083F254  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8083F258  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8083F25C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8083F260  EC 41 00 2A */	fadds f2, f1, f0
/* 8083F264  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8083F268  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8083F26C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8083F270  EC 01 00 2A */	fadds f0, f1, f0
/* 8083F274  D3 DC 00 00 */	stfs f30, 0(r28)
/* 8083F278  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8083F27C  D0 5C 00 08 */	stfs f2, 8(r28)
/* 8083F280  38 61 00 18 */	addi r3, r1, 0x18
/* 8083F284  7F 84 E3 78 */	mr r4, r28
/* 8083F288  7F A5 EB 78 */	mr r5, r29
/* 8083F28C  4B A2 78 A9 */	bl __mi__4cXyzCFRC3Vec
/* 8083F290  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8083F294  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8083F298  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8083F29C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8083F2A0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8083F2A4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8083F2A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8083F2AC  7F 64 DB 78 */	mr r4, r27
/* 8083F2B0  7F 85 E3 78 */	mr r5, r28
/* 8083F2B4  4B A2 78 81 */	bl __mi__4cXyzCFRC3Vec
/* 8083F2B8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8083F2BC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8083F2C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8083F2C4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8083F2C8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8083F2CC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8083F2D0  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 8083F2D4  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 8083F2D8  4B A2 83 9D */	bl cM_atan2s__Fff
/* 8083F2DC  7C 7B 1B 78 */	mr r27, r3
/* 8083F2E0  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8083F2E4  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 8083F2E8  4B A2 83 8D */	bl cM_atan2s__Fff
/* 8083F2EC  7C 03 D8 50 */	subf r0, r3, r27
/* 8083F2F0  7C 03 07 34 */	extsh r3, r0
/* 8083F2F4  7F 9A C2 14 */	add r28, r26, r24
/* 8083F2F8  A8 1C 00 00 */	lha r0, 0(r28)
/* 8083F2FC  7C 00 1A 14 */	add r0, r0, r3
/* 8083F300  B0 1C 00 00 */	sth r0, 0(r28)
/* 8083F304  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 8083F308  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 8083F30C  4B A2 83 69 */	bl cM_atan2s__Fff
/* 8083F310  7C 7B 1B 78 */	mr r27, r3
/* 8083F314  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8083F318  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 8083F31C  4B A2 83 59 */	bl cM_atan2s__Fff
/* 8083F320  7C 03 D8 50 */	subf r0, r3, r27
/* 8083F324  7C 03 07 34 */	extsh r3, r0
/* 8083F328  A8 1C 00 02 */	lha r0, 2(r28)
/* 8083F32C  7C 00 1A 14 */	add r0, r0, r3
/* 8083F330  B0 1C 00 02 */	sth r0, 2(r28)
/* 8083F334  2C 1E 00 00 */	cmpwi r30, 0
/* 8083F338  40 82 00 10 */	bne lbl_8083F348
/* 8083F33C  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8083F340  EC 00 D0 2A */	fadds f0, f0, f26
/* 8083F344  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_8083F348:
/* 8083F348  3B DE 00 01 */	addi r30, r30, 1
/* 8083F34C  2C 1E 00 02 */	cmpwi r30, 2
/* 8083F350  3B 18 00 02 */	addi r24, r24, 2
/* 8083F354  3A F7 00 0C */	addi r23, r23, 0xc
/* 8083F358  41 80 FB 78 */	blt lbl_8083EED0
/* 8083F35C  38 60 00 01 */	li r3, 1
lbl_8083F360:
/* 8083F360  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 8083F364  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 8083F368  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 8083F36C  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 8083F370  E3 A1 01 48 */	psq_l f29, 328(r1), 0, 0 /* qr0 */
/* 8083F374  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 8083F378  E3 81 01 38 */	psq_l f28, 312(r1), 0, 0 /* qr0 */
/* 8083F37C  CB 81 01 30 */	lfd f28, 0x130(r1)
/* 8083F380  E3 61 01 28 */	psq_l f27, 296(r1), 0, 0 /* qr0 */
/* 8083F384  CB 61 01 20 */	lfd f27, 0x120(r1)
/* 8083F388  E3 41 01 18 */	psq_l f26, 280(r1), 0, 0 /* qr0 */
/* 8083F38C  CB 41 01 10 */	lfd f26, 0x110(r1)
/* 8083F390  E3 21 01 08 */	psq_l f25, 264(r1), 0, 0 /* qr0 */
/* 8083F394  CB 21 01 00 */	lfd f25, 0x100(r1)
/* 8083F398  39 61 01 00 */	addi r11, r1, 0x100
/* 8083F39C  4B B2 2E 75 */	bl _restgpr_23
/* 8083F3A0  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8083F3A4  7C 08 03 A6 */	mtlr r0
/* 8083F3A8  38 21 01 70 */	addi r1, r1, 0x170
/* 8083F3AC  4E 80 00 20 */	blr 
