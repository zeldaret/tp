lbl_805E00D4:
/* 805E00D4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805E00D8  7C 08 02 A6 */	mflr r0
/* 805E00DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805E00E0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805E00E4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805E00E8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805E00EC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805E00F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805E00F4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805E00F8  7C 7E 1B 78 */	mr r30, r3
/* 805E00FC  FF C0 08 90 */	fmr f30, f1
/* 805E0100  FF E0 10 90 */	fmr f31, f2
/* 805E0104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E0108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E010C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805E0110  7C 00 07 74 */	extsb r0, r0
/* 805E0114  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805E0118  7C 63 02 14 */	add r3, r3, r0
/* 805E011C  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805E0120  38 7E 06 24 */	addi r3, r30, 0x624
/* 805E0124  38 9E 06 0C */	addi r4, r30, 0x60c
/* 805E0128  3C A0 80 5F */	lis r5, lit_3912@ha
/* 805E012C  C0 65 D0 64 */	lfs f3, lit_3912@l(r5)
/* 805E0130  4B C8 F9 88 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805E0134  38 7E 06 30 */	addi r3, r30, 0x630
/* 805E0138  38 9E 06 18 */	addi r4, r30, 0x618
/* 805E013C  FC 20 F0 90 */	fmr f1, f30
/* 805E0140  FC 40 F8 90 */	fmr f2, f31
/* 805E0144  3C A0 80 5F */	lis r5, lit_3912@ha
/* 805E0148  C0 65 D0 64 */	lfs f3, lit_3912@l(r5)
/* 805E014C  4B C8 F9 6C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805E0150  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 805E0154  38 9E 06 0C */	addi r4, r30, 0x60c
/* 805E0158  FC 20 F0 90 */	fmr f1, f30
/* 805E015C  FC 40 F8 90 */	fmr f2, f31
/* 805E0160  3C A0 80 5F */	lis r5, lit_3912@ha
/* 805E0164  C0 65 D0 64 */	lfs f3, lit_3912@l(r5)
/* 805E0168  4B C8 F9 50 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805E016C  38 7E 06 00 */	addi r3, r30, 0x600
/* 805E0170  38 9E 06 18 */	addi r4, r30, 0x618
/* 805E0174  FC 20 F0 90 */	fmr f1, f30
/* 805E0178  FC 40 F8 90 */	fmr f2, f31
/* 805E017C  3C A0 80 5F */	lis r5, lit_3912@ha
/* 805E0180  C0 65 D0 64 */	lfs f3, lit_3912@l(r5)
/* 805E0184  4B C8 F9 34 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805E0188  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 805E018C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805E0190  C0 1E 05 F8 */	lfs f0, 0x5f8(r30)
/* 805E0194  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E0198  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 805E019C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E01A0  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 805E01A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805E01A8  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 805E01AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805E01B0  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 805E01B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E01B8  38 7F 02 48 */	addi r3, r31, 0x248
/* 805E01BC  38 81 00 14 */	addi r4, r1, 0x14
/* 805E01C0  38 A1 00 08 */	addi r5, r1, 8
/* 805E01C4  C0 3E 06 3C */	lfs f1, 0x63c(r30)
/* 805E01C8  38 C0 00 00 */	li r6, 0
/* 805E01CC  4B BA 09 14 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 805E01D0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805E01D4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805E01D8  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805E01DC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805E01E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805E01E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805E01E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805E01EC  7C 08 03 A6 */	mtlr r0
/* 805E01F0  38 21 00 50 */	addi r1, r1, 0x50
/* 805E01F4  4E 80 00 20 */	blr 
