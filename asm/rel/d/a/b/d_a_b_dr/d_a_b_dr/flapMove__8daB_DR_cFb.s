lbl_805BCD7C:
/* 805BCD7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BCD80  7C 08 02 A6 */	mflr r0
/* 805BCD84  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BCD88  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805BCD8C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805BCD90  39 61 00 20 */	addi r11, r1, 0x20
/* 805BCD94  4B DA 54 48 */	b _savegpr_29
/* 805BCD98  7C 7D 1B 78 */	mr r29, r3
/* 805BCD9C  7C 9E 23 78 */	mr r30, r4
/* 805BCDA0  3C 60 80 5C */	lis r3, lit_3800@ha
/* 805BCDA4  3B E3 6C 74 */	addi r31, r3, lit_3800@l
/* 805BCDA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805BCDAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805BCDB0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805BCDB4  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 805BCDB8  88 1D 07 D1 */	lbz r0, 0x7d1(r29)
/* 805BCDBC  28 00 00 01 */	cmplwi r0, 1
/* 805BCDC0  40 82 00 1C */	bne lbl_805BCDDC
/* 805BCDC4  C3 FF 03 64 */	lfs f31, 0x364(r31)
/* 805BCDC8  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 805BCDCC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 805BCDD0  40 80 00 0C */	bge lbl_805BCDDC
/* 805BCDD4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805BCDD8  EF E0 08 2A */	fadds f31, f0, f1
lbl_805BCDDC:
/* 805BCDDC  C0 1F 03 68 */	lfs f0, 0x368(r31)
/* 805BCDE0  C0 3D 08 C8 */	lfs f1, 0x8c8(r29)
/* 805BCDE4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805BCDE8  40 82 00 10 */	bne lbl_805BCDF8
/* 805BCDEC  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805BCDF0  EF FF 00 2A */	fadds f31, f31, f0
/* 805BCDF4  48 00 00 08 */	b lbl_805BCDFC
lbl_805BCDF8:
/* 805BCDF8  EF FF 08 2A */	fadds f31, f31, f1
lbl_805BCDFC:
/* 805BCDFC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805BCE00  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805BCE04  FC 00 02 10 */	fabs f0, f0
/* 805BCE08  FC 20 00 18 */	frsp f1, f0
/* 805BCE0C  C0 1F 03 6C */	lfs f0, 0x36c(r31)
/* 805BCE10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BCE14  40 81 00 18 */	ble lbl_805BCE2C
/* 805BCE18  C0 3D 07 24 */	lfs f1, 0x724(r29)
/* 805BCE1C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805BCE20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BCE24  40 80 00 08 */	bge lbl_805BCE2C
/* 805BCE28  D0 1D 07 24 */	stfs f0, 0x724(r29)
lbl_805BCE2C:
/* 805BCE2C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 805BCE30  FC 20 F8 90 */	fmr f1, f31
/* 805BCE34  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805BCE38  C0 7D 07 24 */	lfs f3, 0x724(r29)
/* 805BCE3C  4B CB 2C 00 */	b cLib_addCalc2__FPffff
/* 805BCE40  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 805BCE44  40 82 00 18 */	bne lbl_805BCE5C
/* 805BCE48  38 7D 07 24 */	addi r3, r29, 0x724
/* 805BCE4C  C0 3F 03 70 */	lfs f1, 0x370(r31)
/* 805BCE50  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805BCE54  C0 7F 00 04 */	lfs f3, 4(r31)
/* 805BCE58  4B CB 2B E4 */	b cLib_addCalc2__FPffff
lbl_805BCE5C:
/* 805BCE5C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805BCE60  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805BCE64  FC 00 02 10 */	fabs f0, f0
/* 805BCE68  FC 20 00 18 */	frsp f1, f0
/* 805BCE6C  C0 1F 03 74 */	lfs f0, 0x374(r31)
/* 805BCE70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BCE74  40 80 00 0C */	bge lbl_805BCE80
/* 805BCE78  38 60 00 01 */	li r3, 1
/* 805BCE7C  48 00 00 08 */	b lbl_805BCE84
lbl_805BCE80:
/* 805BCE80  38 60 00 00 */	li r3, 0
lbl_805BCE84:
/* 805BCE84  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805BCE88  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805BCE8C  39 61 00 20 */	addi r11, r1, 0x20
/* 805BCE90  4B DA 53 98 */	b _restgpr_29
/* 805BCE94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BCE98  7C 08 03 A6 */	mtlr r0
/* 805BCE9C  38 21 00 30 */	addi r1, r1, 0x30
/* 805BCEA0  4E 80 00 20 */	blr 
