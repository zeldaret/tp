lbl_804B16B8:
/* 804B16B8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804B16BC  7C 08 02 A6 */	mflr r0
/* 804B16C0  90 01 00 64 */	stw r0, 0x64(r1)
/* 804B16C4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804B16C8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804B16CC  39 61 00 50 */	addi r11, r1, 0x50
/* 804B16D0  4B EB 0B 0D */	bl _savegpr_29
/* 804B16D4  7C 7F 1B 78 */	mr r31, r3
/* 804B16D8  3C 60 80 4C */	lis r3, cNullVec__6Z2Calc@ha /* 0x804BB850@ha */
/* 804B16DC  3B A3 B8 50 */	addi r29, r3, cNullVec__6Z2Calc@l /* 0x804BB850@l */
/* 804B16E0  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804B16E4  3B C3 B5 34 */	addi r30, r3, lit_3879@l /* 0x804BB534@l */
/* 804B16E8  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B16EC  2C 00 00 01 */	cmpwi r0, 1
/* 804B16F0  41 81 00 D4 */	bgt lbl_804B17C4
/* 804B16F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B16F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B16FC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 804B1700  4B B5 AC 9D */	bl mDoMtx_XrotM__FPA4_fs
/* 804B1704  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B1708  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B170C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804B1710  4B B5 AD 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 804B1714  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B1718  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B171C  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 804B1720  4B B5 AD AD */	bl mDoMtx_ZrotM__FPA4_fs
/* 804B1724  A8 7F 04 E0 */	lha r3, 0x4e0(r31)
/* 804B1728  A8 1F 11 4E */	lha r0, 0x114e(r31)
/* 804B172C  7C 03 02 14 */	add r0, r3, r0
/* 804B1730  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 804B1734  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B1738  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804B173C  41 82 00 1C */	beq lbl_804B1758
/* 804B1740  38 7F 11 4E */	addi r3, r31, 0x114e
/* 804B1744  38 80 02 BC */	li r4, 0x2bc
/* 804B1748  38 A0 00 08 */	li r5, 8
/* 804B174C  38 C0 00 0D */	li r6, 0xd
/* 804B1750  4B DB EE B9 */	bl cLib_addCalcAngleS2__FPssss
/* 804B1754  48 00 00 18 */	b lbl_804B176C
lbl_804B1758:
/* 804B1758  38 7F 11 4E */	addi r3, r31, 0x114e
/* 804B175C  38 80 FD 44 */	li r4, -700
/* 804B1760  38 A0 00 08 */	li r5, 8
/* 804B1764  38 C0 00 0D */	li r6, 0xd
/* 804B1768  4B DB EE A1 */	bl cLib_addCalcAngleS2__FPssss
lbl_804B176C:
/* 804B176C  A8 1F 13 B4 */	lha r0, 0x13b4(r31)
/* 804B1770  2C 00 03 B6 */	cmpwi r0, 0x3b6
/* 804B1774  41 80 00 28 */	blt lbl_804B179C
/* 804B1778  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804B177C  40 80 00 20 */	bge lbl_804B179C
/* 804B1780  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B1784  7C 00 07 74 */	extsb r0, r0
/* 804B1788  54 00 10 3A */	slwi r0, r0, 2
/* 804B178C  38 7D 01 54 */	addi r3, r29, 0x154
/* 804B1790  7C 03 04 2E */	lfsx f0, r3, r0
/* 804B1794  D0 1F 11 54 */	stfs f0, 0x1154(r31)
/* 804B1798  48 00 00 C0 */	b lbl_804B1858
lbl_804B179C:
/* 804B179C  38 7F 11 54 */	addi r3, r31, 0x1154
/* 804B17A0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B17A4  7C 00 07 74 */	extsb r0, r0
/* 804B17A8  54 00 10 3A */	slwi r0, r0, 2
/* 804B17AC  38 9D 01 54 */	addi r4, r29, 0x154
/* 804B17B0  7C 24 04 2E */	lfsx f1, r4, r0
/* 804B17B4  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B17B8  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 804B17BC  4B DB E2 81 */	bl cLib_addCalc2__FPffff
/* 804B17C0  48 00 00 98 */	b lbl_804B1858
lbl_804B17C4:
/* 804B17C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B17C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B17CC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804B17D0  A8 1F 11 4C */	lha r0, 0x114c(r31)
/* 804B17D4  7C 04 02 14 */	add r0, r4, r0
/* 804B17D8  7C 04 07 34 */	extsh r4, r0
/* 804B17DC  4B B5 AC 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 804B17E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B17E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B17E8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 804B17EC  A8 1F 11 4A */	lha r0, 0x114a(r31)
/* 804B17F0  7C 04 02 14 */	add r0, r4, r0
/* 804B17F4  7C 04 07 34 */	extsh r4, r0
/* 804B17F8  4B B5 AB A5 */	bl mDoMtx_XrotM__FPA4_fs
/* 804B17FC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B1800  2C 00 00 04 */	cmpwi r0, 4
/* 804B1804  40 82 00 34 */	bne lbl_804B1838
/* 804B1808  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B180C  FC 40 08 90 */	fmr f2, f1
/* 804B1810  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 804B1814  4B B5 B5 89 */	bl transM__14mDoMtx_stack_cFfff
/* 804B1818  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B181C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B1820  A8 9F 10 04 */	lha r4, 0x1004(r31)
/* 804B1824  4B B5 AC 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 804B1828  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B182C  FC 40 08 90 */	fmr f2, f1
/* 804B1830  C0 7E 00 6C */	lfs f3, 0x6c(r30)
/* 804B1834  4B B5 B5 69 */	bl transM__14mDoMtx_stack_cFfff
lbl_804B1838:
/* 804B1838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B183C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B1840  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 804B1844  4B B5 AC 89 */	bl mDoMtx_ZrotM__FPA4_fs
/* 804B1848  38 7F 11 54 */	addi r3, r31, 0x1154
/* 804B184C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B1850  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 804B1854  4B DB E2 2D */	bl cLib_addCalc0__FPfff
lbl_804B1858:
/* 804B1858  3C 60 80 4C */	lis r3, l_HIO@ha /* 0x804BBBE4@ha */
/* 804B185C  38 63 BB E4 */	addi r3, r3, l_HIO@l /* 0x804BBBE4@l */
/* 804B1860  C0 23 00 08 */	lfs f1, 8(r3)
/* 804B1864  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B1868  7C 00 07 74 */	extsb r0, r0
/* 804B186C  54 00 10 3A */	slwi r0, r0, 2
/* 804B1870  38 7D 00 F0 */	addi r3, r29, 0xf0
/* 804B1874  7C 03 04 2E */	lfsx f0, r3, r0
/* 804B1878  EC 21 00 32 */	fmuls f1, f1, f0
/* 804B187C  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B1880  2C 00 00 06 */	cmpwi r0, 6
/* 804B1884  40 82 00 0C */	bne lbl_804B1890
/* 804B1888  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 804B188C  EC 21 00 32 */	fmuls f1, f1, f0
lbl_804B1890:
/* 804B1890  FC 40 08 90 */	fmr f2, f1
/* 804B1894  FC 60 08 90 */	fmr f3, f1
/* 804B1898  4B B5 B5 A1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 804B189C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B18A0  FC 40 08 90 */	fmr f2, f1
/* 804B18A4  C0 7F 11 54 */	lfs f3, 0x1154(r31)
/* 804B18A8  4B B5 B4 F5 */	bl transM__14mDoMtx_stack_cFfff
/* 804B18AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B18B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B18B4  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B18B8  7C 00 07 74 */	extsb r0, r0
/* 804B18BC  54 00 10 3A */	slwi r0, r0, 2
/* 804B18C0  7C 9F 02 14 */	add r4, r31, r0
/* 804B18C4  80 84 0F 84 */	lwz r4, 0xf84(r4)
/* 804B18C8  38 84 00 24 */	addi r4, r4, 0x24
/* 804B18CC  4B E9 4B E5 */	bl PSMTXCopy
/* 804B18D0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B18D4  7C 00 07 74 */	extsb r0, r0
/* 804B18D8  54 00 10 3A */	slwi r0, r0, 2
/* 804B18DC  38 7D 01 04 */	addi r3, r29, 0x104
/* 804B18E0  7C 23 04 2E */	lfsx f1, r3, r0
/* 804B18E4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B18E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804B18EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804B18F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804B18F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B18F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B18FC  38 81 00 24 */	addi r4, r1, 0x24
/* 804B1900  38 BF 10 10 */	addi r5, r31, 0x1010
/* 804B1904  4B E9 54 69 */	bl PSMTXMultVec
/* 804B1908  C3 FE 00 50 */	lfs f31, 0x50(r30)
/* 804B190C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B1910  2C 00 00 04 */	cmpwi r0, 4
/* 804B1914  40 82 00 0C */	bne lbl_804B1920
/* 804B1918  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 804B191C  EF FF 00 2A */	fadds f31, f31, f0
lbl_804B1920:
/* 804B1920  4B B5 B3 A9 */	bl push__14mDoMtx_stack_cFv
/* 804B1924  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B1928  FC 40 08 90 */	fmr f2, f1
/* 804B192C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B1930  7C 00 07 74 */	extsb r0, r0
/* 804B1934  54 00 10 3A */	slwi r0, r0, 2
/* 804B1938  38 7D 01 68 */	addi r3, r29, 0x168
/* 804B193C  7C 63 04 2E */	lfsx f3, r3, r0
/* 804B1940  4B B5 B4 5D */	bl transM__14mDoMtx_stack_cFfff
/* 804B1944  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B1948  7C 00 07 75 */	extsb. r0, r0
/* 804B194C  41 82 00 14 */	beq lbl_804B1960
/* 804B1950  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B1954  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B1958  38 80 40 00 */	li r4, 0x4000
/* 804B195C  4B B5 AB 71 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_804B1960:
/* 804B1960  FC 20 F8 90 */	fmr f1, f31
/* 804B1964  FC 40 F8 90 */	fmr f2, f31
/* 804B1968  FC 60 F8 90 */	fmr f3, f31
/* 804B196C  4B B5 B4 CD */	bl scaleM__14mDoMtx_stack_cFfff
/* 804B1970  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B1974  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B1978  80 9F 0F A0 */	lwz r4, 0xfa0(r31)
/* 804B197C  38 84 00 24 */	addi r4, r4, 0x24
/* 804B1980  4B E9 4B 31 */	bl PSMTXCopy
/* 804B1984  4B B5 B3 91 */	bl pop__14mDoMtx_stack_cFv
/* 804B1988  88 7F 0F 80 */	lbz r3, 0xf80(r31)
/* 804B198C  7C 60 07 75 */	extsb. r0, r3
/* 804B1990  41 82 00 C0 */	beq lbl_804B1A50
/* 804B1994  7C 60 07 74 */	extsb r0, r3
/* 804B1998  2C 00 00 04 */	cmpwi r0, 4
/* 804B199C  41 82 00 5C */	beq lbl_804B19F8
/* 804B19A0  4B B5 B3 29 */	bl push__14mDoMtx_stack_cFv
/* 804B19A4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B19A8  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B19AC  7C 00 07 74 */	extsb r0, r0
/* 804B19B0  54 00 10 3A */	slwi r0, r0, 2
/* 804B19B4  38 7D 01 18 */	addi r3, r29, 0x118
/* 804B19B8  7C 43 04 2E */	lfsx f2, r3, r0
/* 804B19BC  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 804B19C0  4B B5 B3 DD */	bl transM__14mDoMtx_stack_cFfff
/* 804B19C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B19C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B19CC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804B19D0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804B19D4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804B19D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804B19DC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804B19E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804B19E4  7F E3 FB 78 */	mr r3, r31
/* 804B19E8  38 81 00 18 */	addi r4, r1, 0x18
/* 804B19EC  38 A0 00 00 */	li r5, 0
/* 804B19F0  4B FF F7 DD */	bl hook_set__FP13dmg_rod_classP4cXyzi
/* 804B19F4  4B B5 B3 21 */	bl pop__14mDoMtx_stack_cFv
lbl_804B19F8:
/* 804B19F8  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 804B19FC  7C 00 07 74 */	extsb r0, r0
/* 804B1A00  54 00 10 3A */	slwi r0, r0, 2
/* 804B1A04  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B1A08  38 7D 01 40 */	addi r3, r29, 0x140
/* 804B1A0C  7C 43 04 2E */	lfsx f2, r3, r0
/* 804B1A10  38 7D 01 2C */	addi r3, r29, 0x12c
/* 804B1A14  7C 63 04 2E */	lfsx f3, r3, r0
/* 804B1A18  4B B5 B3 85 */	bl transM__14mDoMtx_stack_cFfff
/* 804B1A1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B1A20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B1A24  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804B1A28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804B1A2C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804B1A30  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804B1A34  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804B1A38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804B1A3C  7F E3 FB 78 */	mr r3, r31
/* 804B1A40  38 81 00 18 */	addi r4, r1, 0x18
/* 804B1A44  38 A0 00 01 */	li r5, 1
/* 804B1A48  4B FF F7 85 */	bl hook_set__FP13dmg_rod_classP4cXyzi
/* 804B1A4C  48 00 02 A8 */	b lbl_804B1CF4
lbl_804B1A50:
/* 804B1A50  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B1A54  2C 00 00 01 */	cmpwi r0, 1
/* 804B1A58  41 81 01 78 */	bgt lbl_804B1BD0
/* 804B1A5C  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B1A60  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 804B1A64  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B1A68  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B1A6C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B1A70  7C 43 04 2E */	lfsx f2, r3, r0
/* 804B1A74  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 804B1A78  C0 1F 0F F8 */	lfs f0, 0xff8(r31)
/* 804B1A7C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804B1A80  EC 01 00 2A */	fadds f0, f1, f0
/* 804B1A84  FC 00 00 1E */	fctiwz f0, f0
/* 804B1A88  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804B1A8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B1A90  B0 1F 0F F2 */	sth r0, 0xff2(r31)
/* 804B1A94  38 61 00 0C */	addi r3, r1, 0xc
/* 804B1A98  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804B1A9C  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 804B1AA0  4B DB 50 95 */	bl __mi__4cXyzCFRC3Vec
/* 804B1AA4  38 61 00 0C */	addi r3, r1, 0xc
/* 804B1AA8  4B E9 56 91 */	bl PSVECSquareMag
/* 804B1AAC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B1AB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B1AB4  40 81 00 58 */	ble lbl_804B1B0C
/* 804B1AB8  FC 00 08 34 */	frsqrte f0, f1
/* 804B1ABC  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804B1AC0  FC 44 00 32 */	fmul f2, f4, f0
/* 804B1AC4  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804B1AC8  FC 00 00 32 */	fmul f0, f0, f0
/* 804B1ACC  FC 01 00 32 */	fmul f0, f1, f0
/* 804B1AD0  FC 03 00 28 */	fsub f0, f3, f0
/* 804B1AD4  FC 02 00 32 */	fmul f0, f2, f0
/* 804B1AD8  FC 44 00 32 */	fmul f2, f4, f0
/* 804B1ADC  FC 00 00 32 */	fmul f0, f0, f0
/* 804B1AE0  FC 01 00 32 */	fmul f0, f1, f0
/* 804B1AE4  FC 03 00 28 */	fsub f0, f3, f0
/* 804B1AE8  FC 02 00 32 */	fmul f0, f2, f0
/* 804B1AEC  FC 44 00 32 */	fmul f2, f4, f0
/* 804B1AF0  FC 00 00 32 */	fmul f0, f0, f0
/* 804B1AF4  FC 01 00 32 */	fmul f0, f1, f0
/* 804B1AF8  FC 03 00 28 */	fsub f0, f3, f0
/* 804B1AFC  FC 02 00 32 */	fmul f0, f2, f0
/* 804B1B00  FC 21 00 32 */	fmul f1, f1, f0
/* 804B1B04  FC 20 08 18 */	frsp f1, f1
/* 804B1B08  48 00 00 88 */	b lbl_804B1B90
lbl_804B1B0C:
/* 804B1B0C  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804B1B10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B1B14  40 80 00 10 */	bge lbl_804B1B24
/* 804B1B18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B1B1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804B1B20  48 00 00 70 */	b lbl_804B1B90
lbl_804B1B24:
/* 804B1B24  D0 21 00 08 */	stfs f1, 8(r1)
/* 804B1B28  80 81 00 08 */	lwz r4, 8(r1)
/* 804B1B2C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B1B30  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B1B34  7C 03 00 00 */	cmpw r3, r0
/* 804B1B38  41 82 00 14 */	beq lbl_804B1B4C
/* 804B1B3C  40 80 00 40 */	bge lbl_804B1B7C
/* 804B1B40  2C 03 00 00 */	cmpwi r3, 0
/* 804B1B44  41 82 00 20 */	beq lbl_804B1B64
/* 804B1B48  48 00 00 34 */	b lbl_804B1B7C
lbl_804B1B4C:
/* 804B1B4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B1B50  41 82 00 0C */	beq lbl_804B1B5C
/* 804B1B54  38 00 00 01 */	li r0, 1
/* 804B1B58  48 00 00 28 */	b lbl_804B1B80
lbl_804B1B5C:
/* 804B1B5C  38 00 00 02 */	li r0, 2
/* 804B1B60  48 00 00 20 */	b lbl_804B1B80
lbl_804B1B64:
/* 804B1B64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B1B68  41 82 00 0C */	beq lbl_804B1B74
/* 804B1B6C  38 00 00 05 */	li r0, 5
/* 804B1B70  48 00 00 10 */	b lbl_804B1B80
lbl_804B1B74:
/* 804B1B74  38 00 00 03 */	li r0, 3
/* 804B1B78  48 00 00 08 */	b lbl_804B1B80
lbl_804B1B7C:
/* 804B1B7C  38 00 00 04 */	li r0, 4
lbl_804B1B80:
/* 804B1B80  2C 00 00 01 */	cmpwi r0, 1
/* 804B1B84  40 82 00 0C */	bne lbl_804B1B90
/* 804B1B88  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B1B8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804B1B90:
/* 804B1B90  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804B1B94  EC 20 00 72 */	fmuls f1, f0, f1
/* 804B1B98  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 804B1B9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B1BA0  40 81 00 08 */	ble lbl_804B1BA8
/* 804B1BA4  FC 20 00 90 */	fmr f1, f0
lbl_804B1BA8:
/* 804B1BA8  C0 1F 0F F8 */	lfs f0, 0xff8(r31)
/* 804B1BAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B1BB0  40 81 00 08 */	ble lbl_804B1BB8
/* 804B1BB4  D0 3F 0F F8 */	stfs f1, 0xff8(r31)
lbl_804B1BB8:
/* 804B1BB8  38 7F 0F F8 */	addi r3, r31, 0xff8
/* 804B1BBC  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 804B1BC0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B1BC4  C0 7E 00 B4 */	lfs f3, 0xb4(r30)
/* 804B1BC8  4B DB DE 75 */	bl cLib_addCalc2__FPffff
/* 804B1BCC  48 00 01 28 */	b lbl_804B1CF4
lbl_804B1BD0:
/* 804B1BD0  2C 00 00 03 */	cmpwi r0, 3
/* 804B1BD4  40 82 00 38 */	bne lbl_804B1C0C
/* 804B1BD8  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B1BDC  1C 00 17 70 */	mulli r0, r0, 0x1770
/* 804B1BE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B1BE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B1BE8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B1BEC  7C 23 04 2E */	lfsx f1, r3, r0
/* 804B1BF0  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 804B1BF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B1BF8  FC 00 00 1E */	fctiwz f0, f0
/* 804B1BFC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804B1C00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B1C04  B0 1F 0F F2 */	sth r0, 0xff2(r31)
/* 804B1C08  48 00 00 EC */	b lbl_804B1CF4
lbl_804B1C0C:
/* 804B1C0C  38 A0 00 02 */	li r5, 2
/* 804B1C10  38 C0 04 00 */	li r6, 0x400
/* 804B1C14  2C 00 00 04 */	cmpwi r0, 4
/* 804B1C18  40 82 00 2C */	bne lbl_804B1C44
/* 804B1C1C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 804B1C20  2C 00 10 00 */	cmpwi r0, 0x1000
/* 804B1C24  41 81 00 0C */	bgt lbl_804B1C30
/* 804B1C28  2C 00 F0 00 */	cmpwi r0, -4096
/* 804B1C2C  40 80 00 18 */	bge lbl_804B1C44
lbl_804B1C30:
/* 804B1C30  38 00 17 70 */	li r0, 0x1770
/* 804B1C34  B0 1F 0F F4 */	sth r0, 0xff4(r31)
/* 804B1C38  38 A0 00 01 */	li r5, 1
/* 804B1C3C  38 C0 08 00 */	li r6, 0x800
/* 804B1C40  48 00 00 60 */	b lbl_804B1CA0
lbl_804B1C44:
/* 804B1C44  C0 5F 05 2C */	lfs f2, 0x52c(r31)
/* 804B1C48  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 804B1C4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B1C50  4C 41 13 82 */	cror 2, 1, 2
/* 804B1C54  40 82 00 44 */	bne lbl_804B1C98
/* 804B1C58  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 804B1C5C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 804B1C60  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804B1C64  EC 01 00 2A */	fadds f0, f1, f0
/* 804B1C68  FC 00 00 1E */	fctiwz f0, f0
/* 804B1C6C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804B1C70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B1C74  B0 1F 0F F4 */	sth r0, 0xff4(r31)
/* 804B1C78  A8 1F 0F F4 */	lha r0, 0xff4(r31)
/* 804B1C7C  2C 00 1B 58 */	cmpwi r0, 0x1b58
/* 804B1C80  40 81 00 0C */	ble lbl_804B1C8C
/* 804B1C84  38 00 1B 58 */	li r0, 0x1b58
/* 804B1C88  B0 1F 0F F4 */	sth r0, 0xff4(r31)
lbl_804B1C8C:
/* 804B1C8C  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 804B1C90  D0 1F 0F F8 */	stfs f0, 0xff8(r31)
/* 804B1C94  48 00 00 0C */	b lbl_804B1CA0
lbl_804B1C98:
/* 804B1C98  38 00 EC 78 */	li r0, -5000
/* 804B1C9C  B0 1F 0F F4 */	sth r0, 0xff4(r31)
lbl_804B1CA0:
/* 804B1CA0  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B1CA4  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 804B1CA8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B1CAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B1CB0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B1CB4  7C 23 04 2E */	lfsx f1, r3, r0
/* 804B1CB8  38 7F 0F F2 */	addi r3, r31, 0xff2
/* 804B1CBC  A8 9F 0F F4 */	lha r4, 0xff4(r31)
/* 804B1CC0  C0 1F 0F F8 */	lfs f0, 0xff8(r31)
/* 804B1CC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804B1CC8  FC 00 00 1E */	fctiwz f0, f0
/* 804B1CCC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804B1CD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B1CD4  7C 04 02 14 */	add r0, r4, r0
/* 804B1CD8  7C 04 07 34 */	extsh r4, r0
/* 804B1CDC  4B DB E9 2D */	bl cLib_addCalcAngleS2__FPssss
/* 804B1CE0  38 7F 0F F8 */	addi r3, r31, 0xff8
/* 804B1CE4  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 804B1CE8  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804B1CEC  C0 7E 01 C0 */	lfs f3, 0x1c0(r30)
/* 804B1CF0  4B DB DD 4D */	bl cLib_addCalc2__FPffff
lbl_804B1CF4:
/* 804B1CF4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804B1CF8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804B1CFC  39 61 00 50 */	addi r11, r1, 0x50
/* 804B1D00  4B EB 05 29 */	bl _restgpr_29
/* 804B1D04  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B1D08  7C 08 03 A6 */	mtlr r0
/* 804B1D0C  38 21 00 60 */	addi r1, r1, 0x60
/* 804B1D10  4E 80 00 20 */	blr 
