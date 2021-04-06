lbl_80CF1384:
/* 80CF1384  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CF1388  7C 08 02 A6 */	mflr r0
/* 80CF138C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CF1390  39 61 00 80 */	addi r11, r1, 0x80
/* 80CF1394  4B 67 0E 41 */	bl _savegpr_27
/* 80CF1398  7C 7C 1B 78 */	mr r28, r3
/* 80CF139C  3C 80 80 CF */	lis r4, lit_3850@ha /* 0x80CF3000@ha */
/* 80CF13A0  3B E4 30 00 */	addi r31, r4, lit_3850@l /* 0x80CF3000@l */
/* 80CF13A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF13A8  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF13AC  83 BB 5D AC */	lwz r29, 0x5dac(r27)
/* 80CF13B0  88 1B 5D B0 */	lbz r0, 0x5db0(r27)
/* 80CF13B4  7C 00 07 74 */	extsb r0, r0
/* 80CF13B8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80CF13BC  7C 9B 02 14 */	add r4, r27, r0
/* 80CF13C0  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 80CF13C4  A8 03 08 CC */	lha r0, 0x8cc(r3)
/* 80CF13C8  2C 00 00 03 */	cmpwi r0, 3
/* 80CF13CC  41 82 03 94 */	beq lbl_80CF1760
/* 80CF13D0  40 80 00 14 */	bge lbl_80CF13E4
/* 80CF13D4  2C 00 00 01 */	cmpwi r0, 1
/* 80CF13D8  41 82 00 18 */	beq lbl_80CF13F0
/* 80CF13DC  40 80 00 F0 */	bge lbl_80CF14CC
/* 80CF13E0  48 00 05 04 */	b lbl_80CF18E4
lbl_80CF13E4:
/* 80CF13E4  2C 00 00 64 */	cmpwi r0, 0x64
/* 80CF13E8  41 82 04 74 */	beq lbl_80CF185C
/* 80CF13EC  48 00 04 F8 */	b lbl_80CF18E4
lbl_80CF13F0:
/* 80CF13F0  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80CF13F4  28 00 00 02 */	cmplwi r0, 2
/* 80CF13F8  41 82 00 28 */	beq lbl_80CF1420
/* 80CF13FC  38 80 00 02 */	li r4, 2
/* 80CF1400  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80CF1404  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80CF1408  38 C0 00 00 */	li r6, 0
/* 80CF140C  4B 32 A4 FD */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80CF1410  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 80CF1414  60 00 00 02 */	ori r0, r0, 2
/* 80CF1418  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 80CF141C  48 00 05 3C */	b lbl_80CF1958
lbl_80CF1420:
/* 80CF1420  38 00 00 02 */	li r0, 2
/* 80CF1424  B0 1C 08 CC */	sth r0, 0x8cc(r28)
/* 80CF1428  38 7E 02 48 */	addi r3, r30, 0x248
/* 80CF142C  4B 47 00 A5 */	bl Stop__9dCamera_cFv
/* 80CF1430  38 60 00 00 */	li r3, 0
/* 80CF1434  B0 7C 08 CE */	sth r3, 0x8ce(r28)
/* 80CF1438  38 00 00 03 */	li r0, 3
/* 80CF143C  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 80CF1440  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 80CF1444  38 00 00 13 */	li r0, 0x13
/* 80CF1448  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80CF144C  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 80CF1450  90 7D 06 10 */	stw r3, 0x610(r29)
/* 80CF1454  B0 7D 06 0A */	sth r3, 0x60a(r29)
/* 80CF1458  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 80CF145C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CF1460  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CF1464  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF1468  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80CF146C  4B 31 AF 71 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CF1470  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF1474  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CF1478  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CF147C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80CF1480  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CF1484  38 61 00 54 */	addi r3, r1, 0x54
/* 80CF1488  38 81 00 48 */	addi r4, r1, 0x48
/* 80CF148C  4B 57 FA 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CF1490  38 61 00 3C */	addi r3, r1, 0x3c
/* 80CF1494  38 9C 05 38 */	addi r4, r28, 0x538
/* 80CF1498  38 A1 00 48 */	addi r5, r1, 0x48
/* 80CF149C  4B 57 56 49 */	bl __pl__4cXyzCFRC3Vec
/* 80CF14A0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80CF14A4  D0 1C 05 98 */	stfs f0, 0x598(r28)
/* 80CF14A8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80CF14AC  D0 1C 05 9C */	stfs f0, 0x59c(r28)
/* 80CF14B0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CF14B4  D0 1C 05 A0 */	stfs f0, 0x5a0(r28)
/* 80CF14B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF14BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF14C0  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80CF14C4  54 00 04 36 */	rlwinm r0, r0, 0, 0x10, 0x1b
/* 80CF14C8  B0 03 4F A4 */	sth r0, 0x4fa4(r3)
lbl_80CF14CC:
/* 80CF14CC  38 00 00 01 */	li r0, 1
/* 80CF14D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF14D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF14D8  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 80CF14DC  38 00 00 00 */	li r0, 0
/* 80CF14E0  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 80CF14E4  A8 1C 08 CE */	lha r0, 0x8ce(r28)
/* 80CF14E8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CF14EC  40 80 00 44 */	bge lbl_80CF1530
/* 80CF14F0  38 7C 05 98 */	addi r3, r28, 0x598
/* 80CF14F4  C0 3C 05 38 */	lfs f1, 0x538(r28)
/* 80CF14F8  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF14FC  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80CF1500  4B 57 E5 3D */	bl cLib_addCalc2__FPffff
/* 80CF1504  38 7C 05 9C */	addi r3, r28, 0x59c
/* 80CF1508  C0 3C 05 3C */	lfs f1, 0x53c(r28)
/* 80CF150C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF1510  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80CF1514  4B 57 E5 29 */	bl cLib_addCalc2__FPffff
/* 80CF1518  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 80CF151C  C0 3C 05 40 */	lfs f1, 0x540(r28)
/* 80CF1520  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF1524  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80CF1528  4B 57 E5 15 */	bl cLib_addCalc2__FPffff
/* 80CF152C  48 00 00 1C */	b lbl_80CF1548
lbl_80CF1530:
/* 80CF1530  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80CF1534  D0 1C 05 98 */	stfs f0, 0x598(r28)
/* 80CF1538  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80CF153C  D0 1C 05 9C */	stfs f0, 0x59c(r28)
/* 80CF1540  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 80CF1544  D0 1C 05 A0 */	stfs f0, 0x5a0(r28)
lbl_80CF1548:
/* 80CF1548  7F A3 EB 78 */	mr r3, r29
/* 80CF154C  38 9C 05 98 */	addi r4, r28, 0x598
/* 80CF1550  A8 BC 04 DE */	lha r5, 0x4de(r28)
/* 80CF1554  3C A5 00 01 */	addis r5, r5, 1
/* 80CF1558  38 05 80 00 */	addi r0, r5, -32768
/* 80CF155C  7C 05 07 34 */	extsh r5, r0
/* 80CF1560  38 C0 00 00 */	li r6, 0
/* 80CF1564  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80CF1568  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CF156C  7D 89 03 A6 */	mtctr r12
/* 80CF1570  4E 80 04 21 */	bctrl 
/* 80CF1574  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80CF1578  D0 1C 08 F4 */	stfs f0, 0x8f4(r28)
/* 80CF157C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80CF1580  D0 1C 08 F0 */	stfs f0, 0x8f0(r28)
/* 80CF1584  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80CF1588  D0 1C 08 E8 */	stfs f0, 0x8e8(r28)
/* 80CF158C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80CF1590  D0 1C 08 EC */	stfs f0, 0x8ec(r28)
/* 80CF1594  38 7C 08 DC */	addi r3, r28, 0x8dc
/* 80CF1598  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80CF159C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80CF15A0  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80CF15A4  4B 57 E4 99 */	bl cLib_addCalc2__FPffff
/* 80CF15A8  38 7C 08 E0 */	addi r3, r28, 0x8e0
/* 80CF15AC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80CF15B0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CF15B4  EC 21 00 2A */	fadds f1, f1, f0
/* 80CF15B8  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80CF15BC  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80CF15C0  4B 57 E4 7D */	bl cLib_addCalc2__FPffff
/* 80CF15C4  38 7C 08 E4 */	addi r3, r28, 0x8e4
/* 80CF15C8  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80CF15CC  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80CF15D0  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80CF15D4  4B 57 E4 69 */	bl cLib_addCalc2__FPffff
/* 80CF15D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CF15DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CF15E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF15E4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80CF15E8  4B 31 AD F5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CF15EC  C0 1C 08 E8 */	lfs f0, 0x8e8(r28)
/* 80CF15F0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CF15F4  C0 1C 08 EC */	lfs f0, 0x8ec(r28)
/* 80CF15F8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CF15FC  C0 1C 08 F0 */	lfs f0, 0x8f0(r28)
/* 80CF1600  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CF1604  38 61 00 54 */	addi r3, r1, 0x54
/* 80CF1608  38 81 00 48 */	addi r4, r1, 0x48
/* 80CF160C  4B 57 F8 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CF1610  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80CF1614  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CF1618  EC 21 00 2A */	fadds f1, f1, f0
/* 80CF161C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80CF1620  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80CF1624  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CF1628  EC 02 00 2A */	fadds f0, f2, f0
/* 80CF162C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CF1630  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80CF1634  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CF1638  EC 02 00 2A */	fadds f0, f2, f0
/* 80CF163C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CF1640  A8 1C 08 CE */	lha r0, 0x8ce(r28)
/* 80CF1644  2C 00 00 00 */	cmpwi r0, 0
/* 80CF1648  40 82 00 44 */	bne lbl_80CF168C
/* 80CF164C  D0 3C 08 D0 */	stfs f1, 0x8d0(r28)
/* 80CF1650  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CF1654  D0 1C 08 D4 */	stfs f0, 0x8d4(r28)
/* 80CF1658  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CF165C  D0 1C 08 D8 */	stfs f0, 0x8d8(r28)
/* 80CF1660  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CF1664  D0 1C 08 DC */	stfs f0, 0x8dc(r28)
/* 80CF1668  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CF166C  D0 1C 08 E0 */	stfs f0, 0x8e0(r28)
/* 80CF1670  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CF1674  D0 1C 08 E4 */	stfs f0, 0x8e4(r28)
/* 80CF1678  C0 3C 08 E0 */	lfs f1, 0x8e0(r28)
/* 80CF167C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80CF1680  EC 01 00 2A */	fadds f0, f1, f0
/* 80CF1684  D0 1C 08 E0 */	stfs f0, 0x8e0(r28)
/* 80CF1688  48 00 00 3C */	b lbl_80CF16C4
lbl_80CF168C:
/* 80CF168C  38 7C 08 D0 */	addi r3, r28, 0x8d0
/* 80CF1690  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80CF1694  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80CF1698  4B 57 E3 A5 */	bl cLib_addCalc2__FPffff
/* 80CF169C  38 7C 08 D4 */	addi r3, r28, 0x8d4
/* 80CF16A0  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80CF16A4  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80CF16A8  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80CF16AC  4B 57 E3 91 */	bl cLib_addCalc2__FPffff
/* 80CF16B0  38 7C 08 D8 */	addi r3, r28, 0x8d8
/* 80CF16B4  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80CF16B8  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80CF16BC  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80CF16C0  4B 57 E3 7D */	bl cLib_addCalc2__FPffff
lbl_80CF16C4:
/* 80CF16C4  A8 1C 05 96 */	lha r0, 0x596(r28)
/* 80CF16C8  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80CF16CC  7C 00 07 34 */	extsh r0, r0
/* 80CF16D0  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CF16D4  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80CF16D8  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80CF16DC  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80CF16E0  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80CF16E4  41 82 02 00 */	beq lbl_80CF18E4
/* 80CF16E8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050019@ha */
/* 80CF16EC  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00050019@l */
/* 80CF16F0  90 01 00 08 */	stw r0, 8(r1)
/* 80CF16F4  38 7C 08 A8 */	addi r3, r28, 0x8a8
/* 80CF16F8  38 81 00 08 */	addi r4, r1, 8
/* 80CF16FC  38 A0 00 00 */	li r5, 0
/* 80CF1700  38 C0 FF FF */	li r6, -1
/* 80CF1704  81 9C 08 B8 */	lwz r12, 0x8b8(r28)
/* 80CF1708  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CF170C  7D 89 03 A6 */	mtctr r12
/* 80CF1710  4E 80 04 21 */	bctrl 
/* 80CF1714  38 00 00 18 */	li r0, 0x18
/* 80CF1718  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80CF171C  38 00 00 00 */	li r0, 0
/* 80CF1720  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80CF1724  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80CF1728  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80CF172C  38 7C 08 64 */	addi r3, r28, 0x864
/* 80CF1730  38 80 00 09 */	li r4, 9
/* 80CF1734  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CF1738  38 A0 00 00 */	li r5, 0
/* 80CF173C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF1740  4B FF F1 B9 */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF1744  38 00 00 03 */	li r0, 3
/* 80CF1748  B0 1C 08 CC */	sth r0, 0x8cc(r28)
/* 80CF174C  38 00 00 00 */	li r0, 0
/* 80CF1750  B0 1C 08 CE */	sth r0, 0x8ce(r28)
/* 80CF1754  38 00 00 32 */	li r0, 0x32
/* 80CF1758  B0 1C 05 7E */	sth r0, 0x57e(r28)
/* 80CF175C  48 00 01 88 */	b lbl_80CF18E4
lbl_80CF1760:
/* 80CF1760  38 7C 08 DC */	addi r3, r28, 0x8dc
/* 80CF1764  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80CF1768  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80CF176C  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80CF1770  4B 57 E2 CD */	bl cLib_addCalc2__FPffff
/* 80CF1774  38 7C 08 E0 */	addi r3, r28, 0x8e0
/* 80CF1778  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80CF177C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80CF1780  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80CF1784  4B 57 E2 B9 */	bl cLib_addCalc2__FPffff
/* 80CF1788  38 7C 08 E4 */	addi r3, r28, 0x8e4
/* 80CF178C  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80CF1790  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80CF1794  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80CF1798  4B 57 E2 A5 */	bl cLib_addCalc2__FPffff
/* 80CF179C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CF17A0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CF17A4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF17A8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80CF17AC  4B 31 AC 31 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CF17B0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF17B4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CF17B8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CF17BC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80CF17C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CF17C4  38 61 00 54 */	addi r3, r1, 0x54
/* 80CF17C8  38 81 00 48 */	addi r4, r1, 0x48
/* 80CF17CC  4B 57 F7 21 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CF17D0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80CF17D4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CF17D8  EC 21 00 2A */	fadds f1, f1, f0
/* 80CF17DC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80CF17E0  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80CF17E4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CF17E8  EC 02 00 2A */	fadds f0, f2, f0
/* 80CF17EC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CF17F0  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80CF17F4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CF17F8  EC 02 00 2A */	fadds f0, f2, f0
/* 80CF17FC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CF1800  38 7C 08 D0 */	addi r3, r28, 0x8d0
/* 80CF1804  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80CF1808  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80CF180C  4B 57 E2 31 */	bl cLib_addCalc2__FPffff
/* 80CF1810  38 7C 08 D4 */	addi r3, r28, 0x8d4
/* 80CF1814  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80CF1818  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80CF181C  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80CF1820  4B 57 E2 1D */	bl cLib_addCalc2__FPffff
/* 80CF1824  38 7C 08 D8 */	addi r3, r28, 0x8d8
/* 80CF1828  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80CF182C  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80CF1830  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80CF1834  4B 57 E2 09 */	bl cLib_addCalc2__FPffff
/* 80CF1838  A8 1C 08 CE */	lha r0, 0x8ce(r28)
/* 80CF183C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80CF1840  40 82 00 A4 */	bne lbl_80CF18E4
/* 80CF1844  38 00 00 64 */	li r0, 0x64
/* 80CF1848  B0 1C 08 CC */	sth r0, 0x8cc(r28)
/* 80CF184C  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80CF1850  38 03 80 00 */	addi r0, r3, -32768
/* 80CF1854  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80CF1858  48 00 00 8C */	b lbl_80CF18E4
lbl_80CF185C:
/* 80CF185C  C0 1C 08 DC */	lfs f0, 0x8dc(r28)
/* 80CF1860  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CF1864  C0 1C 08 E0 */	lfs f0, 0x8e0(r28)
/* 80CF1868  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CF186C  C0 1C 08 E4 */	lfs f0, 0x8e4(r28)
/* 80CF1870  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CF1874  C0 1C 08 D0 */	lfs f0, 0x8d0(r28)
/* 80CF1878  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CF187C  C0 1C 08 D4 */	lfs f0, 0x8d4(r28)
/* 80CF1880  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CF1884  C0 1C 08 D8 */	lfs f0, 0x8d8(r28)
/* 80CF1888  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CF188C  38 7E 02 48 */	addi r3, r30, 0x248
/* 80CF1890  38 81 00 30 */	addi r4, r1, 0x30
/* 80CF1894  38 A1 00 24 */	addi r5, r1, 0x24
/* 80CF1898  C0 3C 08 F4 */	lfs f1, 0x8f4(r28)
/* 80CF189C  38 C0 00 00 */	li r6, 0
/* 80CF18A0  4B 48 F3 01 */	bl Reset__9dCamera_cF4cXyz4cXyzfs
/* 80CF18A4  38 7E 02 48 */	addi r3, r30, 0x248
/* 80CF18A8  4B 46 FC 05 */	bl Start__9dCamera_cFv
/* 80CF18AC  38 7E 02 48 */	addi r3, r30, 0x248
/* 80CF18B0  38 80 00 00 */	li r4, 0
/* 80CF18B4  4B 47 17 59 */	bl SetTrimSize__9dCamera_cFl
/* 80CF18B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CF18BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CF18C0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80CF18C4  4B 35 0B A5 */	bl reset__14dEvt_control_cFv
/* 80CF18C8  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80CF18CC  38 00 00 02 */	li r0, 2
/* 80CF18D0  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80CF18D4  38 00 00 01 */	li r0, 1
/* 80CF18D8  90 03 06 14 */	stw r0, 0x614(r3)
/* 80CF18DC  38 00 00 00 */	li r0, 0
/* 80CF18E0  B0 1C 08 CC */	sth r0, 0x8cc(r28)
lbl_80CF18E4:
/* 80CF18E4  A8 1C 08 CC */	lha r0, 0x8cc(r28)
/* 80CF18E8  2C 00 00 00 */	cmpwi r0, 0
/* 80CF18EC  41 82 00 6C */	beq lbl_80CF1958
/* 80CF18F0  C0 1C 08 DC */	lfs f0, 0x8dc(r28)
/* 80CF18F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CF18F8  C0 1C 08 E0 */	lfs f0, 0x8e0(r28)
/* 80CF18FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CF1900  C0 1C 08 E4 */	lfs f0, 0x8e4(r28)
/* 80CF1904  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CF1908  C0 1C 08 D0 */	lfs f0, 0x8d0(r28)
/* 80CF190C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CF1910  C0 1C 08 D4 */	lfs f0, 0x8d4(r28)
/* 80CF1914  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CF1918  C0 1C 08 D8 */	lfs f0, 0x8d8(r28)
/* 80CF191C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CF1920  38 7E 02 48 */	addi r3, r30, 0x248
/* 80CF1924  38 81 00 18 */	addi r4, r1, 0x18
/* 80CF1928  38 A1 00 0C */	addi r5, r1, 0xc
/* 80CF192C  C0 3C 08 F4 */	lfs f1, 0x8f4(r28)
/* 80CF1930  38 C0 00 00 */	li r6, 0
/* 80CF1934  4B 48 F1 AD */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80CF1938  A8 7C 08 CE */	lha r3, 0x8ce(r28)
/* 80CF193C  38 03 00 01 */	addi r0, r3, 1
/* 80CF1940  B0 1C 08 CE */	sth r0, 0x8ce(r28)
/* 80CF1944  A8 1C 08 CE */	lha r0, 0x8ce(r28)
/* 80CF1948  2C 00 27 10 */	cmpwi r0, 0x2710
/* 80CF194C  40 81 00 0C */	ble lbl_80CF1958
/* 80CF1950  38 00 27 10 */	li r0, 0x2710
/* 80CF1954  B0 1C 08 CE */	sth r0, 0x8ce(r28)
lbl_80CF1958:
/* 80CF1958  39 61 00 80 */	addi r11, r1, 0x80
/* 80CF195C  4B 67 08 C5 */	bl _restgpr_27
/* 80CF1960  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CF1964  7C 08 03 A6 */	mtlr r0
/* 80CF1968  38 21 00 80 */	addi r1, r1, 0x80
/* 80CF196C  4E 80 00 20 */	blr 
