lbl_800E15FC:
/* 800E15FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E1600  7C 08 02 A6 */	mflr r0
/* 800E1604  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E1608  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800E160C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800E1610  39 61 00 20 */	addi r11, r1, 0x20
/* 800E1614  48 28 0B C9 */	bl _savegpr_29
/* 800E1618  7C 7D 1B 78 */	mr r29, r3
/* 800E161C  83 E3 27 E0 */	lwz r31, 0x27e0(r3)
/* 800E1620  3B C0 00 01 */	li r30, 1
/* 800E1624  7F E3 FB 78 */	mr r3, r31
/* 800E1628  4B F9 21 BD */	bl LockonTruth__12dAttention_cFv
/* 800E162C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1630  40 82 00 14 */	bne lbl_800E1644
/* 800E1634  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800E1638  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800E163C  40 82 00 08 */	bne lbl_800E1644
/* 800E1640  3B C0 00 00 */	li r30, 0
lbl_800E1644:
/* 800E1644  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800E1648  41 82 00 0C */	beq lbl_800E1654
/* 800E164C  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
/* 800E1650  48 00 00 80 */	b lbl_800E16D0
lbl_800E1654:
/* 800E1654  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800E1658  28 00 00 1B */	cmplwi r0, 0x1b
/* 800E165C  40 82 00 28 */	bne lbl_800E1684
/* 800E1660  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 800E1664  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha
/* 800E1668  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l
/* 800E166C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800E1670  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E1674  FC 00 02 10 */	fabs f0, f0
/* 800E1678  FC 00 00 18 */	frsp f0, f0
/* 800E167C  FF E0 00 90 */	fmr f31, f0
/* 800E1680  48 00 00 24 */	b lbl_800E16A4
lbl_800E1684:
/* 800E1684  C0 3D 33 98 */	lfs f1, 0x3398(r29)
/* 800E1688  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha
/* 800E168C  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l
/* 800E1690  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800E1694  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E1698  FC 00 02 10 */	fabs f0, f0
/* 800E169C  FC 00 00 18 */	frsp f0, f0
/* 800E16A0  FF E0 00 90 */	fmr f31, f0
lbl_800E16A4:
/* 800E16A4  7F A3 EB 78 */	mr r3, r29
/* 800E16A8  38 80 00 01 */	li r4, 1
/* 800E16AC  38 A0 00 01 */	li r5, 1
/* 800E16B0  4B FD 9E 09 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800E16B4  2C 03 00 00 */	cmpwi r3, 0
/* 800E16B8  41 82 00 18 */	beq lbl_800E16D0
/* 800E16BC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E16C0  C0 1D 34 34 */	lfs f0, 0x3434(r29)
/* 800E16C4  EC 00 00 32 */	fmuls f0, f0, f0
/* 800E16C8  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E16CC  EF FF 00 32 */	fmuls f31, f31, f0
lbl_800E16D0:
/* 800E16D0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E16D4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800E16D8  40 81 00 08 */	ble lbl_800E16E0
/* 800E16DC  FF E0 00 90 */	fmr f31, f0
lbl_800E16E0:
/* 800E16E0  38 7D 33 E8 */	addi r3, r29, 0x33e8
/* 800E16E4  FC 20 F8 90 */	fmr f1, f31
/* 800E16E8  C0 42 93 EC */	lfs f2, lit_13119(r2)
/* 800E16EC  48 18 F0 55 */	bl cLib_chaseF__FPfff
/* 800E16F0  C0 5D 33 E8 */	lfs f2, 0x33e8(r29)
/* 800E16F4  A8 1D 20 50 */	lha r0, 0x2050(r29)
/* 800E16F8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800E16FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E1700  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E1704  3C 00 43 30 */	lis r0, 0x4330
/* 800E1708  90 01 00 08 */	stw r0, 8(r1)
/* 800E170C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800E1710  EC 00 08 28 */	fsubs f0, f0, f1
/* 800E1714  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E1718  D0 1D 20 58 */	stfs f0, 0x2058(r29)
/* 800E171C  C0 1D 20 58 */	lfs f0, 0x2058(r29)
/* 800E1720  80 7D 1F 54 */	lwz r3, 0x1f54(r29)
/* 800E1724  D0 03 00 08 */	stfs f0, 8(r3)
/* 800E1728  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800E172C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800E1730  39 61 00 20 */	addi r11, r1, 0x20
/* 800E1734  48 28 0A F5 */	bl _restgpr_29
/* 800E1738  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E173C  7C 08 03 A6 */	mtlr r0
/* 800E1740  38 21 00 30 */	addi r1, r1, 0x30
/* 800E1744  4E 80 00 20 */	blr 
