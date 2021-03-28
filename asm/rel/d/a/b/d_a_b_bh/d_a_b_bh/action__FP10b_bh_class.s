lbl_805B15A8:
/* 805B15A8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 805B15AC  7C 08 02 A6 */	mflr r0
/* 805B15B0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 805B15B4  39 61 00 D0 */	addi r11, r1, 0xd0
/* 805B15B8  4B DB 0C 14 */	b _savegpr_25
/* 805B15BC  7C 7A 1B 78 */	mr r26, r3
/* 805B15C0  3C 60 80 5B */	lis r3, lit_3764@ha
/* 805B15C4  3B C3 31 40 */	addi r30, r3, lit_3764@l
/* 805B15C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B15CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805B15D0  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 805B15D4  38 61 00 68 */	addi r3, r1, 0x68
/* 805B15D8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805B15DC  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 805B15E0  4B CB 55 54 */	b __mi__4cXyzCFRC3Vec
/* 805B15E4  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 805B15E8  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 805B15EC  C0 61 00 6C */	lfs f3, 0x6c(r1)
/* 805B15F0  D0 61 00 A8 */	stfs f3, 0xa8(r1)
/* 805B15F4  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 805B15F8  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 805B15FC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805B1600  EC 03 00 2A */	fadds f0, f3, f0
/* 805B1604  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805B1608  4B CB 60 6C */	b cM_atan2s__Fff
/* 805B160C  B0 7A 06 84 */	sth r3, 0x684(r26)
/* 805B1610  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 805B1614  EC 20 00 32 */	fmuls f1, f0, f0
/* 805B1618  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 805B161C  EC 00 00 32 */	fmuls f0, f0, f0
/* 805B1620  EC 41 00 2A */	fadds f2, f1, f0
/* 805B1624  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B1628  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805B162C  40 81 00 0C */	ble lbl_805B1638
/* 805B1630  FC 00 10 34 */	frsqrte f0, f2
/* 805B1634  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805B1638:
/* 805B1638  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 805B163C  4B CB 60 38 */	b cM_atan2s__Fff
/* 805B1640  7C 03 00 D0 */	neg r0, r3
/* 805B1644  B0 1A 06 86 */	sth r0, 0x686(r26)
/* 805B1648  38 61 00 5C */	addi r3, r1, 0x5c
/* 805B164C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 805B1650  38 BB 05 38 */	addi r5, r27, 0x538
/* 805B1654  4B CB 54 E0 */	b __mi__4cXyzCFRC3Vec
/* 805B1658  38 61 00 5C */	addi r3, r1, 0x5c
/* 805B165C  4B D9 5A DC */	b PSVECSquareMag
/* 805B1660  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B1664  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B1668  40 81 00 58 */	ble lbl_805B16C0
/* 805B166C  FC 00 08 34 */	frsqrte f0, f1
/* 805B1670  C8 9E 00 38 */	lfd f4, 0x38(r30)
/* 805B1674  FC 44 00 32 */	fmul f2, f4, f0
/* 805B1678  C8 7E 00 40 */	lfd f3, 0x40(r30)
/* 805B167C  FC 00 00 32 */	fmul f0, f0, f0
/* 805B1680  FC 01 00 32 */	fmul f0, f1, f0
/* 805B1684  FC 03 00 28 */	fsub f0, f3, f0
/* 805B1688  FC 02 00 32 */	fmul f0, f2, f0
/* 805B168C  FC 44 00 32 */	fmul f2, f4, f0
/* 805B1690  FC 00 00 32 */	fmul f0, f0, f0
/* 805B1694  FC 01 00 32 */	fmul f0, f1, f0
/* 805B1698  FC 03 00 28 */	fsub f0, f3, f0
/* 805B169C  FC 02 00 32 */	fmul f0, f2, f0
/* 805B16A0  FC 44 00 32 */	fmul f2, f4, f0
/* 805B16A4  FC 00 00 32 */	fmul f0, f0, f0
/* 805B16A8  FC 01 00 32 */	fmul f0, f1, f0
/* 805B16AC  FC 03 00 28 */	fsub f0, f3, f0
/* 805B16B0  FC 02 00 32 */	fmul f0, f2, f0
/* 805B16B4  FC 21 00 32 */	fmul f1, f1, f0
/* 805B16B8  FC 20 08 18 */	frsp f1, f1
/* 805B16BC  48 00 00 88 */	b lbl_805B1744
lbl_805B16C0:
/* 805B16C0  C8 1E 00 48 */	lfd f0, 0x48(r30)
/* 805B16C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B16C8  40 80 00 10 */	bge lbl_805B16D8
/* 805B16CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B16D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805B16D4  48 00 00 70 */	b lbl_805B1744
lbl_805B16D8:
/* 805B16D8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805B16DC  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 805B16E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805B16E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 805B16E8  7C 03 00 00 */	cmpw r3, r0
/* 805B16EC  41 82 00 14 */	beq lbl_805B1700
/* 805B16F0  40 80 00 40 */	bge lbl_805B1730
/* 805B16F4  2C 03 00 00 */	cmpwi r3, 0
/* 805B16F8  41 82 00 20 */	beq lbl_805B1718
/* 805B16FC  48 00 00 34 */	b lbl_805B1730
lbl_805B1700:
/* 805B1700  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B1704  41 82 00 0C */	beq lbl_805B1710
/* 805B1708  38 00 00 01 */	li r0, 1
/* 805B170C  48 00 00 28 */	b lbl_805B1734
lbl_805B1710:
/* 805B1710  38 00 00 02 */	li r0, 2
/* 805B1714  48 00 00 20 */	b lbl_805B1734
lbl_805B1718:
/* 805B1718  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B171C  41 82 00 0C */	beq lbl_805B1728
/* 805B1720  38 00 00 05 */	li r0, 5
/* 805B1724  48 00 00 10 */	b lbl_805B1734
lbl_805B1728:
/* 805B1728  38 00 00 03 */	li r0, 3
/* 805B172C  48 00 00 08 */	b lbl_805B1734
lbl_805B1730:
/* 805B1730  38 00 00 04 */	li r0, 4
lbl_805B1734:
/* 805B1734  2C 00 00 01 */	cmpwi r0, 1
/* 805B1738  40 82 00 0C */	bne lbl_805B1744
/* 805B173C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B1740  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805B1744:
/* 805B1744  D0 3A 06 88 */	stfs f1, 0x688(r26)
/* 805B1748  38 61 00 50 */	addi r3, r1, 0x50
/* 805B174C  38 9A 06 A4 */	addi r4, r26, 0x6a4
/* 805B1750  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 805B1754  4B CB 53 E0 */	b __mi__4cXyzCFRC3Vec
/* 805B1758  38 61 00 50 */	addi r3, r1, 0x50
/* 805B175C  4B D9 59 DC */	b PSVECSquareMag
/* 805B1760  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B1764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B1768  40 81 00 58 */	ble lbl_805B17C0
/* 805B176C  FC 00 08 34 */	frsqrte f0, f1
/* 805B1770  C8 9E 00 38 */	lfd f4, 0x38(r30)
/* 805B1774  FC 44 00 32 */	fmul f2, f4, f0
/* 805B1778  C8 7E 00 40 */	lfd f3, 0x40(r30)
/* 805B177C  FC 00 00 32 */	fmul f0, f0, f0
/* 805B1780  FC 01 00 32 */	fmul f0, f1, f0
/* 805B1784  FC 03 00 28 */	fsub f0, f3, f0
/* 805B1788  FC 02 00 32 */	fmul f0, f2, f0
/* 805B178C  FC 44 00 32 */	fmul f2, f4, f0
/* 805B1790  FC 00 00 32 */	fmul f0, f0, f0
/* 805B1794  FC 01 00 32 */	fmul f0, f1, f0
/* 805B1798  FC 03 00 28 */	fsub f0, f3, f0
/* 805B179C  FC 02 00 32 */	fmul f0, f2, f0
/* 805B17A0  FC 44 00 32 */	fmul f2, f4, f0
/* 805B17A4  FC 00 00 32 */	fmul f0, f0, f0
/* 805B17A8  FC 01 00 32 */	fmul f0, f1, f0
/* 805B17AC  FC 03 00 28 */	fsub f0, f3, f0
/* 805B17B0  FC 02 00 32 */	fmul f0, f2, f0
/* 805B17B4  FC 21 00 32 */	fmul f1, f1, f0
/* 805B17B8  FC 20 08 18 */	frsp f1, f1
/* 805B17BC  48 00 00 88 */	b lbl_805B1844
lbl_805B17C0:
/* 805B17C0  C8 1E 00 48 */	lfd f0, 0x48(r30)
/* 805B17C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B17C8  40 80 00 10 */	bge lbl_805B17D8
/* 805B17CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B17D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805B17D4  48 00 00 70 */	b lbl_805B1844
lbl_805B17D8:
/* 805B17D8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805B17DC  80 81 00 28 */	lwz r4, 0x28(r1)
/* 805B17E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805B17E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 805B17E8  7C 03 00 00 */	cmpw r3, r0
/* 805B17EC  41 82 00 14 */	beq lbl_805B1800
/* 805B17F0  40 80 00 40 */	bge lbl_805B1830
/* 805B17F4  2C 03 00 00 */	cmpwi r3, 0
/* 805B17F8  41 82 00 20 */	beq lbl_805B1818
/* 805B17FC  48 00 00 34 */	b lbl_805B1830
lbl_805B1800:
/* 805B1800  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B1804  41 82 00 0C */	beq lbl_805B1810
/* 805B1808  38 00 00 01 */	li r0, 1
/* 805B180C  48 00 00 28 */	b lbl_805B1834
lbl_805B1810:
/* 805B1810  38 00 00 02 */	li r0, 2
/* 805B1814  48 00 00 20 */	b lbl_805B1834
lbl_805B1818:
/* 805B1818  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B181C  41 82 00 0C */	beq lbl_805B1828
/* 805B1820  38 00 00 05 */	li r0, 5
/* 805B1824  48 00 00 10 */	b lbl_805B1834
lbl_805B1828:
/* 805B1828  38 00 00 03 */	li r0, 3
/* 805B182C  48 00 00 08 */	b lbl_805B1834
lbl_805B1830:
/* 805B1830  38 00 00 04 */	li r0, 4
lbl_805B1834:
/* 805B1834  2C 00 00 01 */	cmpwi r0, 1
/* 805B1838  40 82 00 0C */	bne lbl_805B1844
/* 805B183C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B1840  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805B1844:
/* 805B1844  D0 3A 06 8C */	stfs f1, 0x68c(r26)
/* 805B1848  7F 43 D3 78 */	mr r3, r26
/* 805B184C  4B FF FA 09 */	bl damage_check__FP10b_bh_class
/* 805B1850  38 00 00 00 */	li r0, 0
/* 805B1854  98 1A 0A 24 */	stb r0, 0xa24(r26)
/* 805B1858  3B E0 00 00 */	li r31, 0
/* 805B185C  3B A0 00 00 */	li r29, 0
/* 805B1860  3B 80 00 01 */	li r28, 1
/* 805B1864  3B 60 00 00 */	li r27, 0
/* 805B1868  38 61 00 44 */	addi r3, r1, 0x44
/* 805B186C  38 9A 06 A4 */	addi r4, r26, 0x6a4
/* 805B1870  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 805B1874  4B CB 52 C0 */	b __mi__4cXyzCFRC3Vec
/* 805B1878  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805B187C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805B1880  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805B1884  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805B1888  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805B188C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805B1890  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B1894  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805B1898  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805B189C  4B D9 58 9C */	b PSVECSquareMag
/* 805B18A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B18A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B18A8  40 81 00 58 */	ble lbl_805B1900
/* 805B18AC  FC 00 08 34 */	frsqrte f0, f1
/* 805B18B0  C8 9E 00 38 */	lfd f4, 0x38(r30)
/* 805B18B4  FC 44 00 32 */	fmul f2, f4, f0
/* 805B18B8  C8 7E 00 40 */	lfd f3, 0x40(r30)
/* 805B18BC  FC 00 00 32 */	fmul f0, f0, f0
/* 805B18C0  FC 01 00 32 */	fmul f0, f1, f0
/* 805B18C4  FC 03 00 28 */	fsub f0, f3, f0
/* 805B18C8  FC 02 00 32 */	fmul f0, f2, f0
/* 805B18CC  FC 44 00 32 */	fmul f2, f4, f0
/* 805B18D0  FC 00 00 32 */	fmul f0, f0, f0
/* 805B18D4  FC 01 00 32 */	fmul f0, f1, f0
/* 805B18D8  FC 03 00 28 */	fsub f0, f3, f0
/* 805B18DC  FC 02 00 32 */	fmul f0, f2, f0
/* 805B18E0  FC 44 00 32 */	fmul f2, f4, f0
/* 805B18E4  FC 00 00 32 */	fmul f0, f0, f0
/* 805B18E8  FC 01 00 32 */	fmul f0, f1, f0
/* 805B18EC  FC 03 00 28 */	fsub f0, f3, f0
/* 805B18F0  FC 02 00 32 */	fmul f0, f2, f0
/* 805B18F4  FC 21 00 32 */	fmul f1, f1, f0
/* 805B18F8  FC 20 08 18 */	frsp f1, f1
/* 805B18FC  48 00 00 88 */	b lbl_805B1984
lbl_805B1900:
/* 805B1900  C8 1E 00 48 */	lfd f0, 0x48(r30)
/* 805B1904  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B1908  40 80 00 10 */	bge lbl_805B1918
/* 805B190C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B1910  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805B1914  48 00 00 70 */	b lbl_805B1984
lbl_805B1918:
/* 805B1918  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805B191C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805B1920  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805B1924  3C 00 7F 80 */	lis r0, 0x7f80
/* 805B1928  7C 03 00 00 */	cmpw r3, r0
/* 805B192C  41 82 00 14 */	beq lbl_805B1940
/* 805B1930  40 80 00 40 */	bge lbl_805B1970
/* 805B1934  2C 03 00 00 */	cmpwi r3, 0
/* 805B1938  41 82 00 20 */	beq lbl_805B1958
/* 805B193C  48 00 00 34 */	b lbl_805B1970
lbl_805B1940:
/* 805B1940  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B1944  41 82 00 0C */	beq lbl_805B1950
/* 805B1948  38 00 00 01 */	li r0, 1
/* 805B194C  48 00 00 28 */	b lbl_805B1974
lbl_805B1950:
/* 805B1950  38 00 00 02 */	li r0, 2
/* 805B1954  48 00 00 20 */	b lbl_805B1974
lbl_805B1958:
/* 805B1958  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B195C  41 82 00 0C */	beq lbl_805B1968
/* 805B1960  38 00 00 05 */	li r0, 5
/* 805B1964  48 00 00 10 */	b lbl_805B1974
lbl_805B1968:
/* 805B1968  38 00 00 03 */	li r0, 3
/* 805B196C  48 00 00 08 */	b lbl_805B1974
lbl_805B1970:
/* 805B1970  38 00 00 04 */	li r0, 4
lbl_805B1974:
/* 805B1974  2C 00 00 01 */	cmpwi r0, 1
/* 805B1978  40 82 00 0C */	bne lbl_805B1984
/* 805B197C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B1980  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805B1984:
/* 805B1984  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 805B1988  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B198C  40 80 00 08 */	bge lbl_805B1994
/* 805B1990  3B 80 00 00 */	li r28, 0
lbl_805B1994:
/* 805B1994  A8 1A 06 6A */	lha r0, 0x66a(r26)
/* 805B1998  2C 00 00 14 */	cmpwi r0, 0x14
/* 805B199C  41 82 00 AC */	beq lbl_805B1A48
/* 805B19A0  40 80 00 34 */	bge lbl_805B19D4
/* 805B19A4  2C 00 00 05 */	cmpwi r0, 5
/* 805B19A8  41 82 00 68 */	beq lbl_805B1A10
/* 805B19AC  40 80 00 10 */	bge lbl_805B19BC
/* 805B19B0  2C 00 00 00 */	cmpwi r0, 0
/* 805B19B4  41 82 00 44 */	beq lbl_805B19F8
/* 805B19B8  48 00 00 F0 */	b lbl_805B1AA8
lbl_805B19BC:
/* 805B19BC  2C 00 00 0B */	cmpwi r0, 0xb
/* 805B19C0  41 82 00 78 */	beq lbl_805B1A38
/* 805B19C4  40 80 00 E4 */	bge lbl_805B1AA8
/* 805B19C8  2C 00 00 0A */	cmpwi r0, 0xa
/* 805B19CC  40 80 00 60 */	bge lbl_805B1A2C
/* 805B19D0  48 00 00 D8 */	b lbl_805B1AA8
lbl_805B19D4:
/* 805B19D4  2C 00 00 17 */	cmpwi r0, 0x17
/* 805B19D8  41 82 00 B8 */	beq lbl_805B1A90
/* 805B19DC  40 80 00 10 */	bge lbl_805B19EC
/* 805B19E0  2C 00 00 16 */	cmpwi r0, 0x16
/* 805B19E4  40 80 00 A0 */	bge lbl_805B1A84
/* 805B19E8  48 00 00 7C */	b lbl_805B1A64
lbl_805B19EC:
/* 805B19EC  2C 00 00 32 */	cmpwi r0, 0x32
/* 805B19F0  41 82 00 B0 */	beq lbl_805B1AA0
/* 805B19F4  48 00 00 B4 */	b lbl_805B1AA8
lbl_805B19F8:
/* 805B19F8  7F 43 D3 78 */	mr r3, r26
/* 805B19FC  4B FF CA 35 */	bl b_bh_wait__FP10b_bh_class
/* 805B1A00  3B E0 00 01 */	li r31, 1
/* 805B1A04  38 00 00 01 */	li r0, 1
/* 805B1A08  98 1A 0A 24 */	stb r0, 0xa24(r26)
/* 805B1A0C  48 00 00 9C */	b lbl_805B1AA8
lbl_805B1A10:
/* 805B1A10  7F 43 D3 78 */	mr r3, r26
/* 805B1A14  4B FF D1 2D */	bl b_bh_attack_1__FP10b_bh_class
/* 805B1A18  3B E0 00 01 */	li r31, 1
/* 805B1A1C  3B A0 00 01 */	li r29, 1
/* 805B1A20  38 00 00 01 */	li r0, 1
/* 805B1A24  98 1A 0A 24 */	stb r0, 0xa24(r26)
/* 805B1A28  48 00 00 80 */	b lbl_805B1AA8
lbl_805B1A2C:
/* 805B1A2C  7F 43 D3 78 */	mr r3, r26
/* 805B1A30  4B FF D5 49 */	bl b_bh_bombeat__FP10b_bh_class
/* 805B1A34  48 00 00 74 */	b lbl_805B1AA8
lbl_805B1A38:
/* 805B1A38  7F 43 D3 78 */	mr r3, r26
/* 805B1A3C  4B FF D7 BD */	bl b_bh_down__FP10b_bh_class
/* 805B1A40  7C 7C 1B 78 */	mr r28, r3
/* 805B1A44  48 00 00 64 */	b lbl_805B1AA8
lbl_805B1A48:
/* 805B1A48  7F 43 D3 78 */	mr r3, r26
/* 805B1A4C  4B FF DC 95 */	bl b_bh_b_wait__FP10b_bh_class
/* 805B1A50  3B E0 00 01 */	li r31, 1
/* 805B1A54  3B 60 00 01 */	li r27, 1
/* 805B1A58  38 00 00 01 */	li r0, 1
/* 805B1A5C  98 1A 0A 24 */	stb r0, 0xa24(r26)
/* 805B1A60  48 00 00 48 */	b lbl_805B1AA8
lbl_805B1A64:
/* 805B1A64  7F 43 D3 78 */	mr r3, r26
/* 805B1A68  4B FF E2 41 */	bl b_bh_b_attack_1__FP10b_bh_class
/* 805B1A6C  3B E0 00 01 */	li r31, 1
/* 805B1A70  3B A0 00 01 */	li r29, 1
/* 805B1A74  3B 60 00 01 */	li r27, 1
/* 805B1A78  38 00 00 01 */	li r0, 1
/* 805B1A7C  98 1A 0A 24 */	stb r0, 0xa24(r26)
/* 805B1A80  48 00 00 28 */	b lbl_805B1AA8
lbl_805B1A84:
/* 805B1A84  7F 43 D3 78 */	mr r3, r26
/* 805B1A88  4B FF E6 21 */	bl b_bh_b_bombeat__FP10b_bh_class
/* 805B1A8C  48 00 00 1C */	b lbl_805B1AA8
lbl_805B1A90:
/* 805B1A90  7F 43 D3 78 */	mr r3, r26
/* 805B1A94  4B FF E7 E1 */	bl b_bh_b_down__FP10b_bh_class
/* 805B1A98  7C 7C 1B 78 */	mr r28, r3
/* 805B1A9C  48 00 00 0C */	b lbl_805B1AA8
lbl_805B1AA0:
/* 805B1AA0  7F 43 D3 78 */	mr r3, r26
/* 805B1AA4  4B FF EB 69 */	bl b_bh_start__FP10b_bh_class
lbl_805B1AA8:
/* 805B1AA8  7F 60 07 75 */	extsb. r0, r27
/* 805B1AAC  41 82 00 38 */	beq lbl_805B1AE4
/* 805B1AB0  80 1A 04 A4 */	lwz r0, 0x4a4(r26)
/* 805B1AB4  90 01 00 30 */	stw r0, 0x30(r1)
/* 805B1AB8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805B1ABC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805B1AC0  38 81 00 30 */	addi r4, r1, 0x30
/* 805B1AC4  4B A6 7D 34 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805B1AC8  88 03 06 FB */	lbz r0, 0x6fb(r3)
/* 805B1ACC  2C 00 00 01 */	cmpwi r0, 1
/* 805B1AD0  40 82 00 14 */	bne lbl_805B1AE4
/* 805B1AD4  38 00 00 17 */	li r0, 0x17
/* 805B1AD8  B0 1A 06 6A */	sth r0, 0x66a(r26)
/* 805B1ADC  38 00 00 00 */	li r0, 0
/* 805B1AE0  B0 1A 06 6C */	sth r0, 0x66c(r26)
lbl_805B1AE4:
/* 805B1AE4  7F A0 07 75 */	extsb. r0, r29
/* 805B1AE8  41 82 00 94 */	beq lbl_805B1B7C
/* 805B1AEC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B1AF0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805B1AF4  80 63 00 00 */	lwz r3, 0(r3)
/* 805B1AF8  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 805B1AFC  4B A5 A8 E0 */	b mDoMtx_YrotS__FPA4_fs
/* 805B1B00  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805B1B04  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805B1B08  80 63 00 00 */	lwz r3, 0(r3)
/* 805B1B0C  A8 9A 04 DC */	lha r4, 0x4dc(r26)
/* 805B1B10  4B A5 A8 8C */	b mDoMtx_XrotM__FPA4_fs
/* 805B1B14  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B1B18  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805B1B1C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805B1B20  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 805B1B24  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805B1B28  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805B1B2C  38 9A 04 F8 */	addi r4, r26, 0x4f8
/* 805B1B30  4B CB F3 BC */	b MtxPosition__FP4cXyzP4cXyz
/* 805B1B34  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 805B1B38  38 9A 04 F8 */	addi r4, r26, 0x4f8
/* 805B1B3C  7C 65 1B 78 */	mr r5, r3
/* 805B1B40  4B D9 55 50 */	b PSVECAdd
/* 805B1B44  34 7A 0A 34 */	addic. r3, r26, 0xa34
/* 805B1B48  41 82 00 34 */	beq lbl_805B1B7C
/* 805B1B4C  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 805B1B50  C0 03 00 00 */	lfs f0, 0(r3)
/* 805B1B54  EC 01 00 2A */	fadds f0, f1, f0
/* 805B1B58  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 805B1B5C  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 805B1B60  C0 03 00 04 */	lfs f0, 4(r3)
/* 805B1B64  EC 01 00 2A */	fadds f0, f1, f0
/* 805B1B68  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 805B1B6C  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 805B1B70  C0 03 00 08 */	lfs f0, 8(r3)
/* 805B1B74  EC 01 00 2A */	fadds f0, f1, f0
/* 805B1B78  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
lbl_805B1B7C:
/* 805B1B7C  7F 80 07 75 */	extsb. r0, r28
/* 805B1B80  41 82 00 50 */	beq lbl_805B1BD0
/* 805B1B84  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 805B1B88  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 805B1B8C  EC 00 08 2A */	fadds f0, f0, f1
/* 805B1B90  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 805B1B94  C0 1A 04 C0 */	lfs f0, 0x4c0(r26)
/* 805B1B98  EC 00 08 2A */	fadds f0, f0, f1
/* 805B1B9C  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 805B1BA0  38 7A 0D 48 */	addi r3, r26, 0xd48
/* 805B1BA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805B1BA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805B1BAC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805B1BB0  4B AC 4E FC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 805B1BB4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 805B1BB8  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 805B1BBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805B1BC0  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 805B1BC4  C0 1A 04 C0 */	lfs f0, 0x4c0(r26)
/* 805B1BC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805B1BCC  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
lbl_805B1BD0:
/* 805B1BD0  7F E0 07 75 */	extsb. r0, r31
/* 805B1BD4  41 82 00 10 */	beq lbl_805B1BE4
/* 805B1BD8  38 00 00 04 */	li r0, 4
/* 805B1BDC  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 805B1BE0  48 00 00 18 */	b lbl_805B1BF8
lbl_805B1BE4:
/* 805B1BE4  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 805B1BE8  54 00 00 3E */	slwi r0, r0, 0
/* 805B1BEC  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 805B1BF0  38 00 00 00 */	li r0, 0
/* 805B1BF4  90 1A 05 5C */	stw r0, 0x55c(r26)
lbl_805B1BF8:
/* 805B1BF8  38 61 00 38 */	addi r3, r1, 0x38
/* 805B1BFC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 805B1C00  38 BA 06 A4 */	addi r5, r26, 0x6a4
/* 805B1C04  4B CB 4F 30 */	b __mi__4cXyzCFRC3Vec
/* 805B1C08  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805B1C0C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805B1C10  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805B1C14  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805B1C18  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805B1C1C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805B1C20  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805B1C24  4B D9 55 14 */	b PSVECSquareMag
/* 805B1C28  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B1C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B1C30  40 81 00 58 */	ble lbl_805B1C88
/* 805B1C34  FC 00 08 34 */	frsqrte f0, f1
/* 805B1C38  C8 9E 00 38 */	lfd f4, 0x38(r30)
/* 805B1C3C  FC 44 00 32 */	fmul f2, f4, f0
/* 805B1C40  C8 7E 00 40 */	lfd f3, 0x40(r30)
/* 805B1C44  FC 00 00 32 */	fmul f0, f0, f0
/* 805B1C48  FC 01 00 32 */	fmul f0, f1, f0
/* 805B1C4C  FC 03 00 28 */	fsub f0, f3, f0
/* 805B1C50  FC 02 00 32 */	fmul f0, f2, f0
/* 805B1C54  FC 44 00 32 */	fmul f2, f4, f0
/* 805B1C58  FC 00 00 32 */	fmul f0, f0, f0
/* 805B1C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 805B1C60  FC 03 00 28 */	fsub f0, f3, f0
/* 805B1C64  FC 02 00 32 */	fmul f0, f2, f0
/* 805B1C68  FC 44 00 32 */	fmul f2, f4, f0
/* 805B1C6C  FC 00 00 32 */	fmul f0, f0, f0
/* 805B1C70  FC 01 00 32 */	fmul f0, f1, f0
/* 805B1C74  FC 03 00 28 */	fsub f0, f3, f0
/* 805B1C78  FC 02 00 32 */	fmul f0, f2, f0
/* 805B1C7C  FC 21 00 32 */	fmul f1, f1, f0
/* 805B1C80  FC 20 08 18 */	frsp f1, f1
/* 805B1C84  48 00 00 88 */	b lbl_805B1D0C
lbl_805B1C88:
/* 805B1C88  C8 1E 00 48 */	lfd f0, 0x48(r30)
/* 805B1C8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B1C90  40 80 00 10 */	bge lbl_805B1CA0
/* 805B1C94  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B1C98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805B1C9C  48 00 00 70 */	b lbl_805B1D0C
lbl_805B1CA0:
/* 805B1CA0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805B1CA4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 805B1CA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805B1CAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 805B1CB0  7C 03 00 00 */	cmpw r3, r0
/* 805B1CB4  41 82 00 14 */	beq lbl_805B1CC8
/* 805B1CB8  40 80 00 40 */	bge lbl_805B1CF8
/* 805B1CBC  2C 03 00 00 */	cmpwi r3, 0
/* 805B1CC0  41 82 00 20 */	beq lbl_805B1CE0
/* 805B1CC4  48 00 00 34 */	b lbl_805B1CF8
lbl_805B1CC8:
/* 805B1CC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B1CCC  41 82 00 0C */	beq lbl_805B1CD8
/* 805B1CD0  38 00 00 01 */	li r0, 1
/* 805B1CD4  48 00 00 28 */	b lbl_805B1CFC
lbl_805B1CD8:
/* 805B1CD8  38 00 00 02 */	li r0, 2
/* 805B1CDC  48 00 00 20 */	b lbl_805B1CFC
lbl_805B1CE0:
/* 805B1CE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805B1CE4  41 82 00 0C */	beq lbl_805B1CF0
/* 805B1CE8  38 00 00 05 */	li r0, 5
/* 805B1CEC  48 00 00 10 */	b lbl_805B1CFC
lbl_805B1CF0:
/* 805B1CF0  38 00 00 03 */	li r0, 3
/* 805B1CF4  48 00 00 08 */	b lbl_805B1CFC
lbl_805B1CF8:
/* 805B1CF8  38 00 00 04 */	li r0, 4
lbl_805B1CFC:
/* 805B1CFC  2C 00 00 01 */	cmpwi r0, 1
/* 805B1D00  40 82 00 0C */	bne lbl_805B1D0C
/* 805B1D04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805B1D08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805B1D0C:
/* 805B1D0C  C0 5A 09 14 */	lfs f2, 0x914(r26)
/* 805B1D10  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 805B1D14  EC 00 00 72 */	fmuls f0, f0, f1
/* 805B1D18  EC 02 00 32 */	fmuls f0, f2, f0
/* 805B1D1C  D0 1A 09 10 */	stfs f0, 0x910(r26)
/* 805B1D20  C0 5A 09 10 */	lfs f2, 0x910(r26)
/* 805B1D24  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 805B1D28  3C 60 80 5B */	lis r3, l_HIO@ha
/* 805B1D2C  3B E3 33 FC */	addi r31, r3, l_HIO@l
/* 805B1D30  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805B1D34  EC 01 00 32 */	fmuls f0, f1, f0
/* 805B1D38  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805B1D3C  40 81 00 08 */	ble lbl_805B1D44
/* 805B1D40  D0 1A 09 10 */	stfs f0, 0x910(r26)
lbl_805B1D44:
/* 805B1D44  38 7A 09 14 */	addi r3, r26, 0x914
/* 805B1D48  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805B1D4C  FC 40 08 90 */	fmr f2, f1
/* 805B1D50  C0 7E 00 AC */	lfs f3, 0xac(r30)
/* 805B1D54  4B CB DC E8 */	b cLib_addCalc2__FPffff
/* 805B1D58  7F 43 D3 78 */	mr r3, r26
/* 805B1D5C  4B FF ED A9 */	bl kuki_control1__FP10b_bh_class
/* 805B1D60  7F 43 D3 78 */	mr r3, r26
/* 805B1D64  4B FF F0 09 */	bl kuki_control2__FP10b_bh_class
/* 805B1D68  7F 43 D3 78 */	mr r3, r26
/* 805B1D6C  4B FF F1 75 */	bl kuki_control3__FP10b_bh_class
/* 805B1D70  38 7A 09 18 */	addi r3, r26, 0x918
/* 805B1D74  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805B1D78  FC 40 08 90 */	fmr f2, f1
/* 805B1D7C  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 805B1D80  4B CB DC BC */	b cLib_addCalc2__FPffff
/* 805B1D84  88 1A 0F 21 */	lbz r0, 0xf21(r26)
/* 805B1D88  7C 00 07 75 */	extsb. r0, r0
/* 805B1D8C  41 82 00 D4 */	beq lbl_805B1E60
/* 805B1D90  38 00 00 00 */	li r0, 0
/* 805B1D94  98 1A 0F 21 */	stb r0, 0xf21(r26)
/* 805B1D98  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070106@ha */
/* 805B1D9C  38 03 01 06 */	addi r0, r3, 0x0106 /* 0x00070106@l */
/* 805B1DA0  90 1A 0A 30 */	stw r0, 0xa30(r26)
/* 805B1DA4  88 1A 05 B4 */	lbz r0, 0x5b4(r26)
/* 805B1DA8  28 00 00 00 */	cmplwi r0, 0
/* 805B1DAC  40 82 00 10 */	bne lbl_805B1DBC
/* 805B1DB0  38 00 00 01 */	li r0, 1
/* 805B1DB4  98 1A 0A 2C */	stb r0, 0xa2c(r26)
/* 805B1DB8  48 00 00 0C */	b lbl_805B1DC4
lbl_805B1DBC:
/* 805B1DBC  38 00 00 03 */	li r0, 3
/* 805B1DC0  98 1A 0A 2C */	stb r0, 0xa2c(r26)
lbl_805B1DC4:
/* 805B1DC4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 805B1DC8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805B1DCC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 805B1DD0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 805B1DD4  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 805B1DD8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805B1DDC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805B1DE0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 805B1DE4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805B1DE8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805B1DEC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805B1DF0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 805B1DF4  3B 20 00 00 */	li r25, 0
/* 805B1DF8  3B 60 00 00 */	li r27, 0
/* 805B1DFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B1E00  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 805B1E04  3C 60 80 5B */	lis r3, eno_4831@ha
/* 805B1E08  3B 83 32 58 */	addi r28, r3, eno_4831@l
lbl_805B1E0C:
/* 805B1E0C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B1E10  38 80 00 00 */	li r4, 0
/* 805B1E14  90 81 00 08 */	stw r4, 8(r1)
/* 805B1E18  38 00 FF FF */	li r0, -1
/* 805B1E1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B1E20  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B1E24  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B1E28  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B1E2C  38 80 00 00 */	li r4, 0
/* 805B1E30  7C BC DA 2E */	lhzx r5, r28, r27
/* 805B1E34  38 C1 00 98 */	addi r6, r1, 0x98
/* 805B1E38  38 E0 00 00 */	li r7, 0
/* 805B1E3C  39 00 00 00 */	li r8, 0
/* 805B1E40  39 21 00 8C */	addi r9, r1, 0x8c
/* 805B1E44  39 40 00 FF */	li r10, 0xff
/* 805B1E48  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805B1E4C  4B A9 AC 44 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B1E50  3B 39 00 01 */	addi r25, r25, 1
/* 805B1E54  2C 19 00 05 */	cmpwi r25, 5
/* 805B1E58  3B 7B 00 02 */	addi r27, r27, 2
/* 805B1E5C  41 80 FF B0 */	blt lbl_805B1E0C
lbl_805B1E60:
/* 805B1E60  88 1A 0F 22 */	lbz r0, 0xf22(r26)
/* 805B1E64  7C 00 07 75 */	extsb. r0, r0
/* 805B1E68  41 82 00 CC */	beq lbl_805B1F34
/* 805B1E6C  38 00 00 00 */	li r0, 0
/* 805B1E70  98 1A 0F 22 */	stb r0, 0xf22(r26)
/* 805B1E74  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 805B1E78  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805B1E7C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 805B1E80  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805B1E84  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 805B1E88  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805B1E8C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805B1E90  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805B1E94  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805B1E98  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805B1E9C  3B 20 00 00 */	li r25, 0
/* 805B1EA0  3B 60 00 00 */	li r27, 0
/* 805B1EA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805B1EA8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 805B1EAC  3C 60 80 5B */	lis r3, eno_4839@ha
/* 805B1EB0  3B 83 32 64 */	addi r28, r3, eno_4839@l
lbl_805B1EB4:
/* 805B1EB4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B1EB8  38 80 00 00 */	li r4, 0
/* 805B1EBC  90 81 00 08 */	stw r4, 8(r1)
/* 805B1EC0  38 00 FF FF */	li r0, -1
/* 805B1EC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B1EC8  90 81 00 10 */	stw r4, 0x10(r1)
/* 805B1ECC  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B1ED0  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B1ED4  38 80 00 00 */	li r4, 0
/* 805B1ED8  7C BC DA 2E */	lhzx r5, r28, r27
/* 805B1EDC  38 C1 00 80 */	addi r6, r1, 0x80
/* 805B1EE0  38 E0 00 00 */	li r7, 0
/* 805B1EE4  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 805B1EE8  39 21 00 74 */	addi r9, r1, 0x74
/* 805B1EEC  39 40 00 FF */	li r10, 0xff
/* 805B1EF0  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 805B1EF4  4B A9 AB 9C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B1EF8  3B 39 00 01 */	addi r25, r25, 1
/* 805B1EFC  2C 19 00 04 */	cmpwi r25, 4
/* 805B1F00  3B 7B 00 02 */	addi r27, r27, 2
/* 805B1F04  41 80 FF B0 */	blt lbl_805B1EB4
/* 805B1F08  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000B@ha */
/* 805B1F0C  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0008000B@l */
/* 805B1F10  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B1F14  38 7A 05 BC */	addi r3, r26, 0x5bc
/* 805B1F18  38 81 00 34 */	addi r4, r1, 0x34
/* 805B1F1C  38 A0 00 00 */	li r5, 0
/* 805B1F20  38 C0 FF FF */	li r6, -1
/* 805B1F24  81 9A 05 BC */	lwz r12, 0x5bc(r26)
/* 805B1F28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805B1F2C  7D 89 03 A6 */	mtctr r12
/* 805B1F30  4E 80 04 21 */	bctrl 
lbl_805B1F34:
/* 805B1F34  39 61 00 D0 */	addi r11, r1, 0xd0
/* 805B1F38  4B DB 02 E0 */	b _restgpr_25
/* 805B1F3C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 805B1F40  7C 08 03 A6 */	mtlr r0
/* 805B1F44  38 21 00 D0 */	addi r1, r1, 0xd0
/* 805B1F48  4E 80 00 20 */	blr 
