lbl_801E1748:
/* 801E1748  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801E174C  7C 08 02 A6 */	mflr r0
/* 801E1750  90 01 00 64 */	stw r0, 0x64(r1)
/* 801E1754  39 61 00 60 */	addi r11, r1, 0x60
/* 801E1758  48 18 0A 75 */	bl _savegpr_25
/* 801E175C  7C 7D 1B 78 */	mr r29, r3
/* 801E1760  7C 9E 23 78 */	mr r30, r4
/* 801E1764  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801E1768  40 82 00 18 */	bne lbl_801E1780
/* 801E176C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1770  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1774  88 03 07 87 */	lbz r0, 0x787(r3)
/* 801E1778  28 00 00 00 */	cmplwi r0, 0
/* 801E177C  41 82 04 30 */	beq lbl_801E1BAC
lbl_801E1780:
/* 801E1780  3B 20 00 00 */	li r25, 0
/* 801E1784  3B 40 00 00 */	li r26, 0
/* 801E1788  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E178C  3B 63 EB C8 */	addi r27, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_801E1790:
/* 801E1790  3B 9A 02 B8 */	addi r28, r26, 0x2b8
/* 801E1794  7C 7D E0 2E */	lwzx r3, r29, r28
/* 801E1798  C0 3B 07 38 */	lfs f1, 0x738(r27)
/* 801E179C  C0 5B 07 3C */	lfs f2, 0x73c(r27)
/* 801E17A0  48 07 2E 11 */	bl paneTrans__8CPaneMgrFff
/* 801E17A4  C0 1B 07 40 */	lfs f0, 0x740(r27)
/* 801E17A8  7C 7D E0 2E */	lwzx r3, r29, r28
/* 801E17AC  80 63 00 04 */	lwz r3, 4(r3)
/* 801E17B0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E17B4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E17B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E17BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E17C0  7D 89 03 A6 */	mtctr r12
/* 801E17C4  4E 80 04 21 */	bctrl 
/* 801E17C8  3B 39 00 01 */	addi r25, r25, 1
/* 801E17CC  2C 19 00 03 */	cmpwi r25, 3
/* 801E17D0  3B 5A 00 04 */	addi r26, r26, 4
/* 801E17D4  41 80 FF BC */	blt lbl_801E1790
/* 801E17D8  80 7D 02 C4 */	lwz r3, 0x2c4(r29)
/* 801E17DC  C0 3B 07 38 */	lfs f1, 0x738(r27)
/* 801E17E0  C0 5B 07 3C */	lfs f2, 0x73c(r27)
/* 801E17E4  48 07 2D CD */	bl paneTrans__8CPaneMgrFff
/* 801E17E8  C0 1B 07 40 */	lfs f0, 0x740(r27)
/* 801E17EC  80 7D 02 C4 */	lwz r3, 0x2c4(r29)
/* 801E17F0  80 63 00 04 */	lwz r3, 4(r3)
/* 801E17F4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E17F8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E17FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1800  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E1804  7D 89 03 A6 */	mtctr r12
/* 801E1808  4E 80 04 21 */	bctrl 
/* 801E180C  3B 20 00 00 */	li r25, 0
/* 801E1810  3B 40 00 00 */	li r26, 0
/* 801E1814  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1818  3B 63 EB C8 */	addi r27, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_801E181C:
/* 801E181C  80 1B 07 68 */	lwz r0, 0x768(r27)
/* 801E1820  90 01 00 38 */	stw r0, 0x38(r1)
/* 801E1824  80 1B 07 64 */	lwz r0, 0x764(r27)
/* 801E1828  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801E182C  7F 9D D2 14 */	add r28, r29, r26
/* 801E1830  80 7C 02 14 */	lwz r3, 0x214(r28)
/* 801E1834  38 81 00 3C */	addi r4, r1, 0x3c
/* 801E1838  38 A1 00 38 */	addi r5, r1, 0x38
/* 801E183C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1840  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801E1844  7D 89 03 A6 */	mtctr r12
/* 801E1848  4E 80 04 21 */	bctrl 
/* 801E184C  88 1D 03 6F */	lbz r0, 0x36f(r29)
/* 801E1850  7C 19 00 00 */	cmpw r25, r0
/* 801E1854  40 82 00 20 */	bne lbl_801E1874
/* 801E1858  80 7C 02 38 */	lwz r3, 0x238(r28)
/* 801E185C  38 80 00 FF */	li r4, 0xff
/* 801E1860  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1864  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E1868  7D 89 03 A6 */	mtctr r12
/* 801E186C  4E 80 04 21 */	bctrl 
/* 801E1870  48 00 00 1C */	b lbl_801E188C
lbl_801E1874:
/* 801E1874  80 7C 02 38 */	lwz r3, 0x238(r28)
/* 801E1878  88 9B 07 84 */	lbz r4, 0x784(r27)
/* 801E187C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1880  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E1884  7D 89 03 A6 */	mtctr r12
/* 801E1888  4E 80 04 21 */	bctrl 
lbl_801E188C:
/* 801E188C  3B 39 00 01 */	addi r25, r25, 1
/* 801E1890  2C 19 00 09 */	cmpwi r25, 9
/* 801E1894  3B 5A 00 04 */	addi r26, r26, 4
/* 801E1898  41 80 FF 84 */	blt lbl_801E181C
/* 801E189C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E18A0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E18A4  80 03 07 6C */	lwz r0, 0x76c(r3)
/* 801E18A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E18AC  88 01 00 34 */	lbz r0, 0x34(r1)
/* 801E18B0  98 1D 03 18 */	stb r0, 0x318(r29)
/* 801E18B4  88 01 00 35 */	lbz r0, 0x35(r1)
/* 801E18B8  98 1D 03 19 */	stb r0, 0x319(r29)
/* 801E18BC  88 01 00 36 */	lbz r0, 0x36(r1)
/* 801E18C0  98 1D 03 1A */	stb r0, 0x31a(r29)
/* 801E18C4  88 01 00 37 */	lbz r0, 0x37(r1)
/* 801E18C8  98 1D 03 1B */	stb r0, 0x31b(r29)
/* 801E18CC  80 03 07 70 */	lwz r0, 0x770(r3)
/* 801E18D0  90 01 00 30 */	stw r0, 0x30(r1)
/* 801E18D4  88 01 00 30 */	lbz r0, 0x30(r1)
/* 801E18D8  98 1D 03 38 */	stb r0, 0x338(r29)
/* 801E18DC  88 01 00 31 */	lbz r0, 0x31(r1)
/* 801E18E0  98 1D 03 39 */	stb r0, 0x339(r29)
/* 801E18E4  88 01 00 32 */	lbz r0, 0x32(r1)
/* 801E18E8  98 1D 03 3A */	stb r0, 0x33a(r29)
/* 801E18EC  88 01 00 33 */	lbz r0, 0x33(r1)
/* 801E18F0  98 1D 03 3B */	stb r0, 0x33b(r29)
/* 801E18F4  80 03 07 74 */	lwz r0, 0x774(r3)
/* 801E18F8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801E18FC  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 801E1900  98 1D 03 24 */	stb r0, 0x324(r29)
/* 801E1904  88 01 00 2D */	lbz r0, 0x2d(r1)
/* 801E1908  98 1D 03 25 */	stb r0, 0x325(r29)
/* 801E190C  88 01 00 2E */	lbz r0, 0x2e(r1)
/* 801E1910  98 1D 03 26 */	stb r0, 0x326(r29)
/* 801E1914  88 01 00 2F */	lbz r0, 0x2f(r1)
/* 801E1918  98 1D 03 27 */	stb r0, 0x327(r29)
/* 801E191C  80 03 07 78 */	lwz r0, 0x778(r3)
/* 801E1920  90 01 00 28 */	stw r0, 0x28(r1)
/* 801E1924  88 01 00 28 */	lbz r0, 0x28(r1)
/* 801E1928  98 1D 03 44 */	stb r0, 0x344(r29)
/* 801E192C  88 01 00 29 */	lbz r0, 0x29(r1)
/* 801E1930  98 1D 03 45 */	stb r0, 0x345(r29)
/* 801E1934  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 801E1938  98 1D 03 46 */	stb r0, 0x346(r29)
/* 801E193C  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 801E1940  98 1D 03 47 */	stb r0, 0x347(r29)
/* 801E1944  C0 03 07 30 */	lfs f0, 0x730(r3)
/* 801E1948  D0 1D 03 60 */	stfs f0, 0x360(r29)
/* 801E194C  C0 03 07 34 */	lfs f0, 0x734(r3)
/* 801E1950  D0 1D 03 64 */	stfs f0, 0x364(r29)
/* 801E1954  3B E0 00 00 */	li r31, 0
/* 801E1958  3B 80 00 00 */	li r28, 0
/* 801E195C  3B 60 00 00 */	li r27, 0
/* 801E1960  3B 40 00 00 */	li r26, 0
lbl_801E1964:
/* 801E1964  88 1D 03 6E */	lbz r0, 0x36e(r29)
/* 801E1968  7C 1F 00 00 */	cmpw r31, r0
/* 801E196C  40 82 00 BC */	bne lbl_801E1A28
/* 801E1970  80 1D 03 38 */	lwz r0, 0x338(r29)
/* 801E1974  90 01 00 20 */	stw r0, 0x20(r1)
/* 801E1978  80 1D 03 18 */	lwz r0, 0x318(r29)
/* 801E197C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E1980  38 1A 00 34 */	addi r0, r26, 0x34
/* 801E1984  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801E1988  38 81 00 24 */	addi r4, r1, 0x24
/* 801E198C  38 A1 00 20 */	addi r5, r1, 0x20
/* 801E1990  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1994  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801E1998  7D 89 03 A6 */	mtctr r12
/* 801E199C  4E 80 04 21 */	bctrl 
/* 801E19A0  80 1D 03 44 */	lwz r0, 0x344(r29)
/* 801E19A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801E19A8  80 1D 03 24 */	lwz r0, 0x324(r29)
/* 801E19AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E19B0  7F 3D DA 14 */	add r25, r29, r27
/* 801E19B4  80 79 01 28 */	lwz r3, 0x128(r25)
/* 801E19B8  38 81 00 1C */	addi r4, r1, 0x1c
/* 801E19BC  38 A1 00 18 */	addi r5, r1, 0x18
/* 801E19C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E19C4  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E19C8  7D 89 03 A6 */	mtctr r12
/* 801E19CC  4E 80 04 21 */	bctrl 
/* 801E19D0  80 1D 03 44 */	lwz r0, 0x344(r29)
/* 801E19D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801E19D8  80 1D 03 24 */	lwz r0, 0x324(r29)
/* 801E19DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E19E0  80 79 01 30 */	lwz r3, 0x130(r25)
/* 801E19E4  38 81 00 14 */	addi r4, r1, 0x14
/* 801E19E8  38 A1 00 10 */	addi r5, r1, 0x10
/* 801E19EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E19F0  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E19F4  7D 89 03 A6 */	mtctr r12
/* 801E19F8  4E 80 04 21 */	bctrl 
/* 801E19FC  C0 1D 03 60 */	lfs f0, 0x360(r29)
/* 801E1A00  38 1C 02 C8 */	addi r0, r28, 0x2c8
/* 801E1A04  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801E1A08  80 63 00 04 */	lwz r3, 4(r3)
/* 801E1A0C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E1A10  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E1A14  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1A18  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E1A1C  7D 89 03 A6 */	mtctr r12
/* 801E1A20  4E 80 04 21 */	bctrl 
/* 801E1A24  48 00 00 2C */	b lbl_801E1A50
lbl_801E1A28:
/* 801E1A28  C0 1D 03 64 */	lfs f0, 0x364(r29)
/* 801E1A2C  38 1C 02 C8 */	addi r0, r28, 0x2c8
/* 801E1A30  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801E1A34  80 63 00 04 */	lwz r3, 4(r3)
/* 801E1A38  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E1A3C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E1A40  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1A44  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E1A48  7D 89 03 A6 */	mtctr r12
/* 801E1A4C  4E 80 04 21 */	bctrl 
lbl_801E1A50:
/* 801E1A50  3B FF 00 01 */	addi r31, r31, 1
/* 801E1A54  2C 1F 00 06 */	cmpwi r31, 6
/* 801E1A58  3B 9C 00 04 */	addi r28, r28, 4
/* 801E1A5C  3B 7B 00 10 */	addi r27, r27, 0x10
/* 801E1A60  3B 5A 00 14 */	addi r26, r26, 0x14
/* 801E1A64  41 80 FF 00 */	blt lbl_801E1964
/* 801E1A68  3B 60 00 00 */	li r27, 0
/* 801E1A6C  3B E0 00 00 */	li r31, 0
/* 801E1A70  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1A74  3B 43 EB C8 */	addi r26, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_801E1A78:
/* 801E1A78  3B 3F 02 E0 */	addi r25, r31, 0x2e0
/* 801E1A7C  7C 7D C8 2E */	lwzx r3, r29, r25
/* 801E1A80  C0 3A 07 44 */	lfs f1, 0x744(r26)
/* 801E1A84  C0 5A 07 48 */	lfs f2, 0x748(r26)
/* 801E1A88  48 07 2B 29 */	bl paneTrans__8CPaneMgrFff
/* 801E1A8C  88 1D 03 6D */	lbz r0, 0x36d(r29)
/* 801E1A90  28 00 00 04 */	cmplwi r0, 4
/* 801E1A94  41 82 00 14 */	beq lbl_801E1AA8
/* 801E1A98  28 00 00 05 */	cmplwi r0, 5
/* 801E1A9C  41 82 00 0C */	beq lbl_801E1AA8
/* 801E1AA0  28 00 00 06 */	cmplwi r0, 6
/* 801E1AA4  40 82 00 28 */	bne lbl_801E1ACC
lbl_801E1AA8:
/* 801E1AA8  C0 1A 07 4C */	lfs f0, 0x74c(r26)
/* 801E1AAC  7C 7D C8 2E */	lwzx r3, r29, r25
/* 801E1AB0  80 63 00 04 */	lwz r3, 4(r3)
/* 801E1AB4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E1AB8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E1ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1AC0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E1AC4  7D 89 03 A6 */	mtctr r12
/* 801E1AC8  4E 80 04 21 */	bctrl 
lbl_801E1ACC:
/* 801E1ACC  3B 7B 00 01 */	addi r27, r27, 1
/* 801E1AD0  2C 1B 00 02 */	cmpwi r27, 2
/* 801E1AD4  3B FF 00 04 */	addi r31, r31, 4
/* 801E1AD8  41 80 FF A0 */	blt lbl_801E1A78
/* 801E1ADC  88 1D 03 6D */	lbz r0, 0x36d(r29)
/* 801E1AE0  28 00 00 04 */	cmplwi r0, 4
/* 801E1AE4  41 82 00 14 */	beq lbl_801E1AF8
/* 801E1AE8  28 00 00 05 */	cmplwi r0, 5
/* 801E1AEC  41 82 00 0C */	beq lbl_801E1AF8
/* 801E1AF0  28 00 00 06 */	cmplwi r0, 6
/* 801E1AF4  40 82 00 24 */	bne lbl_801E1B18
lbl_801E1AF8:
/* 801E1AF8  80 7D 02 B4 */	lwz r3, 0x2b4(r29)
/* 801E1AFC  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1B00  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1B04  88 84 07 85 */	lbz r4, 0x785(r4)
/* 801E1B08  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1B0C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E1B10  7D 89 03 A6 */	mtctr r12
/* 801E1B14  4E 80 04 21 */	bctrl 
lbl_801E1B18:
/* 801E1B18  80 7D 02 E8 */	lwz r3, 0x2e8(r29)
/* 801E1B1C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1B20  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1B24  C0 24 07 50 */	lfs f1, 0x750(r4)
/* 801E1B28  C0 44 07 54 */	lfs f2, 0x754(r4)
/* 801E1B2C  48 07 2A 85 */	bl paneTrans__8CPaneMgrFff
/* 801E1B30  3B 20 00 00 */	li r25, 0
/* 801E1B34  3B E0 00 00 */	li r31, 0
/* 801E1B38  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1B3C  3B 43 EB C8 */	addi r26, r3, g_drawHIO@l /* 0x8042EBC8@l */
lbl_801E1B40:
/* 801E1B40  38 1F 02 5C */	addi r0, r31, 0x25c
/* 801E1B44  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801E1B48  28 03 00 00 */	cmplwi r3, 0
/* 801E1B4C  41 82 00 18 */	beq lbl_801E1B64
/* 801E1B50  88 9A 07 86 */	lbz r4, 0x786(r26)
/* 801E1B54  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1B58  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801E1B5C  7D 89 03 A6 */	mtctr r12
/* 801E1B60  4E 80 04 21 */	bctrl 
lbl_801E1B64:
/* 801E1B64  3B 39 00 01 */	addi r25, r25, 1
/* 801E1B68  2C 19 00 0C */	cmpwi r25, 0xc
/* 801E1B6C  3B FF 00 04 */	addi r31, r31, 4
/* 801E1B70  41 80 FF D0 */	blt lbl_801E1B40
/* 801E1B74  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1B78  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1B7C  80 03 07 80 */	lwz r0, 0x780(r3)
/* 801E1B80  90 01 00 08 */	stw r0, 8(r1)
/* 801E1B84  80 03 07 7C */	lwz r0, 0x77c(r3)
/* 801E1B88  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E1B8C  80 7D 02 F0 */	lwz r3, 0x2f0(r29)
/* 801E1B90  80 63 00 04 */	lwz r3, 4(r3)
/* 801E1B94  38 81 00 0C */	addi r4, r1, 0xc
/* 801E1B98  38 A1 00 08 */	addi r5, r1, 8
/* 801E1B9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1BA0  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801E1BA4  7D 89 03 A6 */	mtctr r12
/* 801E1BA8  4E 80 04 21 */	bctrl 
lbl_801E1BAC:
/* 801E1BAC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1BB0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1BB4  88 03 06 B4 */	lbz r0, 0x6b4(r3)
/* 801E1BB8  28 00 00 00 */	cmplwi r0, 0
/* 801E1BBC  40 82 00 0C */	bne lbl_801E1BC8
/* 801E1BC0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801E1BC4  41 82 01 34 */	beq lbl_801E1CF8
lbl_801E1BC8:
/* 801E1BC8  80 7D 02 FC */	lwz r3, 0x2fc(r29)
/* 801E1BCC  28 03 00 00 */	cmplwi r3, 0
/* 801E1BD0  41 82 00 44 */	beq lbl_801E1C14
/* 801E1BD4  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1BD8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1BDC  C0 24 06 60 */	lfs f1, 0x660(r4)
/* 801E1BE0  C0 44 06 64 */	lfs f2, 0x664(r4)
/* 801E1BE4  48 07 29 CD */	bl paneTrans__8CPaneMgrFff
/* 801E1BE8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1BEC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1BF0  C0 03 06 68 */	lfs f0, 0x668(r3)
/* 801E1BF4  80 7D 02 FC */	lwz r3, 0x2fc(r29)
/* 801E1BF8  80 63 00 04 */	lwz r3, 4(r3)
/* 801E1BFC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E1C00  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E1C04  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1C08  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E1C0C  7D 89 03 A6 */	mtctr r12
/* 801E1C10  4E 80 04 21 */	bctrl 
lbl_801E1C14:
/* 801E1C14  80 7D 03 00 */	lwz r3, 0x300(r29)
/* 801E1C18  28 03 00 00 */	cmplwi r3, 0
/* 801E1C1C  41 82 00 44 */	beq lbl_801E1C60
/* 801E1C20  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1C24  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1C28  C0 24 06 6C */	lfs f1, 0x66c(r4)
/* 801E1C2C  C0 44 06 70 */	lfs f2, 0x670(r4)
/* 801E1C30  48 07 29 81 */	bl paneTrans__8CPaneMgrFff
/* 801E1C34  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1C38  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1C3C  C0 03 06 74 */	lfs f0, 0x674(r3)
/* 801E1C40  80 7D 03 00 */	lwz r3, 0x300(r29)
/* 801E1C44  80 63 00 04 */	lwz r3, 4(r3)
/* 801E1C48  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E1C4C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E1C50  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1C54  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E1C58  7D 89 03 A6 */	mtctr r12
/* 801E1C5C  4E 80 04 21 */	bctrl 
lbl_801E1C60:
/* 801E1C60  80 7D 03 04 */	lwz r3, 0x304(r29)
/* 801E1C64  28 03 00 00 */	cmplwi r3, 0
/* 801E1C68  41 82 00 44 */	beq lbl_801E1CAC
/* 801E1C6C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1C70  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1C74  C0 24 06 78 */	lfs f1, 0x678(r4)
/* 801E1C78  C0 44 06 7C */	lfs f2, 0x67c(r4)
/* 801E1C7C  48 07 29 35 */	bl paneTrans__8CPaneMgrFff
/* 801E1C80  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1C84  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1C88  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 801E1C8C  80 7D 03 04 */	lwz r3, 0x304(r29)
/* 801E1C90  80 63 00 04 */	lwz r3, 4(r3)
/* 801E1C94  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E1C98  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E1C9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1CA0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E1CA4  7D 89 03 A6 */	mtctr r12
/* 801E1CA8  4E 80 04 21 */	bctrl 
lbl_801E1CAC:
/* 801E1CAC  80 7D 03 08 */	lwz r3, 0x308(r29)
/* 801E1CB0  28 03 00 00 */	cmplwi r3, 0
/* 801E1CB4  41 82 00 44 */	beq lbl_801E1CF8
/* 801E1CB8  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1CBC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1CC0  C0 24 06 84 */	lfs f1, 0x684(r4)
/* 801E1CC4  C0 44 06 88 */	lfs f2, 0x688(r4)
/* 801E1CC8  48 07 28 E9 */	bl paneTrans__8CPaneMgrFff
/* 801E1CCC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1CD0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1CD4  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 801E1CD8  80 7D 03 08 */	lwz r3, 0x308(r29)
/* 801E1CDC  80 63 00 04 */	lwz r3, 4(r3)
/* 801E1CE0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801E1CE4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801E1CE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801E1CEC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801E1CF0  7D 89 03 A6 */	mtctr r12
/* 801E1CF4  4E 80 04 21 */	bctrl 
lbl_801E1CF8:
/* 801E1CF8  39 61 00 60 */	addi r11, r1, 0x60
/* 801E1CFC  48 18 05 1D */	bl _restgpr_25
/* 801E1D00  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801E1D04  7C 08 03 A6 */	mtlr r0
/* 801E1D08  38 21 00 60 */	addi r1, r1, 0x60
/* 801E1D0C  4E 80 00 20 */	blr 
