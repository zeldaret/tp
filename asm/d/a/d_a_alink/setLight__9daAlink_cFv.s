lbl_800C1704:
/* 800C1704  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 800C1708  7C 08 02 A6 */	mflr r0
/* 800C170C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 800C1710  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 800C1714  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 800C1718  39 61 00 B0 */	addi r11, r1, 0xb0
/* 800C171C  48 2A 0A B5 */	bl _savegpr_26
/* 800C1720  7C 7C 1B 78 */	mr r28, r3
/* 800C1724  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800C1728  3B E4 D6 58 */	addi r31, r4, lit_3757@l /* 0x8038D658@l */
/* 800C172C  3B DF 11 08 */	addi r30, r31, 0x1108
/* 800C1730  3B A0 00 00 */	li r29, 0
/* 800C1734  80 C3 05 74 */	lwz r6, 0x574(r3)
/* 800C1738  54 C0 01 8D */	rlwinm. r0, r6, 0, 6, 6
/* 800C173C  41 82 00 14 */	beq lbl_800C1750
/* 800C1740  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800C1744  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 800C1748  90 1C 05 74 */	stw r0, 0x574(r28)
/* 800C174C  48 00 02 94 */	b lbl_800C19E0
lbl_800C1750:
/* 800C1750  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 800C1754  54 85 07 FF */	clrlwi. r5, r4, 0x1f
/* 800C1758  40 82 00 10 */	bne lbl_800C1768
/* 800C175C  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 800C1760  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800C1764  41 82 02 40 */	beq lbl_800C19A4
lbl_800C1768:
/* 800C1768  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C176C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C1770  A0 03 00 08 */	lhz r0, 8(r3)
/* 800C1774  28 00 00 00 */	cmplwi r0, 0
/* 800C1778  41 82 01 50 */	beq lbl_800C18C8
/* 800C177C  54 80 00 C7 */	rlwinm. r0, r4, 0, 3, 3
/* 800C1780  40 82 01 48 */	bne lbl_800C18C8
/* 800C1784  28 05 00 00 */	cmplwi r5, 0
/* 800C1788  41 82 00 0C */	beq lbl_800C1794
/* 800C178C  54 C0 00 43 */	rlwinm. r0, r6, 0, 1, 1
/* 800C1790  41 82 00 10 */	beq lbl_800C17A0
lbl_800C1794:
/* 800C1794  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 800C1798  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C179C  41 82 01 2C */	beq lbl_800C18C8
lbl_800C17A0:
/* 800C17A0  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800C17A4  60 00 00 80 */	ori r0, r0, 0x80
/* 800C17A8  90 1C 05 74 */	stw r0, 0x574(r28)
/* 800C17AC  7F 83 E3 78 */	mr r3, r28
/* 800C17B0  48 05 44 71 */	bl checkEventRun__9daAlink_cCFv
/* 800C17B4  2C 03 00 00 */	cmpwi r3, 0
/* 800C17B8  40 82 00 30 */	bne lbl_800C17E8
/* 800C17BC  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 800C17C0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800C17C4  40 82 00 24 */	bne lbl_800C17E8
/* 800C17C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C17CC  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C17D0  80 85 5D D4 */	lwz r4, 0x5dd4(r5)
/* 800C17D4  38 7F 11 24 */	addi r3, r31, 0x1124
/* 800C17D8  A8 03 00 48 */	lha r0, 0x48(r3)
/* 800C17DC  7C 00 00 D0 */	neg r0, r0
/* 800C17E0  7C 04 02 14 */	add r0, r4, r0
/* 800C17E4  90 05 5D D4 */	stw r0, 0x5dd4(r5)
lbl_800C17E8:
/* 800C17E8  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800C17EC  28 00 00 B7 */	cmplwi r0, 0xb7
/* 800C17F0  40 82 00 48 */	bne lbl_800C1838
/* 800C17F4  3B 60 03 62 */	li r27, 0x362
/* 800C17F8  3B 5C 2F 20 */	addi r26, r28, 0x2f20
/* 800C17FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C1800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C1804  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800C1808  38 63 02 10 */	addi r3, r3, 0x210
/* 800C180C  80 9C 31 C4 */	lwz r4, 0x31c4(r28)
/* 800C1810  4B F8 A1 09 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 800C1814  28 03 00 00 */	cmplwi r3, 0
/* 800C1818  41 82 00 28 */	beq lbl_800C1840
/* 800C181C  80 03 00 EC */	lwz r0, 0xec(r3)
/* 800C1820  28 00 00 00 */	cmplwi r0, 0
/* 800C1824  40 82 00 1C */	bne lbl_800C1840
/* 800C1828  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 800C182C  60 00 00 04 */	ori r0, r0, 4
/* 800C1830  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 800C1834  48 00 00 0C */	b lbl_800C1840
lbl_800C1838:
/* 800C1838  3B 60 02 BC */	li r27, 0x2bc
/* 800C183C  3B 40 00 00 */	li r26, 0
lbl_800C1840:
/* 800C1840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C1844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C1848  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800C184C  38 00 00 FF */	li r0, 0xff
/* 800C1850  90 01 00 08 */	stw r0, 8(r1)
/* 800C1854  93 41 00 0C */	stw r26, 0xc(r1)
/* 800C1858  38 00 FF FF */	li r0, -1
/* 800C185C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800C1860  38 00 00 00 */	li r0, 0
/* 800C1864  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C1868  90 01 00 18 */	stw r0, 0x18(r1)
/* 800C186C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800C1870  80 9C 31 C4 */	lwz r4, 0x31c4(r28)
/* 800C1874  38 A0 00 00 */	li r5, 0
/* 800C1878  7F 66 DB 78 */	mr r6, r27
/* 800C187C  38 FC 36 0C */	addi r7, r28, 0x360c
/* 800C1880  39 1C 01 0C */	addi r8, r28, 0x10c
/* 800C1884  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 800C1888  39 40 00 00 */	li r10, 0
/* 800C188C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800C1890  4B F8 BC 3D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800C1894  90 7C 31 C4 */	stw r3, 0x31c4(r28)
/* 800C1898  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020058@ha */
/* 800C189C  38 03 00 58 */	addi r0, r3, 0x0058 /* 0x00020058@l */
/* 800C18A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C18A4  38 7C 2D 3C */	addi r3, r28, 0x2d3c
/* 800C18A8  38 81 00 24 */	addi r4, r1, 0x24
/* 800C18AC  38 A0 00 00 */	li r5, 0
/* 800C18B0  88 DC 2F 9A */	lbz r6, 0x2f9a(r28)
/* 800C18B4  81 9C 2D 4C */	lwz r12, 0x2d4c(r28)
/* 800C18B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800C18BC  7D 89 03 A6 */	mtctr r12
/* 800C18C0  4E 80 04 21 */	bctrl 
/* 800C18C4  48 00 00 50 */	b lbl_800C1914
lbl_800C18C8:
/* 800C18C8  54 C0 06 31 */	rlwinm. r0, r6, 0, 0x18, 0x18
/* 800C18CC  41 82 00 48 */	beq lbl_800C1914
/* 800C18D0  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002005A@ha */
/* 800C18D4  38 03 00 5A */	addi r0, r3, 0x005A /* 0x0002005A@l */
/* 800C18D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 800C18DC  38 7C 2D 3C */	addi r3, r28, 0x2d3c
/* 800C18E0  38 81 00 20 */	addi r4, r1, 0x20
/* 800C18E4  38 A0 00 00 */	li r5, 0
/* 800C18E8  88 DC 2F 9A */	lbz r6, 0x2f9a(r28)
/* 800C18EC  81 9C 2D 4C */	lwz r12, 0x2d4c(r28)
/* 800C18F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800C18F4  7D 89 03 A6 */	mtctr r12
/* 800C18F8  4E 80 04 21 */	bctrl 
/* 800C18FC  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800C1900  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 800C1904  90 1C 05 74 */	stw r0, 0x574(r28)
/* 800C1908  7F 83 E3 78 */	mr r3, r28
/* 800C190C  80 9C 31 C4 */	lwz r4, 0x31c4(r28)
/* 800C1910  48 05 EE 69 */	bl stopDrawParticle__9daAlink_cFUl
lbl_800C1914:
/* 800C1914  C0 5C 34 4C */	lfs f2, 0x344c(r28)
/* 800C1918  80 1C 32 C8 */	lwz r0, 0x32c8(r28)
/* 800C191C  C8 22 96 08 */	lfd f1, lit_32072(r2)
/* 800C1920  90 01 00 84 */	stw r0, 0x84(r1)
/* 800C1924  3C 00 43 30 */	lis r0, 0x4330
/* 800C1928  90 01 00 80 */	stw r0, 0x80(r1)
/* 800C192C  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 800C1930  EC 00 08 28 */	fsubs f0, f0, f1
/* 800C1934  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800C1938  41 81 00 10 */	bgt lbl_800C1948
/* 800C193C  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800C1940  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800C1944  40 82 00 0C */	bne lbl_800C1950
lbl_800C1948:
/* 800C1948  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C194C  48 00 00 08 */	b lbl_800C1954
lbl_800C1950:
/* 800C1950  C0 22 92 B8 */	lfs f1, lit_6040(r2)
lbl_800C1954:
/* 800C1954  38 7C 34 48 */	addi r3, r28, 0x3448
/* 800C1958  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800C195C  C0 62 94 A8 */	lfs f3, lit_16570(r2)
/* 800C1960  C0 82 93 A0 */	lfs f4, lit_9054(r2)
/* 800C1964  48 1A E0 19 */	bl cLib_addCalc__FPfffff
/* 800C1968  80 7F 4A 00 */	lwz r3, 0x4a00(r31)
/* 800C196C  80 1F 4A 04 */	lwz r0, 0x4a04(r31)
/* 800C1970  90 61 00 74 */	stw r3, 0x74(r1)
/* 800C1974  90 01 00 78 */	stw r0, 0x78(r1)
/* 800C1978  80 1F 4A 08 */	lwz r0, 0x4a08(r31)
/* 800C197C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 800C1980  C0 1C 34 48 */	lfs f0, 0x3448(r28)
/* 800C1984  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800C1988  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800C198C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800C1990  80 7C 07 00 */	lwz r3, 0x700(r28)
/* 800C1994  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800C1998  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800C199C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 800C19A0  48 00 00 18 */	b lbl_800C19B8
lbl_800C19A4:
/* 800C19A4  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800C19A8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 800C19AC  90 1C 05 74 */	stw r0, 0x574(r28)
/* 800C19B0  80 9C 31 C4 */	lwz r4, 0x31c4(r28)
/* 800C19B4  48 05 ED C5 */	bl stopDrawParticle__9daAlink_cFUl
lbl_800C19B8:
/* 800C19B8  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800C19BC  28 00 01 03 */	cmplwi r0, 0x103
/* 800C19C0  40 82 00 20 */	bne lbl_800C19E0
/* 800C19C4  80 1C 05 7C */	lwz r0, 0x57c(r28)
/* 800C19C8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800C19CC  41 82 00 14 */	beq lbl_800C19E0
/* 800C19D0  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800C19D4  60 00 00 80 */	ori r0, r0, 0x80
/* 800C19D8  90 1C 05 74 */	stw r0, 0x574(r28)
/* 800C19DC  3B A0 00 01 */	li r29, 1
lbl_800C19E0:
/* 800C19E0  2C 1D 00 00 */	cmpwi r29, 0
/* 800C19E4  41 82 00 20 */	beq lbl_800C1A04
/* 800C19E8  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 800C19EC  28 00 00 00 */	cmplwi r0, 0
/* 800C19F0  40 82 00 0C */	bne lbl_800C19FC
/* 800C19F4  C0 22 93 FC */	lfs f1, lit_13701(r2)
/* 800C19F8  48 00 00 24 */	b lbl_800C1A1C
lbl_800C19FC:
/* 800C19FC  C0 22 93 2C */	lfs f1, lit_7624(r2)
/* 800C1A00  48 00 00 1C */	b lbl_800C1A1C
lbl_800C1A04:
/* 800C1A04  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800C1A08  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800C1A0C  41 82 00 0C */	beq lbl_800C1A18
/* 800C1A10  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 800C1A14  48 00 00 08 */	b lbl_800C1A1C
lbl_800C1A18:
/* 800C1A18  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_800C1A1C:
/* 800C1A1C  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
/* 800C1A20  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800C1A24  28 00 01 4D */	cmplwi r0, 0x14d
/* 800C1A28  40 82 00 18 */	bne lbl_800C1A40
/* 800C1A2C  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800C1A30  2C 00 00 00 */	cmpwi r0, 0
/* 800C1A34  41 82 00 0C */	beq lbl_800C1A40
/* 800C1A38  C0 42 92 A4 */	lfs f2, lit_6021(r2)
/* 800C1A3C  48 00 00 24 */	b lbl_800C1A60
lbl_800C1A40:
/* 800C1A40  80 1C 05 90 */	lwz r0, 0x590(r28)
/* 800C1A44  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C1A48  41 82 00 14 */	beq lbl_800C1A5C
/* 800C1A4C  C3 E2 98 CC */	lfs f31, lit_71997(r2)
/* 800C1A50  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 800C1A54  C0 22 93 2C */	lfs f1, lit_7624(r2)
/* 800C1A58  48 00 00 08 */	b lbl_800C1A60
lbl_800C1A5C:
/* 800C1A5C  C0 42 93 F8 */	lfs f2, lit_13700(r2)
lbl_800C1A60:
/* 800C1A60  38 7C 33 FC */	addi r3, r28, 0x33fc
/* 800C1A64  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800C1A68  EC 40 00 B2 */	fmuls f2, f0, f2
/* 800C1A6C  48 1A EC D5 */	bl cLib_chaseF__FPfff
/* 800C1A70  C0 3C 33 FC */	lfs f1, 0x33fc(r28)
/* 800C1A74  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C1A78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C1A7C  40 81 02 50 */	ble lbl_800C1CCC
/* 800C1A80  80 02 98 C8 */	lwz r0, lit_71910(r2)
/* 800C1A84  90 01 00 28 */	stw r0, 0x28(r1)
/* 800C1A88  A8 1E 00 04 */	lha r0, 4(r30)
/* 800C1A8C  98 01 00 28 */	stb r0, 0x28(r1)
/* 800C1A90  A8 1E 00 06 */	lha r0, 6(r30)
/* 800C1A94  98 01 00 29 */	stb r0, 0x29(r1)
/* 800C1A98  A8 1E 00 08 */	lha r0, 8(r30)
/* 800C1A9C  98 01 00 2A */	stb r0, 0x2a(r1)
/* 800C1AA0  80 7F 4A 0C */	lwz r3, 0x4a0c(r31)
/* 800C1AA4  80 1F 4A 10 */	lwz r0, 0x4a10(r31)
/* 800C1AA8  90 61 00 5C */	stw r3, 0x5c(r1)
/* 800C1AAC  90 01 00 60 */	stw r0, 0x60(r1)
/* 800C1AB0  80 1F 4A 14 */	lwz r0, 0x4a14(r31)
/* 800C1AB4  90 01 00 64 */	stw r0, 0x64(r1)
/* 800C1AB8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 800C1ABC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800C1AC0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 800C1AC4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800C1AC8  38 1F 1B 2C */	addi r0, r31, 0x1b2c
/* 800C1ACC  7C 1E 00 40 */	cmplw r30, r0
/* 800C1AD0  40 82 00 D8 */	bne lbl_800C1BA8
/* 800C1AD4  38 61 00 44 */	addi r3, r1, 0x44
/* 800C1AD8  38 9C 05 38 */	addi r4, r28, 0x538
/* 800C1ADC  38 BC 34 E0 */	addi r5, r28, 0x34e0
/* 800C1AE0  48 1A 50 55 */	bl __mi__4cXyzCFRC3Vec
/* 800C1AE4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 800C1AE8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800C1AEC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800C1AF0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800C1AF4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800C1AF8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800C1AFC  38 61 00 50 */	addi r3, r1, 0x50
/* 800C1B00  48 1A 56 51 */	bl atan2sY_XZ__4cXyzCFv
/* 800C1B04  7C 7A 1B 78 */	mr r26, r3
/* 800C1B08  38 61 00 50 */	addi r3, r1, 0x50
/* 800C1B0C  48 1A 56 1D */	bl atan2sX_Z__4cXyzCFv
/* 800C1B10  7C 7B 1B 78 */	mr r27, r3
/* 800C1B14  38 7C 05 38 */	addi r3, r28, 0x538
/* 800C1B18  4B F4 B2 4D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800C1B1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800C1B20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800C1B24  7F 44 D3 78 */	mr r4, r26
/* 800C1B28  7F 65 DB 78 */	mr r5, r27
/* 800C1B2C  38 C0 00 00 */	li r6, 0
/* 800C1B30  4B F4 A7 71 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800C1B34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800C1B38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800C1B3C  38 81 00 5C */	addi r4, r1, 0x5c
/* 800C1B40  38 A1 00 68 */	addi r5, r1, 0x68
/* 800C1B44  48 28 52 29 */	bl PSMTXMultVec
/* 800C1B48  C0 42 98 38 */	lfs f2, lit_59593(r2)
/* 800C1B4C  A8 1C 05 9C */	lha r0, 0x59c(r28)
/* 800C1B50  7C 1A 02 14 */	add r0, r26, r0
/* 800C1B54  7C 00 00 D0 */	neg r0, r0
/* 800C1B58  7C 00 07 34 */	extsh r0, r0
/* 800C1B5C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800C1B60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800C1B64  90 01 00 84 */	stw r0, 0x84(r1)
/* 800C1B68  3C 60 43 30 */	lis r3, 0x4330
/* 800C1B6C  90 61 00 80 */	stw r3, 0x80(r1)
/* 800C1B70  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 800C1B74  EC 00 08 28 */	fsubs f0, f0, f1
/* 800C1B78  EC 62 00 32 */	fmuls f3, f2, f0
/* 800C1B7C  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800C1B80  EC 60 00 F2 */	fmuls f3, f0, f3
/* 800C1B84  7F 60 07 34 */	extsh r0, r27
/* 800C1B88  7C 00 00 D0 */	neg r0, r0
/* 800C1B8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800C1B90  90 01 00 8C */	stw r0, 0x8c(r1)
/* 800C1B94  90 61 00 88 */	stw r3, 0x88(r1)
/* 800C1B98  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 800C1B9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800C1BA0  EC 42 00 32 */	fmuls f2, f2, f0
/* 800C1BA4  48 00 00 DC */	b lbl_800C1C80
lbl_800C1BA8:
/* 800C1BA8  2C 1D 00 00 */	cmpwi r29, 0
/* 800C1BAC  41 82 00 88 */	beq lbl_800C1C34
/* 800C1BB0  38 61 00 38 */	addi r3, r1, 0x38
/* 800C1BB4  38 9C 05 BC */	addi r4, r28, 0x5bc
/* 800C1BB8  38 BC 34 98 */	addi r5, r28, 0x3498
/* 800C1BBC  48 1A 4F 29 */	bl __pl__4cXyzCFRC3Vec
/* 800C1BC0  38 61 00 2C */	addi r3, r1, 0x2c
/* 800C1BC4  38 81 00 38 */	addi r4, r1, 0x38
/* 800C1BC8  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800C1BCC  48 1A 4F B9 */	bl __ml__4cXyzCFf
/* 800C1BD0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800C1BD4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800C1BD8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800C1BDC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800C1BE0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800C1BE4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800C1BE8  C0 02 93 E0 */	lfs f0, lit_11673(r2)
/* 800C1BEC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800C1BF0  FC 00 00 1E */	fctiwz f0, f0
/* 800C1BF4  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 800C1BF8  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 800C1BFC  98 01 00 28 */	stb r0, 0x28(r1)
/* 800C1C00  C0 02 98 D0 */	lfs f0, lit_71998(r2)
/* 800C1C04  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800C1C08  FC 00 00 1E */	fctiwz f0, f0
/* 800C1C0C  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 800C1C10  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800C1C14  98 01 00 29 */	stb r0, 0x29(r1)
/* 800C1C18  C0 02 98 D4 */	lfs f0, lit_71999(r2)
/* 800C1C1C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800C1C20  FC 00 00 1E */	fctiwz f0, f0
/* 800C1C24  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 800C1C28  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800C1C2C  98 01 00 2A */	stb r0, 0x2a(r1)
/* 800C1C30  48 00 00 1C */	b lbl_800C1C4C
lbl_800C1C34:
/* 800C1C34  C0 1C 36 0C */	lfs f0, 0x360c(r28)
/* 800C1C38  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800C1C3C  C0 1C 36 10 */	lfs f0, 0x3610(r28)
/* 800C1C40  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800C1C44  C0 1C 36 14 */	lfs f0, 0x3614(r28)
/* 800C1C48  D0 01 00 70 */	stfs f0, 0x70(r1)
lbl_800C1C4C:
/* 800C1C4C  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 800C1C50  C0 42 98 38 */	lfs f2, lit_59593(r2)
/* 800C1C54  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800C1C58  7C 00 00 D0 */	neg r0, r0
/* 800C1C5C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800C1C60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800C1C64  90 01 00 94 */	stw r0, 0x94(r1)
/* 800C1C68  3C 00 43 30 */	lis r0, 0x4330
/* 800C1C6C  90 01 00 90 */	stw r0, 0x90(r1)
/* 800C1C70  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 800C1C74  EC 00 08 28 */	fsubs f0, f0, f1
/* 800C1C78  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C1C7C  FC 40 00 90 */	fmr f2, f0
lbl_800C1C80:
/* 800C1C80  C0 9C 33 FC */	lfs f4, 0x33fc(r28)
/* 800C1C84  38 61 00 68 */	addi r3, r1, 0x68
/* 800C1C88  A8 1E 00 0A */	lha r0, 0xa(r30)
/* 800C1C8C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800C1C90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800C1C94  90 01 00 94 */	stw r0, 0x94(r1)
/* 800C1C98  3C 00 43 30 */	lis r0, 0x4330
/* 800C1C9C  90 01 00 90 */	stw r0, 0x90(r1)
/* 800C1CA0  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 800C1CA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800C1CA8  EC 23 00 2A */	fadds f1, f3, f0
/* 800C1CAC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800C1CB0  EC 60 01 32 */	fmuls f3, f0, f4
/* 800C1CB4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800C1CB8  EC 63 00 24 */	fdivs f3, f3, f0
/* 800C1CBC  38 81 00 28 */	addi r4, r1, 0x28
/* 800C1CC0  88 BE 00 00 */	lbz r5, 0(r30)
/* 800C1CC4  88 DE 00 01 */	lbz r6, 1(r30)
/* 800C1CC8  48 0E 8F 95 */	bl dKy_WolfEyeLight_set__FP4cXyzfffP8_GXColorfUcUc
lbl_800C1CCC:
/* 800C1CCC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 800C1CD0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 800C1CD4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 800C1CD8  48 2A 05 45 */	bl _restgpr_26
/* 800C1CDC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 800C1CE0  7C 08 03 A6 */	mtlr r0
/* 800C1CE4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 800C1CE8  4E 80 00 20 */	blr 
