lbl_807A1568:
/* 807A1568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807A156C  7C 08 02 A6 */	mflr r0
/* 807A1570  90 01 00 24 */	stw r0, 0x24(r1)
/* 807A1574  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807A1578  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807A157C  7C 7E 1B 78 */	mr r30, r3
/* 807A1580  3C 60 80 7A */	lis r3, lit_3903@ha
/* 807A1584  3B E3 68 24 */	addi r31, r3, lit_3903@l
/* 807A1588  38 00 00 05 */	li r0, 5
/* 807A158C  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807A1590  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 807A1594  38 80 00 00 */	li r4, 0
/* 807A1598  38 A0 00 04 */	li r5, 4
/* 807A159C  38 C0 04 00 */	li r6, 0x400
/* 807A15A0  4B AC F0 68 */	b cLib_addCalcAngleS2__FPssss
/* 807A15A4  38 7E 06 9E */	addi r3, r30, 0x69e
/* 807A15A8  38 80 00 00 */	li r4, 0
/* 807A15AC  38 A0 00 01 */	li r5, 1
/* 807A15B0  38 C0 04 00 */	li r6, 0x400
/* 807A15B4  4B AC F0 54 */	b cLib_addCalcAngleS2__FPssss
/* 807A15B8  38 7E 06 9C */	addi r3, r30, 0x69c
/* 807A15BC  38 80 00 00 */	li r4, 0
/* 807A15C0  38 A0 00 01 */	li r5, 1
/* 807A15C4  38 C0 04 00 */	li r6, 0x400
/* 807A15C8  4B AC F0 40 */	b cLib_addCalcAngleS2__FPssss
/* 807A15CC  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807A15D0  2C 00 00 01 */	cmpwi r0, 1
/* 807A15D4  41 82 00 B4 */	beq lbl_807A1688
/* 807A15D8  40 80 00 10 */	bge lbl_807A15E8
/* 807A15DC  2C 00 00 00 */	cmpwi r0, 0
/* 807A15E0  40 80 00 14 */	bge lbl_807A15F4
/* 807A15E4  48 00 01 AC */	b lbl_807A1790
lbl_807A15E8:
/* 807A15E8  2C 00 00 03 */	cmpwi r0, 3
/* 807A15EC  40 80 01 A4 */	bge lbl_807A1790
/* 807A15F0  48 00 01 10 */	b lbl_807A1700
lbl_807A15F4:
/* 807A15F4  38 00 00 01 */	li r0, 1
/* 807A15F8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A15FC  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 807A1600  2C 00 00 00 */	cmpwi r0, 0
/* 807A1604  41 82 00 50 */	beq lbl_807A1654
/* 807A1608  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A160C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A1610  80 63 00 00 */	lwz r3, 0(r3)
/* 807A1614  A8 9E 06 9E */	lha r4, 0x69e(r30)
/* 807A1618  4B 86 AD C4 */	b mDoMtx_YrotS__FPA4_fs
/* 807A161C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807A1620  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807A1624  80 63 00 00 */	lwz r3, 0(r3)
/* 807A1628  A8 9E 06 9C */	lha r4, 0x69c(r30)
/* 807A162C  4B 86 AD 70 */	b mDoMtx_XrotM__FPA4_fs
/* 807A1630  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A1634  D0 21 00 08 */	stfs f1, 8(r1)
/* 807A1638  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807A163C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A1640  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807A1644  38 61 00 08 */	addi r3, r1, 8
/* 807A1648  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807A164C  4B AC F8 A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 807A1650  48 00 00 14 */	b lbl_807A1664
lbl_807A1654:
/* 807A1654  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A1658  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 807A165C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807A1660  D0 1E 05 00 */	stfs f0, 0x500(r30)
lbl_807A1664:
/* 807A1664  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A1668  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807A166C  7F C3 F3 78 */	mr r3, r30
/* 807A1670  38 80 00 22 */	li r4, 0x22
/* 807A1674  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807A1678  38 A0 00 02 */	li r5, 2
/* 807A167C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A1680  4B FF C7 CD */	bl anm_init__FP10e_st_classifUcf
/* 807A1684  48 00 01 0C */	b lbl_807A1790
lbl_807A1688:
/* 807A1688  80 1E 08 6C */	lwz r0, 0x86c(r30)
/* 807A168C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807A1690  41 82 01 00 */	beq lbl_807A1790
/* 807A1694  38 00 00 02 */	li r0, 2
/* 807A1698  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A169C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807A16A0  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 807A16A4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A16A8  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 807A16AC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807A16B0  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 807A16B4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807A16B8  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 807A16BC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A16C0  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 807A16C4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807A16C8  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 807A16CC  7F C3 F3 78 */	mr r3, r30
/* 807A16D0  4B FF D8 6D */	bl bg_pos_get__FP10e_st_class
/* 807A16D4  7F C3 F3 78 */	mr r3, r30
/* 807A16D8  38 80 00 1E */	li r4, 0x1e
/* 807A16DC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807A16E0  38 A0 00 00 */	li r5, 0
/* 807A16E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A16E8  4B FF C7 65 */	bl anm_init__FP10e_st_classifUcf
/* 807A16EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A16F0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 807A16F4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807A16F8  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 807A16FC  48 00 00 94 */	b lbl_807A1790
lbl_807A1700:
/* 807A1700  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 807A1704  38 80 00 00 */	li r4, 0
/* 807A1708  38 A0 00 01 */	li r5, 1
/* 807A170C  38 C0 10 00 */	li r6, 0x1000
/* 807A1710  4B AC EE F8 */	b cLib_addCalcAngleS2__FPssss
/* 807A1714  38 7E 06 9E */	addi r3, r30, 0x69e
/* 807A1718  38 80 00 00 */	li r4, 0
/* 807A171C  38 A0 00 01 */	li r5, 1
/* 807A1720  38 C0 10 00 */	li r6, 0x1000
/* 807A1724  4B AC EE E4 */	b cLib_addCalcAngleS2__FPssss
/* 807A1728  38 7E 06 9C */	addi r3, r30, 0x69c
/* 807A172C  38 80 00 00 */	li r4, 0
/* 807A1730  38 A0 00 01 */	li r5, 1
/* 807A1734  38 C0 10 00 */	li r6, 0x1000
/* 807A1738  4B AC EE D0 */	b cLib_addCalcAngleS2__FPssss
/* 807A173C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807A1740  38 80 00 01 */	li r4, 1
/* 807A1744  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A1748  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A174C  40 82 00 18 */	bne lbl_807A1764
/* 807A1750  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A1754  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A1758  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A175C  41 82 00 08 */	beq lbl_807A1764
/* 807A1760  38 80 00 00 */	li r4, 0
lbl_807A1764:
/* 807A1764  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A1768  41 82 00 28 */	beq lbl_807A1790
/* 807A176C  38 60 00 00 */	li r3, 0
/* 807A1770  B0 7E 06 9E */	sth r3, 0x69e(r30)
/* 807A1774  B0 7E 06 9C */	sth r3, 0x69c(r30)
/* 807A1778  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 807A177C  38 00 00 32 */	li r0, 0x32
/* 807A1780  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 807A1784  B0 7E 06 80 */	sth r3, 0x680(r30)
/* 807A1788  38 00 00 02 */	li r0, 2
/* 807A178C  98 1E 05 B4 */	stb r0, 0x5b4(r30)
lbl_807A1790:
/* 807A1790  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807A1794  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807A1798  7C 65 1B 78 */	mr r5, r3
/* 807A179C  4B BA 58 F4 */	b PSVECAdd
/* 807A17A0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 807A17A4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 807A17A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A17AC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807A17B0  38 7E 08 40 */	addi r3, r30, 0x840
/* 807A17B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A17B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807A17BC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807A17C0  4B 8D 52 EC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 807A17C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807A17C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807A17CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807A17D0  7C 08 03 A6 */	mtlr r0
/* 807A17D4  38 21 00 20 */	addi r1, r1, 0x20
/* 807A17D8  4E 80 00 20 */	blr 
