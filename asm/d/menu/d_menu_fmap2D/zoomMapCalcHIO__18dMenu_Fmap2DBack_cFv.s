lbl_801D1858:
/* 801D1858  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D185C  7C 08 02 A6 */	mflr r0
/* 801D1860  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D1864  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801D1868  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801D186C  39 61 00 20 */	addi r11, r1, 0x20
/* 801D1870  48 19 09 65 */	bl _savegpr_27
/* 801D1874  7C 7F 1B 78 */	mr r31, r3
/* 801D1878  48 00 13 D5 */	bl getSpotMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D187C  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1880  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D1884  41 82 02 00 */	beq lbl_801D1A84
/* 801D1888  7F E3 FB 78 */	mr r3, r31
/* 801D188C  48 00 13 C1 */	bl getSpotMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D1890  7F E3 FB 78 */	mr r3, r31
/* 801D1894  88 9F 12 27 */	lbz r4, 0x1227(r31)
/* 801D1898  48 00 12 CD */	bl getRegionMapZoomRate__18dMenu_Fmap2DBack_cFi
/* 801D189C  7F E3 FB 78 */	mr r3, r31
/* 801D18A0  48 00 13 AD */	bl getSpotMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D18A4  D0 3F 0F 9C */	stfs f1, 0xf9c(r31)
/* 801D18A8  7F E3 FB 78 */	mr r3, r31
/* 801D18AC  48 00 11 89 */	bl calcRenderingScale__18dMenu_Fmap2DBack_cFv
/* 801D18B0  7F E3 FB 78 */	mr r3, r31
/* 801D18B4  48 00 0D C5 */	bl getMapAreaGlobalCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D18B8  FF E0 08 90 */	fmr f31, f1
/* 801D18BC  7F E3 FB 78 */	mr r3, r31
/* 801D18C0  48 00 0E 09 */	bl getMapAreaGlobalCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D18C4  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801D18C8  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801D18CC  88 03 03 08 */	lbz r0, 0x308(r3)
/* 801D18D0  28 00 00 00 */	cmplwi r0, 0
/* 801D18D4  40 82 00 64 */	bne lbl_801D1938
/* 801D18D8  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D18DC  54 00 10 3A */	slwi r0, r0, 2
/* 801D18E0  C0 62 A7 E8 */	lfs f3, lit_4202(r2)
/* 801D18E4  7C 7F 02 14 */	add r3, r31, r0
/* 801D18E8  C0 43 0E CC */	lfs f2, 0xecc(r3)
/* 801D18EC  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D18F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D18F4  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D18F8  EC 5F 00 28 */	fsubs f2, f31, f0
/* 801D18FC  C0 03 0E 8C */	lfs f0, 0xe8c(r3)
/* 801D1900  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D1904  D0 03 0F 0C */	stfs f0, 0xf0c(r3)
/* 801D1908  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D190C  54 00 10 3A */	slwi r0, r0, 2
/* 801D1910  7C 7F 02 14 */	add r3, r31, r0
/* 801D1914  C0 43 0E EC */	lfs f2, 0xeec(r3)
/* 801D1918  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D191C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D1920  EC 03 00 32 */	fmuls f0, f3, f0
/* 801D1924  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D1928  C0 03 0E AC */	lfs f0, 0xeac(r3)
/* 801D192C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1930  D0 03 0F 2C */	stfs f0, 0xf2c(r3)
/* 801D1934  48 00 00 B0 */	b lbl_801D19E4
lbl_801D1938:
/* 801D1938  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D193C  54 00 10 3A */	slwi r0, r0, 2
/* 801D1940  7C 7F 02 14 */	add r3, r31, r0
/* 801D1944  C0 43 0E AC */	lfs f2, 0xeac(r3)
/* 801D1948  C0 82 A7 E8 */	lfs f4, lit_4202(r2)
/* 801D194C  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D1950  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D1954  EC 62 00 2A */	fadds f3, f2, f0
/* 801D1958  C0 43 0E 2C */	lfs f2, 0xe2c(r3)
/* 801D195C  C0 03 0E 6C */	lfs f0, 0xe6c(r3)
/* 801D1960  EC 02 00 2A */	fadds f0, f2, f0
/* 801D1964  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D1968  ED 03 00 28 */	fsubs f8, f3, f0
/* 801D196C  C0 E3 0E 8C */	lfs f7, 0xe8c(r3)
/* 801D1970  C0 BF 0F 9C */	lfs f5, 0xf9c(r31)
/* 801D1974  C0 C3 0E CC */	lfs f6, 0xecc(r3)
/* 801D1978  EC 04 01 B2 */	fmuls f0, f4, f6
/* 801D197C  EC 67 00 2A */	fadds f3, f7, f0
/* 801D1980  C0 43 0E 0C */	lfs f2, 0xe0c(r3)
/* 801D1984  C0 03 0E 4C */	lfs f0, 0xe4c(r3)
/* 801D1988  EC 02 00 2A */	fadds f0, f2, f0
/* 801D198C  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D1990  EC 03 00 28 */	fsubs f0, f3, f0
/* 801D1994  EC 00 01 72 */	fmuls f0, f0, f5
/* 801D1998  EC 5F 00 2A */	fadds f2, f31, f0
/* 801D199C  EC 06 01 72 */	fmuls f0, f6, f5
/* 801D19A0  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D19A4  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D19A8  EC 00 38 28 */	fsubs f0, f0, f7
/* 801D19AC  D0 03 0F 0C */	stfs f0, 0xf0c(r3)
/* 801D19B0  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D19B4  54 00 10 3A */	slwi r0, r0, 2
/* 801D19B8  C0 5F 0F 9C */	lfs f2, 0xf9c(r31)
/* 801D19BC  EC 08 00 B2 */	fmuls f0, f8, f2
/* 801D19C0  EC 21 00 2A */	fadds f1, f1, f0
/* 801D19C4  7C 7F 02 14 */	add r3, r31, r0
/* 801D19C8  C0 03 0E EC */	lfs f0, 0xeec(r3)
/* 801D19CC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801D19D0  EC 04 00 32 */	fmuls f0, f4, f0
/* 801D19D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 801D19D8  C0 03 0E AC */	lfs f0, 0xeac(r3)
/* 801D19DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D19E0  D0 03 0F 2C */	stfs f0, 0xf2c(r3)
lbl_801D19E4:
/* 801D19E4  3B 60 00 00 */	li r27, 0
/* 801D19E8  3B C0 00 00 */	li r30, 0
lbl_801D19EC:
/* 801D19EC  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D19F0  7C 1B 00 00 */	cmpw r27, r0
/* 801D19F4  41 82 00 74 */	beq lbl_801D1A68
/* 801D19F8  7F 9F F2 14 */	add r28, r31, r30
/* 801D19FC  54 00 10 3A */	slwi r0, r0, 2
/* 801D1A00  7F BF 02 14 */	add r29, r31, r0
/* 801D1A04  7F E3 FB 78 */	mr r3, r31
/* 801D1A08  48 00 11 55 */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D1A0C  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1A10  EC 40 08 28 */	fsubs f2, f0, f1
/* 801D1A14  C0 3C 0E 8C */	lfs f1, 0xe8c(r28)
/* 801D1A18  C0 1D 0E 8C */	lfs f0, 0xe8c(r29)
/* 801D1A1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1A20  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801D1A24  C0 1D 0F 0C */	lfs f0, 0xf0c(r29)
/* 801D1A28  EC 00 08 2A */	fadds f0, f0, f1
/* 801D1A2C  D0 1C 0F 0C */	stfs f0, 0xf0c(r28)
/* 801D1A30  88 1F 12 27 */	lbz r0, 0x1227(r31)
/* 801D1A34  54 00 10 3A */	slwi r0, r0, 2
/* 801D1A38  7F BF 02 14 */	add r29, r31, r0
/* 801D1A3C  7F E3 FB 78 */	mr r3, r31
/* 801D1A40  48 00 11 1D */	bl getAllMapZoomRate__18dMenu_Fmap2DBack_cFv
/* 801D1A44  C0 1F 0F 9C */	lfs f0, 0xf9c(r31)
/* 801D1A48  EC 40 08 28 */	fsubs f2, f0, f1
/* 801D1A4C  C0 3C 0E AC */	lfs f1, 0xeac(r28)
/* 801D1A50  C0 1D 0E AC */	lfs f0, 0xeac(r29)
/* 801D1A54  EC 01 00 28 */	fsubs f0, f1, f0
/* 801D1A58  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801D1A5C  C0 1D 0F 2C */	lfs f0, 0xf2c(r29)
/* 801D1A60  EC 00 08 2A */	fadds f0, f0, f1
/* 801D1A64  D0 1C 0F 2C */	stfs f0, 0xf2c(r28)
lbl_801D1A68:
/* 801D1A68  3B 7B 00 01 */	addi r27, r27, 1
/* 801D1A6C  2C 1B 00 08 */	cmpwi r27, 8
/* 801D1A70  3B DE 00 04 */	addi r30, r30, 4
/* 801D1A74  41 80 FF 78 */	blt lbl_801D19EC
/* 801D1A78  7F E3 FB 78 */	mr r3, r31
/* 801D1A7C  C0 22 A7 D4 */	lfs f1, lit_3971(r2)
/* 801D1A80  48 00 00 25 */	bl scrollCalc__18dMenu_Fmap2DBack_cFf
lbl_801D1A84:
/* 801D1A84  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801D1A88  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801D1A8C  39 61 00 20 */	addi r11, r1, 0x20
/* 801D1A90  48 19 07 91 */	bl _restgpr_27
/* 801D1A94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D1A98  7C 08 03 A6 */	mtlr r0
/* 801D1A9C  38 21 00 30 */	addi r1, r1, 0x30
/* 801D1AA0  4E 80 00 20 */	blr 
