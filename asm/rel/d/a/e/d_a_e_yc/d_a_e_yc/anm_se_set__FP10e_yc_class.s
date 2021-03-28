lbl_807F165C:
/* 807F165C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F1660  7C 08 02 A6 */	mflr r0
/* 807F1664  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F1668  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807F166C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807F1670  7C 7E 1B 78 */	mr r30, r3
/* 807F1674  3C 60 80 7F */	lis r3, lit_3715@ha
/* 807F1678  3B E3 28 64 */	addi r31, r3, lit_3715@l
/* 807F167C  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F1680  2C 00 00 09 */	cmpwi r0, 9
/* 807F1684  40 82 00 1C */	bne lbl_807F16A0
/* 807F1688  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F168C  38 63 00 0C */	addi r3, r3, 0xc
/* 807F1690  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807F1694  4B B3 6D 98 */	b checkPass__12J3DFrameCtrlFf
/* 807F1698  2C 03 00 00 */	cmpwi r3, 0
/* 807F169C  40 82 00 88 */	bne lbl_807F1724
lbl_807F16A0:
/* 807F16A0  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F16A4  2C 00 00 06 */	cmpwi r0, 6
/* 807F16A8  40 82 00 1C */	bne lbl_807F16C4
/* 807F16AC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F16B0  38 63 00 0C */	addi r3, r3, 0xc
/* 807F16B4  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807F16B8  4B B3 6D 74 */	b checkPass__12J3DFrameCtrlFf
/* 807F16BC  2C 03 00 00 */	cmpwi r3, 0
/* 807F16C0  40 82 00 64 */	bne lbl_807F1724
lbl_807F16C4:
/* 807F16C4  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F16C8  2C 00 00 05 */	cmpwi r0, 5
/* 807F16CC  40 82 00 1C */	bne lbl_807F16E8
/* 807F16D0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F16D4  38 63 00 0C */	addi r3, r3, 0xc
/* 807F16D8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807F16DC  4B B3 6D 50 */	b checkPass__12J3DFrameCtrlFf
/* 807F16E0  2C 03 00 00 */	cmpwi r3, 0
/* 807F16E4  40 82 00 40 */	bne lbl_807F1724
lbl_807F16E8:
/* 807F16E8  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F16EC  2C 00 00 04 */	cmpwi r0, 4
/* 807F16F0  40 82 00 64 */	bne lbl_807F1754
/* 807F16F4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F16F8  38 63 00 0C */	addi r3, r3, 0xc
/* 807F16FC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807F1700  4B B3 6D 2C */	b checkPass__12J3DFrameCtrlFf
/* 807F1704  2C 03 00 00 */	cmpwi r3, 0
/* 807F1708  40 82 00 1C */	bne lbl_807F1724
/* 807F170C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F1710  38 63 00 0C */	addi r3, r3, 0xc
/* 807F1714  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807F1718  4B B3 6D 14 */	b checkPass__12J3DFrameCtrlFf
/* 807F171C  2C 03 00 00 */	cmpwi r3, 0
/* 807F1720  41 82 00 34 */	beq lbl_807F1754
lbl_807F1724:
/* 807F1724  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070234@ha */
/* 807F1728  38 03 02 34 */	addi r0, r3, 0x0234 /* 0x00070234@l */
/* 807F172C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F1730  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F1734  38 81 00 34 */	addi r4, r1, 0x34
/* 807F1738  38 A0 00 00 */	li r5, 0
/* 807F173C  38 C0 FF FF */	li r6, -1
/* 807F1740  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F1744  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F1748  7D 89 03 A6 */	mtctr r12
/* 807F174C  4E 80 04 21 */	bctrl 
/* 807F1750  48 00 03 6C */	b lbl_807F1ABC
lbl_807F1754:
/* 807F1754  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F1758  2C 00 00 0C */	cmpwi r0, 0xc
/* 807F175C  40 82 00 34 */	bne lbl_807F1790
/* 807F1760  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070235@ha */
/* 807F1764  38 03 02 35 */	addi r0, r3, 0x0235 /* 0x00070235@l */
/* 807F1768  90 01 00 30 */	stw r0, 0x30(r1)
/* 807F176C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F1770  38 81 00 30 */	addi r4, r1, 0x30
/* 807F1774  38 A0 00 00 */	li r5, 0
/* 807F1778  38 C0 FF FF */	li r6, -1
/* 807F177C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F1780  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807F1784  7D 89 03 A6 */	mtctr r12
/* 807F1788  4E 80 04 21 */	bctrl 
/* 807F178C  48 00 03 30 */	b lbl_807F1ABC
lbl_807F1790:
/* 807F1790  2C 00 00 11 */	cmpwi r0, 0x11
/* 807F1794  40 82 00 48 */	bne lbl_807F17DC
/* 807F1798  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F179C  38 63 00 0C */	addi r3, r3, 0xc
/* 807F17A0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F17A4  4B B3 6C 88 */	b checkPass__12J3DFrameCtrlFf
/* 807F17A8  2C 03 00 00 */	cmpwi r3, 0
/* 807F17AC  41 82 00 30 */	beq lbl_807F17DC
/* 807F17B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070490@ha */
/* 807F17B4  38 03 04 90 */	addi r0, r3, 0x0490 /* 0x00070490@l */
/* 807F17B8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807F17BC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F17C0  38 81 00 2C */	addi r4, r1, 0x2c
/* 807F17C4  38 A0 FF FF */	li r5, -1
/* 807F17C8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F17CC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F17D0  7D 89 03 A6 */	mtctr r12
/* 807F17D4  4E 80 04 21 */	bctrl 
/* 807F17D8  48 00 02 E4 */	b lbl_807F1ABC
lbl_807F17DC:
/* 807F17DC  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F17E0  2C 00 00 12 */	cmpwi r0, 0x12
/* 807F17E4  40 82 00 48 */	bne lbl_807F182C
/* 807F17E8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F17EC  38 63 00 0C */	addi r3, r3, 0xc
/* 807F17F0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F17F4  4B B3 6C 38 */	b checkPass__12J3DFrameCtrlFf
/* 807F17F8  2C 03 00 00 */	cmpwi r3, 0
/* 807F17FC  41 82 00 30 */	beq lbl_807F182C
/* 807F1800  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070491@ha */
/* 807F1804  38 03 04 91 */	addi r0, r3, 0x0491 /* 0x00070491@l */
/* 807F1808  90 01 00 28 */	stw r0, 0x28(r1)
/* 807F180C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F1810  38 81 00 28 */	addi r4, r1, 0x28
/* 807F1814  38 A0 FF FF */	li r5, -1
/* 807F1818  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F181C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F1820  7D 89 03 A6 */	mtctr r12
/* 807F1824  4E 80 04 21 */	bctrl 
/* 807F1828  48 00 02 94 */	b lbl_807F1ABC
lbl_807F182C:
/* 807F182C  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F1830  2C 00 00 10 */	cmpwi r0, 0x10
/* 807F1834  40 82 00 74 */	bne lbl_807F18A8
/* 807F1838  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F183C  38 63 00 0C */	addi r3, r3, 0xc
/* 807F1840  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F1844  4B B3 6B E8 */	b checkPass__12J3DFrameCtrlFf
/* 807F1848  2C 03 00 00 */	cmpwi r3, 0
/* 807F184C  41 82 00 5C */	beq lbl_807F18A8
/* 807F1850  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007048F@ha */
/* 807F1854  38 03 04 8F */	addi r0, r3, 0x048F /* 0x0007048F@l */
/* 807F1858  90 01 00 24 */	stw r0, 0x24(r1)
/* 807F185C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F1860  38 81 00 24 */	addi r4, r1, 0x24
/* 807F1864  38 A0 FF FF */	li r5, -1
/* 807F1868  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F186C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F1870  7D 89 03 A6 */	mtctr r12
/* 807F1874  4E 80 04 21 */	bctrl 
/* 807F1878  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070234@ha */
/* 807F187C  38 03 02 34 */	addi r0, r3, 0x0234 /* 0x00070234@l */
/* 807F1880  90 01 00 20 */	stw r0, 0x20(r1)
/* 807F1884  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F1888  38 81 00 20 */	addi r4, r1, 0x20
/* 807F188C  38 A0 00 00 */	li r5, 0
/* 807F1890  38 C0 FF FF */	li r6, -1
/* 807F1894  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F1898  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F189C  7D 89 03 A6 */	mtctr r12
/* 807F18A0  4E 80 04 21 */	bctrl 
/* 807F18A4  48 00 02 18 */	b lbl_807F1ABC
lbl_807F18A8:
/* 807F18A8  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F18AC  2C 00 00 11 */	cmpwi r0, 0x11
/* 807F18B0  40 82 00 4C */	bne lbl_807F18FC
/* 807F18B4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F18B8  38 63 00 0C */	addi r3, r3, 0xc
/* 807F18BC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 807F18C0  4B B3 6B 6C */	b checkPass__12J3DFrameCtrlFf
/* 807F18C4  2C 03 00 00 */	cmpwi r3, 0
/* 807F18C8  41 82 00 34 */	beq lbl_807F18FC
/* 807F18CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070234@ha */
/* 807F18D0  38 03 02 34 */	addi r0, r3, 0x0234 /* 0x00070234@l */
/* 807F18D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807F18D8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F18DC  38 81 00 1C */	addi r4, r1, 0x1c
/* 807F18E0  38 A0 00 00 */	li r5, 0
/* 807F18E4  38 C0 FF FF */	li r6, -1
/* 807F18E8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F18EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F18F0  7D 89 03 A6 */	mtctr r12
/* 807F18F4  4E 80 04 21 */	bctrl 
/* 807F18F8  48 00 01 C4 */	b lbl_807F1ABC
lbl_807F18FC:
/* 807F18FC  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F1900  2C 00 00 12 */	cmpwi r0, 0x12
/* 807F1904  40 82 00 94 */	bne lbl_807F1998
/* 807F1908  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F190C  38 63 00 0C */	addi r3, r3, 0xc
/* 807F1910  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F1914  4B B3 6B 18 */	b checkPass__12J3DFrameCtrlFf
/* 807F1918  2C 03 00 00 */	cmpwi r3, 0
/* 807F191C  40 82 00 4C */	bne lbl_807F1968
/* 807F1920  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F1924  38 63 00 0C */	addi r3, r3, 0xc
/* 807F1928  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 807F192C  4B B3 6B 00 */	b checkPass__12J3DFrameCtrlFf
/* 807F1930  2C 03 00 00 */	cmpwi r3, 0
/* 807F1934  40 82 00 34 */	bne lbl_807F1968
/* 807F1938  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F193C  38 63 00 0C */	addi r3, r3, 0xc
/* 807F1940  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 807F1944  4B B3 6A E8 */	b checkPass__12J3DFrameCtrlFf
/* 807F1948  2C 03 00 00 */	cmpwi r3, 0
/* 807F194C  40 82 00 1C */	bne lbl_807F1968
/* 807F1950  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F1954  38 63 00 0C */	addi r3, r3, 0xc
/* 807F1958  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807F195C  4B B3 6A D0 */	b checkPass__12J3DFrameCtrlFf
/* 807F1960  2C 03 00 00 */	cmpwi r3, 0
/* 807F1964  41 82 00 34 */	beq lbl_807F1998
lbl_807F1968:
/* 807F1968  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070234@ha */
/* 807F196C  38 03 02 34 */	addi r0, r3, 0x0234 /* 0x00070234@l */
/* 807F1970  90 01 00 18 */	stw r0, 0x18(r1)
/* 807F1974  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F1978  38 81 00 18 */	addi r4, r1, 0x18
/* 807F197C  38 A0 00 00 */	li r5, 0
/* 807F1980  38 C0 FF FF */	li r6, -1
/* 807F1984  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F1988  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F198C  7D 89 03 A6 */	mtctr r12
/* 807F1990  4E 80 04 21 */	bctrl 
/* 807F1994  48 00 01 28 */	b lbl_807F1ABC
lbl_807F1998:
/* 807F1998  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 807F199C  2C 00 00 13 */	cmpwi r0, 0x13
/* 807F19A0  40 82 00 A8 */	bne lbl_807F1A48
/* 807F19A4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F19A8  38 63 00 0C */	addi r3, r3, 0xc
/* 807F19AC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807F19B0  4B B3 6A 7C */	b checkPass__12J3DFrameCtrlFf
/* 807F19B4  2C 03 00 00 */	cmpwi r3, 0
/* 807F19B8  41 82 00 30 */	beq lbl_807F19E8
/* 807F19BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070495@ha */
/* 807F19C0  38 03 04 95 */	addi r0, r3, 0x0495 /* 0x00070495@l */
/* 807F19C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F19C8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F19CC  38 81 00 14 */	addi r4, r1, 0x14
/* 807F19D0  38 A0 FF FF */	li r5, -1
/* 807F19D4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F19D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F19DC  7D 89 03 A6 */	mtctr r12
/* 807F19E0  4E 80 04 21 */	bctrl 
/* 807F19E4  48 00 00 D8 */	b lbl_807F1ABC
lbl_807F19E8:
/* 807F19E8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F19EC  38 63 00 0C */	addi r3, r3, 0xc
/* 807F19F0  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 807F19F4  4B B3 6A 38 */	b checkPass__12J3DFrameCtrlFf
/* 807F19F8  2C 03 00 00 */	cmpwi r3, 0
/* 807F19FC  40 82 00 1C */	bne lbl_807F1A18
/* 807F1A00  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F1A04  38 63 00 0C */	addi r3, r3, 0xc
/* 807F1A08  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 807F1A0C  4B B3 6A 20 */	b checkPass__12J3DFrameCtrlFf
/* 807F1A10  2C 03 00 00 */	cmpwi r3, 0
/* 807F1A14  41 82 00 A8 */	beq lbl_807F1ABC
lbl_807F1A18:
/* 807F1A18  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070234@ha */
/* 807F1A1C  38 03 02 34 */	addi r0, r3, 0x0234 /* 0x00070234@l */
/* 807F1A20  90 01 00 10 */	stw r0, 0x10(r1)
/* 807F1A24  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F1A28  38 81 00 10 */	addi r4, r1, 0x10
/* 807F1A2C  38 A0 00 00 */	li r5, 0
/* 807F1A30  38 C0 FF FF */	li r6, -1
/* 807F1A34  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F1A38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F1A3C  7D 89 03 A6 */	mtctr r12
/* 807F1A40  4E 80 04 21 */	bctrl 
/* 807F1A44  48 00 00 78 */	b lbl_807F1ABC
lbl_807F1A48:
/* 807F1A48  2C 00 00 15 */	cmpwi r0, 0x15
/* 807F1A4C  40 82 00 70 */	bne lbl_807F1ABC
/* 807F1A50  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070493@ha */
/* 807F1A54  38 03 04 93 */	addi r0, r3, 0x0493 /* 0x00070493@l */
/* 807F1A58  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F1A5C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F1A60  38 81 00 0C */	addi r4, r1, 0xc
/* 807F1A64  38 A0 FF FF */	li r5, -1
/* 807F1A68  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F1A6C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 807F1A70  7D 89 03 A6 */	mtctr r12
/* 807F1A74  4E 80 04 21 */	bctrl 
/* 807F1A78  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807F1A7C  38 63 00 0C */	addi r3, r3, 0xc
/* 807F1A80  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807F1A84  4B B3 69 A8 */	b checkPass__12J3DFrameCtrlFf
/* 807F1A88  2C 03 00 00 */	cmpwi r3, 0
/* 807F1A8C  41 82 00 30 */	beq lbl_807F1ABC
/* 807F1A90  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070234@ha */
/* 807F1A94  38 03 02 34 */	addi r0, r3, 0x0234 /* 0x00070234@l */
/* 807F1A98  90 01 00 08 */	stw r0, 8(r1)
/* 807F1A9C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807F1AA0  38 81 00 08 */	addi r4, r1, 8
/* 807F1AA4  38 A0 00 00 */	li r5, 0
/* 807F1AA8  38 C0 FF FF */	li r6, -1
/* 807F1AAC  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 807F1AB0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F1AB4  7D 89 03 A6 */	mtctr r12
/* 807F1AB8  4E 80 04 21 */	bctrl 
lbl_807F1ABC:
/* 807F1ABC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807F1AC0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807F1AC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F1AC8  7C 08 03 A6 */	mtlr r0
/* 807F1ACC  38 21 00 40 */	addi r1, r1, 0x40
/* 807F1AD0  4E 80 00 20 */	blr 
