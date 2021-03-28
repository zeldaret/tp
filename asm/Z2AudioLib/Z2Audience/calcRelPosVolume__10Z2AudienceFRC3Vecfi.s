lbl_802BD95C:
/* 802BD95C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BD960  7C 08 02 A6 */	mflr r0
/* 802BD964  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BD968  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802BD96C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802BD970  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BD974  7C 7F 1B 78 */	mr r31, r3
/* 802BD978  FF E0 08 90 */	fmr f31, f1
/* 802BD97C  38 61 00 08 */	addi r3, r1, 8
/* 802BD980  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 802BD984  C0 24 00 08 */	lfs f1, 8(r4)
/* 802BD988  F0 03 00 00 */	psq_st f0, 0(r3), 0, 0 /* qr0 */
/* 802BD98C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802BD990  1C 05 00 74 */	mulli r0, r5, 0x74
/* 802BD994  7C 9F 02 14 */	add r4, r31, r0
/* 802BD998  C0 04 01 8C */	lfs f0, 0x18c(r4)
/* 802BD99C  EC 01 00 2A */	fadds f0, f1, f0
/* 802BD9A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BD9A4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 802BD9A8  C0 02 C0 D8 */	lfs f0, lit_1036(r2)
/* 802BD9AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BD9B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BD9B4  48 08 97 9D */	bl PSVECMag
/* 802BD9B8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802BD9BC  EC A0 07 F2 */	fmuls f5, f0, f31
/* 802BD9C0  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 802BD9C4  40 81 00 0C */	ble lbl_802BD9D0
/* 802BD9C8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 802BD9CC  48 00 00 5C */	b lbl_802BDA28
lbl_802BD9D0:
/* 802BD9D0  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 802BD9D4  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 802BD9D8  40 80 00 0C */	bge lbl_802BD9E4
/* 802BD9DC  C0 22 C0 A4 */	lfs f1, lit_894(r2)
/* 802BD9E0  48 00 00 48 */	b lbl_802BDA28
lbl_802BD9E4:
/* 802BD9E4  C0 62 C0 A4 */	lfs f3, lit_894(r2)
/* 802BD9E8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 802BD9EC  EC 40 18 28 */	fsubs f2, f0, f3
/* 802BD9F0  EC 05 20 28 */	fsubs f0, f5, f4
/* 802BD9F4  EC 42 00 24 */	fdivs f2, f2, f0
/* 802BD9F8  EC 01 20 28 */	fsubs f0, f1, f4
/* 802BD9FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BDA00  EC 03 00 2A */	fadds f0, f3, f0
/* 802BDA04  C0 22 C0 A0 */	lfs f1, lit_848(r2)
/* 802BDA08  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802BDA0C  40 80 00 08 */	bge lbl_802BDA14
/* 802BDA10  48 00 00 18 */	b lbl_802BDA28
lbl_802BDA14:
/* 802BDA14  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802BDA18  40 81 00 0C */	ble lbl_802BDA24
/* 802BDA1C  FC 20 18 90 */	fmr f1, f3
/* 802BDA20  48 00 00 08 */	b lbl_802BDA28
lbl_802BDA24:
/* 802BDA24  FC 20 00 90 */	fmr f1, f0
lbl_802BDA28:
/* 802BDA28  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802BDA2C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802BDA30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BDA34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BDA38  7C 08 03 A6 */	mtlr r0
/* 802BDA3C  38 21 00 30 */	addi r1, r1, 0x30
/* 802BDA40  4E 80 00 20 */	blr 
