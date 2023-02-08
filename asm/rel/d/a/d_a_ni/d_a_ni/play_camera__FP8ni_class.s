lbl_8094ED90:
/* 8094ED90  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 8094ED94  7C 08 02 A6 */	mflr r0
/* 8094ED98  90 01 02 44 */	stw r0, 0x244(r1)
/* 8094ED9C  DB E1 02 30 */	stfd f31, 0x230(r1)
/* 8094EDA0  F3 E1 02 38 */	psq_st f31, 568(r1), 0, 0 /* qr0 */
/* 8094EDA4  DB C1 02 20 */	stfd f30, 0x220(r1)
/* 8094EDA8  F3 C1 02 28 */	psq_st f30, 552(r1), 0, 0 /* qr0 */
/* 8094EDAC  DB A1 02 10 */	stfd f29, 0x210(r1)
/* 8094EDB0  F3 A1 02 18 */	psq_st f29, 536(r1), 0, 0 /* qr0 */
/* 8094EDB4  DB 81 02 00 */	stfd f28, 0x200(r1)
/* 8094EDB8  F3 81 02 08 */	psq_st f28, 520(r1), 0, 0 /* qr0 */
/* 8094EDBC  DB 61 01 F0 */	stfd f27, 0x1f0(r1)
/* 8094EDC0  F3 61 01 F8 */	psq_st f27, 504(r1), 0, 0 /* qr0 */
/* 8094EDC4  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 8094EDC8  4B A1 34 01 */	bl _savegpr_24
/* 8094EDCC  7C 7C 1B 78 */	mr r28, r3
/* 8094EDD0  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 8094EDD4  3B E3 11 C0 */	addi r31, r3, lit_3958@l /* 0x809511C0@l */
/* 8094EDD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094EDDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094EDE0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8094EDE4  7C 00 07 74 */	extsb r0, r0
/* 8094EDE8  38 83 5D 74 */	addi r4, r3, 0x5d74
/* 8094EDEC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8094EDF0  7F C4 00 2E */	lwzx r30, r4, r0
/* 8094EDF4  83 03 5D 74 */	lwz r24, 0x5d74(r3)
/* 8094EDF8  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8094EDFC  3B 60 00 00 */	li r27, 0
/* 8094EE00  C3 DC 0A B4 */	lfs f30, 0xab4(r28)
/* 8094EE04  83 5C 0A B8 */	lwz r26, 0xab8(r28)
/* 8094EE08  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094EE0C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8094EE10  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8094EE14  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8094EE18  3B 20 00 00 */	li r25, 0
/* 8094EE1C  A8 1C 0A C4 */	lha r0, 0xac4(r28)
/* 8094EE20  2C 00 00 02 */	cmpwi r0, 2
/* 8094EE24  41 82 01 04 */	beq lbl_8094EF28
/* 8094EE28  40 80 00 14 */	bge lbl_8094EE3C
/* 8094EE2C  2C 00 00 00 */	cmpwi r0, 0
/* 8094EE30  41 82 00 1C */	beq lbl_8094EE4C
/* 8094EE34  40 80 00 28 */	bge lbl_8094EE5C
/* 8094EE38  48 00 05 34 */	b lbl_8094F36C
lbl_8094EE3C:
/* 8094EE3C  2C 00 00 04 */	cmpwi r0, 4
/* 8094EE40  41 82 04 08 */	beq lbl_8094F248
/* 8094EE44  40 80 05 28 */	bge lbl_8094F36C
/* 8094EE48  48 00 01 0C */	b lbl_8094EF54
lbl_8094EE4C:
/* 8094EE4C  38 00 00 01 */	li r0, 1
/* 8094EE50  B0 1C 0A C4 */	sth r0, 0xac4(r28)
/* 8094EE54  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8094EE58  D0 1C 0A 00 */	stfs f0, 0xa00(r28)
lbl_8094EE5C:
/* 8094EE5C  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 8094EE60  28 00 00 02 */	cmplwi r0, 2
/* 8094EE64  41 82 00 2C */	beq lbl_8094EE90
/* 8094EE68  7F 83 E3 78 */	mr r3, r28
/* 8094EE6C  38 80 00 02 */	li r4, 2
/* 8094EE70  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8094EE74  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8094EE78  38 C0 00 00 */	li r6, 0
/* 8094EE7C  4B 6C CA 8D */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8094EE80  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 8094EE84  60 00 00 02 */	ori r0, r0, 2
/* 8094EE88  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 8094EE8C  48 00 07 0C */	b lbl_8094F598
lbl_8094EE90:
/* 8094EE90  38 00 00 02 */	li r0, 2
/* 8094EE94  B0 1C 0A C4 */	sth r0, 0xac4(r28)
/* 8094EE98  38 00 00 00 */	li r0, 0
/* 8094EE9C  B0 1C 0A C6 */	sth r0, 0xac6(r28)
/* 8094EEA0  38 7E 02 48 */	addi r3, r30, 0x248
/* 8094EEA4  4B 81 26 2D */	bl Stop__9dCamera_cFv
/* 8094EEA8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8094EEAC  D0 1C 0A FC */	stfs f0, 0xafc(r28)
/* 8094EEB0  C0 18 00 D8 */	lfs f0, 0xd8(r24)
/* 8094EEB4  D0 1C 0A C8 */	stfs f0, 0xac8(r28)
/* 8094EEB8  C0 18 00 DC */	lfs f0, 0xdc(r24)
/* 8094EEBC  D0 1C 0A CC */	stfs f0, 0xacc(r28)
/* 8094EEC0  C0 18 00 E0 */	lfs f0, 0xe0(r24)
/* 8094EEC4  D0 1C 0A D0 */	stfs f0, 0xad0(r28)
/* 8094EEC8  C0 18 00 E4 */	lfs f0, 0xe4(r24)
/* 8094EECC  D0 1C 0A D4 */	stfs f0, 0xad4(r28)
/* 8094EED0  C0 18 00 E8 */	lfs f0, 0xe8(r24)
/* 8094EED4  D0 1C 0A D8 */	stfs f0, 0xad8(r28)
/* 8094EED8  C0 18 00 EC */	lfs f0, 0xec(r24)
/* 8094EEDC  D0 1C 0A DC */	stfs f0, 0xadc(r28)
/* 8094EEE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094EEE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094EEE8  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 8094EEEC  C0 03 00 D0 */	lfs f0, 0xd0(r3)
/* 8094EEF0  D0 1C 0A EC */	stfs f0, 0xaec(r28)
/* 8094EEF4  38 00 00 03 */	li r0, 3
/* 8094EEF8  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 8094EEFC  38 60 00 00 */	li r3, 0
/* 8094EF00  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 8094EF04  38 00 00 01 */	li r0, 1
/* 8094EF08  90 1D 06 14 */	stw r0, 0x614(r29)
/* 8094EF0C  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 8094EF10  90 7D 06 10 */	stw r3, 0x610(r29)
/* 8094EF14  B0 7D 06 0A */	sth r3, 0x60a(r29)
/* 8094EF18  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8094EF1C  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 8094EF20  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 8094EF24  4B 6B 90 B5 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_8094EF28:
/* 8094EF28  A8 1C 0A C6 */	lha r0, 0xac6(r28)
/* 8094EF2C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8094EF30  40 82 04 3C */	bne lbl_8094F36C
/* 8094EF34  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8094EF38  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 8094EF3C  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 8094EF40  4B 6B 90 99 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 8094EF44  38 00 00 03 */	li r0, 3
/* 8094EF48  B0 1C 0A C4 */	sth r0, 0xac4(r28)
/* 8094EF4C  38 00 00 00 */	li r0, 0
/* 8094EF50  B0 1C 0A C6 */	sth r0, 0xac6(r28)
lbl_8094EF54:
/* 8094EF54  3B 20 00 01 */	li r25, 1
/* 8094EF58  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 8094EF5C  D0 1C 0A EC */	stfs f0, 0xaec(r28)
/* 8094EF60  38 61 00 44 */	addi r3, r1, 0x44
/* 8094EF64  38 9C 0A C8 */	addi r4, r28, 0xac8
/* 8094EF68  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8094EF6C  4B 91 7B C9 */	bl __mi__4cXyzCFRC3Vec
/* 8094EF70  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8094EF74  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8094EF78  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8094EF7C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8094EF80  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8094EF84  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8094EF88  FC 20 08 50 */	fneg f1, f1
/* 8094EF8C  FC 40 00 50 */	fneg f2, f0
/* 8094EF90  4B 91 86 E5 */	bl cM_atan2s__Fff
/* 8094EF94  7C 64 1B 78 */	mr r4, r3
/* 8094EF98  C3 FF 00 E4 */	lfs f31, 0xe4(r31)
/* 8094EF9C  C3 BC 0A FC */	lfs f29, 0xafc(r28)
/* 8094EFA0  C3 9F 01 00 */	lfs f28, 0x100(r31)
/* 8094EFA4  C3 7F 00 28 */	lfs f27, 0x28(r31)
/* 8094EFA8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8094EFAC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8094EFB0  40 81 00 30 */	ble lbl_8094EFE0
/* 8094EFB4  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8094EFB8  FF E0 00 90 */	fmr f31, f0
/* 8094EFBC  2C 1A 00 00 */	cmpwi r26, 0
/* 8094EFC0  41 82 00 84 */	beq lbl_8094F044
/* 8094EFC4  3B 60 00 01 */	li r27, 1
/* 8094EFC8  C3 BF 00 4C */	lfs f29, 0x4c(r31)
/* 8094EFCC  C3 9F 01 04 */	lfs f28, 0x104(r31)
/* 8094EFD0  C3 7F 01 08 */	lfs f27, 0x108(r31)
/* 8094EFD4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8094EFD8  D0 1C 0A FC */	stfs f0, 0xafc(r28)
/* 8094EFDC  48 00 00 68 */	b lbl_8094F044
lbl_8094EFE0:
/* 8094EFE0  C0 3C 0A AC */	lfs f1, 0xaac(r28)
/* 8094EFE4  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8094EFE8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8094EFEC  A8 7C 0A F4 */	lha r3, 0xaf4(r28)
/* 8094EFF0  FC 00 08 1E */	fctiwz f0, f1
/* 8094EFF4  D8 01 01 C0 */	stfd f0, 0x1c0(r1)
/* 8094EFF8  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 8094EFFC  7C 03 02 14 */	add r0, r3, r0
/* 8094F000  B0 1C 0A F4 */	sth r0, 0xaf4(r28)
/* 8094F004  C0 5C 0A FC */	lfs f2, 0xafc(r28)
/* 8094F008  C0 3F 01 10 */	lfs f1, 0x110(r31)
/* 8094F00C  C0 1C 0A B0 */	lfs f0, 0xab0(r28)
/* 8094F010  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094F014  EC 02 00 2A */	fadds f0, f2, f0
/* 8094F018  D0 1C 0A FC */	stfs f0, 0xafc(r28)
/* 8094F01C  C0 3C 0A FC */	lfs f1, 0xafc(r28)
/* 8094F020  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8094F024  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094F028  40 81 00 0C */	ble lbl_8094F034
/* 8094F02C  D0 1C 0A FC */	stfs f0, 0xafc(r28)
/* 8094F030  48 00 00 14 */	b lbl_8094F044
lbl_8094F034:
/* 8094F034  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8094F038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094F03C  40 80 00 08 */	bge lbl_8094F044
/* 8094F040  D0 1C 0A FC */	stfs f0, 0xafc(r28)
lbl_8094F044:
/* 8094F044  38 7C 0A F4 */	addi r3, r28, 0xaf4
/* 8094F048  38 A0 00 02 */	li r5, 2
/* 8094F04C  38 C0 20 00 */	li r6, 0x2000
/* 8094F050  4B 92 15 B9 */	bl cLib_addCalcAngleS2__FPssss
/* 8094F054  38 7C 0A F8 */	addi r3, r28, 0xaf8
/* 8094F058  FC 20 E8 90 */	fmr f1, f29
/* 8094F05C  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 8094F060  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 8094F064  4B 92 09 D9 */	bl cLib_addCalc2__FPffff
/* 8094F068  38 7C 0B 00 */	addi r3, r28, 0xb00
/* 8094F06C  FC 20 E0 90 */	fmr f1, f28
/* 8094F070  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 8094F074  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8094F078  4B 92 09 C5 */	bl cLib_addCalc2__FPffff
/* 8094F07C  38 7C 0B 04 */	addi r3, r28, 0xb04
/* 8094F080  FC 20 D8 90 */	fmr f1, f27
/* 8094F084  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 8094F088  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8094F08C  4B 92 09 B1 */	bl cLib_addCalc2__FPffff
/* 8094F090  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8094F094  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8094F098  80 63 00 00 */	lwz r3, 0(r3)
/* 8094F09C  A8 9C 0A F4 */	lha r4, 0xaf4(r28)
/* 8094F0A0  4B 6B D3 3D */	bl mDoMtx_YrotS__FPA4_fs
/* 8094F0A4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094F0A8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8094F0AC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8094F0B0  C0 1C 0A F8 */	lfs f0, 0xaf8(r28)
/* 8094F0B4  FC 00 00 50 */	fneg f0, f0
/* 8094F0B8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8094F0BC  38 61 00 98 */	addi r3, r1, 0x98
/* 8094F0C0  38 81 00 80 */	addi r4, r1, 0x80
/* 8094F0C4  4B 92 1E 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8094F0C8  38 61 00 80 */	addi r3, r1, 0x80
/* 8094F0CC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8094F0D0  7C 65 1B 78 */	mr r5, r3
/* 8094F0D4  4B 9F 7F BD */	bl PSVECAdd
/* 8094F0D8  38 7C 0A C8 */	addi r3, r28, 0xac8
/* 8094F0DC  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8094F0E0  FC 40 F8 90 */	fmr f2, f31
/* 8094F0E4  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 8094F0E8  4B 92 09 55 */	bl cLib_addCalc2__FPffff
/* 8094F0EC  38 7C 0A D0 */	addi r3, r28, 0xad0
/* 8094F0F0  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 8094F0F4  FC 40 F8 90 */	fmr f2, f31
/* 8094F0F8  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 8094F0FC  4B 92 09 41 */	bl cLib_addCalc2__FPffff
/* 8094F100  C0 1C 0A CC */	lfs f0, 0xacc(r28)
/* 8094F104  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 8094F108  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8094F10C  40 80 00 0C */	bge lbl_8094F118
/* 8094F110  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 8094F114  48 00 00 0C */	b lbl_8094F120
lbl_8094F118:
/* 8094F118  C3 FF 00 AC */	lfs f31, 0xac(r31)
/* 8094F11C  C0 7F 00 38 */	lfs f3, 0x38(r31)
lbl_8094F120:
/* 8094F120  38 7C 0A CC */	addi r3, r28, 0xacc
/* 8094F124  FC 40 F8 90 */	fmr f2, f31
/* 8094F128  4B 92 09 15 */	bl cLib_addCalc2__FPffff
/* 8094F12C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8094F130  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8094F134  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8094F138  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8094F13C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8094F140  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8094F144  C0 5C 0B 04 */	lfs f2, 0xb04(r28)
/* 8094F148  C0 7C 0A 00 */	lfs f3, 0xa00(r28)
/* 8094F14C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8094F150  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8094F154  EC 00 18 28 */	fsubs f0, f0, f3
/* 8094F158  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094F15C  EC 03 00 2A */	fadds f0, f3, f0
/* 8094F160  EC 02 00 2A */	fadds f0, f2, f0
/* 8094F164  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8094F168  D0 1C 0A D8 */	stfs f0, 0xad8(r28)
/* 8094F16C  38 7C 0A F0 */	addi r3, r28, 0xaf0
/* 8094F170  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094F174  FC 40 08 90 */	fmr f2, f1
/* 8094F178  C0 7F 01 18 */	lfs f3, 0x118(r31)
/* 8094F17C  4B 92 08 C1 */	bl cLib_addCalc2__FPffff
/* 8094F180  38 7C 0A D4 */	addi r3, r28, 0xad4
/* 8094F184  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8094F188  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 8094F18C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8094F190  4B 92 08 AD */	bl cLib_addCalc2__FPffff
/* 8094F194  38 7C 0A D8 */	addi r3, r28, 0xad8
/* 8094F198  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8094F19C  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 8094F1A0  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8094F1A4  C0 1C 0A F0 */	lfs f0, 0xaf0(r28)
/* 8094F1A8  EC 63 00 32 */	fmuls f3, f3, f0
/* 8094F1AC  4B 92 08 91 */	bl cLib_addCalc2__FPffff
/* 8094F1B0  38 7C 0A DC */	addi r3, r28, 0xadc
/* 8094F1B4  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8094F1B8  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 8094F1BC  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 8094F1C0  4B 92 08 7D */	bl cLib_addCalc2__FPffff
/* 8094F1C4  A8 1C 0A C6 */	lha r0, 0xac6(r28)
/* 8094F1C8  2C 00 00 02 */	cmpwi r0, 2
/* 8094F1CC  40 80 00 34 */	bge lbl_8094F200
/* 8094F1D0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8094F1D4  D0 1C 0A C8 */	stfs f0, 0xac8(r28)
/* 8094F1D8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8094F1DC  D0 1C 0A CC */	stfs f0, 0xacc(r28)
/* 8094F1E0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8094F1E4  D0 1C 0A D0 */	stfs f0, 0xad0(r28)
/* 8094F1E8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8094F1EC  D0 1C 0A D4 */	stfs f0, 0xad4(r28)
/* 8094F1F0  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8094F1F4  D0 1C 0A D8 */	stfs f0, 0xad8(r28)
/* 8094F1F8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8094F1FC  D0 1C 0A DC */	stfs f0, 0xadc(r28)
lbl_8094F200:
/* 8094F200  A8 1C 0A C6 */	lha r0, 0xac6(r28)
/* 8094F204  2C 00 01 5E */	cmpwi r0, 0x15e
/* 8094F208  41 82 00 1C */	beq lbl_8094F224
/* 8094F20C  C0 3C 04 AC */	lfs f1, 0x4ac(r28)
/* 8094F210  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8094F214  EC 21 00 28 */	fsubs f1, f1, f0
/* 8094F218  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8094F21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094F220  40 81 01 4C */	ble lbl_8094F36C
lbl_8094F224:
/* 8094F224  38 00 00 04 */	li r0, 4
/* 8094F228  B0 1C 0A C4 */	sth r0, 0xac4(r28)
/* 8094F22C  38 00 00 00 */	li r0, 0
/* 8094F230  B0 1C 0A C6 */	sth r0, 0xac6(r28)
/* 8094F234  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8094F238  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 8094F23C  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 8094F240  4B 6B 8D 99 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 8094F244  48 00 01 28 */	b lbl_8094F36C
lbl_8094F248:
/* 8094F248  3B 20 00 01 */	li r25, 1
/* 8094F24C  A8 1C 0A C6 */	lha r0, 0xac6(r28)
/* 8094F250  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8094F254  40 82 01 18 */	bne lbl_8094F36C
/* 8094F258  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8094F25C  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 8094F260  38 63 06 04 */	addi r3, r3, g_blackColor@l /* 0x80450604@l */
/* 8094F264  4B 6B 8D 75 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 8094F268  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8094F26C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8094F270  80 63 00 00 */	lwz r3, 0(r3)
/* 8094F274  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8094F278  4B 6B D1 65 */	bl mDoMtx_YrotS__FPA4_fs
/* 8094F27C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094F280  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8094F284  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8094F288  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8094F28C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 8094F290  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8094F294  38 61 00 98 */	addi r3, r1, 0x98
/* 8094F298  38 9C 0A C8 */	addi r4, r28, 0xac8
/* 8094F29C  4B 92 1C 51 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8094F2A0  38 7C 0A C8 */	addi r3, r28, 0xac8
/* 8094F2A4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8094F2A8  7C 65 1B 78 */	mr r5, r3
/* 8094F2AC  4B 9F 7D E5 */	bl PSVECAdd
/* 8094F2B0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8094F2B4  D0 1C 0A D4 */	stfs f0, 0xad4(r28)
/* 8094F2B8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8094F2BC  D0 1C 0A D8 */	stfs f0, 0xad8(r28)
/* 8094F2C0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8094F2C4  D0 1C 0A DC */	stfs f0, 0xadc(r28)
/* 8094F2C8  C0 3C 0A D8 */	lfs f1, 0xad8(r28)
/* 8094F2CC  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8094F2D0  EC 01 00 2A */	fadds f0, f1, f0
/* 8094F2D4  D0 1C 0A D8 */	stfs f0, 0xad8(r28)
/* 8094F2D8  C0 1C 0A D4 */	lfs f0, 0xad4(r28)
/* 8094F2DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8094F2E0  C0 1C 0A D8 */	lfs f0, 0xad8(r28)
/* 8094F2E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8094F2E8  C0 1C 0A DC */	lfs f0, 0xadc(r28)
/* 8094F2EC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8094F2F0  C0 1C 0A C8 */	lfs f0, 0xac8(r28)
/* 8094F2F4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8094F2F8  C0 1C 0A CC */	lfs f0, 0xacc(r28)
/* 8094F2FC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8094F300  C0 1C 0A D0 */	lfs f0, 0xad0(r28)
/* 8094F304  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8094F308  38 7E 02 48 */	addi r3, r30, 0x248
/* 8094F30C  38 81 00 38 */	addi r4, r1, 0x38
/* 8094F310  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8094F314  C0 3C 0A EC */	lfs f1, 0xaec(r28)
/* 8094F318  38 C0 00 00 */	li r6, 0
/* 8094F31C  4B 83 18 85 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 8094F320  38 7E 02 48 */	addi r3, r30, 0x248
/* 8094F324  4B 81 21 89 */	bl Start__9dCamera_cFv
/* 8094F328  38 7E 02 48 */	addi r3, r30, 0x248
/* 8094F32C  38 80 00 00 */	li r4, 0
/* 8094F330  4B 81 3C DD */	bl SetTrimSize__9dCamera_cFl
/* 8094F334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094F338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094F33C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8094F340  4B 6F 31 29 */	bl reset__14dEvt_control_cFv
/* 8094F344  38 00 00 02 */	li r0, 2
/* 8094F348  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 8094F34C  38 00 00 01 */	li r0, 1
/* 8094F350  90 1D 06 14 */	stw r0, 0x614(r29)
/* 8094F354  38 00 00 00 */	li r0, 0
/* 8094F358  B0 1C 0A C4 */	sth r0, 0xac4(r28)
/* 8094F35C  B0 1C 05 FA */	sth r0, 0x5fa(r28)
/* 8094F360  B0 1C 05 FC */	sth r0, 0x5fc(r28)
/* 8094F364  38 00 00 0A */	li r0, 0xa
/* 8094F368  B0 1C 05 62 */	sth r0, 0x562(r28)
lbl_8094F36C:
/* 8094F36C  A8 1C 0A C4 */	lha r0, 0xac4(r28)
/* 8094F370  2C 00 00 00 */	cmpwi r0, 0
/* 8094F374  41 82 02 24 */	beq lbl_8094F598
/* 8094F378  A8 7C 0A C6 */	lha r3, 0xac6(r28)
/* 8094F37C  38 03 00 01 */	addi r0, r3, 1
/* 8094F380  B0 1C 0A C6 */	sth r0, 0xac6(r28)
/* 8094F384  C0 1C 0A C8 */	lfs f0, 0xac8(r28)
/* 8094F388  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8094F38C  C0 1C 0A CC */	lfs f0, 0xacc(r28)
/* 8094F390  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8094F394  C0 1C 0A D0 */	lfs f0, 0xad0(r28)
/* 8094F398  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8094F39C  C0 1C 0A D4 */	lfs f0, 0xad4(r28)
/* 8094F3A0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8094F3A4  C0 1C 0A D8 */	lfs f0, 0xad8(r28)
/* 8094F3A8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8094F3AC  C0 1C 0A DC */	lfs f0, 0xadc(r28)
/* 8094F3B0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8094F3B4  2C 19 00 00 */	cmpwi r25, 0
/* 8094F3B8  41 82 01 98 */	beq lbl_8094F550
/* 8094F3BC  38 61 01 4C */	addi r3, r1, 0x14c
/* 8094F3C0  4B 72 89 E5 */	bl __ct__14dBgS_CamLinChkFv
/* 8094F3C4  38 61 01 4C */	addi r3, r1, 0x14c
/* 8094F3C8  38 9C 0A D4 */	addi r4, r28, 0xad4
/* 8094F3CC  38 BC 0A C8 */	addi r5, r28, 0xac8
/* 8094F3D0  7F 86 E3 78 */	mr r6, r28
/* 8094F3D4  4B 72 89 91 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8094F3D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8094F3DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8094F3E0  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 8094F3E4  7F 23 CB 78 */	mr r3, r25
/* 8094F3E8  38 81 01 4C */	addi r4, r1, 0x14c
/* 8094F3EC  4B 72 4F C9 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8094F3F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8094F3F4  41 82 00 84 */	beq lbl_8094F478
/* 8094F3F8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8094F3FC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8094F400  EC 21 00 28 */	fsubs f1, f1, f0
/* 8094F404  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8094F408  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 8094F40C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8094F410  EC 42 00 28 */	fsubs f2, f2, f0
/* 8094F414  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8094F418  4B 91 82 5D */	bl cM_atan2s__Fff
/* 8094F41C  7C 64 07 34 */	extsh r4, r3
/* 8094F420  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8094F424  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8094F428  80 63 00 00 */	lwz r3, 0(r3)
/* 8094F42C  4B 6B CF B1 */	bl mDoMtx_YrotS__FPA4_fs
/* 8094F430  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8094F434  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8094F438  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8094F43C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8094F440  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8094F444  38 61 00 98 */	addi r3, r1, 0x98
/* 8094F448  38 81 00 8C */	addi r4, r1, 0x8c
/* 8094F44C  4B 92 1A A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8094F450  38 61 00 20 */	addi r3, r1, 0x20
/* 8094F454  38 81 01 7C */	addi r4, r1, 0x17c
/* 8094F458  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8094F45C  4B 91 76 D9 */	bl __mi__4cXyzCFRC3Vec
/* 8094F460  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8094F464  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8094F468  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8094F46C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8094F470  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8094F474  D0 01 00 64 */	stfs f0, 0x64(r1)
lbl_8094F478:
/* 8094F478  2C 1B 00 00 */	cmpwi r27, 0
/* 8094F47C  40 82 00 B8 */	bne lbl_8094F534
/* 8094F480  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8094F484  4B 72 80 F9 */	bl __ct__11dBgS_GndChkFv
/* 8094F488  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8094F48C  4B 72 83 25 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 8094F490  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8094F494  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8094F498  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8094F49C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8094F4A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8094F4A4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8094F4A8  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8094F4AC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8094F4B0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8094F4B4  38 81 00 8C */	addi r4, r1, 0x8c
/* 8094F4B8  4B 91 88 71 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8094F4BC  7F 23 CB 78 */	mr r3, r25
/* 8094F4C0  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8094F4C4  4B 72 4F DD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8094F4C8  FF C0 08 90 */	fmr f30, f1
/* 8094F4CC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8094F4D0  38 81 00 8C */	addi r4, r1, 0x8c
/* 8094F4D4  4B 91 88 55 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8094F4D8  7F 23 CB 78 */	mr r3, r25
/* 8094F4DC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8094F4E0  4B 72 4F C1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8094F4E4  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 8094F4E8  40 80 00 0C */	bge lbl_8094F4F4
/* 8094F4EC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8094F4F0  48 00 00 08 */	b lbl_8094F4F8
lbl_8094F4F4:
/* 8094F4F4  D3 C1 00 60 */	stfs f30, 0x60(r1)
lbl_8094F4F8:
/* 8094F4F8  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8094F4FC  C0 1C 0B 00 */	lfs f0, 0xb00(r28)
/* 8094F500  EC 01 00 2A */	fadds f0, f1, f0
/* 8094F504  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8094F508  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8094F50C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8094F510  40 80 00 08 */	bge lbl_8094F518
/* 8094F514  D0 21 00 60 */	stfs f1, 0x60(r1)
lbl_8094F518:
/* 8094F518  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8094F51C  38 80 FF FF */	li r4, -1
/* 8094F520  4B 72 83 29 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 8094F524  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8094F528  38 80 FF FF */	li r4, -1
/* 8094F52C  4B 72 80 C5 */	bl __dt__11dBgS_GndChkFv
/* 8094F530  48 00 00 14 */	b lbl_8094F544
lbl_8094F534:
/* 8094F534  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8094F538  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8094F53C  EC 01 00 2A */	fadds f0, f1, f0
/* 8094F540  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_8094F544:
/* 8094F544  38 61 01 4C */	addi r3, r1, 0x14c
/* 8094F548  38 80 FF FF */	li r4, -1
/* 8094F54C  4B 72 88 B5 */	bl __dt__14dBgS_CamLinChkFv
lbl_8094F550:
/* 8094F550  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8094F554  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8094F558  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8094F55C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8094F560  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8094F564  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8094F568  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8094F56C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8094F570  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8094F574  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8094F578  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8094F57C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8094F580  38 7E 02 48 */	addi r3, r30, 0x248
/* 8094F584  38 81 00 14 */	addi r4, r1, 0x14
/* 8094F588  38 A1 00 08 */	addi r5, r1, 8
/* 8094F58C  C0 3C 0A EC */	lfs f1, 0xaec(r28)
/* 8094F590  38 C0 00 00 */	li r6, 0
/* 8094F594  4B 83 15 4D */	bl Set__9dCamera_cF4cXyz4cXyzfs
lbl_8094F598:
/* 8094F598  E3 E1 02 38 */	psq_l f31, 568(r1), 0, 0 /* qr0 */
/* 8094F59C  CB E1 02 30 */	lfd f31, 0x230(r1)
/* 8094F5A0  E3 C1 02 28 */	psq_l f30, 552(r1), 0, 0 /* qr0 */
/* 8094F5A4  CB C1 02 20 */	lfd f30, 0x220(r1)
/* 8094F5A8  E3 A1 02 18 */	psq_l f29, 536(r1), 0, 0 /* qr0 */
/* 8094F5AC  CB A1 02 10 */	lfd f29, 0x210(r1)
/* 8094F5B0  E3 81 02 08 */	psq_l f28, 520(r1), 0, 0 /* qr0 */
/* 8094F5B4  CB 81 02 00 */	lfd f28, 0x200(r1)
/* 8094F5B8  E3 61 01 F8 */	psq_l f27, 504(r1), 0, 0 /* qr0 */
/* 8094F5BC  CB 61 01 F0 */	lfd f27, 0x1f0(r1)
/* 8094F5C0  39 61 01 F0 */	addi r11, r1, 0x1f0
/* 8094F5C4  4B A1 2C 51 */	bl _restgpr_24
/* 8094F5C8  80 01 02 44 */	lwz r0, 0x244(r1)
/* 8094F5CC  7C 08 03 A6 */	mtlr r0
/* 8094F5D0  38 21 02 40 */	addi r1, r1, 0x240
/* 8094F5D4  4E 80 00 20 */	blr 
