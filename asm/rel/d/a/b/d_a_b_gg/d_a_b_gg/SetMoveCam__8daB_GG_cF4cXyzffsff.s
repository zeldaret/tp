lbl_805DFF4C:
/* 805DFF4C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805DFF50  7C 08 02 A6 */	mflr r0
/* 805DFF54  90 01 00 64 */	stw r0, 0x64(r1)
/* 805DFF58  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805DFF5C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805DFF60  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 805DFF64  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 805DFF68  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805DFF6C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805DFF70  7C 7E 1B 78 */	mr r30, r3
/* 805DFF74  FF C0 18 90 */	fmr f30, f3
/* 805DFF78  FF E0 20 90 */	fmr f31, f4
/* 805DFF7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DFF80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DFF84  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805DFF88  7C 00 07 74 */	extsb r0, r0
/* 805DFF8C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805DFF90  7C 63 02 14 */	add r3, r3, r0
/* 805DFF94  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 805DFF98  3C 60 80 5F */	lis r3, lit_3912@ha /* 0x805ED064@ha */
/* 805DFF9C  C0 03 D0 64 */	lfs f0, lit_3912@l(r3)  /* 0x805ED064@l */
/* 805DFFA0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805DFFA4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 805DFFA8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 805DFFAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805DFFB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805DFFB4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805DFFB8  C0 04 00 00 */	lfs f0, 0(r4)
/* 805DFFBC  D0 1E 06 0C */	stfs f0, 0x60c(r30)
/* 805DFFC0  C0 04 00 04 */	lfs f0, 4(r4)
/* 805DFFC4  D0 1E 06 10 */	stfs f0, 0x610(r30)
/* 805DFFC8  C0 04 00 08 */	lfs f0, 8(r4)
/* 805DFFCC  D0 1E 06 14 */	stfs f0, 0x614(r30)
/* 805DFFD0  38 61 00 20 */	addi r3, r1, 0x20
/* 805DFFD4  38 C1 00 2C */	addi r6, r1, 0x2c
/* 805DFFD8  4B C9 0D E9 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805DFFDC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805DFFE0  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 805DFFE4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805DFFE8  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 805DFFEC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805DFFF0  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 805DFFF4  38 7E 06 24 */	addi r3, r30, 0x624
/* 805DFFF8  38 9E 06 0C */	addi r4, r30, 0x60c
/* 805DFFFC  FC 20 F0 90 */	fmr f1, f30
/* 805E0000  FC 40 F8 90 */	fmr f2, f31
/* 805E0004  3C A0 80 5F */	lis r5, lit_3912@ha /* 0x805ED064@ha */
/* 805E0008  C0 65 D0 64 */	lfs f3, lit_3912@l(r5)  /* 0x805ED064@l */
/* 805E000C  4B C8 FA AD */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805E0010  38 7E 06 30 */	addi r3, r30, 0x630
/* 805E0014  38 9E 06 18 */	addi r4, r30, 0x618
/* 805E0018  FC 20 F0 90 */	fmr f1, f30
/* 805E001C  FC 40 F8 90 */	fmr f2, f31
/* 805E0020  3C A0 80 5F */	lis r5, lit_3912@ha /* 0x805ED064@ha */
/* 805E0024  C0 65 D0 64 */	lfs f3, lit_3912@l(r5)  /* 0x805ED064@l */
/* 805E0028  4B C8 FA 91 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805E002C  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 805E0030  38 9E 06 24 */	addi r4, r30, 0x624
/* 805E0034  FC 20 F0 90 */	fmr f1, f30
/* 805E0038  FC 40 F8 90 */	fmr f2, f31
/* 805E003C  3C A0 80 5F */	lis r5, lit_3912@ha /* 0x805ED064@ha */
/* 805E0040  C0 65 D0 64 */	lfs f3, lit_3912@l(r5)  /* 0x805ED064@l */
/* 805E0044  4B C8 FA 75 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805E0048  38 7E 06 00 */	addi r3, r30, 0x600
/* 805E004C  38 9E 06 30 */	addi r4, r30, 0x630
/* 805E0050  FC 20 F0 90 */	fmr f1, f30
/* 805E0054  FC 40 F8 90 */	fmr f2, f31
/* 805E0058  3C A0 80 5F */	lis r5, lit_3912@ha /* 0x805ED064@ha */
/* 805E005C  C0 65 D0 64 */	lfs f3, lit_3912@l(r5)  /* 0x805ED064@l */
/* 805E0060  4B C8 FA 59 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805E0064  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 805E0068  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805E006C  C0 1E 05 F8 */	lfs f0, 0x5f8(r30)
/* 805E0070  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805E0074  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 805E0078  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E007C  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 805E0080  D0 01 00 08 */	stfs f0, 8(r1)
/* 805E0084  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 805E0088  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805E008C  C0 1E 06 08 */	lfs f0, 0x608(r30)
/* 805E0090  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E0094  38 7F 02 48 */	addi r3, r31, 0x248
/* 805E0098  38 81 00 14 */	addi r4, r1, 0x14
/* 805E009C  38 A1 00 08 */	addi r5, r1, 8
/* 805E00A0  C0 3E 06 3C */	lfs f1, 0x63c(r30)
/* 805E00A4  38 C0 00 00 */	li r6, 0
/* 805E00A8  4B BA 0A 39 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 805E00AC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805E00B0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805E00B4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 805E00B8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 805E00BC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805E00C0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805E00C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805E00C8  7C 08 03 A6 */	mtlr r0
/* 805E00CC  38 21 00 60 */	addi r1, r1, 0x60
/* 805E00D0  4E 80 00 20 */	blr 
