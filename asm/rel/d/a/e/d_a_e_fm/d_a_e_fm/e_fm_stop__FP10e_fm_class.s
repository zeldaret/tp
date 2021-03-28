lbl_804F16C4:
/* 804F16C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F16C8  7C 08 02 A6 */	mflr r0
/* 804F16CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F16D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804F16D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804F16D8  7C 7E 1B 78 */	mr r30, r3
/* 804F16DC  3C 60 80 50 */	lis r3, lit_3777@ha
/* 804F16E0  3B E3 A6 BC */	addi r31, r3, lit_3777@l
/* 804F16E4  38 00 00 06 */	li r0, 6
/* 804F16E8  B0 1E 07 B4 */	sth r0, 0x7b4(r30)
/* 804F16EC  A8 1E 07 A4 */	lha r0, 0x7a4(r30)
/* 804F16F0  2C 00 00 01 */	cmpwi r0, 1
/* 804F16F4  41 82 00 7C */	beq lbl_804F1770
/* 804F16F8  40 80 01 F8 */	bge lbl_804F18F0
/* 804F16FC  2C 00 00 00 */	cmpwi r0, 0
/* 804F1700  40 80 00 08 */	bge lbl_804F1708
/* 804F1704  48 00 01 EC */	b lbl_804F18F0
lbl_804F1708:
/* 804F1708  38 80 00 01 */	li r4, 1
/* 804F170C  B0 9E 07 A4 */	sth r4, 0x7a4(r30)
/* 804F1710  38 00 00 00 */	li r0, 0
/* 804F1714  B0 1E 08 06 */	sth r0, 0x806(r30)
/* 804F1718  3C 7E 00 02 */	addis r3, r30, 2
/* 804F171C  88 03 B0 78 */	lbz r0, -0x4f88(r3)
/* 804F1720  7C 00 07 75 */	extsb. r0, r0
/* 804F1724  40 82 00 44 */	bne lbl_804F1768
/* 804F1728  B0 83 AF F2 */	sth r4, -0x500e(r3)
/* 804F172C  38 00 00 28 */	li r0, 0x28
/* 804F1730  B0 1E 07 AC */	sth r0, 0x7ac(r30)
/* 804F1734  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F1738  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804F173C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F1740  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804F1744  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804F1748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F174C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F1750  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F1754  38 80 00 05 */	li r4, 5
/* 804F1758  38 A0 00 01 */	li r5, 1
/* 804F175C  38 C1 00 18 */	addi r6, r1, 0x18
/* 804F1760  4B B7 E3 B0 */	b StartQuake__12dVibration_cFii4cXyz
/* 804F1764  48 00 00 0C */	b lbl_804F1770
lbl_804F1768:
/* 804F1768  38 00 00 14 */	li r0, 0x14
/* 804F176C  B0 1E 07 AC */	sth r0, 0x7ac(r30)
lbl_804F1770:
/* 804F1770  A8 1E 07 AC */	lha r0, 0x7ac(r30)
/* 804F1774  2C 00 00 23 */	cmpwi r0, 0x23
/* 804F1778  40 82 00 34 */	bne lbl_804F17AC
/* 804F177C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F1780  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804F1784  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F1788  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804F178C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804F1790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F1794  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F1798  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F179C  38 80 00 03 */	li r4, 3
/* 804F17A0  38 A0 00 01 */	li r5, 1
/* 804F17A4  38 C1 00 0C */	addi r6, r1, 0xc
/* 804F17A8  4B B7 E3 68 */	b StartQuake__12dVibration_cFii4cXyz
lbl_804F17AC:
/* 804F17AC  A8 BE 08 06 */	lha r5, 0x806(r30)
/* 804F17B0  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 804F17B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804F17B8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 804F17BC  7C 44 04 2E */	lfsx f2, r4, r0
/* 804F17C0  38 05 0B B8 */	addi r0, r5, 0xbb8
/* 804F17C4  B0 1E 08 06 */	sth r0, 0x806(r30)
/* 804F17C8  A8 7E 08 06 */	lha r3, 0x806(r30)
/* 804F17CC  38 03 B1 E0 */	addi r0, r3, -20000
/* 804F17D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804F17D4  7C 04 04 2E */	lfsx f0, r4, r0
/* 804F17D8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 804F17DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804F17E0  EC 01 00 2A */	fadds f0, f1, f0
/* 804F17E4  3C 7E 00 01 */	addis r3, r30, 1
/* 804F17E8  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F17EC  7C 00 07 74 */	extsb r0, r0
/* 804F17F0  1C 00 61 D4 */	mulli r0, r0, 0x61d4
/* 804F17F4  7C 63 02 14 */	add r3, r3, r0
/* 804F17F8  D0 03 85 34 */	stfs f0, -0x7acc(r3)
/* 804F17FC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804F1800  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804F1804  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 804F1808  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804F180C  A8 1E 07 AC */	lha r0, 0x7ac(r30)
/* 804F1810  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F1814  41 81 00 40 */	bgt lbl_804F1854
/* 804F1818  38 00 00 02 */	li r0, 2
/* 804F181C  98 1E 07 C0 */	stb r0, 0x7c0(r30)
/* 804F1820  A8 1E 07 AC */	lha r0, 0x7ac(r30)
/* 804F1824  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F1828  40 82 00 2C */	bne lbl_804F1854
/* 804F182C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070299@ha */
/* 804F1830  38 03 02 99 */	addi r0, r3, 0x0299 /* 0x00070299@l */
/* 804F1834  90 01 00 08 */	stw r0, 8(r1)
/* 804F1838  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F183C  38 81 00 08 */	addi r4, r1, 8
/* 804F1840  38 A0 FF FF */	li r5, -1
/* 804F1844  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F1848  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F184C  7D 89 03 A6 */	mtctr r12
/* 804F1850  4E 80 04 21 */	bctrl 
lbl_804F1854:
/* 804F1854  A8 1E 07 AC */	lha r0, 0x7ac(r30)
/* 804F1858  2C 00 00 00 */	cmpwi r0, 0
/* 804F185C  40 82 00 94 */	bne lbl_804F18F0
/* 804F1860  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F1864  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F1868  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804F186C  38 80 00 1F */	li r4, 0x1f
/* 804F1870  4B B7 E5 24 */	b StopQuake__12dVibration_cFi
/* 804F1874  38 00 00 09 */	li r0, 9
/* 804F1878  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
/* 804F187C  38 80 00 00 */	li r4, 0
/* 804F1880  B0 9E 07 A4 */	sth r4, 0x7a4(r30)
/* 804F1884  38 00 00 32 */	li r0, 0x32
/* 804F1888  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 804F188C  88 7E 08 02 */	lbz r3, 0x802(r30)
/* 804F1890  38 03 00 01 */	addi r0, r3, 1
/* 804F1894  98 1E 08 02 */	stb r0, 0x802(r30)
/* 804F1898  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F189C  3C 7E 00 01 */	addis r3, r30, 1
/* 804F18A0  88 1E 08 08 */	lbz r0, 0x808(r30)
/* 804F18A4  7C 00 07 74 */	extsb r0, r0
/* 804F18A8  1C 00 61 D4 */	mulli r0, r0, 0x61d4
/* 804F18AC  7C 63 02 14 */	add r3, r3, r0
/* 804F18B0  D0 03 85 34 */	stfs f0, -0x7acc(r3)
/* 804F18B4  3C 7E 00 02 */	addis r3, r30, 2
/* 804F18B8  88 03 B0 78 */	lbz r0, -0x4f88(r3)
/* 804F18BC  7C 00 07 75 */	extsb. r0, r0
/* 804F18C0  40 82 00 30 */	bne lbl_804F18F0
/* 804F18C4  38 00 00 03 */	li r0, 3
/* 804F18C8  B0 03 AF F2 */	sth r0, -0x500e(r3)
/* 804F18CC  B0 83 AF F4 */	sth r4, -0x500c(r3)
/* 804F18D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804F18D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804F18D8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804F18DC  38 00 00 01 */	li r0, 1
/* 804F18E0  90 03 06 14 */	stw r0, 0x614(r3)
/* 804F18E4  90 83 06 0C */	stw r4, 0x60c(r3)
/* 804F18E8  90 83 06 10 */	stw r4, 0x610(r3)
/* 804F18EC  B0 83 06 0A */	sth r4, 0x60a(r3)
lbl_804F18F0:
/* 804F18F0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804F18F4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F18F8  FC 40 08 90 */	fmr f2, f1
/* 804F18FC  4B D7 E1 84 */	b cLib_addCalc0__FPfff
/* 804F1900  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804F1904  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804F1908  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F190C  7C 08 03 A6 */	mtlr r0
/* 804F1910  38 21 00 30 */	addi r1, r1, 0x30
/* 804F1914  4E 80 00 20 */	blr 
