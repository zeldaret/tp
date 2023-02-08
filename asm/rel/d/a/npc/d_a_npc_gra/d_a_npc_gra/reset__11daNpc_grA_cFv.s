lbl_809C13D8:
/* 809C13D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809C13DC  7C 08 02 A6 */	mflr r0
/* 809C13E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 809C13E4  39 61 00 40 */	addi r11, r1, 0x40
/* 809C13E8  4B 9A 0D F1 */	bl _savegpr_28
/* 809C13EC  7C 7E 1B 78 */	mr r30, r3
/* 809C13F0  3C 80 80 9D */	lis r4, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C13F4  3B E4 9D 98 */	addi r31, r4, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C13F8  4B 79 14 D1 */	bl initialize__8daNpcF_cFv
/* 809C13FC  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809C1400  4B 78 F5 01 */	bl initialize__13daNpcF_Path_cFv
/* 809C1404  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809C1408  28 00 00 05 */	cmplwi r0, 5
/* 809C140C  41 82 00 0C */	beq lbl_809C1418
/* 809C1410  28 00 00 07 */	cmplwi r0, 7
/* 809C1414  40 82 00 30 */	bne lbl_809C1444
lbl_809C1418:
/* 809C1418  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809C141C  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 809C1420  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 809C1424  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C1428  7C 05 07 74 */	extsb r5, r0
/* 809C142C  38 C0 00 00 */	li r6, 0
/* 809C1430  4B 78 F5 2D */	bl setPathInfo__13daNpcF_Path_cFUcScUc
/* 809C1434  2C 03 00 00 */	cmpwi r3, 0
/* 809C1438  41 82 00 0C */	beq lbl_809C1444
/* 809C143C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 809C1440  D0 1E 0D DC */	stfs f0, 0xddc(r30)
lbl_809C1444:
/* 809C1444  38 7E 0B E0 */	addi r3, r30, 0xbe0
/* 809C1448  4B 78 FB F1 */	bl initialize__15daNpcF_Lookat_cFv
/* 809C144C  3B 80 00 00 */	li r28, 0
/* 809C1450  3B A0 00 00 */	li r29, 0
lbl_809C1454:
/* 809C1454  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 809C1458  7C 7E 1A 14 */	add r3, r30, r3
/* 809C145C  4B 78 F2 55 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809C1460  3B 9C 00 01 */	addi r28, r28, 1
/* 809C1464  2C 1C 00 03 */	cmpwi r28, 3
/* 809C1468  3B BD 00 08 */	addi r29, r29, 8
/* 809C146C  41 80 FF E8 */	blt lbl_809C1454
/* 809C1470  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809C1474  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809C1478  80 64 00 00 */	lwz r3, 0(r4)
/* 809C147C  80 04 00 04 */	lwz r0, 4(r4)
/* 809C1480  90 7E 14 04 */	stw r3, 0x1404(r30)
/* 809C1484  90 1E 14 08 */	stw r0, 0x1408(r30)
/* 809C1488  80 04 00 08 */	lwz r0, 8(r4)
/* 809C148C  90 1E 14 0C */	stw r0, 0x140c(r30)
/* 809C1490  80 64 00 00 */	lwz r3, 0(r4)
/* 809C1494  80 04 00 04 */	lwz r0, 4(r4)
/* 809C1498  90 7E 14 10 */	stw r3, 0x1410(r30)
/* 809C149C  90 1E 14 14 */	stw r0, 0x1414(r30)
/* 809C14A0  80 04 00 08 */	lwz r0, 8(r4)
/* 809C14A4  90 1E 14 18 */	stw r0, 0x1418(r30)
/* 809C14A8  38 60 00 00 */	li r3, 0
/* 809C14AC  90 7E 14 5C */	stw r3, 0x145c(r30)
/* 809C14B0  90 7E 14 60 */	stw r3, 0x1460(r30)
/* 809C14B4  90 7E 14 64 */	stw r3, 0x1464(r30)
/* 809C14B8  90 7E 14 68 */	stw r3, 0x1468(r30)
/* 809C14BC  38 00 FF FF */	li r0, -1
/* 809C14C0  B0 1E 14 70 */	sth r0, 0x1470(r30)
/* 809C14C4  B0 7E 14 72 */	sth r3, 0x1472(r30)
/* 809C14C8  98 7E 09 F2 */	stb r3, 0x9f2(r30)
/* 809C14CC  90 1E 14 80 */	stw r0, 0x1480(r30)
/* 809C14D0  38 7E 14 DC */	addi r3, r30, 0x14dc
/* 809C14D4  4B 98 4F B1 */	bl PSMTXIdentity
/* 809C14D8  38 00 00 00 */	li r0, 0
/* 809C14DC  98 1E 15 0C */	stb r0, 0x150c(r30)
/* 809C14E0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 809C14E4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 809C14E8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 809C14EC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 809C14F0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 809C14F4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 809C14F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809C14FC  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 809C1500  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809C1504  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 809C1508  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809C150C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 809C1510  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 809C1514  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 809C1518  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 809C151C  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 809C1520  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 809C1524  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 809C1528  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809C152C  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 809C1530  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 809C1534  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 809C1538  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 809C153C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 809C1540  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809C1544  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 809C1548  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 809C154C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 809C1550  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 809C1554  B0 1E 08 F0 */	sth r0, 0x8f0(r30)
/* 809C1558  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 809C155C  B0 1E 08 F2 */	sth r0, 0x8f2(r30)
/* 809C1560  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 809C1564  B0 1E 08 F4 */	sth r0, 0x8f4(r30)
/* 809C1568  A8 1E 08 F0 */	lha r0, 0x8f0(r30)
/* 809C156C  B0 1E 08 F6 */	sth r0, 0x8f6(r30)
/* 809C1570  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 809C1574  B0 1E 08 F8 */	sth r0, 0x8f8(r30)
/* 809C1578  A8 1E 08 F4 */	lha r0, 0x8f4(r30)
/* 809C157C  B0 1E 08 FA */	sth r0, 0x8fa(r30)
/* 809C1580  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C1584  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809C1588  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 809C158C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 809C1590  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 809C1594  3B 80 00 00 */	li r28, 0
/* 809C1598  3B A0 00 00 */	li r29, 0
lbl_809C159C:
/* 809C159C  2C 1C 00 03 */	cmpwi r28, 3
/* 809C15A0  40 82 00 20 */	bne lbl_809C15C0
/* 809C15A4  38 7D 15 44 */	addi r3, r29, 0x1544
/* 809C15A8  7C 7E 1A 14 */	add r3, r30, r3
/* 809C15AC  38 9E 05 D0 */	addi r4, r30, 0x5d0
/* 809C15B0  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 809C15B4  FC 40 08 90 */	fmr f2, f1
/* 809C15B8  4B 68 F6 E5 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 809C15BC  48 00 00 1C */	b lbl_809C15D8
lbl_809C15C0:
/* 809C15C0  38 7D 15 44 */	addi r3, r29, 0x1544
/* 809C15C4  7C 7E 1A 14 */	add r3, r30, r3
/* 809C15C8  38 9E 05 D0 */	addi r4, r30, 0x5d0
/* 809C15CC  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C15D0  FC 40 08 90 */	fmr f2, f1
/* 809C15D4  4B 68 F6 C9 */	bl init__7dPaPo_cFP9dBgS_Acchff
lbl_809C15D8:
/* 809C15D8  3B 9C 00 01 */	addi r28, r28, 1
/* 809C15DC  2C 1C 00 04 */	cmpwi r28, 4
/* 809C15E0  3B BD 00 5C */	addi r29, r29, 0x5c
/* 809C15E4  41 80 FF B8 */	blt lbl_809C159C
/* 809C15E8  38 00 00 00 */	li r0, 0
/* 809C15EC  98 1E 14 89 */	stb r0, 0x1489(r30)
/* 809C15F0  98 1E 14 9E */	stb r0, 0x149e(r30)
/* 809C15F4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C15F8  D0 1E 14 D4 */	stfs f0, 0x14d4(r30)
/* 809C15FC  98 1E 16 91 */	stb r0, 0x1691(r30)
/* 809C1600  98 1E 14 86 */	stb r0, 0x1486(r30)
/* 809C1604  98 1E 16 90 */	stb r0, 0x1690(r30)
/* 809C1608  98 1E 14 87 */	stb r0, 0x1487(r30)
/* 809C160C  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809C1610  28 00 00 02 */	cmplwi r0, 2
/* 809C1614  40 82 00 34 */	bne lbl_809C1648
/* 809C1618  7F C3 F3 78 */	mr r3, r30
/* 809C161C  4B FF FB 45 */	bl getMode1__11daNpc_grA_cFv
/* 809C1620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809C1624  40 82 00 24 */	bne lbl_809C1648
/* 809C1628  3C 60 80 9D */	lis r3, l_myName@ha /* 0x809CAB14@ha */
/* 809C162C  38 63 AB 14 */	addi r3, r3, l_myName@l /* 0x809CAB14@l */
/* 809C1630  80 03 00 04 */	lwz r0, 4(r3)
/* 809C1634  90 1E 14 7C */	stw r0, 0x147c(r30)
/* 809C1638  38 00 00 01 */	li r0, 1
/* 809C163C  98 1E 14 88 */	stb r0, 0x1488(r30)
/* 809C1640  98 1E 14 87 */	stb r0, 0x1487(r30)
/* 809C1644  48 00 02 F4 */	b lbl_809C1938
lbl_809C1648:
/* 809C1648  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809C164C  28 00 00 07 */	cmplwi r0, 7
/* 809C1650  40 82 00 78 */	bne lbl_809C16C8
/* 809C1654  3C 60 80 9D */	lis r3, l_myName@ha /* 0x809CAB14@ha */
/* 809C1658  80 03 AB 14 */	lwz r0, l_myName@l(r3)  /* 0x809CAB14@l */
/* 809C165C  90 1E 14 7C */	stw r0, 0x147c(r30)
/* 809C1660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C1664  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C1668  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 809C166C  3C 80 80 9D */	lis r4, d_a_npc_gra__stringBase0@ha /* 0x809CA4B8@ha */
/* 809C1670  38 84 A4 B8 */	addi r4, r4, d_a_npc_gra__stringBase0@l /* 0x809CA4B8@l */
/* 809C1674  38 84 01 3E */	addi r4, r4, 0x13e
/* 809C1678  4B 9A 73 1D */	bl strcmp
/* 809C167C  2C 03 00 00 */	cmpwi r3, 0
/* 809C1680  40 82 00 3C */	bne lbl_809C16BC
/* 809C1684  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C1688  7C 00 07 75 */	extsb. r0, r0
/* 809C168C  40 82 00 30 */	bne lbl_809C16BC
/* 809C1690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C1694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C1698  88 03 4E 0B */	lbz r0, 0x4e0b(r3)
/* 809C169C  2C 00 00 08 */	cmpwi r0, 8
/* 809C16A0  40 82 00 1C */	bne lbl_809C16BC
/* 809C16A4  A8 03 0D B8 */	lha r0, 0xdb8(r3)
/* 809C16A8  2C 00 00 08 */	cmpwi r0, 8
/* 809C16AC  40 82 00 10 */	bne lbl_809C16BC
/* 809C16B0  38 00 00 01 */	li r0, 1
/* 809C16B4  98 1E 14 88 */	stb r0, 0x1488(r30)
/* 809C16B8  48 00 02 80 */	b lbl_809C1938
lbl_809C16BC:
/* 809C16BC  38 00 00 00 */	li r0, 0
/* 809C16C0  98 1E 14 88 */	stb r0, 0x1488(r30)
/* 809C16C4  48 00 02 74 */	b lbl_809C1938
lbl_809C16C8:
/* 809C16C8  28 00 00 08 */	cmplwi r0, 8
/* 809C16CC  41 82 00 0C */	beq lbl_809C16D8
/* 809C16D0  28 00 00 09 */	cmplwi r0, 9
/* 809C16D4  40 82 00 24 */	bne lbl_809C16F8
lbl_809C16D8:
/* 809C16D8  3C 60 80 9D */	lis r3, l_myName@ha /* 0x809CAB14@ha */
/* 809C16DC  80 03 AB 14 */	lwz r0, l_myName@l(r3)  /* 0x809CAB14@l */
/* 809C16E0  90 1E 14 7C */	stw r0, 0x147c(r30)
/* 809C16E4  38 00 00 00 */	li r0, 0
/* 809C16E8  98 1E 14 88 */	stb r0, 0x1488(r30)
/* 809C16EC  38 00 00 01 */	li r0, 1
/* 809C16F0  98 1E 15 0C */	stb r0, 0x150c(r30)
/* 809C16F4  48 00 02 44 */	b lbl_809C1938
lbl_809C16F8:
/* 809C16F8  28 00 00 0A */	cmplwi r0, 0xa
/* 809C16FC  40 82 00 78 */	bne lbl_809C1774
/* 809C1700  3C 60 80 9D */	lis r3, l_myName@ha /* 0x809CAB14@ha */
/* 809C1704  80 03 AB 14 */	lwz r0, l_myName@l(r3)  /* 0x809CAB14@l */
/* 809C1708  90 1E 14 7C */	stw r0, 0x147c(r30)
/* 809C170C  38 60 01 87 */	li r3, 0x187
/* 809C1710  4B 79 3F 25 */	bl daNpcF_chkEvtBit__FUl
/* 809C1714  2C 03 00 00 */	cmpwi r3, 0
/* 809C1718  40 82 00 14 */	bne lbl_809C172C
/* 809C171C  38 00 00 00 */	li r0, 0
/* 809C1720  98 1E 14 86 */	stb r0, 0x1486(r30)
/* 809C1724  98 1E 14 88 */	stb r0, 0x1488(r30)
/* 809C1728  48 00 02 10 */	b lbl_809C1938
lbl_809C172C:
/* 809C172C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C1730  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C1734  88 9E 14 CF */	lbz r4, 0x14cf(r30)
/* 809C1738  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C173C  7C 05 07 74 */	extsb r5, r0
/* 809C1740  4B 67 3C 21 */	bl isSwitch__10dSv_info_cCFii
/* 809C1744  2C 03 00 00 */	cmpwi r3, 0
/* 809C1748  40 82 00 18 */	bne lbl_809C1760
/* 809C174C  38 00 00 01 */	li r0, 1
/* 809C1750  98 1E 14 86 */	stb r0, 0x1486(r30)
/* 809C1754  38 00 00 00 */	li r0, 0
/* 809C1758  98 1E 14 88 */	stb r0, 0x1488(r30)
/* 809C175C  48 00 01 DC */	b lbl_809C1938
lbl_809C1760:
/* 809C1760  38 00 00 03 */	li r0, 3
/* 809C1764  98 1E 14 86 */	stb r0, 0x1486(r30)
/* 809C1768  38 00 00 01 */	li r0, 1
/* 809C176C  98 1E 14 88 */	stb r0, 0x1488(r30)
/* 809C1770  48 00 01 C8 */	b lbl_809C1938
lbl_809C1774:
/* 809C1774  3C 60 80 9D */	lis r3, l_myName@ha /* 0x809CAB14@ha */
/* 809C1778  84 03 AB 14 */	lwzu r0, l_myName@l(r3)  /* 0x809CAB14@l */
/* 809C177C  90 1E 14 7C */	stw r0, 0x147c(r30)
/* 809C1780  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809C1784  28 00 00 03 */	cmplwi r0, 3
/* 809C1788  40 82 00 1C */	bne lbl_809C17A4
/* 809C178C  88 7E 14 CE */	lbz r3, 0x14ce(r30)
/* 809C1790  28 03 00 06 */	cmplwi r3, 6
/* 809C1794  40 80 01 9C */	bge lbl_809C1930
/* 809C1798  38 03 00 03 */	addi r0, r3, 3
/* 809C179C  98 1E 00 FF */	stb r0, 0xff(r30)
/* 809C17A0  48 00 01 90 */	b lbl_809C1930
lbl_809C17A4:
/* 809C17A4  28 00 00 04 */	cmplwi r0, 4
/* 809C17A8  40 82 01 60 */	bne lbl_809C1908
/* 809C17AC  88 9E 14 CE */	lbz r4, 0x14ce(r30)
/* 809C17B0  28 04 00 02 */	cmplwi r4, 2
/* 809C17B4  40 80 00 A4 */	bge lbl_809C1858
/* 809C17B8  38 04 00 01 */	addi r0, r4, 1
/* 809C17BC  98 1E 00 FF */	stb r0, 0xff(r30)
/* 809C17C0  38 60 00 3E */	li r3, 0x3e
/* 809C17C4  4B 79 3E 71 */	bl daNpcF_chkEvtBit__FUl
/* 809C17C8  2C 03 00 00 */	cmpwi r3, 0
/* 809C17CC  40 82 01 64 */	bne lbl_809C1930
/* 809C17D0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C17D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809C17D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809C17DC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809C17E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809C17E4  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 809C17E8  4B 64 B5 7D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809C17EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C17F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C17F4  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 809C17F8  4B 64 AC 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 809C17FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C1800  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C1804  38 81 00 1C */	addi r4, r1, 0x1c
/* 809C1808  7C 85 23 78 */	mr r5, r4
/* 809C180C  4B 98 55 61 */	bl PSMTXMultVec
/* 809C1810  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C1814  7C 07 07 74 */	extsb r7, r0
/* 809C1818  38 00 00 00 */	li r0, 0
/* 809C181C  90 01 00 08 */	stw r0, 8(r1)
/* 809C1820  38 60 00 8B */	li r3, 0x8b
/* 809C1824  28 1E 00 00 */	cmplwi r30, 0
/* 809C1828  41 82 00 0C */	beq lbl_809C1834
/* 809C182C  80 9E 00 04 */	lwz r4, 4(r30)
/* 809C1830  48 00 00 08 */	b lbl_809C1838
lbl_809C1834:
/* 809C1834  38 80 FF FF */	li r4, -1
lbl_809C1838:
/* 809C1838  38 A0 FF FF */	li r5, -1
/* 809C183C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 809C1840  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 809C1844  39 20 00 00 */	li r9, 0
/* 809C1848  39 40 FF FF */	li r10, -1
/* 809C184C  4B 65 86 A5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 809C1850  90 7E 04 A4 */	stw r3, 0x4a4(r30)
/* 809C1854  48 00 00 DC */	b lbl_809C1930
lbl_809C1858:
/* 809C1858  80 03 00 08 */	lwz r0, 8(r3)
/* 809C185C  90 1E 14 7C */	stw r0, 0x147c(r30)
/* 809C1860  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C1864  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C1868  88 9E 14 CF */	lbz r4, 0x14cf(r30)
/* 809C186C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C1870  7C 05 07 74 */	extsb r5, r0
/* 809C1874  4B 67 3A ED */	bl isSwitch__10dSv_info_cCFii
/* 809C1878  2C 03 00 00 */	cmpwi r3, 0
/* 809C187C  40 82 00 B4 */	bne lbl_809C1930
/* 809C1880  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C1884  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809C1888  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809C188C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809C1890  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809C1894  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 809C1898  4B 64 B4 CD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809C189C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C18A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C18A4  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 809C18A8  4B 64 AB 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 809C18AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C18B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C18B4  38 81 00 10 */	addi r4, r1, 0x10
/* 809C18B8  7C 85 23 78 */	mr r5, r4
/* 809C18BC  4B 98 54 B1 */	bl PSMTXMultVec
/* 809C18C0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C18C4  7C 07 07 74 */	extsb r7, r0
/* 809C18C8  38 00 00 00 */	li r0, 0
/* 809C18CC  90 01 00 08 */	stw r0, 8(r1)
/* 809C18D0  38 60 00 8B */	li r3, 0x8b
/* 809C18D4  28 1E 00 00 */	cmplwi r30, 0
/* 809C18D8  41 82 00 0C */	beq lbl_809C18E4
/* 809C18DC  80 9E 00 04 */	lwz r4, 4(r30)
/* 809C18E0  48 00 00 08 */	b lbl_809C18E8
lbl_809C18E4:
/* 809C18E4  38 80 FF FF */	li r4, -1
lbl_809C18E8:
/* 809C18E8  88 BE 14 CF */	lbz r5, 0x14cf(r30)
/* 809C18EC  38 C1 00 10 */	addi r6, r1, 0x10
/* 809C18F0  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 809C18F4  39 20 00 00 */	li r9, 0
/* 809C18F8  39 40 FF FF */	li r10, -1
/* 809C18FC  4B 65 85 F5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 809C1900  90 7E 04 A4 */	stw r3, 0x4a4(r30)
/* 809C1904  48 00 00 2C */	b lbl_809C1930
lbl_809C1908:
/* 809C1908  28 00 00 06 */	cmplwi r0, 6
/* 809C190C  40 82 00 24 */	bne lbl_809C1930
/* 809C1910  88 1E 14 CE */	lbz r0, 0x14ce(r30)
/* 809C1914  28 00 00 00 */	cmplwi r0, 0
/* 809C1918  41 82 00 10 */	beq lbl_809C1928
/* 809C191C  38 00 00 00 */	li r0, 0
/* 809C1920  98 1E 14 86 */	stb r0, 0x1486(r30)
/* 809C1924  48 00 00 0C */	b lbl_809C1930
lbl_809C1928:
/* 809C1928  38 00 00 01 */	li r0, 1
/* 809C192C  98 1E 14 86 */	stb r0, 0x1486(r30)
lbl_809C1930:
/* 809C1930  38 00 00 00 */	li r0, 0
/* 809C1934  98 1E 14 88 */	stb r0, 0x1488(r30)
lbl_809C1938:
/* 809C1938  38 00 00 00 */	li r0, 0
/* 809C193C  98 1E 16 93 */	stb r0, 0x1693(r30)
/* 809C1940  98 1E 16 92 */	stb r0, 0x1692(r30)
/* 809C1944  B0 1E 16 94 */	sth r0, 0x1694(r30)
/* 809C1948  38 60 00 00 */	li r3, 0
/* 809C194C  38 80 FF FF */	li r4, -1
/* 809C1950  38 00 00 03 */	li r0, 3
/* 809C1954  7C 09 03 A6 */	mtctr r0
lbl_809C1958:
/* 809C1958  38 03 15 10 */	addi r0, r3, 0x1510
/* 809C195C  7C 9E 01 2E */	stwx r4, r30, r0
/* 809C1960  38 63 00 04 */	addi r3, r3, 4
/* 809C1964  42 00 FF F4 */	bdnz lbl_809C1958
/* 809C1968  38 00 FF FF */	li r0, -1
/* 809C196C  90 1E 15 1C */	stw r0, 0x151c(r30)
/* 809C1970  38 00 00 01 */	li r0, 1
/* 809C1974  98 1E 09 EE */	stb r0, 0x9ee(r30)
/* 809C1978  39 61 00 40 */	addi r11, r1, 0x40
/* 809C197C  4B 9A 08 A9 */	bl _restgpr_28
/* 809C1980  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809C1984  7C 08 03 A6 */	mtlr r0
/* 809C1988  38 21 00 40 */	addi r1, r1, 0x40
/* 809C198C  4E 80 00 20 */	blr 
