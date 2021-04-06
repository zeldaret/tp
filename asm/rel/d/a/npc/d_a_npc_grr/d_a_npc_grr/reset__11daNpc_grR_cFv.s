lbl_809E16CC:
/* 809E16CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E16D0  7C 08 02 A6 */	mflr r0
/* 809E16D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E16D8  39 61 00 20 */	addi r11, r1, 0x20
/* 809E16DC  4B 98 0B 01 */	bl _savegpr_29
/* 809E16E0  7C 7F 1B 78 */	mr r31, r3
/* 809E16E4  4B 77 11 E5 */	bl initialize__8daNpcF_cFv
/* 809E16E8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E16EC  4B 76 F0 4D */	bl initialize__15daNpcF_MatAnm_cFv
/* 809E16F0  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 809E16F4  4B 76 F9 45 */	bl initialize__15daNpcF_Lookat_cFv
/* 809E16F8  3B A0 00 00 */	li r29, 0
/* 809E16FC  3B C0 00 00 */	li r30, 0
lbl_809E1700:
/* 809E1700  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809E1704  7C 7F 1A 14 */	add r3, r31, r3
/* 809E1708  4B 76 EF A9 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809E170C  3B BD 00 01 */	addi r29, r29, 1
/* 809E1710  2C 1D 00 02 */	cmpwi r29, 2
/* 809E1714  3B DE 00 08 */	addi r30, r30, 8
/* 809E1718  41 80 FF E8 */	blt lbl_809E1700
/* 809E171C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809E1720  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809E1724  80 64 00 00 */	lwz r3, 0(r4)
/* 809E1728  80 04 00 04 */	lwz r0, 4(r4)
/* 809E172C  90 7F 0D C8 */	stw r3, 0xdc8(r31)
/* 809E1730  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 809E1734  80 04 00 08 */	lwz r0, 8(r4)
/* 809E1738  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 809E173C  80 64 00 00 */	lwz r3, 0(r4)
/* 809E1740  80 04 00 04 */	lwz r0, 4(r4)
/* 809E1744  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 809E1748  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 809E174C  80 04 00 08 */	lwz r0, 8(r4)
/* 809E1750  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 809E1754  38 80 00 00 */	li r4, 0
/* 809E1758  90 9F 0D F8 */	stw r4, 0xdf8(r31)
/* 809E175C  90 9F 0D FC */	stw r4, 0xdfc(r31)
/* 809E1760  90 9F 0E 00 */	stw r4, 0xe00(r31)
/* 809E1764  90 9F 0E 04 */	stw r4, 0xe04(r31)
/* 809E1768  38 00 FF FF */	li r0, -1
/* 809E176C  B0 1F 0E 0C */	sth r0, 0xe0c(r31)
/* 809E1770  B0 9F 0E 0E */	sth r4, 0xe0e(r31)
/* 809E1774  90 1F 0E 14 */	stw r0, 0xe14(r31)
/* 809E1778  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809E177C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 809E1780  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809E1784  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 809E1788  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809E178C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 809E1790  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809E1794  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 809E1798  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809E179C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 809E17A0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809E17A4  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 809E17A8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809E17AC  B0 9F 04 DC */	sth r4, 0x4dc(r31)
/* 809E17B0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809E17B4  B0 9F 04 E0 */	sth r4, 0x4e0(r31)
/* 809E17B8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809E17BC  B0 1F 04 C8 */	sth r0, 0x4c8(r31)
/* 809E17C0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809E17C4  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 809E17C8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809E17CC  B0 1F 04 CC */	sth r0, 0x4cc(r31)
/* 809E17D0  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809E17D4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 809E17D8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809E17DC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809E17E0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809E17E4  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 809E17E8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 809E17EC  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 809E17F0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809E17F4  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 809E17F8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 809E17FC  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 809E1800  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809E1804  B0 1F 08 F6 */	sth r0, 0x8f6(r31)
/* 809E1808  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809E180C  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809E1810  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809E1814  B0 1F 08 FA */	sth r0, 0x8fa(r31)
/* 809E1818  3C 60 80 9E */	lis r3, lit_4453@ha /* 0x809E3968@ha */
/* 809E181C  C0 03 39 68 */	lfs f0, lit_4453@l(r3)  /* 0x809E3968@l */
/* 809E1820  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809E1824  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809E1828  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809E182C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809E1830  98 9F 0E 18 */	stb r4, 0xe18(r31)
/* 809E1834  88 1F 0E 10 */	lbz r0, 0xe10(r31)
/* 809E1838  28 00 00 02 */	cmplwi r0, 2
/* 809E183C  41 82 00 48 */	beq lbl_809E1884
/* 809E1840  7F E3 FB 78 */	mr r3, r31
/* 809E1844  38 80 00 06 */	li r4, 6
/* 809E1848  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E184C  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E1850  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E1854  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E1858  7D 89 03 A6 */	mtctr r12
/* 809E185C  4E 80 04 21 */	bctrl 
/* 809E1860  7F E3 FB 78 */	mr r3, r31
/* 809E1864  38 80 00 03 */	li r4, 3
/* 809E1868  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E186C  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E1870  38 A0 00 00 */	li r5, 0
/* 809E1874  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E1878  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E187C  7D 89 03 A6 */	mtctr r12
/* 809E1880  4E 80 04 21 */	bctrl 
lbl_809E1884:
/* 809E1884  38 00 00 01 */	li r0, 1
/* 809E1888  98 1F 09 EE */	stb r0, 0x9ee(r31)
/* 809E188C  39 61 00 20 */	addi r11, r1, 0x20
/* 809E1890  4B 98 09 99 */	bl _restgpr_29
/* 809E1894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E1898  7C 08 03 A6 */	mtlr r0
/* 809E189C  38 21 00 20 */	addi r1, r1, 0x20
/* 809E18A0  4E 80 00 20 */	blr 
