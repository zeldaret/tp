lbl_805A15FC:
/* 805A15FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1600  7C 08 02 A6 */	mflr r0
/* 805A1604  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A160C  93 C1 00 08 */	stw r30, 8(r1)
/* 805A1610  7C 7F 1B 78 */	mr r31, r3
/* 805A1614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A1618  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A161C  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 805A1620  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805A1624  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 805A1628  2C 00 00 03 */	cmpwi r0, 3
/* 805A162C  41 82 00 40 */	beq lbl_805A166C
/* 805A1630  40 80 00 10 */	bge lbl_805A1640
/* 805A1634  2C 00 00 01 */	cmpwi r0, 1
/* 805A1638  41 82 00 14 */	beq lbl_805A164C
/* 805A163C  48 00 00 80 */	b lbl_805A16BC
lbl_805A1640:
/* 805A1640  2C 00 00 05 */	cmpwi r0, 5
/* 805A1644  40 80 00 78 */	bge lbl_805A16BC
/* 805A1648  48 00 00 54 */	b lbl_805A169C
lbl_805A164C:
/* 805A164C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805A1650  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 805A1654  7D 89 03 A6 */	mtctr r12
/* 805A1658  4E 80 04 21 */	bctrl 
/* 805A165C  28 03 00 00 */	cmplwi r3, 0
/* 805A1660  40 82 00 5C */	bne lbl_805A16BC
/* 805A1664  38 60 00 01 */	li r3, 1
/* 805A1668  48 00 02 68 */	b lbl_805A18D0
lbl_805A166C:
/* 805A166C  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 805A1670  80 04 05 74 */	lwz r0, 0x574(r4)
/* 805A1674  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805A1678  40 82 00 1C */	bne lbl_805A1694
/* 805A167C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805A1680  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 805A1684  7D 89 03 A6 */	mtctr r12
/* 805A1688  4E 80 04 21 */	bctrl 
/* 805A168C  28 03 00 00 */	cmplwi r3, 0
/* 805A1690  41 82 00 2C */	beq lbl_805A16BC
lbl_805A1694:
/* 805A1694  38 60 00 01 */	li r3, 1
/* 805A1698  48 00 02 38 */	b lbl_805A18D0
lbl_805A169C:
/* 805A169C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805A16A0  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 805A16A4  7D 89 03 A6 */	mtctr r12
/* 805A16A8  4E 80 04 21 */	bctrl 
/* 805A16AC  28 03 00 00 */	cmplwi r3, 0
/* 805A16B0  40 82 00 0C */	bne lbl_805A16BC
/* 805A16B4  38 60 00 01 */	li r3, 1
/* 805A16B8  48 00 02 18 */	b lbl_805A18D0
lbl_805A16BC:
/* 805A16BC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805A16C0  54 05 C7 3E */	rlwinm r5, r0, 0x18, 0x1c, 0x1f
/* 805A16C4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A16C8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 805A16CC  2C 05 00 08 */	cmpwi r5, 8
/* 805A16D0  41 82 00 60 */	beq lbl_805A1730
/* 805A16D4  40 80 00 24 */	bge lbl_805A16F8
/* 805A16D8  2C 05 00 03 */	cmpwi r5, 3
/* 805A16DC  40 80 00 10 */	bge lbl_805A16EC
/* 805A16E0  2C 05 00 00 */	cmpwi r5, 0
/* 805A16E4  40 80 00 20 */	bge lbl_805A1704
/* 805A16E8  48 00 00 74 */	b lbl_805A175C
lbl_805A16EC:
/* 805A16EC  2C 05 00 07 */	cmpwi r5, 7
/* 805A16F0  40 80 00 14 */	bge lbl_805A1704
/* 805A16F4  48 00 00 3C */	b lbl_805A1730
lbl_805A16F8:
/* 805A16F8  2C 05 00 0F */	cmpwi r5, 0xf
/* 805A16FC  41 82 00 08 */	beq lbl_805A1704
/* 805A1700  48 00 00 5C */	b lbl_805A175C
lbl_805A1704:
/* 805A1704  2C 04 00 FF */	cmpwi r4, 0xff
/* 805A1708  41 82 00 68 */	beq lbl_805A1770
/* 805A170C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A1710  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1714  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A1718  7C 05 07 74 */	extsb r5, r0
/* 805A171C  4B A9 3C 45 */	bl isSwitch__10dSv_info_cCFii
/* 805A1720  2C 03 00 00 */	cmpwi r3, 0
/* 805A1724  40 82 00 4C */	bne lbl_805A1770
/* 805A1728  38 60 00 01 */	li r3, 1
/* 805A172C  48 00 01 A4 */	b lbl_805A18D0
lbl_805A1730:
/* 805A1730  2C 04 00 FF */	cmpwi r4, 0xff
/* 805A1734  41 82 00 3C */	beq lbl_805A1770
/* 805A1738  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A173C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1740  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805A1744  7C 05 07 74 */	extsb r5, r0
/* 805A1748  4B A9 3C 19 */	bl isSwitch__10dSv_info_cCFii
/* 805A174C  2C 03 00 00 */	cmpwi r3, 0
/* 805A1750  41 82 00 20 */	beq lbl_805A1770
/* 805A1754  38 60 00 01 */	li r3, 1
/* 805A1758  48 00 01 78 */	b lbl_805A18D0
lbl_805A175C:
/* 805A175C  3C 60 80 5A */	lis r3, d_a_swc00__stringBase0@ha /* 0x805A1DAC@ha */
/* 805A1760  38 63 1D AC */	addi r3, r3, d_a_swc00__stringBase0@l /* 0x805A1DAC@l */
/* 805A1764  7C A4 2B 78 */	mr r4, r5
/* 805A1768  4C C6 31 82 */	crclr 6
/* 805A176C  4B A6 54 A1 */	bl OSReport_Error
lbl_805A1770:
/* 805A1770  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A1774  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 805A1778  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805A177C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 805A1780  28 00 00 0F */	cmplwi r0, 0xf
/* 805A1784  41 81 01 40 */	bgt lbl_805A18C4
/* 805A1788  3C 60 80 5A */	lis r3, lit_3812@ha /* 0x805A1DF4@ha */
/* 805A178C  38 63 1D F4 */	addi r3, r3, lit_3812@l /* 0x805A1DF4@l */
/* 805A1790  54 00 10 3A */	slwi r0, r0, 2
/* 805A1794  7C 03 00 2E */	lwzx r0, r3, r0
/* 805A1798  7C 09 03 A6 */	mtctr r0
/* 805A179C  4E 80 04 20 */	bctr 
lbl_805A17A0:
/* 805A17A0  7F E3 FB 78 */	mr r3, r31
/* 805A17A4  4B FF FC 55 */	bl hitCheck__FP9daSwc00_c
/* 805A17A8  2C 03 00 00 */	cmpwi r3, 0
/* 805A17AC  41 82 01 18 */	beq lbl_805A18C4
/* 805A17B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A17B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A17B8  7F C4 F3 78 */	mr r4, r30
/* 805A17BC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A17C0  7C 05 07 74 */	extsb r5, r0
/* 805A17C4  4B A9 3A 3D */	bl onSwitch__10dSv_info_cFii
/* 805A17C8  38 00 00 01 */	li r0, 1
/* 805A17CC  98 1F 05 83 */	stb r0, 0x583(r31)
/* 805A17D0  98 1F 05 84 */	stb r0, 0x584(r31)
/* 805A17D4  48 00 00 F0 */	b lbl_805A18C4
lbl_805A17D8:
/* 805A17D8  7F E3 FB 78 */	mr r3, r31
/* 805A17DC  4B FF FC 1D */	bl hitCheck__FP9daSwc00_c
/* 805A17E0  2C 03 00 00 */	cmpwi r3, 0
/* 805A17E4  41 82 00 28 */	beq lbl_805A180C
/* 805A17E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A17EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A17F0  7F C4 F3 78 */	mr r4, r30
/* 805A17F4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A17F8  7C 05 07 74 */	extsb r5, r0
/* 805A17FC  4B A9 3A 05 */	bl onSwitch__10dSv_info_cFii
/* 805A1800  38 00 00 01 */	li r0, 1
/* 805A1804  98 1F 05 84 */	stb r0, 0x584(r31)
/* 805A1808  48 00 00 BC */	b lbl_805A18C4
lbl_805A180C:
/* 805A180C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A1810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1814  7F C4 F3 78 */	mr r4, r30
/* 805A1818  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A181C  7C 05 07 74 */	extsb r5, r0
/* 805A1820  4B A9 3A 91 */	bl offSwitch__10dSv_info_cFii
/* 805A1824  48 00 00 A0 */	b lbl_805A18C4
lbl_805A1828:
/* 805A1828  7F E3 FB 78 */	mr r3, r31
/* 805A182C  4B FF FB CD */	bl hitCheck__FP9daSwc00_c
/* 805A1830  2C 03 00 00 */	cmpwi r3, 0
/* 805A1834  41 82 00 90 */	beq lbl_805A18C4
/* 805A1838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A183C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1840  7F C4 F3 78 */	mr r4, r30
/* 805A1844  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A1848  7C 05 07 74 */	extsb r5, r0
/* 805A184C  4B A9 39 B5 */	bl onSwitch__10dSv_info_cFii
/* 805A1850  38 00 00 01 */	li r0, 1
/* 805A1854  98 1F 05 84 */	stb r0, 0x584(r31)
/* 805A1858  48 00 00 6C */	b lbl_805A18C4
lbl_805A185C:
/* 805A185C  7F E3 FB 78 */	mr r3, r31
/* 805A1860  4B FF FB 99 */	bl hitCheck__FP9daSwc00_c
/* 805A1864  2C 03 00 00 */	cmpwi r3, 0
/* 805A1868  41 82 00 5C */	beq lbl_805A18C4
/* 805A186C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A1870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1874  7F C4 F3 78 */	mr r4, r30
/* 805A1878  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A187C  7C 05 07 74 */	extsb r5, r0
/* 805A1880  4B A9 3A 31 */	bl offSwitch__10dSv_info_cFii
/* 805A1884  38 00 00 01 */	li r0, 1
/* 805A1888  98 1F 05 84 */	stb r0, 0x584(r31)
/* 805A188C  48 00 00 38 */	b lbl_805A18C4
lbl_805A1890:
/* 805A1890  7F E3 FB 78 */	mr r3, r31
/* 805A1894  4B FF FB 65 */	bl hitCheck__FP9daSwc00_c
/* 805A1898  2C 03 00 00 */	cmpwi r3, 0
/* 805A189C  41 82 00 28 */	beq lbl_805A18C4
/* 805A18A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A18A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A18A8  7F C4 F3 78 */	mr r4, r30
/* 805A18AC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A18B0  7C 05 07 74 */	extsb r5, r0
/* 805A18B4  4B A9 39 FD */	bl offSwitch__10dSv_info_cFii
/* 805A18B8  38 00 00 01 */	li r0, 1
/* 805A18BC  98 1F 05 84 */	stb r0, 0x584(r31)
/* 805A18C0  98 1F 05 83 */	stb r0, 0x583(r31)
lbl_805A18C4:
/* 805A18C4  7F E3 FB 78 */	mr r3, r31
/* 805A18C8  48 00 00 21 */	bl event_proc_call__9daSwc00_cFv
/* 805A18CC  38 60 00 01 */	li r3, 1
lbl_805A18D0:
/* 805A18D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A18D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A18D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A18DC  7C 08 03 A6 */	mtlr r0
/* 805A18E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A18E4  4E 80 00 20 */	blr 
