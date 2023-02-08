lbl_800B1770:
/* 800B1770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B1774  7C 08 02 A6 */	mflr r0
/* 800B1778  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B177C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B1780  7C 7F 1B 78 */	mr r31, r3
/* 800B1784  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800B1788  D0 03 18 E0 */	stfs f0, 0x18e0(r3)
/* 800B178C  C0 02 94 84 */	lfs f0, lit_16037(r2)
/* 800B1790  D0 03 19 20 */	stfs f0, 0x1920(r3)
/* 800B1794  C0 03 05 98 */	lfs f0, 0x598(r3)
/* 800B1798  D0 03 19 60 */	stfs f0, 0x1960(r3)
/* 800B179C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800B17A0  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800B17A4  7D 89 03 A6 */	mtctr r12
/* 800B17A8  4E 80 04 21 */	bctrl 
/* 800B17AC  28 03 00 00 */	cmplwi r3, 0
/* 800B17B0  41 82 00 10 */	beq lbl_800B17C0
/* 800B17B4  C0 02 93 B0 */	lfs f0, lit_10039(r2)
/* 800B17B8  D0 1F 1A 38 */	stfs f0, 0x1a38(r31)
/* 800B17BC  48 00 00 0C */	b lbl_800B17C8
lbl_800B17C0:
/* 800B17C0  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800B17C4  D0 1F 1A 38 */	stfs f0, 0x1a38(r31)
lbl_800B17C8:
/* 800B17C8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B17CC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B17D0  41 82 00 F4 */	beq lbl_800B18C4
/* 800B17D4  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 800B17D8  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800B17DC  41 82 00 2C */	beq lbl_800B1808
/* 800B17E0  C0 02 93 CC */	lfs f0, lit_10532(r2)
/* 800B17E4  D0 1F 18 E0 */	stfs f0, 0x18e0(r31)
/* 800B17E8  C0 02 92 A0 */	lfs f0, lit_5945(r2)
/* 800B17EC  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B17F0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B17F4  D0 1F 19 60 */	stfs f0, 0x1960(r31)
/* 800B17F8  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B17FC  C0 22 93 BC */	lfs f1, lit_10042(r2)
/* 800B1800  4B FC 47 41 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1804  48 00 02 C4 */	b lbl_800B1AC8
lbl_800B1808:
/* 800B1808  54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 800B180C  41 82 00 44 */	beq lbl_800B1850
/* 800B1810  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800B1814  28 00 01 02 */	cmplwi r0, 0x102
/* 800B1818  40 82 00 14 */	bne lbl_800B182C
/* 800B181C  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B1820  C0 22 98 94 */	lfs f1, lit_64592(r2)
/* 800B1824  4B FC 47 1D */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1828  48 00 00 10 */	b lbl_800B1838
lbl_800B182C:
/* 800B182C  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B1830  C0 22 93 BC */	lfs f1, lit_10042(r2)
/* 800B1834  4B FC 47 0D */	bl SetWallR__12dBgS_AcchCirFf
lbl_800B1838:
/* 800B1838  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800B183C  D0 1F 18 E0 */	stfs f0, 0x18e0(r31)
/* 800B1840  C0 02 94 80 */	lfs f0, lit_16036(r2)
/* 800B1844  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B1848  D0 1F 19 60 */	stfs f0, 0x1960(r31)
/* 800B184C  48 00 02 7C */	b lbl_800B1AC8
lbl_800B1850:
/* 800B1850  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800B1854  28 00 01 18 */	cmplwi r0, 0x118
/* 800B1858  40 82 00 44 */	bne lbl_800B189C
/* 800B185C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800B1860  C0 3F 05 98 */	lfs f1, 0x598(r31)
/* 800B1864  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800B1868  EC 01 00 2A */	fadds f0, f1, f0
/* 800B186C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B1870  D0 1F 18 E0 */	stfs f0, 0x18e0(r31)
/* 800B1874  C0 42 94 AC */	lfs f2, lit_16641(r2)
/* 800B1878  C0 3F 05 98 */	lfs f1, 0x598(r31)
/* 800B187C  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800B1880  EC 01 00 2A */	fadds f0, f1, f0
/* 800B1884  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B1888  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B188C  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B1890  C0 22 93 BC */	lfs f1, lit_10042(r2)
/* 800B1894  4B FC 46 AD */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1898  48 00 02 30 */	b lbl_800B1AC8
lbl_800B189C:
/* 800B189C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800B18A0  C0 3F 05 98 */	lfs f1, 0x598(r31)
/* 800B18A4  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800B18A8  EC 01 00 2A */	fadds f0, f1, f0
/* 800B18AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B18B0  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B18B4  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B18B8  C0 22 93 BC */	lfs f1, lit_10042(r2)
/* 800B18BC  4B FC 46 85 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B18C0  48 00 02 08 */	b lbl_800B1AC8
lbl_800B18C4:
/* 800B18C4  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 800B18C8  54 60 02 95 */	rlwinm. r0, r3, 0, 0xa, 0xa
/* 800B18CC  41 82 00 14 */	beq lbl_800B18E0
/* 800B18D0  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B18D4  C0 22 93 78 */	lfs f1, lit_8676(r2)
/* 800B18D8  4B FC 46 69 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B18DC  48 00 01 EC */	b lbl_800B1AC8
lbl_800B18E0:
/* 800B18E0  A0 9F 2F E8 */	lhz r4, 0x2fe8(r31)
/* 800B18E4  28 04 01 5A */	cmplwi r4, 0x15a
/* 800B18E8  41 82 00 0C */	beq lbl_800B18F4
/* 800B18EC  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 800B18F0  41 82 00 14 */	beq lbl_800B1904
lbl_800B18F4:
/* 800B18F4  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B18F8  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800B18FC  4B FC 46 45 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1900  48 00 01 C8 */	b lbl_800B1AC8
lbl_800B1904:
/* 800B1904  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800B1908  41 82 00 14 */	beq lbl_800B191C
/* 800B190C  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B1910  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 800B1914  4B FC 46 2D */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1918  48 00 01 B0 */	b lbl_800B1AC8
lbl_800B191C:
/* 800B191C  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800B1920  41 82 00 34 */	beq lbl_800B1954
/* 800B1924  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B1928  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 800B192C  4B FC 46 15 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1930  C0 02 97 18 */	lfs f0, lit_42493(r2)
/* 800B1934  D0 1F 18 E0 */	stfs f0, 0x18e0(r31)
/* 800B1938  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800B193C  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B1940  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B1944  D0 1F 19 60 */	stfs f0, 0x1960(r31)
/* 800B1948  C0 02 93 D4 */	lfs f0, lit_11442(r2)
/* 800B194C  D0 1F 1A 38 */	stfs f0, 0x1a38(r31)
/* 800B1950  48 00 01 78 */	b lbl_800B1AC8
lbl_800B1954:
/* 800B1954  54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 800B1958  41 82 00 48 */	beq lbl_800B19A0
/* 800B195C  28 04 00 38 */	cmplwi r4, 0x38
/* 800B1960  41 82 00 40 */	beq lbl_800B19A0
/* 800B1964  28 04 00 37 */	cmplwi r4, 0x37
/* 800B1968  40 82 00 14 */	bne lbl_800B197C
/* 800B196C  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B1970  C0 22 98 94 */	lfs f1, lit_64592(r2)
/* 800B1974  4B FC 45 CD */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1978  48 00 00 10 */	b lbl_800B1988
lbl_800B197C:
/* 800B197C  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B1980  C0 22 93 BC */	lfs f1, lit_10042(r2)
/* 800B1984  4B FC 45 BD */	bl SetWallR__12dBgS_AcchCirFf
lbl_800B1988:
/* 800B1988  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800B198C  D0 1F 18 E0 */	stfs f0, 0x18e0(r31)
/* 800B1990  C0 02 93 B0 */	lfs f0, lit_10039(r2)
/* 800B1994  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B1998  D0 1F 19 60 */	stfs f0, 0x1960(r31)
/* 800B199C  48 00 01 2C */	b lbl_800B1AC8
lbl_800B19A0:
/* 800B19A0  28 04 00 32 */	cmplwi r4, 0x32
/* 800B19A4  40 82 00 14 */	bne lbl_800B19B8
/* 800B19A8  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B19AC  C0 22 93 10 */	lfs f1, lit_7306(r2)
/* 800B19B0  4B FC 45 91 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B19B4  48 00 01 14 */	b lbl_800B1AC8
lbl_800B19B8:
/* 800B19B8  28 04 00 C6 */	cmplwi r4, 0xc6
/* 800B19BC  40 82 00 2C */	bne lbl_800B19E8
/* 800B19C0  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B19C4  C0 22 98 98 */	lfs f1, lit_64593(r2)
/* 800B19C8  4B FC 45 79 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B19CC  C0 02 92 A0 */	lfs f0, lit_5945(r2)
/* 800B19D0  D0 1F 18 E0 */	stfs f0, 0x18e0(r31)
/* 800B19D4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B19D8  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B19DC  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800B19E0  D0 1F 19 60 */	stfs f0, 0x1960(r31)
/* 800B19E4  48 00 00 E4 */	b lbl_800B1AC8
lbl_800B19E8:
/* 800B19E8  28 04 00 C7 */	cmplwi r4, 0xc7
/* 800B19EC  41 82 00 0C */	beq lbl_800B19F8
/* 800B19F0  28 04 00 C8 */	cmplwi r4, 0xc8
/* 800B19F4  40 82 00 34 */	bne lbl_800B1A28
lbl_800B19F8:
/* 800B19F8  C0 02 98 9C */	lfs f0, lit_64594(r2)
/* 800B19FC  D0 1F 18 E0 */	stfs f0, 0x18e0(r31)
/* 800B1A00  C0 02 98 A0 */	lfs f0, lit_64595(r2)
/* 800B1A04  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B1A08  C0 02 95 90 */	lfs f0, lit_25059(r2)
/* 800B1A0C  D0 1F 19 60 */	stfs f0, 0x1960(r31)
/* 800B1A10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B1A14  D0 1F 1A 38 */	stfs f0, 0x1a38(r31)
/* 800B1A18  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B1A1C  C0 22 93 BC */	lfs f1, lit_10042(r2)
/* 800B1A20  4B FC 45 21 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1A24  48 00 00 A4 */	b lbl_800B1AC8
lbl_800B1A28:
/* 800B1A28  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 800B1A2C  41 82 00 18 */	beq lbl_800B1A44
/* 800B1A30  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 800B1A34  D0 1F 18 E0 */	stfs f0, 0x18e0(r31)
/* 800B1A38  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B1A3C  D0 1F 19 60 */	stfs f0, 0x1960(r31)
/* 800B1A40  48 00 00 7C */	b lbl_800B1ABC
lbl_800B1A44:
/* 800B1A44  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 800B1A48  41 82 00 74 */	beq lbl_800B1ABC
/* 800B1A4C  7F E3 FB 78 */	mr r3, r31
/* 800B1A50  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B1A54  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800B1A58  7D 89 03 A6 */	mtctr r12
/* 800B1A5C  4E 80 04 21 */	bctrl 
/* 800B1A60  28 03 00 00 */	cmplwi r3, 0
/* 800B1A64  40 82 00 58 */	bne lbl_800B1ABC
/* 800B1A68  7F E3 FB 78 */	mr r3, r31
/* 800B1A6C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B1A70  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800B1A74  7D 89 03 A6 */	mtctr r12
/* 800B1A78  4E 80 04 21 */	bctrl 
/* 800B1A7C  28 03 00 00 */	cmplwi r3, 0
/* 800B1A80  40 82 00 3C */	bne lbl_800B1ABC
/* 800B1A84  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800B1A88  28 00 00 A5 */	cmplwi r0, 0xa5
/* 800B1A8C  41 82 00 30 */	beq lbl_800B1ABC
/* 800B1A90  28 00 00 A7 */	cmplwi r0, 0xa7
/* 800B1A94  41 82 00 28 */	beq lbl_800B1ABC
/* 800B1A98  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800B1A9C  C0 22 93 B0 */	lfs f1, lit_10039(r2)
/* 800B1AA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800B1AA4  D0 1F 18 E0 */	stfs f0, 0x18e0(r31)
/* 800B1AA8  C0 02 98 A4 */	lfs f0, lit_64596(r2)
/* 800B1AAC  D0 1F 19 20 */	stfs f0, 0x1920(r31)
/* 800B1AB0  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 800B1AB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800B1AB8  D0 1F 19 60 */	stfs f0, 0x1960(r31)
lbl_800B1ABC:
/* 800B1ABC  38 7F 18 B0 */	addi r3, r31, 0x18b0
/* 800B1AC0  C0 22 93 BC */	lfs f1, lit_10042(r2)
/* 800B1AC4  4B FC 44 7D */	bl SetWallR__12dBgS_AcchCirFf
lbl_800B1AC8:
/* 800B1AC8  38 7F 18 F0 */	addi r3, r31, 0x18f0
/* 800B1ACC  C0 3F 18 E4 */	lfs f1, 0x18e4(r31)
/* 800B1AD0  4B FC 44 71 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1AD4  38 7F 19 30 */	addi r3, r31, 0x1930
/* 800B1AD8  C0 3F 18 E4 */	lfs f1, 0x18e4(r31)
/* 800B1ADC  4B FC 44 65 */	bl SetWallR__12dBgS_AcchCirFf
/* 800B1AE0  38 60 00 00 */	li r3, 0
/* 800B1AE4  38 80 00 00 */	li r4, 0
/* 800B1AE8  38 00 00 03 */	li r0, 3
/* 800B1AEC  7C 09 03 A6 */	mtctr r0
lbl_800B1AF0:
/* 800B1AF0  38 04 18 E0 */	addi r0, r4, 0x18e0
/* 800B1AF4  7C 1F 04 2E */	lfsx f0, r31, r0
/* 800B1AF8  38 03 2B AC */	addi r0, r3, 0x2bac
/* 800B1AFC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 800B1B00  38 63 00 04 */	addi r3, r3, 4
/* 800B1B04  38 84 00 40 */	addi r4, r4, 0x40
/* 800B1B08  42 00 FF E8 */	bdnz lbl_800B1AF0
/* 800B1B0C  7F E3 FB 78 */	mr r3, r31
/* 800B1B10  4B FF FC 1D */	bl setSandDownBgCheckWallH__9daAlink_cFv
/* 800B1B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B1B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B1B1C  7C 08 03 A6 */	mtlr r0
/* 800B1B20  38 21 00 10 */	addi r1, r1, 0x10
/* 800B1B24  4E 80 00 20 */	blr 
