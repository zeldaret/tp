lbl_8004ED44:
/* 8004ED44  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 8004ED48  7C 08 02 A6 */	mflr r0
/* 8004ED4C  90 01 02 34 */	stw r0, 0x234(r1)
/* 8004ED50  DB E1 02 20 */	stfd f31, 0x220(r1)
/* 8004ED54  F3 E1 02 28 */	psq_st f31, 552(r1), 0, 0 /* qr0 */
/* 8004ED58  DB C1 02 10 */	stfd f30, 0x210(r1)
/* 8004ED5C  F3 C1 02 18 */	psq_st f30, 536(r1), 0, 0 /* qr0 */
/* 8004ED60  DB A1 02 00 */	stfd f29, 0x200(r1)
/* 8004ED64  F3 A1 02 08 */	psq_st f29, 520(r1), 0, 0 /* qr0 */
/* 8004ED68  DB 81 01 F0 */	stfd f28, 0x1f0(r1)
/* 8004ED6C  F3 81 01 F8 */	psq_st f28, 504(r1), 0, 0 /* qr0 */
/* 8004ED70  DB 61 01 E0 */	stfd f27, 0x1e0(r1)
/* 8004ED74  F3 61 01 E8 */	psq_st f27, 488(r1), 0, 0 /* qr0 */
/* 8004ED78  DB 41 01 D0 */	stfd f26, 0x1d0(r1)
/* 8004ED7C  F3 41 01 D8 */	psq_st f26, 472(r1), 0, 0 /* qr0 */
/* 8004ED80  DB 21 01 C0 */	stfd f25, 0x1c0(r1)
/* 8004ED84  F3 21 01 C8 */	psq_st f25, 456(r1), 0, 0 /* qr0 */
/* 8004ED88  DB 01 01 B0 */	stfd f24, 0x1b0(r1)
/* 8004ED8C  F3 01 01 B8 */	psq_st f24, 440(r1), 0, 0 /* qr0 */
/* 8004ED90  DA E1 01 A0 */	stfd f23, 0x1a0(r1)
/* 8004ED94  F2 E1 01 A8 */	psq_st f23, 424(r1), 0, 0 /* qr0 */
/* 8004ED98  DA C1 01 90 */	stfd f22, 0x190(r1)
/* 8004ED9C  F2 C1 01 98 */	psq_st f22, 408(r1), 0, 0 /* qr0 */
/* 8004EDA0  DA A1 01 80 */	stfd f21, 0x180(r1)
/* 8004EDA4  F2 A1 01 88 */	psq_st f21, 392(r1), 0, 0 /* qr0 */
/* 8004EDA8  DA 81 01 70 */	stfd f20, 0x170(r1)
/* 8004EDAC  F2 81 01 78 */	psq_st f20, 376(r1), 0, 0 /* qr0 */
/* 8004EDB0  DA 61 01 60 */	stfd f19, 0x160(r1)
/* 8004EDB4  F2 61 01 68 */	psq_st f19, 360(r1), 0, 0 /* qr0 */
/* 8004EDB8  DA 41 01 50 */	stfd f18, 0x150(r1)
/* 8004EDBC  F2 41 01 58 */	psq_st f18, 344(r1), 0, 0 /* qr0 */
/* 8004EDC0  39 61 01 50 */	addi r11, r1, 0x150
/* 8004EDC4  48 31 34 19 */	bl _savegpr_29
/* 8004EDC8  7C 9D 23 78 */	mr r29, r4
/* 8004EDCC  7C BE 2B 78 */	mr r30, r5
/* 8004EDD0  8B E4 00 BB */	lbz r31, 0xbb(r4)
/* 8004EDD4  38 61 01 04 */	addi r3, r1, 0x104
/* 8004EDD8  48 2F 76 AD */	bl PSMTXIdentity
/* 8004EDDC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8004EDE0  48 2F 76 A5 */	bl PSMTXIdentity
/* 8004EDE4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8004EDE8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8004EDEC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8004EDF0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8004EDF4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8004EDF8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8004EDFC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8004EE00  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8004EE04  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8004EE08  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8004EE0C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8004EE10  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8004EE14  E0 01 00 5C */	psq_l f0, 92(r1), 0, 0 /* qr0 */
/* 8004EE18  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004EE1C  10 62 00 BA */	ps_madd f3, f2, f2, f0
/* 8004EE20  10 63 00 14 */	ps_sum0 f3, f3, f0, f0
/* 8004EE24  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004EE28  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004EE2C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004EE30  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004EE34  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8004EE38  4C 40 13 82 */	cror 2, 0, 2
/* 8004EE3C  40 82 00 1C */	bne lbl_8004EE58
/* 8004EE40  C0 22 85 50 */	lfs f1, lit_3964(r2)
/* 8004EE44  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8004EE48  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004EE4C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8004EE50  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8004EE54  48 00 00 78 */	b lbl_8004EECC
lbl_8004EE58:
/* 8004EE58  E0 21 00 5C */	psq_l f1, 92(r1), 0, 0 /* qr0 */
/* 8004EE5C  10 21 00 72 */	ps_mul f1, f1, f1
/* 8004EE60  10 82 08 BA */	ps_madd f4, f2, f2, f1
/* 8004EE64  10 84 08 54 */	ps_sum0 f4, f4, f1, f1
/* 8004EE68  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EE6C  4C 40 13 82 */	cror 2, 0, 2
/* 8004EE70  41 82 00 5C */	beq lbl_8004EECC
/* 8004EE74  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EE78  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EE7C  4C 40 13 82 */	cror 2, 0, 2
/* 8004EE80  40 82 00 0C */	bne lbl_8004EE8C
/* 8004EE84  FF E0 20 90 */	fmr f31, f4
/* 8004EE88  48 00 00 2C */	b lbl_8004EEB4
lbl_8004EE8C:
/* 8004EE8C  FC 60 20 34 */	frsqrte f3, f4
/* 8004EE90  FC 60 18 18 */	frsp f3, f3
/* 8004EE94  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004EE98  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004EE9C  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004EEA0  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004EEA4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004EEA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004EEAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004EEB0  FF E0 00 90 */	fmr f31, f0
lbl_8004EEB4:
/* 8004EEB4  E0 01 00 5C */	psq_l f0, 92(r1), 0, 0 /* qr0 */
/* 8004EEB8  E0 21 80 64 */	psq_l f1, 100(r1), 1, 0 /* qr0 */
/* 8004EEBC  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8004EEC0  F0 01 00 5C */	psq_st f0, 92(r1), 0, 0 /* qr0 */
/* 8004EEC4  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8004EEC8  F0 01 80 64 */	psq_st f0, 100(r1), 1, 0 /* qr0 */
lbl_8004EECC:
/* 8004EECC  38 61 00 68 */	addi r3, r1, 0x68
/* 8004EED0  38 81 00 5C */	addi r4, r1, 0x5c
/* 8004EED4  38 A1 00 50 */	addi r5, r1, 0x50
/* 8004EED8  48 2F 82 DD */	bl PSVECCrossProduct
/* 8004EEDC  E0 01 00 50 */	psq_l f0, 80(r1), 0, 0 /* qr0 */
/* 8004EEE0  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004EEE4  C2 E1 00 58 */	lfs f23, 0x58(r1)
/* 8004EEE8  10 57 05 FA */	ps_madd f2, f23, f23, f0
/* 8004EEEC  10 42 00 14 */	ps_sum0 f2, f2, f0, f0
/* 8004EEF0  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004EEF4  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004EEF8  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004EEFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004EF00  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8004EF04  4C 40 13 82 */	cror 2, 0, 2
/* 8004EF08  40 82 00 1C */	bne lbl_8004EF24
/* 8004EF0C  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EF10  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8004EF14  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8004EF18  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004EF1C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8004EF20  48 00 00 78 */	b lbl_8004EF98
lbl_8004EF24:
/* 8004EF24  E0 21 00 50 */	psq_l f1, 80(r1), 0, 0 /* qr0 */
/* 8004EF28  10 21 00 72 */	ps_mul f1, f1, f1
/* 8004EF2C  10 97 0D FA */	ps_madd f4, f23, f23, f1
/* 8004EF30  10 84 08 54 */	ps_sum0 f4, f4, f1, f1
/* 8004EF34  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EF38  4C 40 13 82 */	cror 2, 0, 2
/* 8004EF3C  41 82 00 5C */	beq lbl_8004EF98
/* 8004EF40  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EF44  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EF48  4C 40 13 82 */	cror 2, 0, 2
/* 8004EF4C  40 82 00 0C */	bne lbl_8004EF58
/* 8004EF50  FF C0 20 90 */	fmr f30, f4
/* 8004EF54  48 00 00 2C */	b lbl_8004EF80
lbl_8004EF58:
/* 8004EF58  FC 60 20 34 */	frsqrte f3, f4
/* 8004EF5C  FC 60 18 18 */	frsp f3, f3
/* 8004EF60  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004EF64  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004EF68  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004EF6C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004EF70  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004EF74  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004EF78  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004EF7C  FF C0 00 90 */	fmr f30, f0
lbl_8004EF80:
/* 8004EF80  E0 01 00 50 */	psq_l f0, 80(r1), 0, 0 /* qr0 */
/* 8004EF84  E0 21 80 58 */	psq_l f1, 88(r1), 1, 0 /* qr0 */
/* 8004EF88  10 00 07 98 */	ps_muls0 f0, f0, f30
/* 8004EF8C  F0 01 00 50 */	psq_st f0, 80(r1), 0, 0 /* qr0 */
/* 8004EF90  10 01 07 98 */	ps_muls0 f0, f1, f30
/* 8004EF94  F0 01 80 58 */	psq_st f0, 88(r1), 1, 0 /* qr0 */
lbl_8004EF98:
/* 8004EF98  38 61 00 5C */	addi r3, r1, 0x5c
/* 8004EF9C  38 81 00 50 */	addi r4, r1, 0x50
/* 8004EFA0  38 A1 00 68 */	addi r5, r1, 0x68
/* 8004EFA4  48 2F 82 11 */	bl PSVECCrossProduct
/* 8004EFA8  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 8004EFAC  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004EFB0  C2 C1 00 70 */	lfs f22, 0x70(r1)
/* 8004EFB4  10 96 05 BA */	ps_madd f4, f22, f22, f0
/* 8004EFB8  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004EFBC  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004EFC0  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004EFC4  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004EFC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004EFCC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EFD0  4C 40 13 82 */	cror 2, 0, 2
/* 8004EFD4  41 82 00 5C */	beq lbl_8004F030
/* 8004EFD8  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004EFDC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004EFE0  4C 40 13 82 */	cror 2, 0, 2
/* 8004EFE4  40 82 00 0C */	bne lbl_8004EFF0
/* 8004EFE8  FF A0 20 90 */	fmr f29, f4
/* 8004EFEC  48 00 00 2C */	b lbl_8004F018
lbl_8004EFF0:
/* 8004EFF0  FC 60 20 34 */	frsqrte f3, f4
/* 8004EFF4  FC 60 18 18 */	frsp f3, f3
/* 8004EFF8  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004EFFC  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004F000  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004F004  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004F008  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004F00C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004F010  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004F014  FF A0 00 90 */	fmr f29, f0
lbl_8004F018:
/* 8004F018  E0 01 00 68 */	psq_l f0, 104(r1), 0, 0 /* qr0 */
/* 8004F01C  E0 21 80 70 */	psq_l f1, 112(r1), 1, 0 /* qr0 */
/* 8004F020  10 00 07 58 */	ps_muls0 f0, f0, f29
/* 8004F024  F0 01 00 68 */	psq_st f0, 104(r1), 0, 0 /* qr0 */
/* 8004F028  10 01 07 58 */	ps_muls0 f0, f1, f29
/* 8004F02C  F0 01 80 70 */	psq_st f0, 112(r1), 1, 0 /* qr0 */
lbl_8004F030:
/* 8004F030  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8004F034  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 8004F038  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8004F03C  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 8004F040  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8004F044  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 8004F048  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8004F04C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8004F050  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8004F054  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 8004F058  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8004F05C  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8004F060  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8004F064  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 8004F068  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8004F06C  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 8004F070  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8004F074  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 8004F078  C0 42 85 5C */	lfs f2, lit_4090(r2)
/* 8004F07C  A0 1E 00 88 */	lhz r0, 0x88(r30)
/* 8004F080  C8 22 85 68 */	lfd f1, lit_4093(r2)
/* 8004F084  90 01 01 3C */	stw r0, 0x13c(r1)
/* 8004F088  3C 00 43 30 */	lis r0, 0x4330
/* 8004F08C  90 01 01 38 */	stw r0, 0x138(r1)
/* 8004F090  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 8004F094  EC 00 08 28 */	fsubs f0, f0, f1
/* 8004F098  EC 22 00 32 */	fmuls f1, f2, f0
/* 8004F09C  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F0A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8004F0A4  41 82 00 48 */	beq lbl_8004F0EC
/* 8004F0A8  3C 60 80 38 */	lis r3, lit_6363@ha /* 0x8037A120@ha */
/* 8004F0AC  38 83 A1 20 */	addi r4, r3, lit_6363@l /* 0x8037A120@l */
/* 8004F0B0  80 64 00 00 */	lwz r3, 0(r4)
/* 8004F0B4  80 04 00 04 */	lwz r0, 4(r4)
/* 8004F0B8  90 61 00 08 */	stw r3, 8(r1)
/* 8004F0BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004F0C0  80 04 00 08 */	lwz r0, 8(r4)
/* 8004F0C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8004F0C8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8004F0CC  38 81 00 08 */	addi r4, r1, 8
/* 8004F0D0  C0 02 85 60 */	lfs f0, lit_4091(r2)
/* 8004F0D4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8004F0D8  48 2F 77 A1 */	bl PSMTXRotAxisRad
/* 8004F0DC  38 61 01 04 */	addi r3, r1, 0x104
/* 8004F0E0  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8004F0E4  7C 65 1B 78 */	mr r5, r3
/* 8004F0E8  48 2F 73 FD */	bl PSMTXConcat
lbl_8004F0EC:
/* 8004F0EC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8004F0F0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8004F0F4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8004F0F8  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 8004F0FC  D0 21 01 20 */	stfs f1, 0x120(r1)
/* 8004F100  D0 41 01 30 */	stfs f2, 0x130(r1)
/* 8004F104  C2 DD 00 B0 */	lfs f22, 0xb0(r29)
/* 8004F108  C2 FD 00 B4 */	lfs f23, 0xb4(r29)
/* 8004F10C  7F C3 F3 78 */	mr r3, r30
/* 8004F110  7F A4 EB 78 */	mr r4, r29
/* 8004F114  48 23 14 35 */	bl getWidth__15JPABaseParticleCFPC14JPABaseEmitter
/* 8004F118  EE D6 00 72 */	fmuls f22, f22, f1
/* 8004F11C  7F C3 F3 78 */	mr r3, r30
/* 8004F120  7F A4 EB 78 */	mr r4, r29
/* 8004F124  48 23 14 45 */	bl getHeight__15JPABaseParticleCFPC14JPABaseEmitter
/* 8004F128  EE F7 00 72 */	fmuls f23, f23, f1
/* 8004F12C  38 61 00 74 */	addi r3, r1, 0x74
/* 8004F130  FC 20 B0 90 */	fmr f1, f22
/* 8004F134  FC 40 B8 90 */	fmr f2, f23
/* 8004F138  C0 62 85 50 */	lfs f3, lit_3964(r2)
/* 8004F13C  48 2F 78 2D */	bl PSMTXScale
/* 8004F140  38 61 01 04 */	addi r3, r1, 0x104
/* 8004F144  38 81 00 74 */	addi r4, r1, 0x74
/* 8004F148  7C 65 1B 78 */	mr r5, r3
/* 8004F14C  48 2F 73 99 */	bl PSMTXConcat
/* 8004F150  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8004F154  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8004F158  38 81 01 04 */	addi r4, r1, 0x104
/* 8004F15C  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8004F160  48 2F 73 85 */	bl PSMTXConcat
/* 8004F164  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8004F168  38 80 00 00 */	li r4, 0
/* 8004F16C  48 31 10 E1 */	bl GXLoadPosMtxImm
/* 8004F170  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8004F174  38 80 00 00 */	li r4, 0
/* 8004F178  48 31 11 25 */	bl GXLoadNrmMtxImm
/* 8004F17C  C0 42 85 50 */	lfs f2, lit_3964(r2)
/* 8004F180  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8004F184  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8004F188  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8004F18C  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004F190  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8004F194  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8004F198  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8004F19C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8004F1A0  C0 02 85 E8 */	lfs f0, lit_6079(r2)
/* 8004F1A4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8004F1A8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8004F1AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8004F1B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8004F1B4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8004F1B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8004F1BC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8004F1C0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8004F1C4  E0 01 00 44 */	psq_l f0, 68(r1), 0, 0 /* qr0 */
/* 8004F1C8  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004F1CC  10 82 00 BA */	ps_madd f4, f2, f2, f0
/* 8004F1D0  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004F1D4  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004F1D8  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004F1DC  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004F1E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004F1E4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004F1E8  4C 40 13 82 */	cror 2, 0, 2
/* 8004F1EC  41 82 00 58 */	beq lbl_8004F244
/* 8004F1F0  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 8004F1F4  4C 40 13 82 */	cror 2, 0, 2
/* 8004F1F8  40 82 00 0C */	bne lbl_8004F204
/* 8004F1FC  FF 80 20 90 */	fmr f28, f4
/* 8004F200  48 00 00 2C */	b lbl_8004F22C
lbl_8004F204:
/* 8004F204  FC 60 20 34 */	frsqrte f3, f4
/* 8004F208  FC 60 18 18 */	frsp f3, f3
/* 8004F20C  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004F210  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004F214  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004F218  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004F21C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004F220  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004F224  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004F228  FF 80 00 90 */	fmr f28, f0
lbl_8004F22C:
/* 8004F22C  E0 01 00 44 */	psq_l f0, 68(r1), 0, 0 /* qr0 */
/* 8004F230  E0 21 80 4C */	psq_l f1, 76(r1), 1, 0 /* qr0 */
/* 8004F234  10 00 07 18 */	ps_muls0 f0, f0, f28
/* 8004F238  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 8004F23C  10 01 07 18 */	ps_muls0 f0, f1, f28
/* 8004F240  F0 01 80 4C */	psq_st f0, 76(r1), 1, 0 /* qr0 */
lbl_8004F244:
/* 8004F244  E0 01 00 38 */	psq_l f0, 56(r1), 0, 0 /* qr0 */
/* 8004F248  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004F24C  C2 A1 00 40 */	lfs f21, 0x40(r1)
/* 8004F250  10 95 05 7A */	ps_madd f4, f21, f21, f0
/* 8004F254  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004F258  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004F25C  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004F260  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004F264  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004F268  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004F26C  4C 40 13 82 */	cror 2, 0, 2
/* 8004F270  41 82 00 5C */	beq lbl_8004F2CC
/* 8004F274  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F278  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004F27C  4C 40 13 82 */	cror 2, 0, 2
/* 8004F280  40 82 00 0C */	bne lbl_8004F28C
/* 8004F284  FF 60 20 90 */	fmr f27, f4
/* 8004F288  48 00 00 2C */	b lbl_8004F2B4
lbl_8004F28C:
/* 8004F28C  FC 60 20 34 */	frsqrte f3, f4
/* 8004F290  FC 60 18 18 */	frsp f3, f3
/* 8004F294  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004F298  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004F29C  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004F2A0  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004F2A4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004F2A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004F2AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004F2B0  FF 60 00 90 */	fmr f27, f0
lbl_8004F2B4:
/* 8004F2B4  E0 01 00 38 */	psq_l f0, 56(r1), 0, 0 /* qr0 */
/* 8004F2B8  E0 21 80 40 */	psq_l f1, 64(r1), 1, 0 /* qr0 */
/* 8004F2BC  10 00 06 D8 */	ps_muls0 f0, f0, f27
/* 8004F2C0  F0 01 00 38 */	psq_st f0, 56(r1), 0, 0 /* qr0 */
/* 8004F2C4  10 01 06 D8 */	ps_muls0 f0, f1, f27
/* 8004F2C8  F0 01 80 40 */	psq_st f0, 64(r1), 1, 0 /* qr0 */
lbl_8004F2CC:
/* 8004F2CC  E0 01 00 2C */	psq_l f0, 44(r1), 0, 0 /* qr0 */
/* 8004F2D0  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004F2D4  C2 81 00 34 */	lfs f20, 0x34(r1)
/* 8004F2D8  10 94 05 3A */	ps_madd f4, f20, f20, f0
/* 8004F2DC  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004F2E0  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004F2E4  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004F2E8  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004F2EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004F2F0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004F2F4  4C 40 13 82 */	cror 2, 0, 2
/* 8004F2F8  41 82 00 5C */	beq lbl_8004F354
/* 8004F2FC  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F300  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004F304  4C 40 13 82 */	cror 2, 0, 2
/* 8004F308  40 82 00 0C */	bne lbl_8004F314
/* 8004F30C  FF 40 20 90 */	fmr f26, f4
/* 8004F310  48 00 00 2C */	b lbl_8004F33C
lbl_8004F314:
/* 8004F314  FC 60 20 34 */	frsqrte f3, f4
/* 8004F318  FC 60 18 18 */	frsp f3, f3
/* 8004F31C  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004F320  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004F324  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004F328  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004F32C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004F330  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004F334  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004F338  FF 40 00 90 */	fmr f26, f0
lbl_8004F33C:
/* 8004F33C  E0 01 00 2C */	psq_l f0, 44(r1), 0, 0 /* qr0 */
/* 8004F340  E0 21 80 34 */	psq_l f1, 52(r1), 1, 0 /* qr0 */
/* 8004F344  10 00 06 98 */	ps_muls0 f0, f0, f26
/* 8004F348  F0 01 00 2C */	psq_st f0, 44(r1), 0, 0 /* qr0 */
/* 8004F34C  10 01 06 98 */	ps_muls0 f0, f1, f26
/* 8004F350  F0 01 80 34 */	psq_st f0, 52(r1), 1, 0 /* qr0 */
lbl_8004F354:
/* 8004F354  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 8004F358  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004F35C  C2 61 00 28 */	lfs f19, 0x28(r1)
/* 8004F360  10 93 04 FA */	ps_madd f4, f19, f19, f0
/* 8004F364  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004F368  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004F36C  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004F370  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004F374  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004F378  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004F37C  4C 40 13 82 */	cror 2, 0, 2
/* 8004F380  41 82 00 5C */	beq lbl_8004F3DC
/* 8004F384  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F388  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004F38C  4C 40 13 82 */	cror 2, 0, 2
/* 8004F390  40 82 00 0C */	bne lbl_8004F39C
/* 8004F394  FF 20 20 90 */	fmr f25, f4
/* 8004F398  48 00 00 2C */	b lbl_8004F3C4
lbl_8004F39C:
/* 8004F39C  FC 60 20 34 */	frsqrte f3, f4
/* 8004F3A0  FC 60 18 18 */	frsp f3, f3
/* 8004F3A4  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004F3A8  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004F3AC  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004F3B0  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004F3B4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004F3B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004F3BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004F3C0  FF 20 00 90 */	fmr f25, f0
lbl_8004F3C4:
/* 8004F3C4  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 8004F3C8  E0 21 80 28 */	psq_l f1, 40(r1), 1, 0 /* qr0 */
/* 8004F3CC  10 00 06 58 */	ps_muls0 f0, f0, f25
/* 8004F3D0  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 8004F3D4  10 01 06 58 */	ps_muls0 f0, f1, f25
/* 8004F3D8  F0 01 80 28 */	psq_st f0, 40(r1), 1, 0 /* qr0 */
lbl_8004F3DC:
/* 8004F3DC  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8004F3E0  10 00 00 32 */	ps_mul f0, f0, f0
/* 8004F3E4  C2 41 00 1C */	lfs f18, 0x1c(r1)
/* 8004F3E8  10 92 04 BA */	ps_madd f4, f18, f18, f0
/* 8004F3EC  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8004F3F0  C0 22 85 D8 */	lfs f1, lit_6075(r2)
/* 8004F3F4  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8004F3F8  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8004F3FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8004F400  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004F404  4C 40 13 82 */	cror 2, 0, 2
/* 8004F408  41 82 00 5C */	beq lbl_8004F464
/* 8004F40C  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F410  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8004F414  4C 40 13 82 */	cror 2, 0, 2
/* 8004F418  40 82 00 0C */	bne lbl_8004F424
/* 8004F41C  FF 00 20 90 */	fmr f24, f4
/* 8004F420  48 00 00 2C */	b lbl_8004F44C
lbl_8004F424:
/* 8004F424  FC 60 20 34 */	frsqrte f3, f4
/* 8004F428  FC 60 18 18 */	frsp f3, f3
/* 8004F42C  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004F430  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8004F434  C0 22 85 DC */	lfs f1, lit_6076(r2)
/* 8004F438  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8004F43C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8004F440  EC 01 00 28 */	fsubs f0, f1, f0
/* 8004F444  EC 02 00 32 */	fmuls f0, f2, f0
/* 8004F448  FF 00 00 90 */	fmr f24, f0
lbl_8004F44C:
/* 8004F44C  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8004F450  E0 21 80 1C */	psq_l f1, 28(r1), 1, 0 /* qr0 */
/* 8004F454  10 00 06 18 */	ps_muls0 f0, f0, f24
/* 8004F458  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 8004F45C  10 01 06 18 */	ps_muls0 f0, f1, f24
/* 8004F460  F0 01 80 1C */	psq_st f0, 28(r1), 1, 0 /* qr0 */
lbl_8004F464:
/* 8004F464  38 60 00 A0 */	li r3, 0xa0
/* 8004F468  38 80 00 00 */	li r4, 0
/* 8004F46C  38 A0 00 06 */	li r5, 6
/* 8004F470  48 30 D2 F5 */	bl GXBegin
/* 8004F474  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F478  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8004F47C  D0 03 80 00 */	stfs f0, 0x8000(r3)  /* 0xCC008000@l */
/* 8004F480  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F484  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F488  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F48C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F490  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8004F494  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F498  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8004F49C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F4A0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8004F4A4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F4A8  38 00 00 FF */	li r0, 0xff
/* 8004F4AC  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F4B0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F4B4  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F4B8  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8004F4BC  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8004F4C0  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004F4C4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F4C8  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004F4CC  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F4D0  C0 62 85 EC */	lfs f3, lit_6350(r2)
/* 8004F4D4  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004F4D8  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004F4DC  C0 42 85 50 */	lfs f2, lit_3964(r2)
/* 8004F4E0  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004F4E4  C0 81 00 38 */	lfs f4, 0x38(r1)
/* 8004F4E8  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 8004F4EC  C0 A1 00 3C */	lfs f5, 0x3c(r1)
/* 8004F4F0  D0 A3 80 00 */	stfs f5, -0x8000(r3)
/* 8004F4F4  C0 C1 00 40 */	lfs f6, 0x40(r1)
/* 8004F4F8  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 8004F4FC  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F500  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F504  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F508  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8004F50C  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004F510  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F514  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F518  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F51C  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004F520  C0 22 85 F0 */	lfs f1, lit_6351(r2)
/* 8004F524  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004F528  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004F52C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8004F530  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F534  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8004F538  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F53C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8004F540  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F544  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F548  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F54C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F550  9B E3 80 00 */	stb r31, -0x8000(r3)
/* 8004F554  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004F558  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F55C  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004F560  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F564  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004F568  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004F56C  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004F570  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8004F574  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F578  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8004F57C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F580  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8004F584  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F588  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F58C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F590  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F594  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8004F598  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F59C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F5A0  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004F5A4  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F5A8  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 8004F5AC  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004F5B0  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004F5B4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8004F5B8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F5BC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8004F5C0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F5C4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8004F5C8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F5CC  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F5D0  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F5D4  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F5D8  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8004F5DC  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F5E0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F5E4  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F5E8  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F5EC  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004F5F0  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 8004F5F4  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 8004F5F8  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 8004F5FC  D0 A3 80 00 */	stfs f5, -0x8000(r3)
/* 8004F600  D0 C3 80 00 */	stfs f6, -0x8000(r3)
/* 8004F604  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F608  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F60C  98 03 80 00 */	stb r0, -0x8000(r3)
/* 8004F610  98 83 80 00 */	stb r4, -0x8000(r3)
/* 8004F614  C0 02 85 88 */	lfs f0, lit_4519(r2)
/* 8004F618  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F61C  C0 02 85 50 */	lfs f0, lit_3964(r2)
/* 8004F620  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8004F624  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 8004F628  60 00 00 08 */	ori r0, r0, 8
/* 8004F62C  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 8004F630  E3 E1 02 28 */	psq_l f31, 552(r1), 0, 0 /* qr0 */
/* 8004F634  CB E1 02 20 */	lfd f31, 0x220(r1)
/* 8004F638  E3 C1 02 18 */	psq_l f30, 536(r1), 0, 0 /* qr0 */
/* 8004F63C  CB C1 02 10 */	lfd f30, 0x210(r1)
/* 8004F640  E3 A1 02 08 */	psq_l f29, 520(r1), 0, 0 /* qr0 */
/* 8004F644  CB A1 02 00 */	lfd f29, 0x200(r1)
/* 8004F648  E3 81 01 F8 */	psq_l f28, 504(r1), 0, 0 /* qr0 */
/* 8004F64C  CB 81 01 F0 */	lfd f28, 0x1f0(r1)
/* 8004F650  E3 61 01 E8 */	psq_l f27, 488(r1), 0, 0 /* qr0 */
/* 8004F654  CB 61 01 E0 */	lfd f27, 0x1e0(r1)
/* 8004F658  E3 41 01 D8 */	psq_l f26, 472(r1), 0, 0 /* qr0 */
/* 8004F65C  CB 41 01 D0 */	lfd f26, 0x1d0(r1)
/* 8004F660  E3 21 01 C8 */	psq_l f25, 456(r1), 0, 0 /* qr0 */
/* 8004F664  CB 21 01 C0 */	lfd f25, 0x1c0(r1)
/* 8004F668  E3 01 01 B8 */	psq_l f24, 440(r1), 0, 0 /* qr0 */
/* 8004F66C  CB 01 01 B0 */	lfd f24, 0x1b0(r1)
/* 8004F670  E2 E1 01 A8 */	psq_l f23, 424(r1), 0, 0 /* qr0 */
/* 8004F674  CA E1 01 A0 */	lfd f23, 0x1a0(r1)
/* 8004F678  E2 C1 01 98 */	psq_l f22, 408(r1), 0, 0 /* qr0 */
/* 8004F67C  CA C1 01 90 */	lfd f22, 0x190(r1)
/* 8004F680  E2 A1 01 88 */	psq_l f21, 392(r1), 0, 0 /* qr0 */
/* 8004F684  CA A1 01 80 */	lfd f21, 0x180(r1)
/* 8004F688  E2 81 01 78 */	psq_l f20, 376(r1), 0, 0 /* qr0 */
/* 8004F68C  CA 81 01 70 */	lfd f20, 0x170(r1)
/* 8004F690  E2 61 01 68 */	psq_l f19, 360(r1), 0, 0 /* qr0 */
/* 8004F694  CA 61 01 60 */	lfd f19, 0x160(r1)
/* 8004F698  E2 41 01 58 */	psq_l f18, 344(r1), 0, 0 /* qr0 */
/* 8004F69C  CA 41 01 50 */	lfd f18, 0x150(r1)
/* 8004F6A0  39 61 01 50 */	addi r11, r1, 0x150
/* 8004F6A4  48 31 2B 85 */	bl _restgpr_29
/* 8004F6A8  80 01 02 34 */	lwz r0, 0x234(r1)
/* 8004F6AC  7C 08 03 A6 */	mtlr r0
/* 8004F6B0  38 21 02 30 */	addi r1, r1, 0x230
/* 8004F6B4  4E 80 00 20 */	blr 
