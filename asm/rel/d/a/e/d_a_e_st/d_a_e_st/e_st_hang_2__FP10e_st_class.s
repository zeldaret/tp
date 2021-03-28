lbl_807A17DC:
/* 807A17DC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807A17E0  7C 08 02 A6 */	mflr r0
/* 807A17E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 807A17E8  39 61 00 60 */	addi r11, r1, 0x60
/* 807A17EC  4B BC 09 E0 */	b _savegpr_25
/* 807A17F0  7C 7D 1B 78 */	mr r29, r3
/* 807A17F4  3C 60 80 7A */	lis r3, lit_3903@ha
/* 807A17F8  3B C3 68 24 */	addi r30, r3, lit_3903@l
/* 807A17FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A1800  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807A1804  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 807A1808  3B 60 00 00 */	li r27, 0
/* 807A180C  3B 40 00 00 */	li r26, 0
/* 807A1810  3B 20 00 00 */	li r25, 0
/* 807A1814  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 807A1818  2C 00 00 02 */	cmpwi r0, 2
/* 807A181C  41 82 01 E0 */	beq lbl_807A19FC
/* 807A1820  40 80 00 14 */	bge lbl_807A1834
/* 807A1824  2C 00 00 00 */	cmpwi r0, 0
/* 807A1828  41 82 00 1C */	beq lbl_807A1844
/* 807A182C  40 80 00 38 */	bge lbl_807A1864
/* 807A1830  48 00 04 A0 */	b lbl_807A1CD0
lbl_807A1834:
/* 807A1834  2C 00 00 04 */	cmpwi r0, 4
/* 807A1838  41 82 04 48 */	beq lbl_807A1C80
/* 807A183C  40 80 04 94 */	bge lbl_807A1CD0
/* 807A1840  48 00 03 54 */	b lbl_807A1B94
lbl_807A1844:
/* 807A1844  38 00 00 01 */	li r0, 1
/* 807A1848  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A184C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807A1850  4B AC 61 04 */	b cM_rndF__Ff
/* 807A1854  FC 00 08 1E */	fctiwz f0, f1
/* 807A1858  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807A185C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807A1860  B0 1D 06 84 */	sth r0, 0x684(r29)
lbl_807A1864:
/* 807A1864  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A1868  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807A186C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A1870  FC 00 02 10 */	fabs f0, f0
/* 807A1874  FC 00 00 18 */	frsp f0, f0
/* 807A1878  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807A187C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807A1880  40 80 00 60 */	bge lbl_807A18E0
/* 807A1884  80 1D 06 74 */	lwz r0, 0x674(r29)
/* 807A1888  2C 00 00 12 */	cmpwi r0, 0x12
/* 807A188C  41 82 00 54 */	beq lbl_807A18E0
/* 807A1890  7F A3 EB 78 */	mr r3, r29
/* 807A1894  38 80 00 12 */	li r4, 0x12
/* 807A1898  38 A0 00 02 */	li r5, 2
/* 807A189C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A18A0  4B FF C5 AD */	bl anm_init__FP10e_st_classifUcf
/* 807A18A4  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 807A18A8  4B AC 60 AC */	b cM_rndF__Ff
/* 807A18AC  FC 00 08 1E */	fctiwz f0, f1
/* 807A18B0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807A18B4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807A18B8  7C 00 07 34 */	extsh r0, r0
/* 807A18BC  C8 3E 00 D0 */	lfd f1, 0xd0(r30)
/* 807A18C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807A18C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A18C8  3C 00 43 30 */	lis r0, 0x4330
/* 807A18CC  90 01 00 30 */	stw r0, 0x30(r1)
/* 807A18D0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 807A18D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 807A18D8  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807A18DC  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_807A18E0:
/* 807A18E0  A8 1D 06 7C */	lha r0, 0x67c(r29)
/* 807A18E4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 807A18E8  40 82 00 40 */	bne lbl_807A1928
/* 807A18EC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807A18F0  4B AC 60 64 */	b cM_rndF__Ff
/* 807A18F4  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 807A18F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A18FC  40 80 00 2C */	bge lbl_807A1928
/* 807A1900  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B8@ha */
/* 807A1904  38 03 00 B8 */	addi r0, r3, 0x00B8 /* 0x000700B8@l */
/* 807A1908  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A190C  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807A1910  38 81 00 14 */	addi r4, r1, 0x14
/* 807A1914  38 A0 FF FF */	li r5, -1
/* 807A1918  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 807A191C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A1920  7D 89 03 A6 */	mtctr r12
/* 807A1924  4E 80 04 21 */	bctrl 
lbl_807A1928:
/* 807A1928  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807A192C  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 807A1930  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 807A1934  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 807A1938  4B AC E1 04 */	b cLib_addCalc2__FPffff
/* 807A193C  A8 1D 06 84 */	lha r0, 0x684(r29)
/* 807A1940  2C 00 00 00 */	cmpwi r0, 0
/* 807A1944  40 82 00 28 */	bne lbl_807A196C
/* 807A1948  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A194C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807A1950  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A1954  FC 00 02 10 */	fabs f0, f0
/* 807A1958  FC 20 00 18 */	frsp f1, f0
/* 807A195C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807A1960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A1964  40 80 00 08 */	bge lbl_807A196C
/* 807A1968  3B 60 00 01 */	li r27, 1
lbl_807A196C:
/* 807A196C  7F A3 EB 78 */	mr r3, r29
/* 807A1970  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A1974  4B 87 8F F0 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A1978  C0 1D 07 D8 */	lfs f0, 0x7d8(r29)
/* 807A197C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A1980  40 80 03 50 */	bge lbl_807A1CD0
/* 807A1984  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A1988  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807A198C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A1990  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A1994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A1998  40 81 03 38 */	ble lbl_807A1CD0
/* 807A199C  38 00 00 02 */	li r0, 2
/* 807A19A0  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A19A4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807A19A8  D0 1D 07 EC */	stfs f0, 0x7ec(r29)
/* 807A19AC  38 00 00 00 */	li r0, 0
/* 807A19B0  B0 1D 07 F0 */	sth r0, 0x7f0(r29)
/* 807A19B4  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 807A19B8  4B AC 5F 9C */	b cM_rndF__Ff
/* 807A19BC  FC 00 08 1E */	fctiwz f0, f1
/* 807A19C0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807A19C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A19C8  B0 1D 07 F2 */	sth r0, 0x7f2(r29)
/* 807A19CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007016E@ha */
/* 807A19D0  38 03 01 6E */	addi r0, r3, 0x016E /* 0x0007016E@l */
/* 807A19D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A19D8  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807A19DC  38 81 00 10 */	addi r4, r1, 0x10
/* 807A19E0  38 A0 00 00 */	li r5, 0
/* 807A19E4  38 C0 FF FF */	li r6, -1
/* 807A19E8  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 807A19EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A19F0  7D 89 03 A6 */	mtctr r12
/* 807A19F4  4E 80 04 21 */	bctrl 
/* 807A19F8  48 00 02 D8 */	b lbl_807A1CD0
lbl_807A19FC:
/* 807A19FC  88 1D 05 B5 */	lbz r0, 0x5b5(r29)
/* 807A1A00  28 00 00 04 */	cmplwi r0, 4
/* 807A1A04  40 82 00 20 */	bne lbl_807A1A24
/* 807A1A08  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 807A1A0C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807A1A10  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807A1A14  EC 01 00 2A */	fadds f0, f1, f0
/* 807A1A18  EC 02 00 2A */	fadds f0, f2, f0
/* 807A1A1C  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 807A1A20  48 00 00 14 */	b lbl_807A1A34
lbl_807A1A24:
/* 807A1A24  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807A1A28  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807A1A2C  EC 01 00 2A */	fadds f0, f1, f0
/* 807A1A30  D0 1D 06 94 */	stfs f0, 0x694(r29)
lbl_807A1A34:
/* 807A1A34  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807A1A38  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A1A3C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A1A40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807A1A44  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807A1A48  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 807A1A4C  38 61 00 18 */	addi r3, r1, 0x18
/* 807A1A50  4B 87 C2 6C */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 807A1A54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A1A58  41 82 00 44 */	beq lbl_807A1A9C
/* 807A1A5C  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 807A1A60  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 807A1A64  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 807A1A68  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 807A1A6C  EC 01 00 2A */	fadds f0, f1, f0
/* 807A1A70  EC 22 00 2A */	fadds f1, f2, f0
/* 807A1A74  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 807A1A78  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807A1A7C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 807A1A80  40 80 00 08 */	bge lbl_807A1A88
/* 807A1A84  D0 3D 06 94 */	stfs f1, 0x694(r29)
lbl_807A1A88:
/* 807A1A88  3C 60 80 7A */	lis r3, small@ha
/* 807A1A8C  80 03 6D E0 */	lwz r0, small@l(r3)
/* 807A1A90  2C 00 00 00 */	cmpwi r0, 0
/* 807A1A94  40 82 00 08 */	bne lbl_807A1A9C
/* 807A1A98  3B 20 00 01 */	li r25, 1
lbl_807A1A9C:
/* 807A1A9C  A8 1D 06 82 */	lha r0, 0x682(r29)
/* 807A1AA0  2C 00 00 3A */	cmpwi r0, 0x3a
/* 807A1AA4  40 82 00 30 */	bne lbl_807A1AD4
/* 807A1AA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700BC@ha */
/* 807A1AAC  38 03 00 BC */	addi r0, r3, 0x00BC /* 0x000700BC@l */
/* 807A1AB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807A1AB4  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807A1AB8  38 81 00 0C */	addi r4, r1, 0xc
/* 807A1ABC  38 A0 00 00 */	li r5, 0
/* 807A1AC0  38 C0 FF FF */	li r6, -1
/* 807A1AC4  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 807A1AC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A1ACC  7D 89 03 A6 */	mtctr r12
/* 807A1AD0  4E 80 04 21 */	bctrl 
lbl_807A1AD4:
/* 807A1AD4  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807A1AD8  C0 3D 06 94 */	lfs f1, 0x694(r29)
/* 807A1ADC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A1AE0  C0 7E 00 84 */	lfs f3, 0x84(r30)
/* 807A1AE4  4B AC DF 58 */	b cLib_addCalc2__FPffff
/* 807A1AE8  7F 83 E3 78 */	mr r3, r28
/* 807A1AEC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 807A1AF0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 807A1AF4  7D 89 03 A6 */	mtctr r12
/* 807A1AF8  4E 80 04 21 */	bctrl 
/* 807A1AFC  28 03 00 00 */	cmplwi r3, 0
/* 807A1B00  40 82 01 D0 */	bne lbl_807A1CD0
/* 807A1B04  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A1B08  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807A1B0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A1B10  FC 00 02 10 */	fabs f0, f0
/* 807A1B14  FC 20 00 18 */	frsp f1, f0
/* 807A1B18  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 807A1B1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A1B20  40 80 01 B0 */	bge lbl_807A1CD0
/* 807A1B24  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807A1B28  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807A1B2C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 807A1B30  40 82 00 28 */	bne lbl_807A1B58
/* 807A1B34  88 1D 05 B5 */	lbz r0, 0x5b5(r29)
/* 807A1B38  28 00 00 04 */	cmplwi r0, 4
/* 807A1B3C  40 82 00 1C */	bne lbl_807A1B58
/* 807A1B40  38 00 00 0E */	li r0, 0xe
/* 807A1B44  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A1B48  38 00 00 00 */	li r0, 0
/* 807A1B4C  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1B50  38 60 00 00 */	li r3, 0
/* 807A1B54  48 00 02 4C */	b lbl_807A1DA0
lbl_807A1B58:
/* 807A1B58  7F 20 07 75 */	extsb. r0, r25
/* 807A1B5C  41 82 00 0C */	beq lbl_807A1B68
/* 807A1B60  3B 40 00 01 */	li r26, 1
/* 807A1B64  48 00 01 6C */	b lbl_807A1CD0
lbl_807A1B68:
/* 807A1B68  7F A3 EB 78 */	mr r3, r29
/* 807A1B6C  38 80 00 14 */	li r4, 0x14
/* 807A1B70  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807A1B74  38 A0 00 00 */	li r5, 0
/* 807A1B78  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A1B7C  4B FF C2 D1 */	bl anm_init__FP10e_st_classifUcf
/* 807A1B80  38 00 00 03 */	li r0, 3
/* 807A1B84  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1B88  38 00 00 3C */	li r0, 0x3c
/* 807A1B8C  B0 1D 06 82 */	sth r0, 0x682(r29)
/* 807A1B90  48 00 01 40 */	b lbl_807A1CD0
lbl_807A1B94:
/* 807A1B94  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807A1B98  38 80 00 01 */	li r4, 1
/* 807A1B9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A1BA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A1BA4  40 82 00 18 */	bne lbl_807A1BBC
/* 807A1BA8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A1BAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A1BB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A1BB4  41 82 00 08 */	beq lbl_807A1BBC
/* 807A1BB8  38 80 00 00 */	li r4, 0
lbl_807A1BBC:
/* 807A1BBC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A1BC0  41 82 00 1C */	beq lbl_807A1BDC
/* 807A1BC4  7F A3 EB 78 */	mr r3, r29
/* 807A1BC8  38 80 00 13 */	li r4, 0x13
/* 807A1BCC  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807A1BD0  38 A0 00 02 */	li r5, 2
/* 807A1BD4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A1BD8  4B FF C2 75 */	bl anm_init__FP10e_st_classifUcf
lbl_807A1BDC:
/* 807A1BDC  38 00 00 01 */	li r0, 1
/* 807A1BE0  98 1D 05 66 */	stb r0, 0x566(r29)
/* 807A1BE4  A8 1D 06 82 */	lha r0, 0x682(r29)
/* 807A1BE8  2C 00 00 00 */	cmpwi r0, 0
/* 807A1BEC  40 82 00 60 */	bne lbl_807A1C4C
/* 807A1BF0  7F A3 EB 78 */	mr r3, r29
/* 807A1BF4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A1BF8  4B 87 8D 6C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A1BFC  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 807A1C00  C0 1D 07 D8 */	lfs f0, 0x7d8(r29)
/* 807A1C04  EC 02 00 2A */	fadds f0, f2, f0
/* 807A1C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A1C0C  41 81 00 20 */	bgt lbl_807A1C2C
/* 807A1C10  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A1C14  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807A1C18  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A1C1C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A1C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A1C24  4C 40 13 82 */	cror 2, 0, 2
/* 807A1C28  40 82 00 24 */	bne lbl_807A1C4C
lbl_807A1C2C:
/* 807A1C2C  38 00 00 01 */	li r0, 1
/* 807A1C30  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1C34  7F A3 EB 78 */	mr r3, r29
/* 807A1C38  38 80 00 16 */	li r4, 0x16
/* 807A1C3C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807A1C40  38 A0 00 02 */	li r5, 2
/* 807A1C44  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A1C48  4B FF C2 05 */	bl anm_init__FP10e_st_classifUcf
lbl_807A1C4C:
/* 807A1C4C  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 807A1C50  4B 8E 26 70 */	b ChkAtHit__12dCcD_GObjInfFv
/* 807A1C54  28 03 00 00 */	cmplwi r3, 0
/* 807A1C58  41 82 00 78 */	beq lbl_807A1CD0
/* 807A1C5C  38 00 00 04 */	li r0, 4
/* 807A1C60  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1C64  7F A3 EB 78 */	mr r3, r29
/* 807A1C68  38 80 00 15 */	li r4, 0x15
/* 807A1C6C  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807A1C70  38 A0 00 00 */	li r5, 0
/* 807A1C74  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A1C78  4B FF C1 D5 */	bl anm_init__FP10e_st_classifUcf
/* 807A1C7C  48 00 00 54 */	b lbl_807A1CD0
lbl_807A1C80:
/* 807A1C80  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807A1C84  38 80 00 01 */	li r4, 1
/* 807A1C88  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A1C8C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A1C90  40 82 00 18 */	bne lbl_807A1CA8
/* 807A1C94  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A1C98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A1C9C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A1CA0  41 82 00 08 */	beq lbl_807A1CA8
/* 807A1CA4  38 80 00 00 */	li r4, 0
lbl_807A1CA8:
/* 807A1CA8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A1CAC  41 82 00 24 */	beq lbl_807A1CD0
/* 807A1CB0  7F A3 EB 78 */	mr r3, r29
/* 807A1CB4  38 80 00 13 */	li r4, 0x13
/* 807A1CB8  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807A1CBC  38 A0 00 02 */	li r5, 2
/* 807A1CC0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A1CC4  4B FF C1 89 */	bl anm_init__FP10e_st_classifUcf
/* 807A1CC8  38 00 00 03 */	li r0, 3
/* 807A1CCC  B0 1D 06 80 */	sth r0, 0x680(r29)
lbl_807A1CD0:
/* 807A1CD0  7F A3 EB 78 */	mr r3, r29
/* 807A1CD4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A1CD8  4B 87 8A 38 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A1CDC  7C 64 1B 78 */	mr r4, r3
/* 807A1CE0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807A1CE4  38 A0 00 10 */	li r5, 0x10
/* 807A1CE8  38 C0 04 00 */	li r6, 0x400
/* 807A1CEC  4B AC E9 1C */	b cLib_addCalcAngleS2__FPssss
/* 807A1CF0  7F 40 07 75 */	extsb. r0, r26
/* 807A1CF4  40 82 00 20 */	bne lbl_807A1D14
/* 807A1CF8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807A1CFC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807A1D00  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 807A1D04  41 82 00 98 */	beq lbl_807A1D9C
/* 807A1D08  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807A1D0C  28 00 00 01 */	cmplwi r0, 1
/* 807A1D10  40 82 00 8C */	bne lbl_807A1D9C
lbl_807A1D14:
/* 807A1D14  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007016D@ha */
/* 807A1D18  38 03 01 6D */	addi r0, r3, 0x016D /* 0x0007016D@l */
/* 807A1D1C  90 01 00 08 */	stw r0, 8(r1)
/* 807A1D20  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807A1D24  38 81 00 08 */	addi r4, r1, 8
/* 807A1D28  38 A0 00 00 */	li r5, 0
/* 807A1D2C  38 C0 FF FF */	li r6, -1
/* 807A1D30  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 807A1D34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A1D38  7D 89 03 A6 */	mtctr r12
/* 807A1D3C  4E 80 04 21 */	bctrl 
/* 807A1D40  38 00 00 0C */	li r0, 0xc
/* 807A1D44  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A1D48  38 00 00 00 */	li r0, 0
/* 807A1D4C  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1D50  C0 1D 07 10 */	lfs f0, 0x710(r29)
/* 807A1D54  D0 1D 07 50 */	stfs f0, 0x750(r29)
/* 807A1D58  C0 1D 07 14 */	lfs f0, 0x714(r29)
/* 807A1D5C  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 807A1D60  C0 1D 07 18 */	lfs f0, 0x718(r29)
/* 807A1D64  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 807A1D68  38 00 00 02 */	li r0, 2
/* 807A1D6C  98 1D 07 20 */	stb r0, 0x720(r29)
/* 807A1D70  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 807A1D74  C0 3D 07 48 */	lfs f1, 0x748(r29)
/* 807A1D78  C0 1D 07 54 */	lfs f0, 0x754(r29)
/* 807A1D7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A1D80  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A1D84  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 807A1D88  C0 3D 07 5C */	lfs f1, 0x75c(r29)
/* 807A1D8C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807A1D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A1D94  40 81 00 08 */	ble lbl_807A1D9C
/* 807A1D98  D0 1D 07 5C */	stfs f0, 0x75c(r29)
lbl_807A1D9C:
/* 807A1D9C  7F 63 DB 78 */	mr r3, r27
lbl_807A1DA0:
/* 807A1DA0  39 61 00 60 */	addi r11, r1, 0x60
/* 807A1DA4  4B BC 04 74 */	b _restgpr_25
/* 807A1DA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807A1DAC  7C 08 03 A6 */	mtlr r0
/* 807A1DB0  38 21 00 60 */	addi r1, r1, 0x60
/* 807A1DB4  4E 80 00 20 */	blr 
