lbl_802A99A0:
/* 802A99A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A99A4  7C 08 02 A6 */	mflr r0
/* 802A99A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A99AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A99B0  7C 7F 1B 78 */	mr r31, r3
/* 802A99B4  C0 23 00 00 */	lfs f1, 0(r3)
/* 802A99B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 802A99BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802A99C0  40 80 00 24 */	bge lbl_802A99E4
/* 802A99C4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802A99C8  EC 01 00 2A */	fadds f0, f1, f0
/* 802A99CC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802A99D0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802A99D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802A99D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802A99DC  40 80 00 28 */	bge lbl_802A9A04
/* 802A99E0  48 00 00 40 */	b lbl_802A9A20
lbl_802A99E4:
/* 802A99E4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802A99E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 802A99EC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802A99F0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802A99F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802A99F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802A99FC  40 81 00 08 */	ble lbl_802A9A04
/* 802A9A00  48 00 00 20 */	b lbl_802A9A20
lbl_802A9A04:
/* 802A9A04  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802A9A08  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802A9A0C  7F E3 FB 78 */	mr r3, r31
/* 802A9A10  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802A9A14  4B FF FF 45 */	bl tau__Q26Z2Calc8FNoise1fFf
/* 802A9A18  D0 3F 00 04 */	stfs f1, 4(r31)
/* 802A9A1C  C0 3F 00 00 */	lfs f1, 0(r31)
lbl_802A9A20:
/* 802A9A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9A28  7C 08 03 A6 */	mtlr r0
/* 802A9A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9A30  4E 80 00 20 */	blr 
