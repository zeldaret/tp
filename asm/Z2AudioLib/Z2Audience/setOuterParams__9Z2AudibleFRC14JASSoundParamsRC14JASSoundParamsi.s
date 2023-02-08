lbl_802BBEE4:
/* 802BBEE4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802BBEE8  7C 08 02 A6 */	mflr r0
/* 802BBEEC  90 01 00 84 */	stw r0, 0x84(r1)
/* 802BBEF0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802BBEF4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 802BBEF8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 802BBEFC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 802BBF00  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 802BBF04  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 802BBF08  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 802BBF0C  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 802BBF10  39 61 00 40 */	addi r11, r1, 0x40
/* 802BBF14  48 0A 62 C9 */	bl _savegpr_29
/* 802BBF18  7C 9D 23 78 */	mr r29, r4
/* 802BBF1C  7C BE 2B 78 */	mr r30, r5
/* 802BBF20  1C C6 00 38 */	mulli r6, r6, 0x38
/* 802BBF24  3B E6 00 2C */	addi r31, r6, 0x2c
/* 802BBF28  7F E3 FA 14 */	add r31, r3, r31
/* 802BBF2C  A0 03 00 12 */	lhz r0, 0x12(r3)
/* 802BBF30  54 00 C7 3F */	rlwinm. r0, r0, 0x18, 0x1c, 0x1f
/* 802BBF34  40 82 00 10 */	bne lbl_802BBF44
/* 802BBF38  7F E3 FB 78 */	mr r3, r31
/* 802BBF3C  4B FE 25 41 */	bl combine__14JASSoundParamsFRC14JASSoundParamsRC14JASSoundParams
/* 802BBF40  48 00 02 8C */	b lbl_802BC1CC
lbl_802BBF44:
/* 802BBF44  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 802BBF48  C0 62 C0 A0 */	lfs f3, lit_848(r2)
/* 802BBF4C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802BBF50  40 80 00 28 */	bge lbl_802BBF78
/* 802BBF54  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BBF58  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802BBF5C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802BBF60  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 802BBF64  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 802BBF68  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 802BBF6C  7F E3 FB 78 */	mr r3, r31
/* 802BBF70  4B FE 25 0D */	bl combine__14JASSoundParamsFRC14JASSoundParamsRC14JASSoundParams
/* 802BBF74  48 00 02 58 */	b lbl_802BC1CC
lbl_802BBF78:
/* 802BBF78  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BBF7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 802BBF80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BBF84  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 802BBF88  C0 42 C0 A8 */	lfs f2, lit_895(r2)
/* 802BBF8C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802BBF90  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 802BBF94  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802BBF98  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BBF9C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802BBFA0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BBFA4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 802BBFA8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 802BBFAC  EF E1 00 28 */	fsubs f31, f1, f0
/* 802BBFB0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 802BBFB4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 802BBFB8  EF C1 00 28 */	fsubs f30, f1, f0
/* 802BBFBC  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 802BBFC0  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 802BBFC4  EC 81 00 2A */	fadds f4, f1, f0
/* 802BBFC8  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 802BBFCC  4C 40 13 82 */	cror 2, 0, 2
/* 802BBFD0  40 82 00 08 */	bne lbl_802BBFD8
/* 802BBFD4  48 00 00 28 */	b lbl_802BBFFC
lbl_802BBFD8:
/* 802BBFD8  FC 00 20 34 */	frsqrte f0, f4
/* 802BBFDC  FC 00 00 18 */	frsp f0, f0
/* 802BBFE0  EC 42 00 32 */	fmuls f2, f2, f0
/* 802BBFE4  C0 22 C0 B0 */	lfs f1, lit_998(r2)
/* 802BBFE8  EC 00 00 32 */	fmuls f0, f0, f0
/* 802BBFEC  EC 04 00 32 */	fmuls f0, f4, f0
/* 802BBFF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BBFF4  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BBFF8  EC 84 00 32 */	fmuls f4, f4, f0
lbl_802BBFFC:
/* 802BBFFC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802BC000  EF A0 01 32 */	fmuls f29, f0, f4
/* 802BC004  C3 82 C0 A4 */	lfs f28, lit_894(r2)
/* 802BC008  C8 22 C0 D0 */	lfd f1, lit_1008(r2)
/* 802BC00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BC010  3C 00 43 30 */	lis r0, 0x4330
/* 802BC014  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BC018  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802BC01C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802BC020  C0 42 C0 A0 */	lfs f2, lit_848(r2)
/* 802BC024  C0 62 C0 B4 */	lfs f3, lit_999(r2)
/* 802BC028  FC 80 E0 90 */	fmr f4, f28
/* 802BC02C  C0 A2 C0 B8 */	lfs f5, lit_1000(r2)
/* 802BC030  38 60 00 01 */	li r3, 1
/* 802BC034  4B FE D6 59 */	bl linearTransform__6Z2CalcFfffffb
/* 802BC038  FC A0 08 90 */	fmr f5, f1
/* 802BC03C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802BC040  FC 00 28 40 */	fcmpo cr0, f0, f5
/* 802BC044  40 81 00 3C */	ble lbl_802BC080
/* 802BC048  C0 62 C0 BC */	lfs f3, lit_1001(r2)
/* 802BC04C  FC 1D 18 40 */	fcmpo cr0, f29, f3
/* 802BC050  40 81 00 30 */	ble lbl_802BC080
/* 802BC054  FC 20 E8 90 */	fmr f1, f29
/* 802BC058  C0 42 C0 B8 */	lfs f2, lit_1000(r2)
/* 802BC05C  C0 82 C0 C0 */	lfs f4, lit_1002(r2)
/* 802BC060  C0 C2 C0 A4 */	lfs f6, lit_894(r2)
/* 802BC064  38 60 00 01 */	li r3, 1
/* 802BC068  4B FE D6 8D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BC06C  FF 80 08 90 */	fmr f28, f1
/* 802BC070  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BC074  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 802BC078  40 80 00 08 */	bge lbl_802BC080
/* 802BC07C  FF 80 00 90 */	fmr f28, f0
lbl_802BC080:
/* 802BC080  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 802BC084  EF 9C 00 28 */	fsubs f28, f28, f0
/* 802BC088  C0 62 C0 A0 */	lfs f3, lit_848(r2)
/* 802BC08C  FC 1C 18 40 */	fcmpo cr0, f28, f3
/* 802BC090  40 81 00 24 */	ble lbl_802BC0B4
/* 802BC094  FC 20 E2 10 */	fabs f1, f28
/* 802BC098  C0 42 C0 A4 */	lfs f2, lit_894(r2)
/* 802BC09C  C0 82 C0 C0 */	lfs f4, lit_1002(r2)
/* 802BC0A0  FC A0 20 90 */	fmr f5, f4
/* 802BC0A4  C0 C2 C0 A8 */	lfs f6, lit_895(r2)
/* 802BC0A8  38 60 00 01 */	li r3, 1
/* 802BC0AC  4B FE D6 49 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BC0B0  48 00 00 20 */	b lbl_802BC0D0
lbl_802BC0B4:
/* 802BC0B4  FC 20 E2 10 */	fabs f1, f28
/* 802BC0B8  C0 42 C0 AC */	lfs f2, lit_896(r2)
/* 802BC0BC  C0 82 C0 C0 */	lfs f4, lit_1002(r2)
/* 802BC0C0  C0 A2 C0 C4 */	lfs f5, lit_1003(r2)
/* 802BC0C4  C0 C2 C0 A8 */	lfs f6, lit_895(r2)
/* 802BC0C8  38 60 00 01 */	li r3, 1
/* 802BC0CC  4B FE D6 29 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
lbl_802BC0D0:
/* 802BC0D0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 802BC0D4  EC 1C 00 72 */	fmuls f0, f28, f1
/* 802BC0D8  EC 22 00 2A */	fadds f1, f2, f0
/* 802BC0DC  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BC0E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BC0E4  40 80 00 0C */	bge lbl_802BC0F0
/* 802BC0E8  FC 20 00 90 */	fmr f1, f0
/* 802BC0EC  48 00 00 14 */	b lbl_802BC100
lbl_802BC0F0:
/* 802BC0F0  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BC0F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BC0F8  40 81 00 08 */	ble lbl_802BC100
/* 802BC0FC  FC 20 00 90 */	fmr f1, f0
lbl_802BC100:
/* 802BC100  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802BC104  EC 00 00 72 */	fmuls f0, f0, f1
/* 802BC108  D0 01 00 08 */	stfs f0, 8(r1)
/* 802BC10C  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 802BC110  FC 20 FA 10 */	fabs f1, f31
/* 802BC114  C0 01 00 08 */	lfs f0, 8(r1)
/* 802BC118  EC 20 00 72 */	fmuls f1, f0, f1
/* 802BC11C  C0 42 C0 A4 */	lfs f2, lit_894(r2)
/* 802BC120  C0 62 C0 A0 */	lfs f3, lit_848(r2)
/* 802BC124  C0 82 C0 C0 */	lfs f4, lit_1002(r2)
/* 802BC128  C0 A2 C0 C4 */	lfs f5, lit_1003(r2)
/* 802BC12C  C0 C2 C0 C8 */	lfs f6, lit_1004(r2)
/* 802BC130  38 60 00 01 */	li r3, 1
/* 802BC134  4B FE D5 C1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BC138  FF 80 08 90 */	fmr f28, f1
/* 802BC13C  FC 20 F2 10 */	fabs f1, f30
/* 802BC140  C0 01 00 08 */	lfs f0, 8(r1)
/* 802BC144  EC 20 00 72 */	fmuls f1, f0, f1
/* 802BC148  C0 42 C0 A4 */	lfs f2, lit_894(r2)
/* 802BC14C  C0 62 C0 A0 */	lfs f3, lit_848(r2)
/* 802BC150  C0 82 C0 C0 */	lfs f4, lit_1002(r2)
/* 802BC154  C0 A2 C0 C4 */	lfs f5, lit_1003(r2)
/* 802BC158  C0 C2 C0 C8 */	lfs f6, lit_1004(r2)
/* 802BC15C  38 60 00 01 */	li r3, 1
/* 802BC160  4B FE D5 95 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BC164  C0 02 C0 C8 */	lfs f0, lit_1004(r2)
/* 802BC168  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 802BC16C  40 81 00 08 */	ble lbl_802BC174
/* 802BC170  FF 80 00 90 */	fmr f28, f0
lbl_802BC174:
/* 802BC174  C0 02 C0 C8 */	lfs f0, lit_1004(r2)
/* 802BC178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BC17C  40 81 00 08 */	ble lbl_802BC184
/* 802BC180  FC 20 00 90 */	fmr f1, f0
lbl_802BC184:
/* 802BC184  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 802BC188  EC 1F 07 32 */	fmuls f0, f31, f28
/* 802BC18C  EC 02 00 2A */	fadds f0, f2, f0
/* 802BC190  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802BC194  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 802BC198  EC 1E 00 72 */	fmuls f0, f30, f1
/* 802BC19C  EC 02 00 2A */	fadds f0, f2, f0
/* 802BC1A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802BC1A4  38 61 00 08 */	addi r3, r1, 8
/* 802BC1A8  4B FE 22 09 */	bl clamp__14JASSoundParamsFv
/* 802BC1AC  7F E3 FB 78 */	mr r3, r31
/* 802BC1B0  7F A4 EB 78 */	mr r4, r29
/* 802BC1B4  38 A1 00 08 */	addi r5, r1, 8
/* 802BC1B8  4B FE 22 C5 */	bl combine__14JASSoundParamsFRC14JASSoundParamsRC14JASSoundParams
/* 802BC1BC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802BC1C0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 802BC1C4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802BC1C8  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_802BC1CC:
/* 802BC1CC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 802BC1D0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 802BC1D4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 802BC1D8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 802BC1DC  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 802BC1E0  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 802BC1E4  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 802BC1E8  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 802BC1EC  39 61 00 40 */	addi r11, r1, 0x40
/* 802BC1F0  48 0A 60 39 */	bl _restgpr_29
/* 802BC1F4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802BC1F8  7C 08 03 A6 */	mtlr r0
/* 802BC1FC  38 21 00 80 */	addi r1, r1, 0x80
/* 802BC200  4E 80 00 20 */	blr 
