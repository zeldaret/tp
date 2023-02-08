lbl_806D1580:
/* 806D1580  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806D1584  7C 08 02 A6 */	mflr r0
/* 806D1588  90 01 00 84 */	stw r0, 0x84(r1)
/* 806D158C  39 61 00 80 */	addi r11, r1, 0x80
/* 806D1590  4B C9 0C 4D */	bl _savegpr_29
/* 806D1594  7C 7D 1B 78 */	mr r29, r3
/* 806D1598  3C 80 80 6D */	lis r4, cNullVec__6Z2Calc@ha /* 0x806D7AFC@ha */
/* 806D159C  3B C4 7A FC */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x806D7AFC@l */
/* 806D15A0  3C 80 80 6D */	lis r4, lit_3906@ha /* 0x806D79A0@ha */
/* 806D15A4  3B E4 79 A0 */	addi r31, r4, lit_3906@l /* 0x806D79A0@l */
/* 806D15A8  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D15AC  2C 00 00 00 */	cmpwi r0, 0
/* 806D15B0  40 82 01 5C */	bne lbl_806D170C
/* 806D15B4  38 00 00 00 */	li r0, 0
/* 806D15B8  90 1D 08 18 */	stw r0, 0x818(r29)
/* 806D15BC  98 1D 0A 69 */	stb r0, 0xa69(r29)
/* 806D15C0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806D15C4  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 806D15C8  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 806D15CC  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 806D15D0  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 806D15D4  EC 22 00 32 */	fmuls f1, f2, f0
/* 806D15D8  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 806D15DC  EC 42 00 32 */	fmuls f2, f2, f0
/* 806D15E0  4B 9A 49 79 */	bl SetWall__12dBgS_AcchCirFff
/* 806D15E4  80 7E 00 98 */	lwz r3, 0x98(r30)
/* 806D15E8  80 1E 00 9C */	lwz r0, 0x9c(r30)
/* 806D15EC  90 61 00 40 */	stw r3, 0x40(r1)
/* 806D15F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D15F4  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 806D15F8  90 01 00 48 */	stw r0, 0x48(r1)
/* 806D15FC  38 7D 0A 30 */	addi r3, r29, 0xa30
/* 806D1600  38 81 00 40 */	addi r4, r1, 0x40
/* 806D1604  4B C9 0A 45 */	bl __ptmf_cmpr
/* 806D1608  2C 03 00 00 */	cmpwi r3, 0
/* 806D160C  40 82 00 1C */	bne lbl_806D1628
/* 806D1610  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D1614  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806D1618  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D161C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D1620  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806D1624  48 00 00 D8 */	b lbl_806D16FC
lbl_806D1628:
/* 806D1628  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806D162C  4B B9 63 61 */	bl cM_rndFX__Ff
/* 806D1630  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806D1634  EC 00 08 2A */	fadds f0, f0, f1
/* 806D1638  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806D163C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 806D1640  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D1644  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806D1648  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806D164C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 806D1650  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 806D1654  4B 93 B8 B9 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 806D1658  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806D165C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806D1660  38 81 00 58 */	addi r4, r1, 0x58
/* 806D1664  38 A1 00 4C */	addi r5, r1, 0x4c
/* 806D1668  4B C7 57 05 */	bl PSMTXMultVec
/* 806D166C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806D1670  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806D1674  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806D1678  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806D167C  38 60 00 00 */	li r3, 0
/* 806D1680  98 7D 0A 6A */	stb r3, 0xa6a(r29)
/* 806D1684  88 1D 0A 6F */	lbz r0, 0xa6f(r29)
/* 806D1688  28 00 00 01 */	cmplwi r0, 1
/* 806D168C  40 82 00 24 */	bne lbl_806D16B0
/* 806D1690  98 7D 0A 71 */	stb r3, 0xa71(r29)
/* 806D1694  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806D1698  4B B9 62 F5 */	bl cM_rndFX__Ff
/* 806D169C  FC 00 08 1E */	fctiwz f0, f1
/* 806D16A0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806D16A4  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 806D16A8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806D16AC  48 00 00 50 */	b lbl_806D16FC
lbl_806D16B0:
/* 806D16B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044E@ha */
/* 806D16B4  38 03 04 4E */	addi r0, r3, 0x044E /* 0x0007044E@l */
/* 806D16B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D16BC  38 7D 09 6C */	addi r3, r29, 0x96c
/* 806D16C0  38 81 00 0C */	addi r4, r1, 0xc
/* 806D16C4  38 A0 00 00 */	li r5, 0
/* 806D16C8  38 C0 FF FF */	li r6, -1
/* 806D16CC  81 9D 09 6C */	lwz r12, 0x96c(r29)
/* 806D16D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D16D4  7D 89 03 A6 */	mtctr r12
/* 806D16D8  4E 80 04 21 */	bctrl 
/* 806D16DC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806D16E0  4B B9 62 AD */	bl cM_rndFX__Ff
/* 806D16E4  FC 00 08 1E */	fctiwz f0, f1
/* 806D16E8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806D16EC  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 806D16F0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 806D16F4  7C 00 1A 14 */	add r0, r0, r3
/* 806D16F8  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_806D16FC:
/* 806D16FC  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D1700  38 03 00 01 */	addi r0, r3, 1
/* 806D1704  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D1708  48 00 03 7C */	b lbl_806D1A84
lbl_806D170C:
/* 806D170C  2C 00 FF FF */	cmpwi r0, -1
/* 806D1710  40 82 00 10 */	bne lbl_806D1720
/* 806D1714  38 00 04 00 */	li r0, 0x400
/* 806D1718  90 1D 08 18 */	stw r0, 0x818(r29)
/* 806D171C  48 00 03 68 */	b lbl_806D1A84
lbl_806D1720:
/* 806D1720  2C 00 00 01 */	cmpwi r0, 1
/* 806D1724  40 82 01 54 */	bne lbl_806D1878
/* 806D1728  38 9D 07 CC */	addi r4, r29, 0x7cc
/* 806D172C  4B 94 8F A1 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D1730  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 806D1734  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D1738  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D173C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D1740  4B 9A 53 6D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806D1744  38 7D 0A 14 */	addi r3, r29, 0xa14
/* 806D1748  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D174C  C0 1D 0A 50 */	lfs f0, 0xa50(r29)
/* 806D1750  EC 21 00 2A */	fadds f1, f1, f0
/* 806D1754  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806D1758  4B B9 EF E9 */	bl cLib_chaseF__FPfff
/* 806D175C  38 7D 0A 10 */	addi r3, r29, 0xa10
/* 806D1760  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D1764  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 806D1768  4B B9 EF D9 */	bl cLib_chaseF__FPfff
/* 806D176C  38 7D 0A 18 */	addi r3, r29, 0xa18
/* 806D1770  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D1774  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 806D1778  4B B9 EF C9 */	bl cLib_chaseF__FPfff
/* 806D177C  80 1D 06 20 */	lwz r0, 0x620(r29)
/* 806D1780  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D1784  41 82 00 D8 */	beq lbl_806D185C
/* 806D1788  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha /* 0x806D14E0@ha */
/* 806D178C  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l /* 0x806D14E0@l */
/* 806D1790  7F A4 EB 78 */	mr r4, r29
/* 806D1794  4B 94 FB A5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806D1798  28 03 00 00 */	cmplwi r3, 0
/* 806D179C  41 82 00 48 */	beq lbl_806D17E4
/* 806D17A0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D17A4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D17A8  4B B9 F4 5D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D17AC  B0 7D 0A 1E */	sth r3, 0xa1e(r29)
/* 806D17B0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D17B4  4B B9 61 D9 */	bl cM_rndFX__Ff
/* 806D17B8  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 806D17BC  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 806D17C0  80 1E 00 A8 */	lwz r0, 0xa8(r30)
/* 806D17C4  90 61 00 34 */	stw r3, 0x34(r1)
/* 806D17C8  90 01 00 38 */	stw r0, 0x38(r1)
/* 806D17CC  80 1E 00 AC */	lwz r0, 0xac(r30)
/* 806D17D0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806D17D4  7F A3 EB 78 */	mr r3, r29
/* 806D17D8  38 81 00 34 */	addi r4, r1, 0x34
/* 806D17DC  4B FF FA ED */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D17E0  48 00 02 A4 */	b lbl_806D1A84
lbl_806D17E4:
/* 806D17E4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 806D17E8  D0 3D 0A 10 */	stfs f1, 0xa10(r29)
/* 806D17EC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806D17F0  D0 1D 0A 14 */	stfs f0, 0xa14(r29)
/* 806D17F4  D0 3D 0A 18 */	stfs f1, 0xa18(r29)
/* 806D17F8  D0 1D 0A 50 */	stfs f0, 0xa50(r29)
/* 806D17FC  38 00 0F A0 */	li r0, 0xfa0
/* 806D1800  B0 1D 0A 64 */	sth r0, 0xa64(r29)
/* 806D1804  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D1808  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806D180C  38 00 04 00 */	li r0, 0x400
/* 806D1810  B0 1D 0A 5C */	sth r0, 0xa5c(r29)
/* 806D1814  88 1D 0A 6F */	lbz r0, 0xa6f(r29)
/* 806D1818  28 00 00 00 */	cmplwi r0, 0
/* 806D181C  40 82 00 30 */	bne lbl_806D184C
/* 806D1820  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070450@ha */
/* 806D1824  38 03 04 50 */	addi r0, r3, 0x0450 /* 0x00070450@l */
/* 806D1828  90 01 00 08 */	stw r0, 8(r1)
/* 806D182C  38 7D 09 6C */	addi r3, r29, 0x96c
/* 806D1830  38 81 00 08 */	addi r4, r1, 8
/* 806D1834  38 A0 00 00 */	li r5, 0
/* 806D1838  38 C0 FF FF */	li r6, -1
/* 806D183C  81 9D 09 6C */	lwz r12, 0x96c(r29)
/* 806D1840  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D1844  7D 89 03 A6 */	mtctr r12
/* 806D1848  4E 80 04 21 */	bctrl 
lbl_806D184C:
/* 806D184C  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D1850  38 03 00 01 */	addi r0, r3, 1
/* 806D1854  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D1858  48 00 02 2C */	b lbl_806D1A84
lbl_806D185C:
/* 806D185C  A8 7D 04 DC */	lha r3, 0x4dc(r29)
/* 806D1860  38 03 04 00 */	addi r0, r3, 0x400
/* 806D1864  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 806D1868  A8 7D 04 E0 */	lha r3, 0x4e0(r29)
/* 806D186C  38 03 04 00 */	addi r0, r3, 0x400
/* 806D1870  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 806D1874  48 00 02 10 */	b lbl_806D1A84
lbl_806D1878:
/* 806D1878  38 9D 07 CC */	addi r4, r29, 0x7cc
/* 806D187C  4B 94 8E 51 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D1880  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 806D1884  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D1888  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D188C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D1890  4B 9A 52 1D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806D1894  38 7D 0A 14 */	addi r3, r29, 0xa14
/* 806D1898  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D189C  C0 1D 0A 50 */	lfs f0, 0xa50(r29)
/* 806D18A0  EC 21 00 2A */	fadds f1, f1, f0
/* 806D18A4  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806D18A8  4B B9 EE 99 */	bl cLib_chaseF__FPfff
/* 806D18AC  38 7D 0A 10 */	addi r3, r29, 0xa10
/* 806D18B0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D18B4  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 806D18B8  4B B9 EE 89 */	bl cLib_chaseF__FPfff
/* 806D18BC  38 7D 0A 18 */	addi r3, r29, 0xa18
/* 806D18C0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D18C4  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 806D18C8  4B B9 EE 79 */	bl cLib_chaseF__FPfff
/* 806D18CC  80 1D 06 20 */	lwz r0, 0x620(r29)
/* 806D18D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D18D4  41 82 00 60 */	beq lbl_806D1934
/* 806D18D8  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha /* 0x806D14E0@ha */
/* 806D18DC  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l /* 0x806D14E0@l */
/* 806D18E0  7F A4 EB 78 */	mr r4, r29
/* 806D18E4  4B 94 FA 55 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806D18E8  28 03 00 00 */	cmplwi r3, 0
/* 806D18EC  41 82 00 48 */	beq lbl_806D1934
/* 806D18F0  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D18F4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D18F8  4B B9 F3 0D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D18FC  B0 7D 0A 1E */	sth r3, 0xa1e(r29)
/* 806D1900  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D1904  4B B9 60 89 */	bl cM_rndFX__Ff
/* 806D1908  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 806D190C  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 806D1910  80 1E 00 B4 */	lwz r0, 0xb4(r30)
/* 806D1914  90 61 00 28 */	stw r3, 0x28(r1)
/* 806D1918  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806D191C  80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 806D1920  90 01 00 30 */	stw r0, 0x30(r1)
/* 806D1924  7F A3 EB 78 */	mr r3, r29
/* 806D1928  38 81 00 28 */	addi r4, r1, 0x28
/* 806D192C  4B FF F9 9D */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D1930  48 00 01 54 */	b lbl_806D1A84
lbl_806D1934:
/* 806D1934  88 1D 0A 6F */	lbz r0, 0xa6f(r29)
/* 806D1938  28 00 00 01 */	cmplwi r0, 1
/* 806D193C  40 82 00 98 */	bne lbl_806D19D4
/* 806D1940  38 7D 0A 5C */	addi r3, r29, 0xa5c
/* 806D1944  38 80 00 00 */	li r4, 0
/* 806D1948  38 A0 00 08 */	li r5, 8
/* 806D194C  38 C0 01 00 */	li r6, 0x100
/* 806D1950  38 E0 00 04 */	li r7, 4
/* 806D1954  4B B9 EB ED */	bl cLib_addCalcAngleS__FPsssss
/* 806D1958  A8 7D 04 DC */	lha r3, 0x4dc(r29)
/* 806D195C  A8 1D 0A 5C */	lha r0, 0xa5c(r29)
/* 806D1960  7C 03 02 14 */	add r0, r3, r0
/* 806D1964  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 806D1968  88 1D 0A 71 */	lbz r0, 0xa71(r29)
/* 806D196C  28 00 00 00 */	cmplwi r0, 0
/* 806D1970  41 82 01 14 */	beq lbl_806D1A84
/* 806D1974  88 7D 0A 6A */	lbz r3, 0xa6a(r29)
/* 806D1978  38 03 00 01 */	addi r0, r3, 1
/* 806D197C  98 1D 0A 6A */	stb r0, 0xa6a(r29)
/* 806D1980  88 7D 0A 6A */	lbz r3, 0xa6a(r29)
/* 806D1984  A8 1D 0A 5E */	lha r0, 0xa5e(r29)
/* 806D1988  7C 03 00 00 */	cmpw r3, r0
/* 806D198C  40 81 00 F8 */	ble lbl_806D1A84
/* 806D1990  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806D1994  D0 1D 0A 10 */	stfs f0, 0xa10(r29)
/* 806D1998  D0 1D 0A 14 */	stfs f0, 0xa14(r29)
/* 806D199C  D0 1D 0A 18 */	stfs f0, 0xa18(r29)
/* 806D19A0  38 00 00 00 */	li r0, 0
/* 806D19A4  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 806D19A8  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 806D19AC  80 7E 00 BC */	lwz r3, 0xbc(r30)
/* 806D19B0  80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 806D19B4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 806D19B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 806D19BC  80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 806D19C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D19C4  7F A3 EB 78 */	mr r3, r29
/* 806D19C8  38 81 00 1C */	addi r4, r1, 0x1c
/* 806D19CC  4B FF F8 FD */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D19D0  48 00 00 B4 */	b lbl_806D1A84
lbl_806D19D4:
/* 806D19D4  88 1D 0A 76 */	lbz r0, 0xa76(r29)
/* 806D19D8  28 00 00 00 */	cmplwi r0, 0
/* 806D19DC  40 82 00 A8 */	bne lbl_806D1A84
/* 806D19E0  88 7D 0A 6A */	lbz r3, 0xa6a(r29)
/* 806D19E4  38 03 00 01 */	addi r0, r3, 1
/* 806D19E8  98 1D 0A 6A */	stb r0, 0xa6a(r29)
/* 806D19EC  88 1D 0A 6A */	lbz r0, 0xa6a(r29)
/* 806D19F0  28 00 00 08 */	cmplwi r0, 8
/* 806D19F4  40 80 00 30 */	bge lbl_806D1A24
/* 806D19F8  38 7D 0A 5C */	addi r3, r29, 0xa5c
/* 806D19FC  38 80 00 00 */	li r4, 0
/* 806D1A00  38 A0 00 08 */	li r5, 8
/* 806D1A04  38 C0 01 00 */	li r6, 0x100
/* 806D1A08  38 E0 00 04 */	li r7, 4
/* 806D1A0C  4B B9 EB 35 */	bl cLib_addCalcAngleS__FPsssss
/* 806D1A10  A8 7D 04 DC */	lha r3, 0x4dc(r29)
/* 806D1A14  A8 1D 0A 5C */	lha r0, 0xa5c(r29)
/* 806D1A18  7C 03 02 14 */	add r0, r3, r0
/* 806D1A1C  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 806D1A20  48 00 00 64 */	b lbl_806D1A84
lbl_806D1A24:
/* 806D1A24  28 00 00 64 */	cmplwi r0, 0x64
/* 806D1A28  40 81 00 5C */	ble lbl_806D1A84
/* 806D1A2C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806D1A30  4B B9 5F 5D */	bl cM_rndFX__Ff
/* 806D1A34  FC 00 08 1E */	fctiwz f0, f1
/* 806D1A38  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806D1A3C  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 806D1A40  38 00 00 00 */	li r0, 0
/* 806D1A44  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 806D1A48  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 806D1A4C  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 806D1A50  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806D1A54  D0 1D 0A 10 */	stfs f0, 0xa10(r29)
/* 806D1A58  D0 1D 0A 14 */	stfs f0, 0xa14(r29)
/* 806D1A5C  D0 1D 0A 18 */	stfs f0, 0xa18(r29)
/* 806D1A60  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 806D1A64  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 806D1A68  90 61 00 10 */	stw r3, 0x10(r1)
/* 806D1A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D1A70  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 806D1A74  90 01 00 18 */	stw r0, 0x18(r1)
/* 806D1A78  7F A3 EB 78 */	mr r3, r29
/* 806D1A7C  38 81 00 10 */	addi r4, r1, 0x10
/* 806D1A80  4B FF F8 49 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
lbl_806D1A84:
/* 806D1A84  39 61 00 80 */	addi r11, r1, 0x80
/* 806D1A88  4B C9 07 A1 */	bl _restgpr_29
/* 806D1A8C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806D1A90  7C 08 03 A6 */	mtlr r0
/* 806D1A94  38 21 00 80 */	addi r1, r1, 0x80
/* 806D1A98  4E 80 00 20 */	blr 
