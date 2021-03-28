lbl_809F14CC:
/* 809F14CC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809F14D0  7C 08 02 A6 */	mflr r0
/* 809F14D4  90 01 00 74 */	stw r0, 0x74(r1)
/* 809F14D8  39 61 00 70 */	addi r11, r1, 0x70
/* 809F14DC  4B 97 0C EC */	b _savegpr_24
/* 809F14E0  7C 7E 1B 78 */	mr r30, r3
/* 809F14E4  3C 80 80 9F */	lis r4, lit_3900@ha
/* 809F14E8  3B E4 2C 50 */	addi r31, r4, lit_3900@l
/* 809F14EC  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 809F14F0  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 809F14F4  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 809F14F8  80 84 00 04 */	lwz r4, 4(r4)
/* 809F14FC  38 04 00 24 */	addi r0, r4, 0x24
/* 809F1500  90 03 05 04 */	stw r0, 0x504(r3)
/* 809F1504  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 809F1508  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 809F150C  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 809F1510  C0 9F 00 C8 */	lfs f4, 0xc8(r31)
/* 809F1514  C0 BF 00 CC */	lfs f5, 0xcc(r31)
/* 809F1518  C0 DF 00 34 */	lfs f6, 0x34(r31)
/* 809F151C  4B 62 90 2C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809F1520  80 1E 0A 98 */	lwz r0, 0xa98(r30)
/* 809F1524  2C 00 00 00 */	cmpwi r0, 0
/* 809F1528  41 82 00 0C */	beq lbl_809F1534
/* 809F152C  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 809F1530  48 00 00 08 */	b lbl_809F1538
lbl_809F1534:
/* 809F1534  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
lbl_809F1538:
/* 809F1538  38 7E 08 10 */	addi r3, r30, 0x810
/* 809F153C  2C 00 00 10 */	cmpwi r0, 0x10
/* 809F1540  40 80 00 1C */	bge lbl_809F155C
/* 809F1544  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha
/* 809F1548  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l
/* 809F154C  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 809F1550  7C 84 02 14 */	add r4, r4, r0
/* 809F1554  C0 24 02 08 */	lfs f1, 0x208(r4)
/* 809F1558  48 00 00 18 */	b lbl_809F1570
lbl_809F155C:
/* 809F155C  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha
/* 809F1560  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l
/* 809F1564  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 809F1568  7C 84 02 14 */	add r4, r4, r0
/* 809F156C  C0 24 FF 38 */	lfs f1, -0xc8(r4)
lbl_809F1570:
/* 809F1570  4B 68 49 E8 */	b SetWall__12dBgS_AcchCirFff
/* 809F1574  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809F1578  90 01 00 08 */	stw r0, 8(r1)
/* 809F157C  38 7E 06 38 */	addi r3, r30, 0x638
/* 809F1580  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809F1584  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809F1588  7F C6 F3 78 */	mr r6, r30
/* 809F158C  38 E0 00 01 */	li r7, 1
/* 809F1590  39 1E 08 10 */	addi r8, r30, 0x810
/* 809F1594  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809F1598  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809F159C  4B 68 4C AC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809F15A0  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 809F15A4  60 00 00 08 */	ori r0, r0, 8
/* 809F15A8  90 1E 06 64 */	stw r0, 0x664(r30)
/* 809F15AC  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 809F15B0  60 00 04 00 */	ori r0, r0, 0x400
/* 809F15B4  90 1E 06 64 */	stw r0, 0x664(r30)
/* 809F15B8  38 7E 06 38 */	addi r3, r30, 0x638
/* 809F15BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809F15C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809F15C4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809F15C8  4B 68 54 E4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809F15CC  7F C3 F3 78 */	mr r3, r30
/* 809F15D0  4B 76 77 B8 */	b setEnvTevCol__10daNpcCd2_cFv
/* 809F15D4  7F C3 F3 78 */	mr r3, r30
/* 809F15D8  4B 76 78 0C */	b setRoomNo__10daNpcCd2_cFv
/* 809F15DC  38 A1 00 0C */	addi r5, r1, 0xc
/* 809F15E0  38 9F 00 74 */	addi r4, r31, 0x74
/* 809F15E4  38 00 00 08 */	li r0, 8
/* 809F15E8  7C 09 03 A6 */	mtctr r0
lbl_809F15EC:
/* 809F15EC  80 64 00 04 */	lwz r3, 4(r4)
/* 809F15F0  84 04 00 08 */	lwzu r0, 8(r4)
/* 809F15F4  90 65 00 04 */	stw r3, 4(r5)
/* 809F15F8  94 05 00 08 */	stwu r0, 8(r5)
/* 809F15FC  42 00 FF F0 */	bdnz lbl_809F15EC
/* 809F1600  38 7E 08 50 */	addi r3, r30, 0x850
/* 809F1604  38 80 00 96 */	li r4, 0x96
/* 809F1608  38 A0 00 FF */	li r5, 0xff
/* 809F160C  7F C6 F3 78 */	mr r6, r30
/* 809F1610  4B 69 22 50 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809F1614  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809F1618  98 1E 08 72 */	stb r0, 0x872(r30)
/* 809F161C  38 1E 08 50 */	addi r0, r30, 0x850
/* 809F1620  90 1E 08 D0 */	stw r0, 0x8d0(r30)
/* 809F1624  38 7E 08 8C */	addi r3, r30, 0x88c
/* 809F1628  3C 80 80 39 */	lis r4, m_cylDat__10daNpcCd2_c@ha
/* 809F162C  38 84 39 50 */	addi r4, r4, m_cylDat__10daNpcCd2_c@l
/* 809F1630  4B 69 32 84 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809F1634  38 7E 09 B0 */	addi r3, r30, 0x9b0
/* 809F1638  80 1E 0A 98 */	lwz r0, 0xa98(r30)
/* 809F163C  2C 00 00 00 */	cmpwi r0, 0
/* 809F1640  41 82 00 0C */	beq lbl_809F164C
/* 809F1644  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 809F1648  48 00 00 08 */	b lbl_809F1650
lbl_809F164C:
/* 809F164C  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
lbl_809F1650:
/* 809F1650  4B 87 DB B0 */	b SetR__8cM3dGCylFf
/* 809F1654  80 1E 0A 98 */	lwz r0, 0xa98(r30)
/* 809F1658  38 7E 09 B0 */	addi r3, r30, 0x9b0
/* 809F165C  2C 00 00 10 */	cmpwi r0, 0x10
/* 809F1660  40 80 00 1C */	bge lbl_809F167C
/* 809F1664  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha
/* 809F1668  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l
/* 809F166C  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 809F1670  7C 84 02 14 */	add r4, r4, r0
/* 809F1674  C0 24 02 00 */	lfs f1, 0x200(r4)
/* 809F1678  48 00 00 18 */	b lbl_809F1690
lbl_809F167C:
/* 809F167C  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha
/* 809F1680  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l
/* 809F1684  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 809F1688  7C 84 02 14 */	add r4, r4, r0
/* 809F168C  C0 24 FF 30 */	lfs f1, -0xd0(r4)
lbl_809F1690:
/* 809F1690  4B 87 DB 68 */	b SetH__8cM3dGCylFf
/* 809F1694  3F 40 D8 00 */	lis r26, 0xd800
/* 809F1698  93 5E 08 B4 */	stw r26, 0x8b4(r30)
/* 809F169C  3B 60 00 11 */	li r27, 0x11
/* 809F16A0  93 7E 08 A4 */	stw r27, 0x8a4(r30)
/* 809F16A4  80 1E 09 28 */	lwz r0, 0x928(r30)
/* 809F16A8  60 00 00 04 */	ori r0, r0, 4
/* 809F16AC  90 1E 09 28 */	stw r0, 0x928(r30)
/* 809F16B0  80 1E 09 28 */	lwz r0, 0x928(r30)
/* 809F16B4  60 00 00 02 */	ori r0, r0, 2
/* 809F16B8  90 1E 09 28 */	stw r0, 0x928(r30)
/* 809F16BC  3B 20 00 00 */	li r25, 0
/* 809F16C0  7F 3D CB 78 */	mr r29, r25
/* 809F16C4  3B 9E 08 50 */	addi r28, r30, 0x850
lbl_809F16C8:
/* 809F16C8  7F 1E EA 14 */	add r24, r30, r29
/* 809F16CC  93 98 0B 58 */	stw r28, 0xb58(r24)
/* 809F16D0  38 78 0B 14 */	addi r3, r24, 0xb14
/* 809F16D4  38 81 00 10 */	addi r4, r1, 0x10
/* 809F16D8  4B 69 33 5C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 809F16DC  93 58 0B 3C */	stw r26, 0xb3c(r24)
/* 809F16E0  93 78 0B 2C */	stw r27, 0xb2c(r24)
/* 809F16E4  80 18 0B B0 */	lwz r0, 0xbb0(r24)
/* 809F16E8  60 00 00 04 */	ori r0, r0, 4
/* 809F16EC  90 18 0B B0 */	stw r0, 0xbb0(r24)
/* 809F16F0  80 18 0B B0 */	lwz r0, 0xbb0(r24)
/* 809F16F4  60 00 00 02 */	ori r0, r0, 2
/* 809F16F8  90 18 0B B0 */	stw r0, 0xbb0(r24)
/* 809F16FC  3B 39 00 01 */	addi r25, r25, 1
/* 809F1700  2C 19 00 02 */	cmpwi r25, 2
/* 809F1704  3B BD 01 38 */	addi r29, r29, 0x138
/* 809F1708  41 80 FF C0 */	blt lbl_809F16C8
/* 809F170C  38 00 00 00 */	li r0, 0
/* 809F1710  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 809F1714  98 1E 0D A2 */	stb r0, 0xda2(r30)
/* 809F1718  7F C3 F3 78 */	mr r3, r30
/* 809F171C  38 80 00 2A */	li r4, 0x2a
/* 809F1720  80 BE 0D 84 */	lwz r5, 0xd84(r30)
/* 809F1724  4B 76 69 CC */	b getAnmP__10daNpcCd2_cFii
/* 809F1728  90 7E 0A D0 */	stw r3, 0xad0(r30)
/* 809F172C  7F C3 F3 78 */	mr r3, r30
/* 809F1730  38 80 00 2C */	li r4, 0x2c
/* 809F1734  80 BE 0D 84 */	lwz r5, 0xd84(r30)
/* 809F1738  4B 76 69 B8 */	b getAnmP__10daNpcCd2_cFii
/* 809F173C  90 7E 0A D4 */	stw r3, 0xad4(r30)
/* 809F1740  38 60 00 28 */	li r3, 0x28
/* 809F1744  38 80 00 28 */	li r4, 0x28
/* 809F1748  48 00 0D C5 */	bl func_809F250C
/* 809F174C  90 7E 0D 88 */	stw r3, 0xd88(r30)
/* 809F1750  38 7E 0A D8 */	addi r3, r30, 0xad8
/* 809F1754  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809F1758  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 809F175C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809F1760  7C 05 07 74 */	extsb r5, r0
/* 809F1764  38 C0 00 01 */	li r6, 1
/* 809F1768  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 809F176C  39 00 00 00 */	li r8, 0
/* 809F1770  4B 76 82 C8 */	b setPath__11PathTrace_cFiiiP4cXyzb
/* 809F1774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F1778  41 82 00 14 */	beq lbl_809F178C
/* 809F177C  7F C3 F3 78 */	mr r3, r30
/* 809F1780  38 80 00 00 */	li r4, 0
/* 809F1784  4B FF E6 9D */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
/* 809F1788  48 00 00 10 */	b lbl_809F1798
lbl_809F178C:
/* 809F178C  7F C3 F3 78 */	mr r3, r30
/* 809F1790  38 80 00 02 */	li r4, 2
/* 809F1794  4B FF E6 8D */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809F1798:
/* 809F1798  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809F179C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 809F17A0  4B 61 E3 DC */	b setMorf__13mDoExt_morf_cFf
/* 809F17A4  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809F17A8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 809F17AC  D0 1E 0D 94 */	stfs f0, 0xd94(r30)
/* 809F17B0  7F C3 F3 78 */	mr r3, r30
/* 809F17B4  48 00 00 1D */	bl setMtx__12daNpcGuard_cFv
/* 809F17B8  39 61 00 70 */	addi r11, r1, 0x70
/* 809F17BC  4B 97 0A 58 */	b _restgpr_24
/* 809F17C0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809F17C4  7C 08 03 A6 */	mtlr r0
/* 809F17C8  38 21 00 70 */	addi r1, r1, 0x70
/* 809F17CC  4E 80 00 20 */	blr 
