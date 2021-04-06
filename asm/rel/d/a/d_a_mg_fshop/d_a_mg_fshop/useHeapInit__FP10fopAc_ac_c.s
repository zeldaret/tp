lbl_8086ECC8:
/* 8086ECC8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8086ECCC  7C 08 02 A6 */	mflr r0
/* 8086ECD0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8086ECD4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8086ECD8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8086ECDC  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8086ECE0  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 8086ECE4  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8086ECE8  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 8086ECEC  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8086ECF0  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 8086ECF4  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8086ECF8  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 8086ECFC  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 8086ED00  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 8086ED04  39 61 00 60 */	addi r11, r1, 0x60
/* 8086ED08  4B AF 34 A5 */	bl _savegpr_17
/* 8086ED0C  7C 7E 1B 78 */	mr r30, r3
/* 8086ED10  3C 60 80 87 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80870284@ha */
/* 8086ED14  3B 83 02 84 */	addi r28, r3, cNullVec__6Z2Calc@l /* 0x80870284@l */
/* 8086ED18  3C 60 80 87 */	lis r3, lit_3829@ha /* 0x80870094@ha */
/* 8086ED1C  3B E3 00 94 */	addi r31, r3, lit_3829@l /* 0x80870094@l */
/* 8086ED20  38 60 00 25 */	li r3, 0x25
/* 8086ED24  38 80 00 7B */	li r4, 0x7b
/* 8086ED28  38 A0 00 46 */	li r5, 0x46
/* 8086ED2C  4B 9F 8C A9 */	bl cM_initRnd2__Fiii
/* 8086ED30  3A 80 00 00 */	li r20, 0
/* 8086ED34  3A 20 00 00 */	li r17, 0
/* 8086ED38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086ED3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086ED40  3F A3 00 02 */	addis r29, r3, 2
/* 8086ED44  3B BD C2 F8 */	addi r29, r29, -15624
/* 8086ED48  C3 5F 01 40 */	lfs f26, 0x140(r31)
/* 8086ED4C  C3 7F 01 44 */	lfs f27, 0x144(r31)
/* 8086ED50  CB 9F 01 38 */	lfd f28, 0x138(r31)
/* 8086ED54  3F 20 43 30 */	lis r25, 0x4330
/* 8086ED58  C3 FF 01 48 */	lfs f31, 0x148(r31)
/* 8086ED5C  C3 DF 01 4C */	lfs f30, 0x14c(r31)
/* 8086ED60  C3 BF 01 50 */	lfs f29, 0x150(r31)
/* 8086ED64  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086ED68  3B 03 02 7C */	addi r24, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086ED6C  3A FC 05 C8 */	addi r23, r28, 0x5c8
/* 8086ED70  3E A0 11 00 */	lis r21, 0x1100
lbl_8086ED74:
/* 8086ED74  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 8086ED78  4B 9F 8C 15 */	bl cM_rndFX__Ff
/* 8086ED7C  56 80 07 3E */	clrlwi r0, r20, 0x1c
/* 8086ED80  7C 00 00 D0 */	neg r0, r0
/* 8086ED84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8086ED88  90 01 00 0C */	stw r0, 0xc(r1)
/* 8086ED8C  93 21 00 08 */	stw r25, 8(r1)
/* 8086ED90  C8 01 00 08 */	lfd f0, 8(r1)
/* 8086ED94  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8086ED98  EC 1B 00 32 */	fmuls f0, f27, f0
/* 8086ED9C  EC 1A 00 2A */	fadds f0, f26, f0
/* 8086EDA0  EC 00 08 2A */	fadds f0, f0, f1
/* 8086EDA4  7F 5E 8A 14 */	add r26, r30, r17
/* 8086EDA8  D0 1A 05 74 */	stfs f0, 0x574(r26)
/* 8086EDAC  7E 92 26 70 */	srawi r18, r20, 4
/* 8086EDB0  56 40 07 BE */	clrlwi r0, r18, 0x1e
/* 8086EDB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8086EDB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086EDBC  93 21 00 10 */	stw r25, 0x10(r1)
/* 8086EDC0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8086EDC4  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8086EDC8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8086EDCC  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8086EDD0  D0 1A 05 78 */	stfs f0, 0x578(r26)
/* 8086EDD4  D3 BA 05 7C */	stfs f29, 0x57c(r26)
/* 8086EDD8  2C 14 00 20 */	cmpwi r20, 0x20
/* 8086EDDC  41 80 00 54 */	blt lbl_8086EE30
/* 8086EDE0  2C 14 00 21 */	cmpwi r20, 0x21
/* 8086EDE4  41 81 00 4C */	bgt lbl_8086EE30
/* 8086EDE8  38 00 00 03 */	li r0, 3
/* 8086EDEC  90 1A 05 98 */	stw r0, 0x598(r26)
/* 8086EDF0  38 00 C0 00 */	li r0, -16384
/* 8086EDF4  B0 1A 05 80 */	sth r0, 0x580(r26)
/* 8086EDF8  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 8086EDFC  4B 9F 8D 09 */	bl cM_rndFX2__Ff
/* 8086EE00  FC 00 08 1E */	fctiwz f0, f1
/* 8086EE04  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8086EE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086EE0C  B0 1A 05 82 */	sth r0, 0x582(r26)
/* 8086EE10  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8086EE14  D0 1A 05 9C */	stfs f0, 0x59c(r26)
/* 8086EE18  D0 1A 05 A0 */	stfs f0, 0x5a0(r26)
/* 8086EE1C  C0 3A 05 78 */	lfs f1, 0x578(r26)
/* 8086EE20  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8086EE24  EC 01 00 2A */	fadds f0, f1, f0
/* 8086EE28  D0 1A 05 78 */	stfs f0, 0x578(r26)
/* 8086EE2C  48 00 00 D8 */	b lbl_8086EF04
lbl_8086EE30:
/* 8086EE30  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8086EE34  4B 9F 8C 99 */	bl cM_rndF2__Ff
/* 8086EE38  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 8086EE3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086EE40  40 80 00 20 */	bge lbl_8086EE60
/* 8086EE44  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 8086EE48  4B 9F 8C 85 */	bl cM_rndF2__Ff
/* 8086EE4C  FC 00 08 1E */	fctiwz f0, f1
/* 8086EE50  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8086EE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086EE58  90 1A 05 98 */	stw r0, 0x598(r26)
/* 8086EE5C  48 00 00 3C */	b lbl_8086EE98
lbl_8086EE60:
/* 8086EE60  7C 14 92 14 */	add r0, r20, r18
/* 8086EE64  90 1A 05 98 */	stw r0, 0x598(r26)
/* 8086EE68  80 1A 05 98 */	lwz r0, 0x598(r26)
/* 8086EE6C  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8086EE70  90 1A 05 98 */	stw r0, 0x598(r26)
/* 8086EE74  80 1A 05 98 */	lwz r0, 0x598(r26)
/* 8086EE78  2C 00 00 03 */	cmpwi r0, 3
/* 8086EE7C  40 82 00 1C */	bne lbl_8086EE98
/* 8086EE80  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 8086EE84  4B 9F 8C 49 */	bl cM_rndF2__Ff
/* 8086EE88  FC 00 08 1E */	fctiwz f0, f1
/* 8086EE8C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8086EE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086EE94  90 1A 05 98 */	stw r0, 0x598(r26)
lbl_8086EE98:
/* 8086EE98  38 00 40 00 */	li r0, 0x4000
/* 8086EE9C  B0 1A 05 80 */	sth r0, 0x580(r26)
/* 8086EEA0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8086EEA4  4B 9F 8C 61 */	bl cM_rndFX2__Ff
/* 8086EEA8  FC 00 08 1E */	fctiwz f0, f1
/* 8086EEAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8086EEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086EEB4  B0 1A 05 82 */	sth r0, 0x582(r26)
/* 8086EEB8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8086EEBC  4B 9F 8C 49 */	bl cM_rndFX2__Ff
/* 8086EEC0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8086EEC4  EC 00 08 2A */	fadds f0, f0, f1
/* 8086EEC8  D0 1A 05 9C */	stfs f0, 0x59c(r26)
/* 8086EECC  80 1A 05 98 */	lwz r0, 0x598(r26)
/* 8086EED0  2C 00 00 02 */	cmpwi r0, 2
/* 8086EED4  40 82 00 1C */	bne lbl_8086EEF0
/* 8086EED8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8086EEDC  4B 9F 8B F1 */	bl cM_rndF2__Ff
/* 8086EEE0  C0 1F 01 60 */	lfs f0, 0x160(r31)
/* 8086EEE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8086EEE8  D0 1A 05 A0 */	stfs f0, 0x5a0(r26)
/* 8086EEEC  48 00 00 18 */	b lbl_8086EF04
lbl_8086EEF0:
/* 8086EEF0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8086EEF4  4B 9F 8C 11 */	bl cM_rndFX2__Ff
/* 8086EEF8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8086EEFC  EC 00 08 2A */	fadds f0, f0, f1
/* 8086EF00  D0 1A 05 A0 */	stfs f0, 0x5a0(r26)
lbl_8086EF04:
/* 8086EF04  7F 03 C3 78 */	mr r3, r24
/* 8086EF08  80 1A 05 98 */	lwz r0, 0x598(r26)
/* 8086EF0C  54 00 10 3A */	slwi r0, r0, 2
/* 8086EF10  7C 97 00 2E */	lwzx r4, r23, r0
/* 8086EF14  7F A5 EB 78 */	mr r5, r29
/* 8086EF18  38 C0 00 80 */	li r6, 0x80
/* 8086EF1C  4B 7C D3 D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086EF20  7C 76 1B 78 */	mr r22, r3
/* 8086EF24  3C 80 00 08 */	lis r4, 8
/* 8086EF28  38 B5 00 84 */	addi r5, r21, 0x84
/* 8086EF2C  4B 7A 5D 29 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086EF30  90 7A 05 88 */	stw r3, 0x588(r26)
/* 8086EF34  80 7A 05 88 */	lwz r3, 0x588(r26)
/* 8086EF38  28 03 00 00 */	cmplwi r3, 0
/* 8086EF3C  40 82 00 0C */	bne lbl_8086EF48
/* 8086EF40  38 60 00 00 */	li r3, 0
/* 8086EF44  48 00 06 3C */	b lbl_8086F580
lbl_8086EF48:
/* 8086EF48  80 1A 05 98 */	lwz r0, 0x598(r26)
/* 8086EF4C  2C 00 00 03 */	cmpwi r0, 3
/* 8086EF50  40 82 00 50 */	bne lbl_8086EFA0
/* 8086EF54  38 1A 05 74 */	addi r0, r26, 0x574
/* 8086EF58  90 03 00 14 */	stw r0, 0x14(r3)
/* 8086EF5C  38 A0 00 00 */	li r5, 0
/* 8086EF60  3C 60 80 87 */	lis r3, frog_CallBack__FP8J3DJointi@ha /* 0x8086C140@ha */
/* 8086EF64  38 83 C1 40 */	addi r4, r3, frog_CallBack__FP8J3DJointi@l /* 0x8086C140@l */
/* 8086EF68  48 00 00 24 */	b lbl_8086EF8C
lbl_8086EF6C:
/* 8086EF6C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8086EF70  28 00 00 01 */	cmplwi r0, 1
/* 8086EF74  40 82 00 14 */	bne lbl_8086EF88
/* 8086EF78  80 76 00 28 */	lwz r3, 0x28(r22)
/* 8086EF7C  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 8086EF80  7C 63 00 2E */	lwzx r3, r3, r0
/* 8086EF84  90 83 00 04 */	stw r4, 4(r3)
lbl_8086EF88:
/* 8086EF88  38 A5 00 01 */	addi r5, r5, 1
lbl_8086EF8C:
/* 8086EF8C  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 8086EF90  A0 16 00 2C */	lhz r0, 0x2c(r22)
/* 8086EF94  7C 03 00 40 */	cmplw r3, r0
/* 8086EF98  41 80 FF D4 */	blt lbl_8086EF6C
/* 8086EF9C  48 00 00 68 */	b lbl_8086F004
lbl_8086EFA0:
/* 8086EFA0  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086EFA4  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086EFA8  38 80 00 05 */	li r4, 5
/* 8086EFAC  7F A5 EB 78 */	mr r5, r29
/* 8086EFB0  38 C0 00 80 */	li r6, 0x80
/* 8086EFB4  4B 7C D3 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086EFB8  7C 7B 1B 78 */	mr r27, r3
/* 8086EFBC  3A C0 00 00 */	li r22, 0
/* 8086EFC0  3A 40 00 00 */	li r18, 0
/* 8086EFC4  3E 60 11 00 */	lis r19, 0x1100 /* 0x11000084@ha */
lbl_8086EFC8:
/* 8086EFC8  7F 63 DB 78 */	mr r3, r27
/* 8086EFCC  3C 80 00 02 */	lis r4, 2
/* 8086EFD0  38 B3 00 84 */	addi r5, r19, 0x0084 /* 0x11000084@l */
/* 8086EFD4  4B 7A 5C 81 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086EFD8  38 12 05 8C */	addi r0, r18, 0x58c
/* 8086EFDC  7C 7A 01 2E */	stwx r3, r26, r0
/* 8086EFE0  7C 1A 00 2E */	lwzx r0, r26, r0
/* 8086EFE4  28 00 00 00 */	cmplwi r0, 0
/* 8086EFE8  40 82 00 0C */	bne lbl_8086EFF4
/* 8086EFEC  38 60 00 00 */	li r3, 0
/* 8086EFF0  48 00 05 90 */	b lbl_8086F580
lbl_8086EFF4:
/* 8086EFF4  3A D6 00 01 */	addi r22, r22, 1
/* 8086EFF8  2C 16 00 02 */	cmpwi r22, 2
/* 8086EFFC  3A 52 00 04 */	addi r18, r18, 4
/* 8086F000  41 80 FF C8 */	blt lbl_8086EFC8
lbl_8086F004:
/* 8086F004  3A 94 00 01 */	addi r20, r20, 1
/* 8086F008  2C 14 00 30 */	cmpwi r20, 0x30
/* 8086F00C  3A 31 00 40 */	addi r17, r17, 0x40
/* 8086F010  41 80 FD 64 */	blt lbl_8086ED74
/* 8086F014  38 60 00 4F */	li r3, 0x4f
/* 8086F018  38 80 00 85 */	li r4, 0x85
/* 8086F01C  38 A0 00 46 */	li r5, 0x46
/* 8086F020  4B 9F 89 B5 */	bl cM_initRnd2__Fiii
/* 8086F024  3A 60 00 00 */	li r19, 0
/* 8086F028  3B 60 00 00 */	li r27, 0
/* 8086F02C  3B 5C 05 E0 */	addi r26, r28, 0x5e0
/* 8086F030  3F 20 11 00 */	lis r25, 0x1100
/* 8086F034  3C 60 80 87 */	lis r3, Reel_CallBack__FP8J3DJointi@ha /* 0x8086C08C@ha */
/* 8086F038  3B 03 C0 8C */	addi r24, r3, Reel_CallBack__FP8J3DJointi@l /* 0x8086C08C@l */
/* 8086F03C  C3 BF 01 68 */	lfs f29, 0x168(r31)
/* 8086F040  C3 DF 01 6C */	lfs f30, 0x16c(r31)
/* 8086F044  C3 FF 01 70 */	lfs f31, 0x170(r31)
/* 8086F048  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F04C  3A A3 02 7C */	addi r21, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F050  3A DC 05 D8 */	addi r22, r28, 0x5d8
lbl_8086F054:
/* 8086F054  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 8086F058  4B 9F 8A 75 */	bl cM_rndF2__Ff
/* 8086F05C  FC 00 08 1E */	fctiwz f0, f1
/* 8086F060  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8086F064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086F068  7E 9E DA 14 */	add r20, r30, r27
/* 8086F06C  90 14 11 C0 */	stw r0, 0x11c0(r20)
/* 8086F070  D3 B4 11 74 */	stfs f29, 0x1174(r20)
/* 8086F074  D3 D4 11 78 */	stfs f30, 0x1178(r20)
/* 8086F078  D3 F4 11 7C */	stfs f31, 0x117c(r20)
/* 8086F07C  2C 13 00 01 */	cmpwi r19, 1
/* 8086F080  40 82 00 18 */	bne lbl_8086F098
/* 8086F084  C0 34 11 74 */	lfs f1, 0x1174(r20)
/* 8086F088  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8086F08C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8086F090  D0 14 11 74 */	stfs f0, 0x1174(r20)
/* 8086F094  48 00 00 1C */	b lbl_8086F0B0
lbl_8086F098:
/* 8086F098  2C 13 00 02 */	cmpwi r19, 2
/* 8086F09C  40 82 00 14 */	bne lbl_8086F0B0
/* 8086F0A0  C0 34 11 7C */	lfs f1, 0x117c(r20)
/* 8086F0A4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8086F0A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8086F0AC  D0 14 11 7C */	stfs f0, 0x117c(r20)
lbl_8086F0B0:
/* 8086F0B0  80 14 11 C0 */	lwz r0, 0x11c0(r20)
/* 8086F0B4  2C 00 00 00 */	cmpwi r0, 0
/* 8086F0B8  40 82 00 24 */	bne lbl_8086F0DC
/* 8086F0BC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8086F0C0  4B 9F 8A 0D */	bl cM_rndF2__Ff
/* 8086F0C4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8086F0C8  EC 20 08 2A */	fadds f1, f0, f1
/* 8086F0CC  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 8086F0D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8086F0D4  D0 14 11 C8 */	stfs f0, 0x11c8(r20)
/* 8086F0D8  48 00 00 20 */	b lbl_8086F0F8
lbl_8086F0DC:
/* 8086F0DC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8086F0E0  4B 9F 89 ED */	bl cM_rndF2__Ff
/* 8086F0E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8086F0E8  EC 20 08 2A */	fadds f1, f0, f1
/* 8086F0EC  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 8086F0F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8086F0F4  D0 14 11 C8 */	stfs f0, 0x11c8(r20)
lbl_8086F0F8:
/* 8086F0F8  7E A3 AB 78 */	mr r3, r21
/* 8086F0FC  80 14 11 C0 */	lwz r0, 0x11c0(r20)
/* 8086F100  54 00 10 3A */	slwi r0, r0, 2
/* 8086F104  7C 96 00 2E */	lwzx r4, r22, r0
/* 8086F108  7F A5 EB 78 */	mr r5, r29
/* 8086F10C  38 C0 00 80 */	li r6, 0x80
/* 8086F110  4B 7C D1 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F114  7C 77 1B 78 */	mr r23, r3
/* 8086F118  3C 80 00 08 */	lis r4, 8
/* 8086F11C  38 B9 00 84 */	addi r5, r25, 0x84
/* 8086F120  4B 7A 5B 35 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086F124  90 74 11 88 */	stw r3, 0x1188(r20)
/* 8086F128  80 74 11 88 */	lwz r3, 0x1188(r20)
/* 8086F12C  28 03 00 00 */	cmplwi r3, 0
/* 8086F130  40 82 00 0C */	bne lbl_8086F13C
/* 8086F134  38 60 00 00 */	li r3, 0
/* 8086F138  48 00 04 48 */	b lbl_8086F580
lbl_8086F13C:
/* 8086F13C  38 14 11 74 */	addi r0, r20, 0x1174
/* 8086F140  90 03 00 14 */	stw r0, 0x14(r3)
/* 8086F144  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8086F148  4B 9F 89 85 */	bl cM_rndF2__Ff
/* 8086F14C  FC 00 08 1E */	fctiwz f0, f1
/* 8086F150  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8086F154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086F158  B0 14 11 CC */	sth r0, 0x11cc(r20)
/* 8086F15C  38 80 00 00 */	li r4, 0
/* 8086F160  48 00 00 24 */	b lbl_8086F184
lbl_8086F164:
/* 8086F164  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8086F168  28 00 00 01 */	cmplwi r0, 1
/* 8086F16C  40 82 00 14 */	bne lbl_8086F180
/* 8086F170  80 77 00 28 */	lwz r3, 0x28(r23)
/* 8086F174  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 8086F178  7C 63 00 2E */	lwzx r3, r3, r0
/* 8086F17C  93 03 00 04 */	stw r24, 4(r3)
lbl_8086F180:
/* 8086F180  38 84 00 01 */	addi r4, r4, 1
lbl_8086F184:
/* 8086F184  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8086F188  A0 17 00 2C */	lhz r0, 0x2c(r23)
/* 8086F18C  7C 03 00 40 */	cmplw r3, r0
/* 8086F190  41 80 FF D4 */	blt lbl_8086F164
/* 8086F194  7E A3 AB 78 */	mr r3, r21
/* 8086F198  38 80 00 06 */	li r4, 6
/* 8086F19C  7F A5 EB 78 */	mr r5, r29
/* 8086F1A0  38 C0 00 80 */	li r6, 0x80
/* 8086F1A4  4B 7C D1 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F1A8  7C 77 1B 78 */	mr r23, r3
/* 8086F1AC  3A 40 00 00 */	li r18, 0
/* 8086F1B0  3A 20 00 00 */	li r17, 0
lbl_8086F1B4:
/* 8086F1B4  7E E3 BB 78 */	mr r3, r23
/* 8086F1B8  3C 80 00 02 */	lis r4, 2
/* 8086F1BC  38 B9 00 84 */	addi r5, r25, 0x84
/* 8086F1C0  4B 7A 5A 95 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086F1C4  38 11 11 8C */	addi r0, r17, 0x118c
/* 8086F1C8  7C 74 01 2E */	stwx r3, r20, r0
/* 8086F1CC  7C 14 00 2E */	lwzx r0, r20, r0
/* 8086F1D0  28 00 00 00 */	cmplwi r0, 0
/* 8086F1D4  40 82 00 0C */	bne lbl_8086F1E0
/* 8086F1D8  38 60 00 00 */	li r3, 0
/* 8086F1DC  48 00 03 A4 */	b lbl_8086F580
lbl_8086F1E0:
/* 8086F1E0  3A 52 00 01 */	addi r18, r18, 1
/* 8086F1E4  2C 12 00 06 */	cmpwi r18, 6
/* 8086F1E8  3A 31 00 04 */	addi r17, r17, 4
/* 8086F1EC  41 80 FF C8 */	blt lbl_8086F1B4
/* 8086F1F0  38 74 11 A4 */	addi r3, r20, 0x11a4
/* 8086F1F4  38 80 00 01 */	li r4, 1
/* 8086F1F8  38 A0 00 08 */	li r5, 8
/* 8086F1FC  38 C0 00 01 */	li r6, 1
/* 8086F200  4B 7A 33 E1 */	bl init__19mDoExt_3DlineMat0_cFUsUsi
/* 8086F204  2C 03 00 00 */	cmpwi r3, 0
/* 8086F208  40 82 00 0C */	bne lbl_8086F214
/* 8086F20C  38 60 00 00 */	li r3, 0
/* 8086F210  48 00 03 70 */	b lbl_8086F580
lbl_8086F214:
/* 8086F214  80 74 11 BC */	lwz r3, 0x11bc(r20)
/* 8086F218  80 83 00 04 */	lwz r4, 4(r3)
/* 8086F21C  38 60 00 00 */	li r3, 0
/* 8086F220  38 00 00 08 */	li r0, 8
/* 8086F224  7C 09 03 A6 */	mtctr r0
lbl_8086F228:
/* 8086F228  7C 1A 1C 2E */	lfsx f0, r26, r3
/* 8086F22C  D0 04 00 00 */	stfs f0, 0(r4)
/* 8086F230  38 63 00 04 */	addi r3, r3, 4
/* 8086F234  38 84 00 04 */	addi r4, r4, 4
/* 8086F238  42 00 FF F0 */	bdnz lbl_8086F228
/* 8086F23C  3A 73 00 01 */	addi r19, r19, 1
/* 8086F240  2C 13 00 03 */	cmpwi r19, 3
/* 8086F244  3B 7B 00 5C */	addi r27, r27, 0x5c
/* 8086F248  41 80 FE 0C */	blt lbl_8086F054
/* 8086F24C  3A 40 00 00 */	li r18, 0
/* 8086F250  3A 60 00 00 */	li r19, 0
/* 8086F254  3E 20 11 00 */	lis r17, 0x1100
lbl_8086F258:
/* 8086F258  2C 12 00 00 */	cmpwi r18, 0
/* 8086F25C  40 82 00 3C */	bne lbl_8086F298
/* 8086F260  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 8086F264  7C 7E 9A 14 */	add r3, r30, r19
/* 8086F268  D0 03 3F A4 */	stfs f0, 0x3fa4(r3)
/* 8086F26C  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8086F270  D0 03 3F A8 */	stfs f0, 0x3fa8(r3)
/* 8086F274  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 8086F278  D0 03 3F AC */	stfs f0, 0x3fac(r3)
/* 8086F27C  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F280  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F284  38 80 00 1A */	li r4, 0x1a
/* 8086F288  7F A5 EB 78 */	mr r5, r29
/* 8086F28C  38 C0 00 80 */	li r6, 0x80
/* 8086F290  4B 7C D0 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F294  48 00 00 38 */	b lbl_8086F2CC
lbl_8086F298:
/* 8086F298  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8086F29C  7C 7E 9A 14 */	add r3, r30, r19
/* 8086F2A0  D0 03 3F A4 */	stfs f0, 0x3fa4(r3)
/* 8086F2A4  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8086F2A8  D0 03 3F A8 */	stfs f0, 0x3fa8(r3)
/* 8086F2AC  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 8086F2B0  D0 03 3F AC */	stfs f0, 0x3fac(r3)
/* 8086F2B4  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F2B8  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F2BC  38 80 00 1B */	li r4, 0x1b
/* 8086F2C0  7F A5 EB 78 */	mr r5, r29
/* 8086F2C4  38 C0 00 80 */	li r6, 0x80
/* 8086F2C8  4B 7C D0 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_8086F2CC:
/* 8086F2CC  3C 80 00 08 */	lis r4, 8
/* 8086F2D0  38 B1 00 84 */	addi r5, r17, 0x84
/* 8086F2D4  4B 7A 59 81 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086F2D8  38 13 3F B8 */	addi r0, r19, 0x3fb8
/* 8086F2DC  7C 7E 01 2E */	stwx r3, r30, r0
/* 8086F2E0  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8086F2E4  28 00 00 00 */	cmplwi r0, 0
/* 8086F2E8  40 82 00 0C */	bne lbl_8086F2F4
/* 8086F2EC  38 60 00 00 */	li r3, 0
/* 8086F2F0  48 00 02 90 */	b lbl_8086F580
lbl_8086F2F4:
/* 8086F2F4  3A 52 00 01 */	addi r18, r18, 1
/* 8086F2F8  2C 12 00 02 */	cmpwi r18, 2
/* 8086F2FC  3A 73 00 28 */	addi r19, r19, 0x28
/* 8086F300  41 80 FF 58 */	blt lbl_8086F258
/* 8086F304  38 7E 3F 88 */	addi r3, r30, 0x3f88
/* 8086F308  38 80 00 3C */	li r4, 0x3c
/* 8086F30C  38 A0 00 0F */	li r5, 0xf
/* 8086F310  38 C0 00 00 */	li r6, 0
/* 8086F314  4B 7A 32 CD */	bl init__19mDoExt_3DlineMat0_cFUsUsi
/* 8086F318  2C 03 00 00 */	cmpwi r3, 0
/* 8086F31C  40 82 00 0C */	bne lbl_8086F328
/* 8086F320  38 60 00 00 */	li r3, 0
/* 8086F324  48 00 02 5C */	b lbl_8086F580
lbl_8086F328:
/* 8086F328  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F32C  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F330  38 80 00 12 */	li r4, 0x12
/* 8086F334  7F A5 EB 78 */	mr r5, r29
/* 8086F338  38 C0 00 80 */	li r6, 0x80
/* 8086F33C  4B 7C CF B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F340  3C 80 00 08 */	lis r4, 8
/* 8086F344  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8086F348  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8086F34C  4B 7A 59 09 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086F350  90 7E 6B 30 */	stw r3, 0x6b30(r30)
/* 8086F354  80 1E 6B 30 */	lwz r0, 0x6b30(r30)
/* 8086F358  28 00 00 00 */	cmplwi r0, 0
/* 8086F35C  40 82 00 0C */	bne lbl_8086F368
/* 8086F360  38 60 00 00 */	li r3, 0
/* 8086F364  48 00 02 1C */	b lbl_8086F580
lbl_8086F368:
/* 8086F368  38 60 00 C0 */	li r3, 0xc0
/* 8086F36C  4B A5 F8 E1 */	bl __nw__FUl
/* 8086F370  7C 60 1B 79 */	or. r0, r3, r3
/* 8086F374  41 82 00 0C */	beq lbl_8086F380
/* 8086F378  4B 80 C5 F9 */	bl __ct__4dBgWFv
/* 8086F37C  7C 60 1B 78 */	mr r0, r3
lbl_8086F380:
/* 8086F380  90 1E 6B 68 */	stw r0, 0x6b68(r30)
/* 8086F384  80 1E 6B 68 */	lwz r0, 0x6b68(r30)
/* 8086F388  28 00 00 00 */	cmplwi r0, 0
/* 8086F38C  40 82 00 0C */	bne lbl_8086F398
/* 8086F390  38 60 00 00 */	li r3, 0
/* 8086F394  48 00 01 EC */	b lbl_8086F580
lbl_8086F398:
/* 8086F398  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F39C  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F3A0  38 80 00 26 */	li r4, 0x26
/* 8086F3A4  7F A5 EB 78 */	mr r5, r29
/* 8086F3A8  38 C0 00 80 */	li r6, 0x80
/* 8086F3AC  4B 7C CF 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F3B0  7C 64 1B 78 */	mr r4, r3
/* 8086F3B4  80 7E 6B 68 */	lwz r3, 0x6b68(r30)
/* 8086F3B8  38 A0 00 01 */	li r5, 1
/* 8086F3BC  38 DE 6B 38 */	addi r6, r30, 0x6b38
/* 8086F3C0  4B 80 AB 79 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8086F3C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8086F3C8  28 00 00 01 */	cmplwi r0, 1
/* 8086F3CC  40 82 00 0C */	bne lbl_8086F3D8
/* 8086F3D0  38 60 00 00 */	li r3, 0
/* 8086F3D4  48 00 01 AC */	b lbl_8086F580
lbl_8086F3D8:
/* 8086F3D8  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 8086F3DC  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 8086F3E0  80 7E 6B 68 */	lwz r3, 0x6b68(r30)
/* 8086F3E4  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 8086F3E8  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F3EC  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F3F0  38 80 00 15 */	li r4, 0x15
/* 8086F3F4  7F A5 EB 78 */	mr r5, r29
/* 8086F3F8  38 C0 00 80 */	li r6, 0x80
/* 8086F3FC  4B 7C CE F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F400  3C 80 00 08 */	lis r4, 8
/* 8086F404  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8086F408  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8086F40C  4B 7A 58 49 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086F410  90 7E 3F F4 */	stw r3, 0x3ff4(r30)
/* 8086F414  80 1E 3F F4 */	lwz r0, 0x3ff4(r30)
/* 8086F418  28 00 00 00 */	cmplwi r0, 0
/* 8086F41C  40 82 00 0C */	bne lbl_8086F428
/* 8086F420  38 60 00 00 */	li r3, 0
/* 8086F424  48 00 01 5C */	b lbl_8086F580
lbl_8086F428:
/* 8086F428  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 8086F42C  4B 9F 85 61 */	bl cM_rndFX__Ff
/* 8086F430  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 8086F434  EC 00 08 2A */	fadds f0, f0, f1
/* 8086F438  FC 00 00 1E */	fctiwz f0, f0
/* 8086F43C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8086F440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086F444  B0 1E 40 22 */	sth r0, 0x4022(r30)
/* 8086F448  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F44C  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F450  38 80 00 10 */	li r4, 0x10
/* 8086F454  7F A5 EB 78 */	mr r5, r29
/* 8086F458  38 C0 00 80 */	li r6, 0x80
/* 8086F45C  4B 7C CE 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F460  3C 80 00 08 */	lis r4, 8
/* 8086F464  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8086F468  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8086F46C  4B 7A 57 E9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086F470  3C 80 80 87 */	lis r4, ArcIX_A_crwaku_model@ha /* 0x808709C8@ha */
/* 8086F474  90 64 09 C8 */	stw r3, ArcIX_A_crwaku_model@l(r4)  /* 0x808709C8@l */
/* 8086F478  28 03 00 00 */	cmplwi r3, 0
/* 8086F47C  40 82 00 0C */	bne lbl_8086F488
/* 8086F480  38 60 00 00 */	li r3, 0
/* 8086F484  48 00 00 FC */	b lbl_8086F580
lbl_8086F488:
/* 8086F488  3B 20 00 00 */	li r25, 0
/* 8086F48C  3A 40 00 00 */	li r18, 0
/* 8086F490  3E 20 11 00 */	lis r17, 0x1100
/* 8086F494  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F498  3A A3 02 7C */	addi r21, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F49C  3A 9C 06 00 */	addi r20, r28, 0x600
/* 8086F4A0  3A 7C 04 80 */	addi r19, r28, 0x480
/* 8086F4A4  3A FC 06 18 */	addi r23, r28, 0x618
lbl_8086F4A8:
/* 8086F4A8  7E A3 AB 78 */	mr r3, r21
/* 8086F4AC  7C 94 90 2E */	lwzx r4, r20, r18
/* 8086F4B0  7F A5 EB 78 */	mr r5, r29
/* 8086F4B4  38 C0 00 80 */	li r6, 0x80
/* 8086F4B8  4B 7C CE 35 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F4BC  7C 76 1B 78 */	mr r22, r3
/* 8086F4C0  7F 13 90 2E */	lwzx r24, r19, r18
/* 8086F4C4  3B 40 00 00 */	li r26, 0
/* 8086F4C8  48 00 00 34 */	b lbl_8086F4FC
lbl_8086F4CC:
/* 8086F4CC  7E C3 B3 78 */	mr r3, r22
/* 8086F4D0  3C 80 00 08 */	lis r4, 8
/* 8086F4D4  38 B1 00 84 */	addi r5, r17, 0x84
/* 8086F4D8  4B 7A 57 7D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086F4DC  90 78 00 00 */	stw r3, 0(r24)
/* 8086F4E0  80 18 00 00 */	lwz r0, 0(r24)
/* 8086F4E4  28 00 00 00 */	cmplwi r0, 0
/* 8086F4E8  40 82 00 0C */	bne lbl_8086F4F4
/* 8086F4EC  38 60 00 00 */	li r3, 0
/* 8086F4F0  48 00 00 90 */	b lbl_8086F580
lbl_8086F4F4:
/* 8086F4F4  3B 5A 00 01 */	addi r26, r26, 1
/* 8086F4F8  3B 18 00 04 */	addi r24, r24, 4
lbl_8086F4FC:
/* 8086F4FC  7C 17 90 2E */	lwzx r0, r23, r18
/* 8086F500  7C 1A 00 00 */	cmpw r26, r0
/* 8086F504  41 80 FF C8 */	blt lbl_8086F4CC
/* 8086F508  3B 39 00 01 */	addi r25, r25, 1
/* 8086F50C  2C 19 00 06 */	cmpwi r25, 6
/* 8086F510  3A 52 00 04 */	addi r18, r18, 4
/* 8086F514  41 80 FF 94 */	blt lbl_8086F4A8
/* 8086F518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8086F51C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8086F520  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8086F524  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F47F@ha */
/* 8086F528  38 84 F4 7F */	addi r4, r4, 0xF47F /* 0x0000F47F@l */
/* 8086F52C  4B 7C 54 D9 */	bl getEventReg__11dSv_event_cCFUs
/* 8086F530  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8086F534  2C 00 00 0A */	cmpwi r0, 0xa
/* 8086F538  41 80 00 44 */	blt lbl_8086F57C
/* 8086F53C  3C 60 80 87 */	lis r3, d_a_mg_fshop__stringBase0@ha /* 0x8087027C@ha */
/* 8086F540  38 63 02 7C */	addi r3, r3, d_a_mg_fshop__stringBase0@l /* 0x8087027C@l */
/* 8086F544  38 80 00 11 */	li r4, 0x11
/* 8086F548  7F A5 EB 78 */	mr r5, r29
/* 8086F54C  38 C0 00 80 */	li r6, 0x80
/* 8086F550  4B 7C CD 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8086F554  3C 80 00 08 */	lis r4, 8
/* 8086F558  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8086F55C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8086F560  4B 7A 56 F5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8086F564  90 7E 40 04 */	stw r3, 0x4004(r30)
/* 8086F568  80 1E 40 04 */	lwz r0, 0x4004(r30)
/* 8086F56C  28 00 00 00 */	cmplwi r0, 0
/* 8086F570  40 82 00 0C */	bne lbl_8086F57C
/* 8086F574  38 60 00 00 */	li r3, 0
/* 8086F578  48 00 00 08 */	b lbl_8086F580
lbl_8086F57C:
/* 8086F57C  38 60 00 01 */	li r3, 1
lbl_8086F580:
/* 8086F580  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8086F584  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8086F588  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 8086F58C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8086F590  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 8086F594  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8086F598  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 8086F59C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8086F5A0  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 8086F5A4  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8086F5A8  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 8086F5AC  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 8086F5B0  39 61 00 60 */	addi r11, r1, 0x60
/* 8086F5B4  4B AF 2C 45 */	bl _restgpr_17
/* 8086F5B8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8086F5BC  7C 08 03 A6 */	mtlr r0
/* 8086F5C0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8086F5C4  4E 80 00 20 */	blr 
