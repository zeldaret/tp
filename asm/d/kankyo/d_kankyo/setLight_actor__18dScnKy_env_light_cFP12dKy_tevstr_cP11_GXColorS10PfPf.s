lbl_801A16C0:
/* 801A16C0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801A16C4  7C 08 02 A6 */	mflr r0
/* 801A16C8  90 01 01 04 */	stw r0, 0x104(r1)
/* 801A16CC  39 61 01 00 */	addi r11, r1, 0x100
/* 801A16D0  48 1C 0A D9 */	bl _savegpr_16
/* 801A16D4  7C 76 1B 78 */	mr r22, r3
/* 801A16D8  7C 97 23 78 */	mr r23, r4
/* 801A16DC  7C B8 2B 78 */	mr r24, r5
/* 801A16E0  7C D9 33 78 */	mr r25, r6
/* 801A16E4  7C FA 3B 78 */	mr r26, r7
/* 801A16E8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A16EC  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A16F0  88 04 12 C2 */	lbz r0, 0x12c2(r4)
/* 801A16F4  98 17 03 7F */	stb r0, 0x37f(r23)
/* 801A16F8  88 04 12 C3 */	lbz r0, 0x12c3(r4)
/* 801A16FC  98 17 03 7E */	stb r0, 0x37e(r23)
/* 801A1700  88 77 03 7F */	lbz r3, 0x37f(r23)
/* 801A1704  88 17 03 7E */	lbz r0, 0x37e(r23)
/* 801A1708  7C 03 00 40 */	cmplw r3, r0
/* 801A170C  41 82 00 10 */	beq lbl_801A171C
/* 801A1710  C0 04 11 DC */	lfs f0, 0x11dc(r4)
/* 801A1714  D0 17 03 70 */	stfs f0, 0x370(r23)
/* 801A1718  48 00 00 1C */	b lbl_801A1734
lbl_801A171C:
/* 801A171C  88 77 03 7D */	lbz r3, 0x37d(r23)
/* 801A1720  88 17 03 7C */	lbz r0, 0x37c(r23)
/* 801A1724  7C 03 00 40 */	cmplw r3, r0
/* 801A1728  40 82 00 0C */	bne lbl_801A1734
/* 801A172C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A1730  D0 17 03 70 */	stfs f0, 0x370(r23)
lbl_801A1734:
/* 801A1734  38 01 00 20 */	addi r0, r1, 0x20
/* 801A1738  90 01 00 08 */	stw r0, 8(r1)
/* 801A173C  38 01 00 3C */	addi r0, r1, 0x3c
/* 801A1740  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A1744  38 01 00 38 */	addi r0, r1, 0x38
/* 801A1748  90 01 00 10 */	stw r0, 0x10(r1)
/* 801A174C  38 01 00 34 */	addi r0, r1, 0x34
/* 801A1750  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A1754  38 17 03 70 */	addi r0, r23, 0x370
/* 801A1758  90 01 00 18 */	stw r0, 0x18(r1)
/* 801A175C  38 17 03 7B */	addi r0, r23, 0x37b
/* 801A1760  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A1764  7E C3 B3 78 */	mr r3, r22
/* 801A1768  38 97 03 7D */	addi r4, r23, 0x37d
/* 801A176C  38 B7 03 7C */	addi r5, r23, 0x37c
/* 801A1770  38 D7 03 7F */	addi r6, r23, 0x37f
/* 801A1774  38 F7 03 7E */	addi r7, r23, 0x37e
/* 801A1778  39 01 00 23 */	addi r8, r1, 0x23
/* 801A177C  39 21 00 21 */	addi r9, r1, 0x21
/* 801A1780  39 41 00 22 */	addi r10, r1, 0x22
/* 801A1784  4B FF E4 51 */	bl setLight_palno_get__18dScnKy_env_light_cFPUcPUcPUcPUcPUcPUcPUcPUcPfPiPiPfPUc
/* 801A1788  88 01 00 23 */	lbz r0, 0x23(r1)
/* 801A178C  28 00 00 FF */	cmplwi r0, 0xff
/* 801A1790  40 82 00 28 */	bne lbl_801A17B8
/* 801A1794  38 80 00 FF */	li r4, 0xff
/* 801A1798  38 60 00 00 */	li r3, 0
/* 801A179C  38 00 00 04 */	li r0, 4
/* 801A17A0  7C 09 03 A6 */	mtctr r0
lbl_801A17A4:
/* 801A17A4  B0 97 03 48 */	sth r4, 0x348(r23)
/* 801A17A8  B0 77 03 4A */	sth r3, 0x34a(r23)
/* 801A17AC  B0 77 03 4C */	sth r3, 0x34c(r23)
/* 801A17B0  42 00 FF F4 */	bdnz lbl_801A17A4
/* 801A17B4  48 00 05 98 */	b lbl_801A1D4C
lbl_801A17B8:
/* 801A17B8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A17BC  39 23 CA 54 */	addi r9, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A17C0  80 69 00 04 */	lwz r3, 4(r9)
/* 801A17C4  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A17C8  7F C3 02 14 */	add r30, r3, r0
/* 801A17CC  88 01 00 21 */	lbz r0, 0x21(r1)
/* 801A17D0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A17D4  7F A3 02 14 */	add r29, r3, r0
/* 801A17D8  88 01 00 22 */	lbz r0, 0x22(r1)
/* 801A17DC  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A17E0  7F 83 02 14 */	add r28, r3, r0
/* 801A17E4  88 01 00 20 */	lbz r0, 0x20(r1)
/* 801A17E8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A17EC  7F 63 02 14 */	add r27, r3, r0
/* 801A17F0  88 17 03 7A */	lbz r0, 0x37a(r23)
/* 801A17F4  28 00 00 0A */	cmplwi r0, 0xa
/* 801A17F8  41 82 00 18 */	beq lbl_801A1810
/* 801A17FC  28 00 00 09 */	cmplwi r0, 9
/* 801A1800  41 82 00 10 */	beq lbl_801A1810
/* 801A1804  A0 17 03 78 */	lhz r0, 0x378(r23)
/* 801A1808  28 00 00 00 */	cmplwi r0, 0
/* 801A180C  41 82 00 54 */	beq lbl_801A1860
lbl_801A1810:
/* 801A1810  80 76 11 60 */	lwz r3, 0x1160(r22)
/* 801A1814  80 16 11 64 */	lwz r0, 0x1164(r22)
/* 801A1818  90 61 00 80 */	stw r3, 0x80(r1)
/* 801A181C  90 01 00 84 */	stw r0, 0x84(r1)
/* 801A1820  38 77 03 48 */	addi r3, r23, 0x348
/* 801A1824  7F C4 F3 78 */	mr r4, r30
/* 801A1828  7F 85 E3 78 */	mr r5, r28
/* 801A182C  7F A6 EB 78 */	mr r6, r29
/* 801A1830  7F 67 DB 78 */	mr r7, r27
/* 801A1834  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1838  C0 57 03 70 */	lfs f2, 0x370(r23)
/* 801A183C  39 01 00 80 */	addi r8, r1, 0x80
/* 801A1840  C0 77 03 74 */	lfs f3, 0x374(r23)
/* 801A1844  3D 20 80 43 */	lis r9, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1848  39 29 CA 54 */	addi r9, r9, g_env_light@l /* 0x8042CA54@l */
/* 801A184C  C0 09 11 FC */	lfs f0, 0x11fc(r9)
/* 801A1850  EC 00 00 32 */	fmuls f0, f0, f0
/* 801A1854  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A1858  4B FF EA E9 */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A185C  48 00 00 50 */	b lbl_801A18AC
lbl_801A1860:
/* 801A1860  80 76 11 60 */	lwz r3, 0x1160(r22)
/* 801A1864  80 16 11 64 */	lwz r0, 0x1164(r22)
/* 801A1868  90 61 00 78 */	stw r3, 0x78(r1)
/* 801A186C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801A1870  38 77 03 48 */	addi r3, r23, 0x348
/* 801A1874  7F C4 F3 78 */	mr r4, r30
/* 801A1878  7F 85 E3 78 */	mr r5, r28
/* 801A187C  7F A6 EB 78 */	mr r6, r29
/* 801A1880  7F 67 DB 78 */	mr r7, r27
/* 801A1884  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1888  C0 57 03 70 */	lfs f2, 0x370(r23)
/* 801A188C  39 01 00 78 */	addi r8, r1, 0x78
/* 801A1890  C0 97 03 74 */	lfs f4, 0x374(r23)
/* 801A1894  C0 69 12 10 */	lfs f3, 0x1210(r9)
/* 801A1898  C0 09 11 FC */	lfs f0, 0x11fc(r9)
/* 801A189C  EC 00 00 32 */	fmuls f0, f0, f0
/* 801A18A0  EC 03 00 32 */	fmuls f0, f3, f0
/* 801A18A4  EC 64 00 32 */	fmuls f3, f4, f0
/* 801A18A8  4B FF EA 99 */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
lbl_801A18AC:
/* 801A18AC  4B FB DB 79 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A18B0  2C 03 00 00 */	cmpwi r3, 0
/* 801A18B4  41 82 00 0C */	beq lbl_801A18C0
/* 801A18B8  38 77 03 48 */	addi r3, r23, 0x348
/* 801A18BC  4B FF AA CD */	bl dKy_WolfPowerup_AmbCol__FP11_GXColorS10
lbl_801A18C0:
/* 801A18C0  3B E0 00 00 */	li r31, 0
/* 801A18C4  3A A0 00 00 */	li r21, 0
/* 801A18C8  3A 80 00 00 */	li r20, 0
/* 801A18CC  7F F3 FB 78 */	mr r19, r31
/* 801A18D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A18D4  3A 43 CA 54 */	addi r18, r3, g_env_light@l /* 0x8042CA54@l */
lbl_801A18D8:
/* 801A18D8  3A 13 00 74 */	addi r16, r19, 0x74
/* 801A18DC  7E 17 82 14 */	add r16, r23, r16
/* 801A18E0  2C 1F 00 00 */	cmpwi r31, 0
/* 801A18E4  40 82 01 7C */	bne lbl_801A1A60
/* 801A18E8  88 17 03 7A */	lbz r0, 0x37a(r23)
/* 801A18EC  28 00 00 0A */	cmplwi r0, 0xa
/* 801A18F0  41 82 00 18 */	beq lbl_801A1908
/* 801A18F4  28 00 00 09 */	cmplwi r0, 9
/* 801A18F8  41 82 00 10 */	beq lbl_801A1908
/* 801A18FC  A0 17 03 78 */	lhz r0, 0x378(r23)
/* 801A1900  28 00 00 00 */	cmplwi r0, 0
/* 801A1904  41 82 00 C4 */	beq lbl_801A19C8
lbl_801A1908:
/* 801A1908  80 76 11 60 */	lwz r3, 0x1160(r22)
/* 801A190C  80 16 11 64 */	lwz r0, 0x1164(r22)
/* 801A1910  90 61 00 70 */	stw r3, 0x70(r1)
/* 801A1914  90 01 00 74 */	stw r0, 0x74(r1)
/* 801A1918  3A 21 00 88 */	addi r17, r1, 0x88
/* 801A191C  7E 31 AA 14 */	add r17, r17, r21
/* 801A1920  7E 23 8B 78 */	mr r3, r17
/* 801A1924  38 94 00 0F */	addi r4, r20, 0xf
/* 801A1928  7C 9E 22 14 */	add r4, r30, r4
/* 801A192C  38 B4 00 0F */	addi r5, r20, 0xf
/* 801A1930  7C BC 2A 14 */	add r5, r28, r5
/* 801A1934  38 D4 00 0F */	addi r6, r20, 0xf
/* 801A1938  7C DD 32 14 */	add r6, r29, r6
/* 801A193C  38 F4 00 0F */	addi r7, r20, 0xf
/* 801A1940  7C FB 3A 14 */	add r7, r27, r7
/* 801A1944  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1948  C0 57 03 70 */	lfs f2, 0x370(r23)
/* 801A194C  39 01 00 70 */	addi r8, r1, 0x70
/* 801A1950  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A1954  4B FF E9 ED */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A1958  4B FB DA CD */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A195C  2C 03 00 00 */	cmpwi r3, 0
/* 801A1960  41 82 00 14 */	beq lbl_801A1974
/* 801A1964  38 00 00 00 */	li r0, 0
/* 801A1968  B0 11 00 00 */	sth r0, 0(r17)
/* 801A196C  B0 11 00 02 */	sth r0, 2(r17)
/* 801A1970  B0 11 00 04 */	sth r0, 4(r17)
lbl_801A1974:
/* 801A1974  A8 11 00 00 */	lha r0, 0(r17)
/* 801A1978  98 01 00 30 */	stb r0, 0x30(r1)
/* 801A197C  A8 11 00 02 */	lha r0, 2(r17)
/* 801A1980  98 01 00 31 */	stb r0, 0x31(r1)
/* 801A1984  A8 11 00 04 */	lha r0, 4(r17)
/* 801A1988  98 01 00 32 */	stb r0, 0x32(r1)
/* 801A198C  A8 11 00 06 */	lha r0, 6(r17)
/* 801A1990  98 01 00 33 */	stb r0, 0x33(r1)
/* 801A1994  38 61 00 30 */	addi r3, r1, 0x30
/* 801A1998  C0 37 03 74 */	lfs f1, 0x374(r23)
/* 801A199C  4B FF CA 95 */	bl dKy_light_influence_col__FP8_GXColorf
/* 801A19A0  90 61 00 28 */	stw r3, 0x28(r1)
/* 801A19A4  88 01 00 28 */	lbz r0, 0x28(r1)
/* 801A19A8  98 10 00 18 */	stb r0, 0x18(r16)
/* 801A19AC  88 01 00 29 */	lbz r0, 0x29(r1)
/* 801A19B0  98 10 00 19 */	stb r0, 0x19(r16)
/* 801A19B4  88 01 00 2A */	lbz r0, 0x2a(r1)
/* 801A19B8  98 10 00 1A */	stb r0, 0x1a(r16)
/* 801A19BC  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 801A19C0  98 10 00 1B */	stb r0, 0x1b(r16)
/* 801A19C4  48 00 02 20 */	b lbl_801A1BE4
lbl_801A19C8:
/* 801A19C8  80 76 11 60 */	lwz r3, 0x1160(r22)
/* 801A19CC  80 16 11 64 */	lwz r0, 0x1164(r22)
/* 801A19D0  90 61 00 68 */	stw r3, 0x68(r1)
/* 801A19D4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801A19D8  3A 21 00 88 */	addi r17, r1, 0x88
/* 801A19DC  7E 31 AA 14 */	add r17, r17, r21
/* 801A19E0  7E 23 8B 78 */	mr r3, r17
/* 801A19E4  38 94 00 0F */	addi r4, r20, 0xf
/* 801A19E8  7C 9E 22 14 */	add r4, r30, r4
/* 801A19EC  38 B4 00 0F */	addi r5, r20, 0xf
/* 801A19F0  7C BC 2A 14 */	add r5, r28, r5
/* 801A19F4  38 D4 00 0F */	addi r6, r20, 0xf
/* 801A19F8  7C DD 32 14 */	add r6, r29, r6
/* 801A19FC  38 F4 00 0F */	addi r7, r20, 0xf
/* 801A1A00  7C FB 3A 14 */	add r7, r27, r7
/* 801A1A04  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1A08  C0 57 03 70 */	lfs f2, 0x370(r23)
/* 801A1A0C  39 01 00 68 */	addi r8, r1, 0x68
/* 801A1A10  C0 72 12 10 */	lfs f3, 0x1210(r18)
/* 801A1A14  4B FF E9 2D */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A1A18  4B FB DA 0D */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A1A1C  2C 03 00 00 */	cmpwi r3, 0
/* 801A1A20  41 82 00 14 */	beq lbl_801A1A34
/* 801A1A24  38 00 00 00 */	li r0, 0
/* 801A1A28  B0 11 00 00 */	sth r0, 0(r17)
/* 801A1A2C  B0 11 00 02 */	sth r0, 2(r17)
/* 801A1A30  B0 11 00 04 */	sth r0, 4(r17)
lbl_801A1A34:
/* 801A1A34  80 71 00 00 */	lwz r3, 0(r17)
/* 801A1A38  80 11 00 04 */	lwz r0, 4(r17)
/* 801A1A3C  90 61 00 60 */	stw r3, 0x60(r1)
/* 801A1A40  90 01 00 64 */	stw r0, 0x64(r1)
/* 801A1A44  38 70 00 18 */	addi r3, r16, 0x18
/* 801A1A48  38 81 00 60 */	addi r4, r1, 0x60
/* 801A1A4C  C0 36 12 10 */	lfs f1, 0x1210(r22)
/* 801A1A50  C0 17 03 74 */	lfs f0, 0x374(r23)
/* 801A1A54  EC 21 00 32 */	fmuls f1, f1, f0
/* 801A1A58  4B FF BB C5 */	bl kankyo_color_ratio_calc__FP8_GXColor11_GXColorS10f
/* 801A1A5C  48 00 01 88 */	b lbl_801A1BE4
lbl_801A1A60:
/* 801A1A60  88 17 03 7A */	lbz r0, 0x37a(r23)
/* 801A1A64  28 00 00 0A */	cmplwi r0, 0xa
/* 801A1A68  41 82 00 18 */	beq lbl_801A1A80
/* 801A1A6C  28 00 00 09 */	cmplwi r0, 9
/* 801A1A70  41 82 00 10 */	beq lbl_801A1A80
/* 801A1A74  A0 17 03 78 */	lhz r0, 0x378(r23)
/* 801A1A78  28 00 00 00 */	cmplwi r0, 0
/* 801A1A7C  41 82 00 C8 */	beq lbl_801A1B44
lbl_801A1A80:
/* 801A1A80  80 76 11 60 */	lwz r3, 0x1160(r22)
/* 801A1A84  80 16 11 64 */	lwz r0, 0x1164(r22)
/* 801A1A88  90 61 00 58 */	stw r3, 0x58(r1)
/* 801A1A8C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801A1A90  3A 21 00 88 */	addi r17, r1, 0x88
/* 801A1A94  7E 31 AA 14 */	add r17, r17, r21
/* 801A1A98  7E 23 8B 78 */	mr r3, r17
/* 801A1A9C  38 94 00 0F */	addi r4, r20, 0xf
/* 801A1AA0  7C 9E 22 14 */	add r4, r30, r4
/* 801A1AA4  38 B4 00 0F */	addi r5, r20, 0xf
/* 801A1AA8  7C BC 2A 14 */	add r5, r28, r5
/* 801A1AAC  38 D4 00 0F */	addi r6, r20, 0xf
/* 801A1AB0  7C DD 32 14 */	add r6, r29, r6
/* 801A1AB4  38 F4 00 0F */	addi r7, r20, 0xf
/* 801A1AB8  7C FB 3A 14 */	add r7, r27, r7
/* 801A1ABC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1AC0  C0 57 03 70 */	lfs f2, 0x370(r23)
/* 801A1AC4  39 01 00 58 */	addi r8, r1, 0x58
/* 801A1AC8  C0 12 11 FC */	lfs f0, 0x11fc(r18)
/* 801A1ACC  EC 60 00 32 */	fmuls f3, f0, f0
/* 801A1AD0  4B FF E8 71 */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A1AD4  4B FB D9 51 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A1AD8  2C 03 00 00 */	cmpwi r3, 0
/* 801A1ADC  41 82 00 14 */	beq lbl_801A1AF0
/* 801A1AE0  38 00 00 00 */	li r0, 0
/* 801A1AE4  B0 11 00 00 */	sth r0, 0(r17)
/* 801A1AE8  B0 11 00 02 */	sth r0, 2(r17)
/* 801A1AEC  B0 11 00 04 */	sth r0, 4(r17)
lbl_801A1AF0:
/* 801A1AF0  A8 11 00 00 */	lha r0, 0(r17)
/* 801A1AF4  98 01 00 2C */	stb r0, 0x2c(r1)
/* 801A1AF8  A8 11 00 02 */	lha r0, 2(r17)
/* 801A1AFC  98 01 00 2D */	stb r0, 0x2d(r1)
/* 801A1B00  A8 11 00 04 */	lha r0, 4(r17)
/* 801A1B04  98 01 00 2E */	stb r0, 0x2e(r1)
/* 801A1B08  A8 11 00 06 */	lha r0, 6(r17)
/* 801A1B0C  98 01 00 2F */	stb r0, 0x2f(r1)
/* 801A1B10  38 61 00 2C */	addi r3, r1, 0x2c
/* 801A1B14  C0 37 03 74 */	lfs f1, 0x374(r23)
/* 801A1B18  4B FF C9 19 */	bl dKy_light_influence_col__FP8_GXColorf
/* 801A1B1C  90 61 00 24 */	stw r3, 0x24(r1)
/* 801A1B20  88 01 00 24 */	lbz r0, 0x24(r1)
/* 801A1B24  98 10 00 18 */	stb r0, 0x18(r16)
/* 801A1B28  88 01 00 25 */	lbz r0, 0x25(r1)
/* 801A1B2C  98 10 00 19 */	stb r0, 0x19(r16)
/* 801A1B30  88 01 00 26 */	lbz r0, 0x26(r1)
/* 801A1B34  98 10 00 1A */	stb r0, 0x1a(r16)
/* 801A1B38  88 01 00 27 */	lbz r0, 0x27(r1)
/* 801A1B3C  98 10 00 1B */	stb r0, 0x1b(r16)
/* 801A1B40  48 00 00 A4 */	b lbl_801A1BE4
lbl_801A1B44:
/* 801A1B44  80 76 11 60 */	lwz r3, 0x1160(r22)
/* 801A1B48  80 16 11 64 */	lwz r0, 0x1164(r22)
/* 801A1B4C  90 61 00 50 */	stw r3, 0x50(r1)
/* 801A1B50  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A1B54  3A 21 00 88 */	addi r17, r1, 0x88
/* 801A1B58  7E 31 AA 14 */	add r17, r17, r21
/* 801A1B5C  7E 23 8B 78 */	mr r3, r17
/* 801A1B60  38 94 00 0F */	addi r4, r20, 0xf
/* 801A1B64  7C 9E 22 14 */	add r4, r30, r4
/* 801A1B68  38 B4 00 0F */	addi r5, r20, 0xf
/* 801A1B6C  7C BC 2A 14 */	add r5, r28, r5
/* 801A1B70  38 D4 00 0F */	addi r6, r20, 0xf
/* 801A1B74  7C DD 32 14 */	add r6, r29, r6
/* 801A1B78  38 F4 00 0F */	addi r7, r20, 0xf
/* 801A1B7C  7C FB 3A 14 */	add r7, r27, r7
/* 801A1B80  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1B84  C0 57 03 70 */	lfs f2, 0x370(r23)
/* 801A1B88  39 01 00 50 */	addi r8, r1, 0x50
/* 801A1B8C  C0 72 12 10 */	lfs f3, 0x1210(r18)
/* 801A1B90  C0 12 11 FC */	lfs f0, 0x11fc(r18)
/* 801A1B94  EC 00 00 32 */	fmuls f0, f0, f0
/* 801A1B98  EC 63 00 32 */	fmuls f3, f3, f0
/* 801A1B9C  4B FF E7 A5 */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A1BA0  4B FB D8 85 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A1BA4  2C 03 00 00 */	cmpwi r3, 0
/* 801A1BA8  41 82 00 14 */	beq lbl_801A1BBC
/* 801A1BAC  38 00 00 00 */	li r0, 0
/* 801A1BB0  B0 11 00 00 */	sth r0, 0(r17)
/* 801A1BB4  B0 11 00 02 */	sth r0, 2(r17)
/* 801A1BB8  B0 11 00 04 */	sth r0, 4(r17)
lbl_801A1BBC:
/* 801A1BBC  80 71 00 00 */	lwz r3, 0(r17)
/* 801A1BC0  80 11 00 04 */	lwz r0, 4(r17)
/* 801A1BC4  90 61 00 48 */	stw r3, 0x48(r1)
/* 801A1BC8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801A1BCC  38 70 00 18 */	addi r3, r16, 0x18
/* 801A1BD0  38 81 00 48 */	addi r4, r1, 0x48
/* 801A1BD4  C0 36 12 10 */	lfs f1, 0x1210(r22)
/* 801A1BD8  C0 17 03 74 */	lfs f0, 0x374(r23)
/* 801A1BDC  EC 21 00 32 */	fmuls f1, f1, f0
/* 801A1BE0  4B FF BA 3D */	bl kankyo_color_ratio_calc__FP8_GXColor11_GXColorS10f
lbl_801A1BE4:
/* 801A1BE4  3B FF 00 01 */	addi r31, r31, 1
/* 801A1BE8  2C 1F 00 06 */	cmpwi r31, 6
/* 801A1BEC  3A B5 00 08 */	addi r21, r21, 8
/* 801A1BF0  3A 94 00 03 */	addi r20, r20, 3
/* 801A1BF4  3A 73 00 74 */	addi r19, r19, 0x74
/* 801A1BF8  41 80 FC E0 */	blt lbl_801A18D8
/* 801A1BFC  80 76 11 B0 */	lwz r3, 0x11b0(r22)
/* 801A1C00  80 16 11 B4 */	lwz r0, 0x11b4(r22)
/* 801A1C04  90 61 00 40 */	stw r3, 0x40(r1)
/* 801A1C08  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A1C0C  7F 03 C3 78 */	mr r3, r24
/* 801A1C10  38 9E 00 21 */	addi r4, r30, 0x21
/* 801A1C14  38 BC 00 21 */	addi r5, r28, 0x21
/* 801A1C18  38 DD 00 21 */	addi r6, r29, 0x21
/* 801A1C1C  38 FB 00 21 */	addi r7, r27, 0x21
/* 801A1C20  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801A1C24  C0 57 03 70 */	lfs f2, 0x370(r23)
/* 801A1C28  39 01 00 40 */	addi r8, r1, 0x40
/* 801A1C2C  3D 20 80 43 */	lis r9, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1C30  39 29 CA 54 */	addi r9, r9, g_env_light@l /* 0x8042CA54@l */
/* 801A1C34  C0 69 12 04 */	lfs f3, 0x1204(r9)
/* 801A1C38  4B FF E7 09 */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A1C3C  88 17 03 7A */	lbz r0, 0x37a(r23)
/* 801A1C40  28 00 00 0A */	cmplwi r0, 0xa
/* 801A1C44  41 82 00 0C */	beq lbl_801A1C50
/* 801A1C48  28 00 00 09 */	cmplwi r0, 9
/* 801A1C4C  40 82 00 14 */	bne lbl_801A1C60
lbl_801A1C50:
/* 801A1C50  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A1C54  C0 12 12 10 */	lfs f0, 0x1210(r18)
/* 801A1C58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801A1C5C  40 82 00 68 */	bne lbl_801A1CC4
lbl_801A1C60:
/* 801A1C60  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 801A1C64  C0 5D 00 24 */	lfs f2, 0x24(r29)
/* 801A1C68  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801A1C6C  C0 9C 00 24 */	lfs f4, 0x24(r28)
/* 801A1C70  C0 BB 00 24 */	lfs f5, 0x24(r27)
/* 801A1C74  C0 D7 03 70 */	lfs f6, 0x370(r23)
/* 801A1C78  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1C7C  3A 03 CA 54 */	addi r16, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A1C80  C0 F0 11 EC */	lfs f7, 0x11ec(r16)
/* 801A1C84  C1 10 11 F4 */	lfs f8, 0x11f4(r16)
/* 801A1C88  4B FF BB 19 */	bl float_kankyo_color_ratio_set__Fffffffff
/* 801A1C8C  D0 39 00 00 */	stfs f1, 0(r25)
/* 801A1C90  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 801A1C94  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 801A1C98  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801A1C9C  C0 9C 00 28 */	lfs f4, 0x28(r28)
/* 801A1CA0  C0 BB 00 28 */	lfs f5, 0x28(r27)
/* 801A1CA4  C0 D7 03 70 */	lfs f6, 0x370(r23)
/* 801A1CA8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1CAC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A1CB0  C0 E3 11 F0 */	lfs f7, 0x11f0(r3)
/* 801A1CB4  C1 10 11 F4 */	lfs f8, 0x11f4(r16)
/* 801A1CB8  4B FF BA E9 */	bl float_kankyo_color_ratio_set__Fffffffff
/* 801A1CBC  D0 3A 00 00 */	stfs f1, 0(r26)
/* 801A1CC0  48 00 00 64 */	b lbl_801A1D24
lbl_801A1CC4:
/* 801A1CC4  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 801A1CC8  C0 5D 00 24 */	lfs f2, 0x24(r29)
/* 801A1CCC  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801A1CD0  C0 9C 00 24 */	lfs f4, 0x24(r28)
/* 801A1CD4  C0 BB 00 24 */	lfs f5, 0x24(r27)
/* 801A1CD8  C0 D7 03 70 */	lfs f6, 0x370(r23)
/* 801A1CDC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1CE0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A1CE4  C0 E3 11 EC */	lfs f7, 0x11ec(r3)
/* 801A1CE8  C1 02 A2 0C */	lfs f8, lit_4409(r2)
/* 801A1CEC  4B FF BA B5 */	bl float_kankyo_color_ratio_set__Fffffffff
/* 801A1CF0  D0 39 00 00 */	stfs f1, 0(r25)
/* 801A1CF4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 801A1CF8  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 801A1CFC  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801A1D00  C0 9C 00 28 */	lfs f4, 0x28(r28)
/* 801A1D04  C0 BB 00 28 */	lfs f5, 0x28(r27)
/* 801A1D08  C0 D7 03 70 */	lfs f6, 0x370(r23)
/* 801A1D0C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A1D10  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A1D14  C0 E3 11 F0 */	lfs f7, 0x11f0(r3)
/* 801A1D18  C1 02 A2 0C */	lfs f8, lit_4409(r2)
/* 801A1D1C  4B FF BA 85 */	bl float_kankyo_color_ratio_set__Fffffffff
/* 801A1D20  D0 3A 00 00 */	stfs f1, 0(r26)
lbl_801A1D24:
/* 801A1D24  4B FB D7 01 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A1D28  2C 03 00 00 */	cmpwi r3, 0
/* 801A1D2C  41 82 00 20 */	beq lbl_801A1D4C
/* 801A1D30  38 00 00 00 */	li r0, 0
/* 801A1D34  B0 18 00 00 */	sth r0, 0(r24)
/* 801A1D38  B0 18 00 02 */	sth r0, 2(r24)
/* 801A1D3C  B0 18 00 04 */	sth r0, 4(r24)
/* 801A1D40  7F 23 CB 78 */	mr r3, r25
/* 801A1D44  7F 44 D3 78 */	mr r4, r26
/* 801A1D48  4B FF AF 95 */	bl dKy_WolfPowerup_FogNearFar__FPfPf
lbl_801A1D4C:
/* 801A1D4C  39 61 01 00 */	addi r11, r1, 0x100
/* 801A1D50  48 1C 04 A5 */	bl _restgpr_16
/* 801A1D54  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801A1D58  7C 08 03 A6 */	mtlr r0
/* 801A1D5C  38 21 01 00 */	addi r1, r1, 0x100
/* 801A1D60  4E 80 00 20 */	blr 
