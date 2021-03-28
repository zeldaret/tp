lbl_800A142C:
/* 800A142C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800A1430  7C 08 02 A6 */	mflr r0
/* 800A1434  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800A1438  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800A143C  48 2C 0D 7D */	bl _savegpr_20
/* 800A1440  7C 7F 1B 78 */	mr r31, r3
/* 800A1444  7C 99 23 78 */	mr r25, r4
/* 800A1448  7C BB 2B 78 */	mr r27, r5
/* 800A144C  7C DE 33 78 */	mr r30, r6
/* 800A1450  7C FD 3B 78 */	mr r29, r7
/* 800A1454  7D 1C 43 78 */	mr r28, r8
/* 800A1458  A8 63 2F E6 */	lha r3, 0x2fe6(r3)
/* 800A145C  A8 1F 05 9E */	lha r0, 0x59e(r31)
/* 800A1460  7C 03 02 14 */	add r0, r3, r0
/* 800A1464  7C 15 07 34 */	extsh r21, r0
/* 800A1468  A0 7F 2F E8 */	lhz r3, 0x2fe8(r31)
/* 800A146C  28 03 00 C0 */	cmplwi r3, 0xc0
/* 800A1470  40 82 00 10 */	bne lbl_800A1480
/* 800A1474  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 800A1478  2C 00 00 00 */	cmpwi r0, 0
/* 800A147C  41 82 00 18 */	beq lbl_800A1494
lbl_800A1480:
/* 800A1480  28 03 00 D7 */	cmplwi r3, 0xd7
/* 800A1484  40 82 00 18 */	bne lbl_800A149C
/* 800A1488  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800A148C  2C 00 00 00 */	cmpwi r0, 0
/* 800A1490  40 82 00 0C */	bne lbl_800A149C
lbl_800A1494:
/* 800A1494  3E B5 00 01 */	addis r21, r21, 1
/* 800A1498  3A B5 80 00 */	addi r21, r21, -32768
lbl_800A149C:
/* 800A149C  38 61 00 24 */	addi r3, r1, 0x24
/* 800A14A0  38 9F 05 38 */	addi r4, r31, 0x538
/* 800A14A4  38 BF 34 E0 */	addi r5, r31, 0x34e0
/* 800A14A8  48 1C 56 8D */	bl __mi__4cXyzCFRC3Vec
/* 800A14AC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800A14B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800A14B4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800A14B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800A14BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800A14C0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800A14C4  7F E3 FB 78 */	mr r3, r31
/* 800A14C8  38 81 00 3C */	addi r4, r1, 0x3c
/* 800A14CC  48 04 0F B1 */	bl multVecMagneBootInvMtx__9daAlink_cFP4cXyz
/* 800A14D0  38 61 00 3C */	addi r3, r1, 0x3c
/* 800A14D4  48 1C 5C 7D */	bl atan2sY_XZ__4cXyzCFv
/* 800A14D8  7C 74 1B 78 */	mr r20, r3
/* 800A14DC  38 61 00 3C */	addi r3, r1, 0x3c
/* 800A14E0  48 1C 5C 49 */	bl atan2sX_Z__4cXyzCFv
/* 800A14E4  A8 1F 31 24 */	lha r0, 0x3124(r31)
/* 800A14E8  7E 96 07 34 */	extsh r22, r20
/* 800A14EC  7C 00 B0 50 */	subf r0, r0, r22
/* 800A14F0  7C 14 07 34 */	extsh r20, r0
/* 800A14F4  A8 9F 31 26 */	lha r4, 0x3126(r31)
/* 800A14F8  7E B5 07 34 */	extsh r21, r21
/* 800A14FC  7C 77 07 34 */	extsh r23, r3
/* 800A1500  7C 15 B8 50 */	subf r0, r21, r23
/* 800A1504  7C 04 00 50 */	subf r0, r4, r0
/* 800A1508  7C 18 07 34 */	extsh r24, r0
/* 800A150C  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800A1510  3C 60 08 00 */	lis r3, 0x0800 /* 0x08000100@ha */
/* 800A1514  38 03 01 00 */	addi r0, r3, 0x0100 /* 0x08000100@l */
/* 800A1518  7C 80 00 39 */	and. r0, r4, r0
/* 800A151C  41 82 05 5C */	beq lbl_800A1A78
/* 800A1520  28 19 00 00 */	cmplwi r25, 0
/* 800A1524  41 82 05 54 */	beq lbl_800A1A78
/* 800A1528  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800A152C  28 00 02 A7 */	cmplwi r0, 0x2a7
/* 800A1530  41 82 05 48 */	beq lbl_800A1A78
/* 800A1534  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800A1538  28 00 00 AD */	cmplwi r0, 0xad
/* 800A153C  41 82 05 3C */	beq lbl_800A1A78
/* 800A1540  38 61 00 18 */	addi r3, r1, 0x18
/* 800A1544  7F 24 CB 78 */	mr r4, r25
/* 800A1548  38 BF 34 E0 */	addi r5, r31, 0x34e0
/* 800A154C  48 1C 55 E9 */	bl __mi__4cXyzCFRC3Vec
/* 800A1550  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800A1554  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800A1558  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800A155C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800A1560  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800A1564  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800A1568  7F E3 FB 78 */	mr r3, r31
/* 800A156C  38 81 00 30 */	addi r4, r1, 0x30
/* 800A1570  48 04 0F 0D */	bl multVecMagneBootInvMtx__9daAlink_cFP4cXyz
/* 800A1574  38 61 00 30 */	addi r3, r1, 0x30
/* 800A1578  48 1C 5B D9 */	bl atan2sY_XZ__4cXyzCFv
/* 800A157C  7C 79 1B 78 */	mr r25, r3
/* 800A1580  38 61 00 30 */	addi r3, r1, 0x30
/* 800A1584  48 1C 5B A5 */	bl atan2sX_Z__4cXyzCFv
/* 800A1588  7C 15 18 50 */	subf r0, r21, r3
/* 800A158C  7C 1A 07 34 */	extsh r26, r0
/* 800A1590  2C 1A 70 00 */	cmpwi r26, 0x7000
/* 800A1594  40 81 00 10 */	ble lbl_800A15A4
/* 800A1598  A8 1F 31 26 */	lha r0, 0x3126(r31)
/* 800A159C  2C 00 00 00 */	cmpwi r0, 0
/* 800A15A0  41 80 00 18 */	blt lbl_800A15B8
lbl_800A15A4:
/* 800A15A4  2C 1A 90 00 */	cmpwi r26, -28672
/* 800A15A8  40 80 00 18 */	bge lbl_800A15C0
/* 800A15AC  A8 1F 31 26 */	lha r0, 0x3126(r31)
/* 800A15B0  2C 00 00 00 */	cmpwi r0, 0
/* 800A15B4  40 81 00 0C */	ble lbl_800A15C0
lbl_800A15B8:
/* 800A15B8  1C 1A FF FF */	mulli r0, r26, -1
/* 800A15BC  7C 1A 07 34 */	extsh r26, r0
lbl_800A15C0:
/* 800A15C0  7F 55 D3 78 */	mr r21, r26
/* 800A15C4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800A15C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800A15CC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A15D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800A15D4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800A15D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800A15DC  38 61 00 0C */	addi r3, r1, 0xc
/* 800A15E0  48 2A 5B 59 */	bl PSVECSquareMag
/* 800A15E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A15E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A15EC  40 81 00 58 */	ble lbl_800A1644
/* 800A15F0  FC 00 08 34 */	frsqrte f0, f1
/* 800A15F4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A15F8  FC 44 00 32 */	fmul f2, f4, f0
/* 800A15FC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A1600  FC 00 00 32 */	fmul f0, f0, f0
/* 800A1604  FC 01 00 32 */	fmul f0, f1, f0
/* 800A1608  FC 03 00 28 */	fsub f0, f3, f0
/* 800A160C  FC 02 00 32 */	fmul f0, f2, f0
/* 800A1610  FC 44 00 32 */	fmul f2, f4, f0
/* 800A1614  FC 00 00 32 */	fmul f0, f0, f0
/* 800A1618  FC 01 00 32 */	fmul f0, f1, f0
/* 800A161C  FC 03 00 28 */	fsub f0, f3, f0
/* 800A1620  FC 02 00 32 */	fmul f0, f2, f0
/* 800A1624  FC 44 00 32 */	fmul f2, f4, f0
/* 800A1628  FC 00 00 32 */	fmul f0, f0, f0
/* 800A162C  FC 01 00 32 */	fmul f0, f1, f0
/* 800A1630  FC 03 00 28 */	fsub f0, f3, f0
/* 800A1634  FC 02 00 32 */	fmul f0, f2, f0
/* 800A1638  FC 21 00 32 */	fmul f1, f1, f0
/* 800A163C  FC 20 08 18 */	frsp f1, f1
/* 800A1640  48 00 00 88 */	b lbl_800A16C8
lbl_800A1644:
/* 800A1644  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A1648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A164C  40 80 00 10 */	bge lbl_800A165C
/* 800A1650  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A1654  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800A1658  48 00 00 70 */	b lbl_800A16C8
lbl_800A165C:
/* 800A165C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A1660  80 81 00 08 */	lwz r4, 8(r1)
/* 800A1664  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A1668  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A166C  7C 03 00 00 */	cmpw r3, r0
/* 800A1670  41 82 00 14 */	beq lbl_800A1684
/* 800A1674  40 80 00 40 */	bge lbl_800A16B4
/* 800A1678  2C 03 00 00 */	cmpwi r3, 0
/* 800A167C  41 82 00 20 */	beq lbl_800A169C
/* 800A1680  48 00 00 34 */	b lbl_800A16B4
lbl_800A1684:
/* 800A1684  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A1688  41 82 00 0C */	beq lbl_800A1694
/* 800A168C  38 00 00 01 */	li r0, 1
/* 800A1690  48 00 00 28 */	b lbl_800A16B8
lbl_800A1694:
/* 800A1694  38 00 00 02 */	li r0, 2
/* 800A1698  48 00 00 20 */	b lbl_800A16B8
lbl_800A169C:
/* 800A169C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A16A0  41 82 00 0C */	beq lbl_800A16AC
/* 800A16A4  38 00 00 05 */	li r0, 5
/* 800A16A8  48 00 00 10 */	b lbl_800A16B8
lbl_800A16AC:
/* 800A16AC  38 00 00 03 */	li r0, 3
/* 800A16B0  48 00 00 08 */	b lbl_800A16B8
lbl_800A16B4:
/* 800A16B4  38 00 00 04 */	li r0, 4
lbl_800A16B8:
/* 800A16B8  2C 00 00 01 */	cmpwi r0, 1
/* 800A16BC  40 82 00 0C */	bne lbl_800A16C8
/* 800A16C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A16C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800A16C8:
/* 800A16C8  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800A16CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A16D0  40 80 00 08 */	bge lbl_800A16D8
/* 800A16D4  AB 5F 31 26 */	lha r26, 0x3126(r31)
lbl_800A16D8:
/* 800A16D8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A16DC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A16E0  41 82 00 FC */	beq lbl_800A17DC
/* 800A16E4  A0 7F 2F E8 */	lhz r3, 0x2fe8(r31)
/* 800A16E8  28 03 00 EF */	cmplwi r3, 0xef
/* 800A16EC  40 82 00 7C */	bne lbl_800A1768
/* 800A16F0  3C 60 80 39 */	lis r3, m__18daAlinkHIO_wolf_c0@ha
/* 800A16F4  38 63 F9 F8 */	addi r3, r3, m__18daAlinkHIO_wolf_c0@l
/* 800A16F8  A8 83 00 0A */	lha r4, 0xa(r3)
/* 800A16FC  A8 63 00 08 */	lha r3, 8(r3)
/* 800A1700  7F 25 07 34 */	extsh r5, r25
/* 800A1704  7C 05 18 00 */	cmpw r5, r3
/* 800A1708  40 80 00 08 */	bge lbl_800A1710
/* 800A170C  48 00 00 18 */	b lbl_800A1724
lbl_800A1710:
/* 800A1710  7C 83 07 34 */	extsh r3, r4
/* 800A1714  7C 05 18 00 */	cmpw r5, r3
/* 800A1718  40 81 00 08 */	ble lbl_800A1720
/* 800A171C  7C 85 23 78 */	mr r5, r4
lbl_800A1720:
/* 800A1720  7C A3 2B 78 */	mr r3, r5
lbl_800A1724:
/* 800A1724  7C 63 07 34 */	extsh r3, r3
/* 800A1728  3C 80 80 39 */	lis r4, m__18daAlinkHIO_wolf_c0@ha
/* 800A172C  38 84 F9 F8 */	addi r4, r4, m__18daAlinkHIO_wolf_c0@l
/* 800A1730  A8 A4 00 06 */	lha r5, 6(r4)
/* 800A1734  7C 85 00 D0 */	neg r4, r5
/* 800A1738  7C 84 07 34 */	extsh r4, r4
/* 800A173C  7F 46 07 34 */	extsh r6, r26
/* 800A1740  7C 06 20 00 */	cmpw r6, r4
/* 800A1744  40 80 00 08 */	bge lbl_800A174C
/* 800A1748  48 00 00 18 */	b lbl_800A1760
lbl_800A174C:
/* 800A174C  7C A4 07 34 */	extsh r4, r5
/* 800A1750  7C 06 20 00 */	cmpw r6, r4
/* 800A1754  40 81 00 08 */	ble lbl_800A175C
/* 800A1758  7C A6 2B 78 */	mr r6, r5
lbl_800A175C:
/* 800A175C  7C C4 33 78 */	mr r4, r6
lbl_800A1760:
/* 800A1760  7C 86 07 34 */	extsh r6, r4
/* 800A1764  48 00 01 60 */	b lbl_800A18C4
lbl_800A1768:
/* 800A1768  3C 60 80 39 */	lis r3, m__18daAlinkHIO_wolf_c0@ha
/* 800A176C  38 63 F9 F8 */	addi r3, r3, m__18daAlinkHIO_wolf_c0@l
/* 800A1770  A8 83 00 04 */	lha r4, 4(r3)
/* 800A1774  A8 63 00 02 */	lha r3, 2(r3)
/* 800A1778  7F 25 07 34 */	extsh r5, r25
/* 800A177C  7C 05 18 00 */	cmpw r5, r3
/* 800A1780  40 80 00 08 */	bge lbl_800A1788
/* 800A1784  48 00 00 18 */	b lbl_800A179C
lbl_800A1788:
/* 800A1788  7C 83 07 34 */	extsh r3, r4
/* 800A178C  7C 05 18 00 */	cmpw r5, r3
/* 800A1790  40 81 00 08 */	ble lbl_800A1798
/* 800A1794  7C 85 23 78 */	mr r5, r4
lbl_800A1798:
/* 800A1798  7C A3 2B 78 */	mr r3, r5
lbl_800A179C:
/* 800A179C  7C 63 07 34 */	extsh r3, r3
/* 800A17A0  3C 80 80 39 */	lis r4, m__18daAlinkHIO_wolf_c0@ha
/* 800A17A4  A8 A4 F9 F8 */	lha r5, m__18daAlinkHIO_wolf_c0@l(r4)
/* 800A17A8  7C 85 00 D0 */	neg r4, r5
/* 800A17AC  7C 84 07 34 */	extsh r4, r4
/* 800A17B0  7F 46 07 34 */	extsh r6, r26
/* 800A17B4  7C 06 20 00 */	cmpw r6, r4
/* 800A17B8  40 80 00 08 */	bge lbl_800A17C0
/* 800A17BC  48 00 00 18 */	b lbl_800A17D4
lbl_800A17C0:
/* 800A17C0  7C A4 07 34 */	extsh r4, r5
/* 800A17C4  7C 06 20 00 */	cmpw r6, r4
/* 800A17C8  40 81 00 08 */	ble lbl_800A17D0
/* 800A17CC  7C A6 2B 78 */	mr r6, r5
lbl_800A17D0:
/* 800A17D0  7C C4 33 78 */	mr r4, r6
lbl_800A17D4:
/* 800A17D4  7C 86 07 34 */	extsh r6, r4
/* 800A17D8  48 00 00 EC */	b lbl_800A18C4
lbl_800A17DC:
/* 800A17DC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha
/* 800A17E0  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l
/* 800A17E4  A8 83 00 06 */	lha r4, 6(r3)
/* 800A17E8  A8 63 00 04 */	lha r3, 4(r3)
/* 800A17EC  7F 25 07 34 */	extsh r5, r25
/* 800A17F0  7C 05 18 00 */	cmpw r5, r3
/* 800A17F4  40 80 00 08 */	bge lbl_800A17FC
/* 800A17F8  48 00 00 18 */	b lbl_800A1810
lbl_800A17FC:
/* 800A17FC  7C 83 07 34 */	extsh r3, r4
/* 800A1800  7C 05 18 00 */	cmpw r5, r3
/* 800A1804  40 81 00 08 */	ble lbl_800A180C
/* 800A1808  7C 85 23 78 */	mr r5, r4
lbl_800A180C:
/* 800A180C  7C A3 2B 78 */	mr r3, r5
lbl_800A1810:
/* 800A1810  7C 63 07 34 */	extsh r3, r3
/* 800A1814  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 800A1818  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 800A181C  80 84 5F 1C */	lwz r4, 0x5f1c(r4)
/* 800A1820  54 84 01 8D */	rlwinm. r4, r4, 0, 6, 6
/* 800A1824  41 82 00 40 */	beq lbl_800A1864
/* 800A1828  A8 9F 30 20 */	lha r4, 0x3020(r31)
/* 800A182C  2C 04 00 01 */	cmpwi r4, 1
/* 800A1830  40 82 00 18 */	bne lbl_800A1848
/* 800A1834  38 C0 F0 00 */	li r6, -4096
/* 800A1838  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800A183C  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800A1840  A8 E4 00 02 */	lha r7, 2(r4)
/* 800A1844  48 00 00 54 */	b lbl_800A1898
lbl_800A1848:
/* 800A1848  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800A184C  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800A1850  A8 84 00 02 */	lha r4, 2(r4)
/* 800A1854  7C 84 00 D0 */	neg r4, r4
/* 800A1858  7C 86 07 34 */	extsh r6, r4
/* 800A185C  38 E0 10 00 */	li r7, 0x1000
/* 800A1860  48 00 00 38 */	b lbl_800A1898
lbl_800A1864:
/* 800A1864  A0 9F 1F BC */	lhz r4, 0x1fbc(r31)
/* 800A1868  28 04 00 60 */	cmplwi r4, 0x60
/* 800A186C  40 82 00 0C */	bne lbl_800A1878
/* 800A1870  38 C0 00 00 */	li r6, 0
/* 800A1874  48 00 00 18 */	b lbl_800A188C
lbl_800A1878:
/* 800A1878  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800A187C  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800A1880  A8 84 00 02 */	lha r4, 2(r4)
/* 800A1884  7C 84 00 D0 */	neg r4, r4
/* 800A1888  7C 86 07 34 */	extsh r6, r4
lbl_800A188C:
/* 800A188C  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800A1890  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800A1894  A8 E4 00 02 */	lha r7, 2(r4)
lbl_800A1898:
/* 800A1898  7F 45 07 34 */	extsh r5, r26
/* 800A189C  7C C4 07 34 */	extsh r4, r6
/* 800A18A0  7C 05 20 00 */	cmpw r5, r4
/* 800A18A4  40 80 00 0C */	bge lbl_800A18B0
/* 800A18A8  7C C5 33 78 */	mr r5, r6
/* 800A18AC  48 00 00 14 */	b lbl_800A18C0
lbl_800A18B0:
/* 800A18B0  7C E4 07 34 */	extsh r4, r7
/* 800A18B4  7C 05 20 00 */	cmpw r5, r4
/* 800A18B8  40 81 00 08 */	ble lbl_800A18C0
/* 800A18BC  7C E5 3B 78 */	mr r5, r7
lbl_800A18C0:
/* 800A18C0  7C A6 07 34 */	extsh r6, r5
lbl_800A18C4:
/* 800A18C4  7C 63 07 34 */	extsh r3, r3
/* 800A18C8  7C 94 18 50 */	subf r4, r20, r3
/* 800A18CC  7C 85 07 34 */	extsh r5, r4
/* 800A18D0  7C C4 07 34 */	extsh r4, r6
/* 800A18D4  7C D8 20 50 */	subf r6, r24, r4
/* 800A18D8  7C C6 07 34 */	extsh r6, r6
/* 800A18DC  80 FF 31 A0 */	lwz r7, 0x31a0(r31)
/* 800A18E0  54 E7 05 EF */	rlwinm. r7, r7, 0, 0x17, 0x17
/* 800A18E4  41 82 01 2C */	beq lbl_800A1A10
/* 800A18E8  28 00 00 00 */	cmplwi r0, 0
/* 800A18EC  41 82 00 7C */	beq lbl_800A1968
/* 800A18F0  C0 42 94 D0 */	lfs f2, lit_18847(r2)
/* 800A18F4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A18F8  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800A18FC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800A1900  3C E0 43 30 */	lis r7, 0x4330
/* 800A1904  90 E1 00 48 */	stw r7, 0x48(r1)
/* 800A1908  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 800A190C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A1910  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A1914  FC 00 00 1E */	fctiwz f0, f0
/* 800A1918  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 800A191C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800A1920  B0 1B 00 00 */	sth r0, 0(r27)
/* 800A1924  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800A1928  90 01 00 5C */	stw r0, 0x5c(r1)
/* 800A192C  90 E1 00 58 */	stw r7, 0x58(r1)
/* 800A1930  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 800A1934  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A1938  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A193C  FC 00 00 1E */	fctiwz f0, f0
/* 800A1940  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 800A1944  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800A1948  B0 1E 00 00 */	sth r0, 0(r30)
/* 800A194C  A8 1B 00 00 */	lha r0, 0(r27)
/* 800A1950  7C 00 28 50 */	subf r0, r0, r5
/* 800A1954  B0 1D 00 00 */	sth r0, 0(r29)
/* 800A1958  A8 1E 00 00 */	lha r0, 0(r30)
/* 800A195C  7C 00 30 50 */	subf r0, r0, r6
/* 800A1960  B0 1C 00 00 */	sth r0, 0(r28)
/* 800A1964  48 00 00 B4 */	b lbl_800A1A18
lbl_800A1968:
/* 800A1968  88 1F 2F C8 */	lbz r0, 0x2fc8(r31)
/* 800A196C  28 00 00 00 */	cmplwi r0, 0
/* 800A1970  41 82 00 7C */	beq lbl_800A19EC
/* 800A1974  C0 22 94 E0 */	lfs f1, lit_19379(r2)
/* 800A1978  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800A197C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800A1980  90 01 00 64 */	stw r0, 0x64(r1)
/* 800A1984  3C E0 43 30 */	lis r7, 0x4330
/* 800A1988  90 E1 00 60 */	stw r7, 0x60(r1)
/* 800A198C  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 800A1990  EC 00 10 28 */	fsubs f0, f0, f2
/* 800A1994  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A1998  FC 00 00 1E */	fctiwz f0, f0
/* 800A199C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 800A19A0  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 800A19A4  B0 1B 00 00 */	sth r0, 0(r27)
/* 800A19A8  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A19AC  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 800A19B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800A19B4  90 E1 00 50 */	stw r7, 0x50(r1)
/* 800A19B8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 800A19BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 800A19C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800A19C4  FC 00 00 1E */	fctiwz f0, f0
/* 800A19C8  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 800A19CC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 800A19D0  B0 1E 00 00 */	sth r0, 0(r30)
/* 800A19D4  A8 1B 00 00 */	lha r0, 0(r27)
/* 800A19D8  7C 00 28 50 */	subf r0, r0, r5
/* 800A19DC  B0 1D 00 00 */	sth r0, 0(r29)
/* 800A19E0  A8 1E 00 00 */	lha r0, 0(r30)
/* 800A19E4  B0 1C 00 00 */	sth r0, 0(r28)
/* 800A19E8  48 00 00 30 */	b lbl_800A1A18
lbl_800A19EC:
/* 800A19EC  7C A0 0E 70 */	srawi r0, r5, 1
/* 800A19F0  B0 1D 00 00 */	sth r0, 0(r29)
/* 800A19F4  7C C0 0E 70 */	srawi r0, r6, 1
/* 800A19F8  B0 1C 00 00 */	sth r0, 0(r28)
/* 800A19FC  A8 1D 00 00 */	lha r0, 0(r29)
/* 800A1A00  B0 1B 00 00 */	sth r0, 0(r27)
/* 800A1A04  A8 1C 00 00 */	lha r0, 0(r28)
/* 800A1A08  B0 1E 00 00 */	sth r0, 0(r30)
/* 800A1A0C  48 00 00 0C */	b lbl_800A1A18
lbl_800A1A10:
/* 800A1A10  B0 BD 00 00 */	sth r5, 0(r29)
/* 800A1A14  B0 DC 00 00 */	sth r6, 0(r28)
lbl_800A1A18:
/* 800A1A18  A8 BD 00 00 */	lha r5, 0(r29)
/* 800A1A1C  7F 26 07 34 */	extsh r6, r25
/* 800A1A20  7C 03 30 50 */	subf r0, r3, r6
/* 800A1A24  7C 00 07 34 */	extsh r0, r0
/* 800A1A28  7C 05 02 14 */	add r0, r5, r0
/* 800A1A2C  B0 1D 00 00 */	sth r0, 0(r29)
/* 800A1A30  A8 7C 00 00 */	lha r3, 0(r28)
/* 800A1A34  7C 04 A8 50 */	subf r0, r4, r21
/* 800A1A38  7C 00 07 34 */	extsh r0, r0
/* 800A1A3C  7C 03 02 14 */	add r0, r3, r0
/* 800A1A40  B0 1C 00 00 */	sth r0, 0(r28)
/* 800A1A44  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800A1A48  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800A1A4C  41 82 00 84 */	beq lbl_800A1AD0
/* 800A1A50  3C 66 00 01 */	addis r3, r6, 1
/* 800A1A54  38 03 80 00 */	addi r0, r3, -32768
/* 800A1A58  7C 16 00 50 */	subf r0, r22, r0
/* 800A1A5C  B0 1D 00 00 */	sth r0, 0(r29)
/* 800A1A60  A8 7F 30 CC */	lha r3, 0x30cc(r31)
/* 800A1A64  3C 63 00 01 */	addis r3, r3, 1
/* 800A1A68  38 03 80 00 */	addi r0, r3, -32768
/* 800A1A6C  7C 17 00 50 */	subf r0, r23, r0
/* 800A1A70  B0 1C 00 00 */	sth r0, 0(r28)
/* 800A1A74  48 00 00 5C */	b lbl_800A1AD0
lbl_800A1A78:
/* 800A1A78  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800A1A7C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800A1A80  41 82 00 18 */	beq lbl_800A1A98
/* 800A1A84  38 00 00 00 */	li r0, 0
/* 800A1A88  B0 1B 00 00 */	sth r0, 0(r27)
/* 800A1A8C  B0 1E 00 00 */	sth r0, 0(r30)
/* 800A1A90  B0 1F 30 D4 */	sth r0, 0x30d4(r31)
/* 800A1A94  48 00 00 3C */	b lbl_800A1AD0
lbl_800A1A98:
/* 800A1A98  A8 1F 30 A0 */	lha r0, 0x30a0(r31)
/* 800A1A9C  B0 1B 00 00 */	sth r0, 0(r27)
/* 800A1AA0  A8 1F 30 A2 */	lha r0, 0x30a2(r31)
/* 800A1AA4  B0 1E 00 00 */	sth r0, 0(r30)
/* 800A1AA8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A1AAC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A1AB0  41 82 00 18 */	beq lbl_800A1AC8
/* 800A1AB4  A8 1E 00 00 */	lha r0, 0(r30)
/* 800A1AB8  2C 00 00 00 */	cmpwi r0, 0
/* 800A1ABC  40 82 00 0C */	bne lbl_800A1AC8
/* 800A1AC0  A8 1F 2F EC */	lha r0, 0x2fec(r31)
/* 800A1AC4  B0 1E 00 00 */	sth r0, 0(r30)
lbl_800A1AC8:
/* 800A1AC8  A8 1E 00 00 */	lha r0, 0(r30)
/* 800A1ACC  B0 1F 30 D4 */	sth r0, 0x30d4(r31)
lbl_800A1AD0:
/* 800A1AD0  7F 03 C3 78 */	mr r3, r24
/* 800A1AD4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800A1AD8  48 2C 07 2D */	bl _restgpr_20
/* 800A1ADC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800A1AE0  7C 08 03 A6 */	mtlr r0
/* 800A1AE4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800A1AE8  4E 80 00 20 */	blr 
