lbl_806F1758:
/* 806F1758  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806F175C  7C 08 02 A6 */	mflr r0
/* 806F1760  90 01 00 84 */	stw r0, 0x84(r1)
/* 806F1764  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806F1768  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806F176C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 806F1770  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 806F1774  39 61 00 60 */	addi r11, r1, 0x60
/* 806F1778  4B C7 0A 5C */	b _savegpr_27
/* 806F177C  7C 7B 1B 78 */	mr r27, r3
/* 806F1780  3C 80 80 6F */	lis r4, lit_3767@ha
/* 806F1784  3B E4 55 14 */	addi r31, r4, lit_3767@l
/* 806F1788  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806F178C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806F1790  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 806F1794  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806F1798  C3 DF 00 38 */	lfs f30, 0x38(r31)
/* 806F179C  3B C0 00 00 */	li r30, 0
/* 806F17A0  3B A0 00 01 */	li r29, 1
/* 806F17A4  38 00 00 05 */	li r0, 5
/* 806F17A8  B0 03 06 B4 */	sth r0, 0x6b4(r3)
/* 806F17AC  80 83 05 D4 */	lwz r4, 0x5d4(r3)
/* 806F17B0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 806F17B4  FC 00 00 1E */	fctiwz f0, f0
/* 806F17B8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806F17BC  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 806F17C0  3B 80 00 00 */	li r28, 0
/* 806F17C4  A8 03 06 98 */	lha r0, 0x698(r3)
/* 806F17C8  2C 00 00 02 */	cmpwi r0, 2
/* 806F17CC  41 82 01 00 */	beq lbl_806F18CC
/* 806F17D0  40 80 00 14 */	bge lbl_806F17E4
/* 806F17D4  2C 00 00 00 */	cmpwi r0, 0
/* 806F17D8  41 82 00 1C */	beq lbl_806F17F4
/* 806F17DC  40 80 00 4C */	bge lbl_806F1828
/* 806F17E0  48 00 03 30 */	b lbl_806F1B10
lbl_806F17E4:
/* 806F17E4  2C 00 00 04 */	cmpwi r0, 4
/* 806F17E8  41 82 02 F4 */	beq lbl_806F1ADC
/* 806F17EC  40 80 03 24 */	bge lbl_806F1B10
/* 806F17F0  48 00 01 78 */	b lbl_806F1968
lbl_806F17F4:
/* 806F17F4  38 80 00 0F */	li r4, 0xf
/* 806F17F8  FC 20 F0 90 */	fmr f1, f30
/* 806F17FC  38 A0 00 00 */	li r5, 0
/* 806F1800  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F1804  4B FF F5 6D */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F1808  38 00 00 01 */	li r0, 1
/* 806F180C  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 806F1810  C0 1B 05 B8 */	lfs f0, 0x5b8(r27)
/* 806F1814  D0 1B 05 C4 */	stfs f0, 0x5c4(r27)
/* 806F1818  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 806F181C  D0 1B 05 C8 */	stfs f0, 0x5c8(r27)
/* 806F1820  C0 1B 05 C0 */	lfs f0, 0x5c0(r27)
/* 806F1824  D0 1B 05 CC */	stfs f0, 0x5cc(r27)
lbl_806F1828:
/* 806F1828  3B C0 00 01 */	li r30, 1
/* 806F182C  38 00 00 01 */	li r0, 1
/* 806F1830  90 1B 06 8C */	stw r0, 0x68c(r27)
/* 806F1834  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E2@ha */
/* 806F1838  38 03 04 E2 */	addi r0, r3, 0x04E2 /* 0x000704E2@l */
/* 806F183C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F1840  38 7B 05 D8 */	addi r3, r27, 0x5d8
/* 806F1844  38 81 00 0C */	addi r4, r1, 0xc
/* 806F1848  38 A0 00 00 */	li r5, 0
/* 806F184C  38 C0 FF FF */	li r6, -1
/* 806F1850  81 9B 05 D8 */	lwz r12, 0x5d8(r27)
/* 806F1854  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806F1858  7D 89 03 A6 */	mtctr r12
/* 806F185C  4E 80 04 21 */	bctrl 
/* 806F1860  80 7B 05 D4 */	lwz r3, 0x5d4(r27)
/* 806F1864  38 80 00 01 */	li r4, 1
/* 806F1868  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F186C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F1870  40 82 00 18 */	bne lbl_806F1888
/* 806F1874  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F1878  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F187C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F1880  41 82 00 08 */	beq lbl_806F1888
/* 806F1884  38 80 00 00 */	li r4, 0
lbl_806F1888:
/* 806F1888  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F188C  41 82 02 84 */	beq lbl_806F1B10
/* 806F1890  38 00 00 02 */	li r0, 2
/* 806F1894  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 806F1898  7F 63 DB 78 */	mr r3, r27
/* 806F189C  38 80 00 0B */	li r4, 0xb
/* 806F18A0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806F18A4  38 A0 00 00 */	li r5, 0
/* 806F18A8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F18AC  4B FF F4 C5 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F18B0  C0 1B 05 B8 */	lfs f0, 0x5b8(r27)
/* 806F18B4  D0 1B 05 C4 */	stfs f0, 0x5c4(r27)
/* 806F18B8  C0 1B 05 BC */	lfs f0, 0x5bc(r27)
/* 806F18BC  D0 1B 05 C8 */	stfs f0, 0x5c8(r27)
/* 806F18C0  C0 1B 05 C0 */	lfs f0, 0x5c0(r27)
/* 806F18C4  D0 1B 05 CC */	stfs f0, 0x5cc(r27)
/* 806F18C8  48 00 02 48 */	b lbl_806F1B10
lbl_806F18CC:
/* 806F18CC  38 00 00 01 */	li r0, 1
/* 806F18D0  90 1B 06 8C */	stw r0, 0x68c(r27)
/* 806F18D4  2C 04 00 20 */	cmpwi r4, 0x20
/* 806F18D8  40 81 00 34 */	ble lbl_806F190C
/* 806F18DC  C3 FF 00 44 */	lfs f31, 0x44(r31)
/* 806F18E0  C0 05 04 D0 */	lfs f0, 0x4d0(r5)
/* 806F18E4  D0 1B 05 B8 */	stfs f0, 0x5b8(r27)
/* 806F18E8  C0 05 04 D4 */	lfs f0, 0x4d4(r5)
/* 806F18EC  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 806F18F0  C0 05 04 D8 */	lfs f0, 0x4d8(r5)
/* 806F18F4  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 806F18F8  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 806F18FC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 806F1900  EC 01 00 2A */	fadds f0, f1, f0
/* 806F1904  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 806F1908  98 1B 06 B8 */	stb r0, 0x6b8(r27)
lbl_806F190C:
/* 806F190C  80 7B 05 D4 */	lwz r3, 0x5d4(r27)
/* 806F1910  38 80 00 01 */	li r4, 1
/* 806F1914  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F1918  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F191C  40 82 00 18 */	bne lbl_806F1934
/* 806F1920  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F1924  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F1928  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F192C  41 82 00 08 */	beq lbl_806F1934
/* 806F1930  38 80 00 00 */	li r4, 0
lbl_806F1934:
/* 806F1934  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F1938  41 82 01 D8 */	beq lbl_806F1B10
/* 806F193C  38 00 00 03 */	li r0, 3
/* 806F1940  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 806F1944  7F 63 DB 78 */	mr r3, r27
/* 806F1948  38 80 00 0A */	li r4, 0xa
/* 806F194C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F1950  38 A0 00 02 */	li r5, 2
/* 806F1954  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F1958  4B FF F4 19 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F195C  38 00 00 5A */	li r0, 0x5a
/* 806F1960  B0 1B 06 AC */	sth r0, 0x6ac(r27)
/* 806F1964  48 00 01 AC */	b lbl_806F1B10
lbl_806F1968:
/* 806F1968  38 00 00 01 */	li r0, 1
/* 806F196C  90 1B 06 8C */	stw r0, 0x68c(r27)
/* 806F1970  C3 FF 00 64 */	lfs f31, 0x64(r31)
/* 806F1974  3B A0 00 02 */	li r29, 2
/* 806F1978  98 1B 06 B8 */	stb r0, 0x6b8(r27)
/* 806F197C  C0 05 04 D0 */	lfs f0, 0x4d0(r5)
/* 806F1980  D0 1B 05 B8 */	stfs f0, 0x5b8(r27)
/* 806F1984  C0 05 04 D4 */	lfs f0, 0x4d4(r5)
/* 806F1988  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 806F198C  C0 05 04 D8 */	lfs f0, 0x4d8(r5)
/* 806F1990  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 806F1994  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 806F1998  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 806F199C  EC 01 00 2A */	fadds f0, f1, f0
/* 806F19A0  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 806F19A4  38 61 00 1C */	addi r3, r1, 0x1c
/* 806F19A8  38 9B 05 B8 */	addi r4, r27, 0x5b8
/* 806F19AC  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 806F19B0  4B B7 51 84 */	b __mi__4cXyzCFRC3Vec
/* 806F19B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806F19B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806F19BC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806F19C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806F19C4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806F19C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806F19CC  38 61 00 28 */	addi r3, r1, 0x28
/* 806F19D0  4B C5 57 68 */	b PSVECSquareMag
/* 806F19D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F19D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F19DC  40 81 00 58 */	ble lbl_806F1A34
/* 806F19E0  FC 00 08 34 */	frsqrte f0, f1
/* 806F19E4  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 806F19E8  FC 44 00 32 */	fmul f2, f4, f0
/* 806F19EC  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 806F19F0  FC 00 00 32 */	fmul f0, f0, f0
/* 806F19F4  FC 01 00 32 */	fmul f0, f1, f0
/* 806F19F8  FC 03 00 28 */	fsub f0, f3, f0
/* 806F19FC  FC 02 00 32 */	fmul f0, f2, f0
/* 806F1A00  FC 44 00 32 */	fmul f2, f4, f0
/* 806F1A04  FC 00 00 32 */	fmul f0, f0, f0
/* 806F1A08  FC 01 00 32 */	fmul f0, f1, f0
/* 806F1A0C  FC 03 00 28 */	fsub f0, f3, f0
/* 806F1A10  FC 02 00 32 */	fmul f0, f2, f0
/* 806F1A14  FC 44 00 32 */	fmul f2, f4, f0
/* 806F1A18  FC 00 00 32 */	fmul f0, f0, f0
/* 806F1A1C  FC 01 00 32 */	fmul f0, f1, f0
/* 806F1A20  FC 03 00 28 */	fsub f0, f3, f0
/* 806F1A24  FC 02 00 32 */	fmul f0, f2, f0
/* 806F1A28  FC 21 00 32 */	fmul f1, f1, f0
/* 806F1A2C  FC 20 08 18 */	frsp f1, f1
/* 806F1A30  48 00 00 88 */	b lbl_806F1AB8
lbl_806F1A34:
/* 806F1A34  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 806F1A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F1A3C  40 80 00 10 */	bge lbl_806F1A4C
/* 806F1A40  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806F1A44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806F1A48  48 00 00 70 */	b lbl_806F1AB8
lbl_806F1A4C:
/* 806F1A4C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806F1A50  80 81 00 08 */	lwz r4, 8(r1)
/* 806F1A54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806F1A58  3C 00 7F 80 */	lis r0, 0x7f80
/* 806F1A5C  7C 03 00 00 */	cmpw r3, r0
/* 806F1A60  41 82 00 14 */	beq lbl_806F1A74
/* 806F1A64  40 80 00 40 */	bge lbl_806F1AA4
/* 806F1A68  2C 03 00 00 */	cmpwi r3, 0
/* 806F1A6C  41 82 00 20 */	beq lbl_806F1A8C
/* 806F1A70  48 00 00 34 */	b lbl_806F1AA4
lbl_806F1A74:
/* 806F1A74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806F1A78  41 82 00 0C */	beq lbl_806F1A84
/* 806F1A7C  38 00 00 01 */	li r0, 1
/* 806F1A80  48 00 00 28 */	b lbl_806F1AA8
lbl_806F1A84:
/* 806F1A84  38 00 00 02 */	li r0, 2
/* 806F1A88  48 00 00 20 */	b lbl_806F1AA8
lbl_806F1A8C:
/* 806F1A8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806F1A90  41 82 00 0C */	beq lbl_806F1A9C
/* 806F1A94  38 00 00 05 */	li r0, 5
/* 806F1A98  48 00 00 10 */	b lbl_806F1AA8
lbl_806F1A9C:
/* 806F1A9C  38 00 00 03 */	li r0, 3
/* 806F1AA0  48 00 00 08 */	b lbl_806F1AA8
lbl_806F1AA4:
/* 806F1AA4  38 00 00 04 */	li r0, 4
lbl_806F1AA8:
/* 806F1AA8  2C 00 00 01 */	cmpwi r0, 1
/* 806F1AAC  40 82 00 0C */	bne lbl_806F1AB8
/* 806F1AB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806F1AB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806F1AB8:
/* 806F1AB8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806F1ABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F1AC0  41 80 00 10 */	blt lbl_806F1AD0
/* 806F1AC4  A8 1B 06 AC */	lha r0, 0x6ac(r27)
/* 806F1AC8  2C 00 00 00 */	cmpwi r0, 0
/* 806F1ACC  40 82 00 44 */	bne lbl_806F1B10
lbl_806F1AD0:
/* 806F1AD0  38 00 00 04 */	li r0, 4
/* 806F1AD4  B0 1B 06 98 */	sth r0, 0x698(r27)
/* 806F1AD8  48 00 00 38 */	b lbl_806F1B10
lbl_806F1ADC:
/* 806F1ADC  38 00 00 01 */	li r0, 1
/* 806F1AE0  90 1B 06 8C */	stw r0, 0x68c(r27)
/* 806F1AE4  C3 DF 00 00 */	lfs f30, 0(r31)
/* 806F1AE8  3B 80 F0 00 */	li r28, -4096
/* 806F1AEC  3B A0 00 02 */	li r29, 2
/* 806F1AF0  98 1B 06 B8 */	stb r0, 0x6b8(r27)
/* 806F1AF4  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 806F1AF8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806F1AFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F1B00  40 80 00 10 */	bge lbl_806F1B10
/* 806F1B04  38 00 00 00 */	li r0, 0
/* 806F1B08  B0 1B 06 96 */	sth r0, 0x696(r27)
/* 806F1B0C  B0 1B 06 98 */	sth r0, 0x698(r27)
lbl_806F1B10:
/* 806F1B10  2C 1E 00 00 */	cmpwi r30, 0
/* 806F1B14  41 82 00 74 */	beq lbl_806F1B88
/* 806F1B18  38 7B 04 DE */	addi r3, r27, 0x4de
/* 806F1B1C  A8 9B 06 A4 */	lha r4, 0x6a4(r27)
/* 806F1B20  38 A0 00 02 */	li r5, 2
/* 806F1B24  38 C0 03 00 */	li r6, 0x300
/* 806F1B28  4B B7 EA E0 */	b cLib_addCalcAngleS2__FPssss
/* 806F1B2C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 806F1B30  C0 3B 05 B8 */	lfs f1, 0x5b8(r27)
/* 806F1B34  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 806F1B38  C0 7B 06 9C */	lfs f3, 0x69c(r27)
/* 806F1B3C  4B B7 DF 00 */	b cLib_addCalc2__FPffff
/* 806F1B40  A8 1B 06 94 */	lha r0, 0x694(r27)
/* 806F1B44  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 806F1B48  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806F1B4C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806F1B50  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806F1B54  7C 03 04 2E */	lfsx f0, r3, r0
/* 806F1B58  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 806F1B5C  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 806F1B60  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806F1B64  EC 03 00 32 */	fmuls f0, f3, f0
/* 806F1B68  EC 21 00 2A */	fadds f1, f1, f0
/* 806F1B6C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 806F1B70  4B B7 DE CC */	b cLib_addCalc2__FPffff
/* 806F1B74  38 7B 04 D8 */	addi r3, r27, 0x4d8
/* 806F1B78  C0 3B 05 C0 */	lfs f1, 0x5c0(r27)
/* 806F1B7C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 806F1B80  C0 7B 06 9C */	lfs f3, 0x69c(r27)
/* 806F1B84  4B B7 DE B8 */	b cLib_addCalc2__FPffff
lbl_806F1B88:
/* 806F1B88  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F1B8C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806F1B90  40 81 00 A4 */	ble lbl_806F1C34
/* 806F1B94  38 61 00 10 */	addi r3, r1, 0x10
/* 806F1B98  38 9B 05 B8 */	addi r4, r27, 0x5b8
/* 806F1B9C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 806F1BA0  4B B7 4F 94 */	b __mi__4cXyzCFRC3Vec
/* 806F1BA4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 806F1BA8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806F1BAC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806F1BB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806F1BB4  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 806F1BB8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 806F1BBC  4B B7 5A B8 */	b cM_atan2s__Fff
/* 806F1BC0  7C 64 07 34 */	extsh r4, r3
/* 806F1BC4  38 7B 04 DE */	addi r3, r27, 0x4de
/* 806F1BC8  38 A0 00 08 */	li r5, 8
/* 806F1BCC  38 C0 08 00 */	li r6, 0x800
/* 806F1BD0  4B B7 EA 38 */	b cLib_addCalcAngleS2__FPssss
/* 806F1BD4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806F1BD8  EC 20 00 32 */	fmuls f1, f0, f0
/* 806F1BDC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806F1BE0  EC 00 00 32 */	fmuls f0, f0, f0
/* 806F1BE4  EC 41 00 2A */	fadds f2, f1, f0
/* 806F1BE8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F1BEC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806F1BF0  40 81 00 0C */	ble lbl_806F1BFC
/* 806F1BF4  FC 00 10 34 */	frsqrte f0, f2
/* 806F1BF8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806F1BFC:
/* 806F1BFC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 806F1C00  4B B7 5A 74 */	b cM_atan2s__Fff
/* 806F1C04  7C 03 00 D0 */	neg r0, r3
/* 806F1C08  7C 04 07 34 */	extsh r4, r0
/* 806F1C0C  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 806F1C10  38 A0 00 02 */	li r5, 2
/* 806F1C14  38 C0 10 00 */	li r6, 0x1000
/* 806F1C18  4B B7 E9 F0 */	b cLib_addCalcAngleS2__FPssss
/* 806F1C1C  38 7B 04 E4 */	addi r3, r27, 0x4e4
/* 806F1C20  A8 9B 04 DC */	lha r4, 0x4dc(r27)
/* 806F1C24  38 A0 00 02 */	li r5, 2
/* 806F1C28  38 C0 20 00 */	li r6, 0x2000
/* 806F1C2C  4B B7 E9 DC */	b cLib_addCalcAngleS2__FPssss
/* 806F1C30  48 00 00 2C */	b lbl_806F1C5C
lbl_806F1C34:
/* 806F1C34  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 806F1C38  7F 84 E3 78 */	mr r4, r28
/* 806F1C3C  38 A0 00 04 */	li r5, 4
/* 806F1C40  38 C0 04 00 */	li r6, 0x400
/* 806F1C44  4B B7 E9 C4 */	b cLib_addCalcAngleS2__FPssss
/* 806F1C48  38 7B 04 E4 */	addi r3, r27, 0x4e4
/* 806F1C4C  A8 9B 04 DC */	lha r4, 0x4dc(r27)
/* 806F1C50  38 A0 00 08 */	li r5, 8
/* 806F1C54  38 C0 10 00 */	li r6, 0x1000
/* 806F1C58  4B B7 E9 B0 */	b cLib_addCalcAngleS2__FPssss
lbl_806F1C5C:
/* 806F1C5C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 806F1C60  FC 20 F8 90 */	fmr f1, f31
/* 806F1C64  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 806F1C68  FC 60 F0 90 */	fmr f3, f30
/* 806F1C6C  4B B7 DD D0 */	b cLib_addCalc2__FPffff
/* 806F1C70  7F A3 EB 78 */	mr r3, r29
/* 806F1C74  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806F1C78  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806F1C7C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 806F1C80  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 806F1C84  39 61 00 60 */	addi r11, r1, 0x60
/* 806F1C88  4B C7 05 98 */	b _restgpr_27
/* 806F1C8C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806F1C90  7C 08 03 A6 */	mtlr r0
/* 806F1C94  38 21 00 80 */	addi r1, r1, 0x80
/* 806F1C98  4E 80 00 20 */	blr 
