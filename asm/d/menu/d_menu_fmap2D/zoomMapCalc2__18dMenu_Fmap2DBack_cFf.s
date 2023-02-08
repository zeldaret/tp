lbl_801D1478:
/* 801D1478  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801D147C  7C 08 02 A6 */	mflr r0
/* 801D1480  90 01 00 44 */	stw r0, 0x44(r1)
/* 801D1484  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801D1488  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801D148C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801D1490  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801D1494  39 61 00 20 */	addi r11, r1, 0x20
/* 801D1498  48 19 0D 3D */	bl _savegpr_27
/* 801D149C  7C 7F 1B 78 */	mr r31, r3
/* 801D14A0  FF C0 08 90 */	fmr f30, f1
/* 801D14A4  48 00 17 A9 */	bl getSpotMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D14A8  FF E0 08 90 */	fmr f31, f1
/* 801D14AC  7F E3 FB 78 */	mr r3, r31
/* 801D14B0  88 9F 12 27 */	lbz r4, 0x1227(r31)
/* 801D14B4  48 00 16 B1 */	bl getRegionMapZoomRate__18dMenu_Fmap2DBack_cFi
/* 801D14B8  EC 1F 08 28 */	fsubs f0, f31, f1
/* 801D14BC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801D14C0  EC 01 00 2A */	fadds f0, f1, f0
/* 801D14C4  D0 1F 0F 9C */	stfs f0, 0xf9c(r31)
/* 801D14C8  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801D14CC  C0 1F 11 9C */	lfs f0, 0x119c(r31)
/* 801D14D0  EC 41 00 2A */	fadds f2, f1, f0
/* 801D14D4  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D14D8  54 00 10 3A */	slwi r0, r0, 2
/* 801D14DC  7C 7F 02 14 */	add r3, r31, r0
/* 801D14E0  C0 63 0D 8C */	lfs f3, 0xd8c(r3)
/* 801D14E4  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 801D14E8  40 80 00 3C */	bge lbl_801D1524
/* 801D14EC  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D14F0  C0 1F 11 A4 */	lfs f0, 0x11a4(r31)
/* 801D14F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D14F8  40 82 00 0C */	bne lbl_801D1504
/* 801D14FC  EC 02 18 28 */	fsubs f0, f2, f3
/* 801D1500  D0 1F 11 A4 */	stfs f0, 0x11a4(r31)
lbl_801D1504:
/* 801D1504  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1508  54 00 10 3A */	slwi r0, r0, 2
/* 801D150C  7C 7F 02 14 */	add r3, r31, r0
/* 801D1510  C0 23 0D 8C */	lfs f1, 0xd8c(r3)
/* 801D1514  C0 1F 11 8C */	lfs f0, 0x118c(r31)
/* 801D1518  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D151C  D0 1F 11 9C */	stfs f0, 0x119c(r31)
/* 801D1520  48 00 00 44 */	b lbl_801D1564
lbl_801D1524:
/* 801D1524  C0 63 0D CC */	lfs f3, 0xdcc(r3)
/* 801D1528  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 801D152C  40 81 00 38 */	ble lbl_801D1564
/* 801D1530  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D1534  C0 1F 11 A4 */	lfs f0, 0x11a4(r31)
/* 801D1538  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D153C  40 82 00 0C */	bne lbl_801D1548
/* 801D1540  EC 02 18 28 */	fsubs f0, f2, f3
/* 801D1544  D0 1F 11 A4 */	stfs f0, 0x11a4(r31)
lbl_801D1548:
/* 801D1548  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D154C  54 00 10 3A */	slwi r0, r0, 2
/* 801D1550  7C 7F 02 14 */	add r3, r31, r0
/* 801D1554  C0 23 0D CC */	lfs f1, 0xdcc(r3)
/* 801D1558  C0 1F 11 8C */	lfs f0, 0x118c(r31)
/* 801D155C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1560  D0 1F 11 9C */	stfs f0, 0x119c(r31)
lbl_801D1564:
/* 801D1564  C0 3F 11 90 */	lfs f1, 0x1190(r31)
/* 801D1568  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D156C  EC 41 00 2A */	fadds f2, f1, f0
/* 801D1570  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1574  54 00 10 3A */	slwi r0, r0, 2
/* 801D1578  7C 7F 02 14 */	add r3, r31, r0
/* 801D157C  C0 63 0D AC */	lfs f3, 0xdac(r3)
/* 801D1580  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 801D1584  40 80 00 3C */	bge lbl_801D15C0
/* 801D1588  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D158C  C0 1F 11 A8 */	lfs f0, 0x11a8(r31)
/* 801D1590  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D1594  40 82 00 0C */	bne lbl_801D15A0
/* 801D1598  EC 02 18 28 */	fsubs f0, f2, f3
/* 801D159C  D0 1F 11 A8 */	stfs f0, 0x11a8(r31)
lbl_801D15A0:
/* 801D15A0  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D15A4  54 00 10 3A */	slwi r0, r0, 2
/* 801D15A8  7C 7F 02 14 */	add r3, r31, r0
/* 801D15AC  C0 23 0D AC */	lfs f1, 0xdac(r3)
/* 801D15B0  C0 1F 11 90 */	lfs f0, 0x1190(r31)
/* 801D15B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D15B8  D0 1F 11 A0 */	stfs f0, 0x11a0(r31)
/* 801D15BC  48 00 00 44 */	b lbl_801D1600
lbl_801D15C0:
/* 801D15C0  C0 63 0D EC */	lfs f3, 0xdec(r3)
/* 801D15C4  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 801D15C8  40 81 00 38 */	ble lbl_801D1600
/* 801D15CC  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D15D0  C0 1F 11 A8 */	lfs f0, 0x11a8(r31)
/* 801D15D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D15D8  40 82 00 0C */	bne lbl_801D15E4
/* 801D15DC  EC 02 18 28 */	fsubs f0, f2, f3
/* 801D15E0  D0 1F 11 A8 */	stfs f0, 0x11a8(r31)
lbl_801D15E4:
/* 801D15E4  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D15E8  54 00 10 3A */	slwi r0, r0, 2
/* 801D15EC  7C 7F 02 14 */	add r3, r31, r0
/* 801D15F0  C0 23 0D EC */	lfs f1, 0xdec(r3)
/* 801D15F4  C0 1F 11 90 */	lfs f0, 0x1190(r31)
/* 801D15F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D15FC  D0 1F 11 A0 */	stfs f0, 0x11a0(r31)
lbl_801D1600:
/* 801D1600  7F E3 FB 78 */	mr r3, r31
/* 801D1604  48 00 14 31 */	bl calcRenderingScale__18dMenu_Fmap2DBack_cFv
/* 801D1608  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D160C  EC 00 F0 2A */	fadds f0, f0, f30
/* 801D1610  D0 1F 0F A0 */	stfs f0, 0xfa0(r31)
/* 801D1614  7F E3 FB 78 */	mr r3, r31
/* 801D1618  48 00 10 61 */	bl getMapAreaGlobalCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D161C  FF E0 08 90 */	fmr f31, f1
/* 801D1620  7F E3 FB 78 */	mr r3, r31
/* 801D1624  48 00 10 A5 */	bl getMapAreaGlobalCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D1628  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801D162C  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801D1630  88 03 03 08 */	lbz r0, 0x308(r3)
/* 801D1634  28 00 00 00 */	cmplwi r0, 0
/* 801D1638  40 82 00 64 */	bne lbl_801D169C
/* 801D163C  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1640  54 00 10 3A */	slwi r0, r0, 2
/* 801D1644  C0 62 A7 E8 */	lfs f3, lit_4202(r2)
/* 801D1648  7C 7F 02 14 */	add r3, r31, r0
/* 801D164C  C0 43 0E CC */	lfs f2, 0xecc(r3)
/* 801D1650  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1654  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D1658  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D165C  EC 5F 00 28 */	fsubs f2, f31, f0
/* 801D1660  C0 03 0E 8C */	lfs f0, 0xe8c(r3)
/* 801D1664  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D1668  D0 03 0F 0C */	stfs f0, 0xf0c(r3)
/* 801D166C  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1670  54 00 10 3A */	slwi r0, r0, 2
/* 801D1674  7C 7F 02 14 */	add r3, r31, r0
/* 801D1678  C0 43 0E EC */	lfs f2, 0xeec(r3)
/* 801D167C  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1680  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D1684  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D1688  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D168C  C0 03 0E AC */	lfs f0, 0xeac(r3)
/* 801D1690  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1694  D0 03 0F 2C */	stfs f0, 0xf2c(r3)
/* 801D1698  48 00 00 B0 */	b lbl_801D1748
lbl_801D169C:
/* 801D169C  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D16A0  54 00 10 3A */	slwi r0, r0, 2
/* 801D16A4  7C 7F 02 14 */	add r3, r31, r0
/* 801D16A8  C0 43 0E AC */	lfs f2, 0xeac(r3)
/* 801D16AC  C0 82 A7 E8 */	lfs f4, lit_4202(r2)
/* 801D16B0  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D16B4  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D16B8  EC 62 00 2A */	fadds f3, f2, f0
/* 801D16BC  C0 43 0E 2C */	lfs f2, 0xe2c(r3)
/* 801D16C0  C0 03 0E 6C */	lfs f0, 0xe6c(r3)
/* 801D16C4  EC 02 00 2A */	fadds f0, f2, f0
/* 801D16C8  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D16CC  ED 03 00 28 */	fsubs f8, f3, f0
/* 801D16D0  C0 E3 0E 8C */	lfs f7, 0xe8c(r3)
/* 801D16D4  C0 BF 0F 9C */	lfs f5, 0xf9c(r31)
/* 801D16D8  C0 C3 0E CC */	lfs f6, 0xecc(r3)
/* 801D16DC  EC 04 01 B2 */	fmuls f0, f4, f6
/* 801D16E0  EC 67 00 2A */	fadds f3, f7, f0
/* 801D16E4  C0 43 0E 0C */	lfs f2, 0xe0c(r3)
/* 801D16E8  C0 03 0E 4C */	lfs f0, 0xe4c(r3)
/* 801D16EC  EC 02 00 2A */	fadds f0, f2, f0
/* 801D16F0  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D16F4  EC 03 00 28 */	fsubs f0, f3, f0
/* 801D16F8  EC 00 01 72 */	fmuls f0, f0, f5
/* 801D16FC  EC 5F 00 2A */	fadds f2, f31, f0
/* 801D1700  EC 06 01 72 */	fmuls f0, f6, f5
/* 801D1704  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D1708  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D170C  EC 00 38 28 */	fsubs f0, f0, f7
/* 801D1710  D0 03 0F 0C */	stfs f0, 0xf0c(r3)
/* 801D1714  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1718  54 00 10 3A */	slwi r0, r0, 2
/* 801D171C  C0 5F 0F 9C */	lfs f2, 0xf9c(r31)
/* 801D1720  EC 08 00 B2 */	fmuls f0, f8, f2
/* 801D1724  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1728  7C 7F 02 14 */	add r3, r31, r0
/* 801D172C  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D1730  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801D1734  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D1738  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D173C  C0 03 0E AC */	lfs f0, 0xeac(r3)
/* 801D1740  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1744  D0 03 0F 2C */	stfs f0, 0xf2c(r3)
lbl_801D1748:
/* 801D1748  3B 60 00 00 */	li r27, 0
/* 801D174C  3B C0 00 00 */	li r30, 0
lbl_801D1750:
/* 801D1750  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1754  7C 1B 00 00 */	cmpw r27, r0
/* 801D1758  41 82 00 74 */	beq lbl_801D17CC
/* 801D175C  7F 9F F2 14 */	add r28, r31, r30
/* 801D1760  54 00 10 3A */	slwi r0, r0, 2
/* 801D1764  7F BF 02 14 */	add r29, r31, r0
/* 801D1768  7F E3 FB 78 */	mr r3, r31
/* 801D176C  48 00 13 F1 */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D1770  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1774  EC 40 08 28 */	fsubs f2, f0, f1
/* 801D1778  C0 3C 0E 8C */	lfs f1, 0xe8c(r28)
/* 801D177C  C0 1D 0E 8C */	lfs f0, 0xe8c(r29)
/* 801D1780  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1784  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801D1788  C0 1D 0F 0C */	lfs f0, 0xf0c(r29)
/* 801D178C  EC 00 08 2A */	fadds f0, f0, f1
/* 801D1790  D0 1C 0F 0C */	stfs f0, 0xf0c(r28)
/* 801D1794  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1798  54 00 10 3A */	slwi r0, r0, 2
/* 801D179C  7F BF 02 14 */	add r29, r31, r0
/* 801D17A0  7F E3 FB 78 */	mr r3, r31
/* 801D17A4  48 00 13 B9 */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D17A8  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D17AC  EC 40 08 28 */	fsubs f2, f0, f1
/* 801D17B0  C0 3C 0E AC */	lfs f1, 0xeac(r28)
/* 801D17B4  C0 1D 0E AC */	lfs f0, 0xeac(r29)
/* 801D17B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D17BC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801D17C0  C0 1D 0F 2C */	lfs f0, 0xf2c(r29)
/* 801D17C4  EC 00 08 2A */	fadds f0, f0, f1
/* 801D17C8  D0 1C 0F 2C */	stfs f0, 0xf2c(r28)
lbl_801D17CC:
/* 801D17CC  3B 7B 00 01 */	addi r27, r27, 1
/* 801D17D0  2C 1B 00 08 */	cmpwi r27, 8
/* 801D17D4  3B DE 00 04 */	addi r30, r30, 4
/* 801D17D8  41 80 FF 78 */	blt lbl_801D1750
/* 801D17DC  7F E3 FB 78 */	mr r3, r31
/* 801D17E0  FC 20 F0 90 */	fmr f1, f30
/* 801D17E4  48 00 02 C1 */	bl scrollCalc__18dMenu_Fmap2DBack_cFf
/* 801D17E8  C0 02 A7 D4 */	lfs f0, lit_3971(r2)
/* 801D17EC  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 801D17F0  40 82 00 40 */	bne lbl_801D1830
/* 801D17F4  C0 3F 11 8C */	lfs f1, 0x118c(r31)
/* 801D17F8  C0 1F 11 9C */	lfs f0, 0x119c(r31)
/* 801D17FC  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1800  C0 1F 0F C8 */	lfs f0, 0xfc8(r31)
/* 801D1804  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1808  D0 1F 11 B4 */	stfs f0, 0x11b4(r31)
/* 801D180C  C0 3F 11 90 */	lfs f1, 0x1190(r31)
/* 801D1810  C0 1F 11 A0 */	lfs f0, 0x11a0(r31)
/* 801D1814  EC 21 00 2A */	fadds f1, f1, f0
/* 801D1818  C0 1F 0F CC */	lfs f0, 0xfcc(r31)
/* 801D181C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1820  D0 1F 11 B8 */	stfs f0, 0x11b8(r31)
/* 801D1824  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D1828  D0 1F 11 A4 */	stfs f0, 0x11a4(r31)
/* 801D182C  D0 1F 11 A8 */	stfs f0, 0x11a8(r31)
lbl_801D1830:
/* 801D1830  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801D1834  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801D1838  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801D183C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801D1840  39 61 00 20 */	addi r11, r1, 0x20
/* 801D1844  48 19 09 DD */	bl _restgpr_27
/* 801D1848  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801D184C  7C 08 03 A6 */	mtlr r0
/* 801D1850  38 21 00 40 */	addi r1, r1, 0x40
/* 801D1854  4E 80 00 20 */	blr 
