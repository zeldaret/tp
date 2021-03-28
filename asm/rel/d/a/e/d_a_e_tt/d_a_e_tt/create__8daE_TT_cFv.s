lbl_807C13B4:
/* 807C13B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807C13B8  7C 08 02 A6 */	mflr r0
/* 807C13BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807C13C0  39 61 00 30 */	addi r11, r1, 0x30
/* 807C13C4  4B BA 0E 14 */	b _savegpr_28
/* 807C13C8  7C 7D 1B 78 */	mr r29, r3
/* 807C13CC  3C 80 80 7C */	lis r4, lit_3908@ha
/* 807C13D0  3B E4 1F B8 */	addi r31, r4, lit_3908@l
/* 807C13D4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807C13D8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807C13DC  40 82 01 50 */	bne lbl_807C152C
/* 807C13E0  7F A0 EB 79 */	or. r0, r29, r29
/* 807C13E4  41 82 01 3C */	beq lbl_807C1520
/* 807C13E8  7C 1E 03 78 */	mr r30, r0
/* 807C13EC  4B 85 77 78 */	b __ct__10fopAc_ac_cFv
/* 807C13F0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807C13F4  4B AF FB 70 */	b __ct__15Z2CreatureEnemyFv
/* 807C13F8  3B 9E 06 64 */	addi r28, r30, 0x664
/* 807C13FC  7F 83 E3 78 */	mr r3, r28
/* 807C1400  4B 8B 61 7C */	b __ct__11dBgS_GndChkFv
/* 807C1404  3C 60 80 7C */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807C1408  38 63 23 5C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 807C140C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 807C1410  38 03 00 0C */	addi r0, r3, 0xc
/* 807C1414  90 1C 00 20 */	stw r0, 0x20(r28)
/* 807C1418  38 03 00 18 */	addi r0, r3, 0x18
/* 807C141C  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 807C1420  38 03 00 24 */	addi r0, r3, 0x24
/* 807C1424  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 807C1428  38 7C 00 3C */	addi r3, r28, 0x3c
/* 807C142C  4B 8B 7A 3C */	b SetObj__16dBgS_PolyPassChkFv
/* 807C1430  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha
/* 807C1434  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l
/* 807C1438  90 7C 00 10 */	stw r3, 0x10(r28)
/* 807C143C  38 03 00 0C */	addi r0, r3, 0xc
/* 807C1440  90 1C 00 20 */	stw r0, 0x20(r28)
/* 807C1444  38 03 00 18 */	addi r0, r3, 0x18
/* 807C1448  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 807C144C  38 03 00 24 */	addi r0, r3, 0x24
/* 807C1450  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 807C1454  80 1C 00 50 */	lwz r0, 0x50(r28)
/* 807C1458  60 00 00 03 */	ori r0, r0, 3
/* 807C145C  90 1C 00 50 */	stw r0, 0x50(r28)
/* 807C1460  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 807C1464  4B 8B 4A 48 */	b __ct__12dBgS_AcchCirFv
/* 807C1468  3B 9E 07 3C */	addi r28, r30, 0x73c
/* 807C146C  7F 83 E3 78 */	mr r3, r28
/* 807C1470  4B 8B 4C 30 */	b __ct__9dBgS_AcchFv
/* 807C1474  3C 60 80 7C */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 807C1478  38 63 23 38 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 807C147C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 807C1480  38 03 00 0C */	addi r0, r3, 0xc
/* 807C1484  90 1C 00 14 */	stw r0, 0x14(r28)
/* 807C1488  38 03 00 18 */	addi r0, r3, 0x18
/* 807C148C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 807C1490  38 7C 00 14 */	addi r3, r28, 0x14
/* 807C1494  4B 8B 79 D4 */	b SetObj__16dBgS_PolyPassChkFv
/* 807C1498  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 807C149C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 807C14A0  90 1E 09 2C */	stw r0, 0x92c(r30)
/* 807C14A4  38 7E 09 30 */	addi r3, r30, 0x930
/* 807C14A8  4B 8C 22 B8 */	b __ct__10dCcD_GSttsFv
/* 807C14AC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 807C14B0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807C14B4  90 7E 09 2C */	stw r3, 0x92c(r30)
/* 807C14B8  38 03 00 20 */	addi r0, r3, 0x20
/* 807C14BC  90 1E 09 30 */	stw r0, 0x930(r30)
/* 807C14C0  3B 9E 09 50 */	addi r28, r30, 0x950
/* 807C14C4  7F 83 E3 78 */	mr r3, r28
/* 807C14C8  4B 8C 25 60 */	b __ct__12dCcD_GObjInfFv
/* 807C14CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807C14D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807C14D4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807C14D8  3C 60 80 7C */	lis r3, __vt__8cM3dGAab@ha
/* 807C14DC  38 03 23 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 807C14E0  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 807C14E4  3C 60 80 7C */	lis r3, __vt__8cM3dGSph@ha
/* 807C14E8  38 03 23 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807C14EC  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807C14F0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807C14F4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807C14F8  90 7C 01 20 */	stw r3, 0x120(r28)
/* 807C14FC  38 03 00 58 */	addi r0, r3, 0x58
/* 807C1500  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807C1504  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807C1508  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807C150C  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 807C1510  38 03 00 2C */	addi r0, r3, 0x2c
/* 807C1514  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807C1518  38 03 00 84 */	addi r0, r3, 0x84
/* 807C151C  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_807C1520:
/* 807C1520  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 807C1524  60 00 00 08 */	ori r0, r0, 8
/* 807C1528  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_807C152C:
/* 807C152C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807C1530  98 1D 06 F9 */	stb r0, 0x6f9(r29)
/* 807C1534  88 9D 06 F9 */	lbz r4, 0x6f9(r29)
/* 807C1538  28 04 00 FF */	cmplwi r4, 0xff
/* 807C153C  41 82 00 28 */	beq lbl_807C1564
/* 807C1540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C1544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C1548  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807C154C  7C 05 07 74 */	extsb r5, r0
/* 807C1550  4B 87 3E 10 */	b isSwitch__10dSv_info_cCFii
/* 807C1554  2C 03 00 00 */	cmpwi r3, 0
/* 807C1558  41 82 00 0C */	beq lbl_807C1564
/* 807C155C  38 60 00 05 */	li r3, 5
/* 807C1560  48 00 02 84 */	b lbl_807C17E4
lbl_807C1564:
/* 807C1564  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807C1568  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807C156C  98 1D 06 F6 */	stb r0, 0x6f6(r29)
/* 807C1570  88 1D 06 F6 */	lbz r0, 0x6f6(r29)
/* 807C1574  28 00 00 FF */	cmplwi r0, 0xff
/* 807C1578  40 82 00 0C */	bne lbl_807C1584
/* 807C157C  38 00 00 00 */	li r0, 0
/* 807C1580  98 1D 06 F6 */	stb r0, 0x6f6(r29)
lbl_807C1584:
/* 807C1584  88 1D 06 F6 */	lbz r0, 0x6f6(r29)
/* 807C1588  28 00 00 00 */	cmplwi r0, 0
/* 807C158C  40 82 00 18 */	bne lbl_807C15A4
/* 807C1590  3C 60 80 7C */	lis r3, stringBase0@ha
/* 807C1594  38 63 20 B0 */	addi r3, r3, stringBase0@l
/* 807C1598  38 03 00 05 */	addi r0, r3, 5
/* 807C159C  90 1D 06 E4 */	stw r0, 0x6e4(r29)
/* 807C15A0  48 00 00 14 */	b lbl_807C15B4
lbl_807C15A4:
/* 807C15A4  3C 60 80 7C */	lis r3, stringBase0@ha
/* 807C15A8  38 63 20 B0 */	addi r3, r3, stringBase0@l
/* 807C15AC  38 03 00 0B */	addi r0, r3, 0xb
/* 807C15B0  90 1D 06 E4 */	stw r0, 0x6e4(r29)
lbl_807C15B4:
/* 807C15B4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807C15B8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 807C15BC  98 1D 06 F7 */	stb r0, 0x6f7(r29)
/* 807C15C0  88 1D 06 F7 */	lbz r0, 0x6f7(r29)
/* 807C15C4  28 00 00 01 */	cmplwi r0, 1
/* 807C15C8  41 82 00 0C */	beq lbl_807C15D4
/* 807C15CC  38 00 00 00 */	li r0, 0
/* 807C15D0  98 1D 06 F7 */	stb r0, 0x6f7(r29)
lbl_807C15D4:
/* 807C15D4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807C15D8  54 00 46 3E */	srwi r0, r0, 0x18
/* 807C15DC  28 00 00 FF */	cmplwi r0, 0xff
/* 807C15E0  40 82 00 10 */	bne lbl_807C15F0
/* 807C15E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807C15E8  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
/* 807C15EC  48 00 00 28 */	b lbl_807C1614
lbl_807C15F0:
/* 807C15F0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807C15F4  C8 3F 00 F0 */	lfd f1, 0xf0(r31)
/* 807C15F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C15FC  3C 00 43 30 */	lis r0, 0x4330
/* 807C1600  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C1604  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 807C1608  EC 00 08 28 */	fsubs f0, f0, f1
/* 807C160C  EC 02 00 32 */	fmuls f0, f2, f0
/* 807C1610  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
lbl_807C1614:
/* 807C1614  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 807C1618  80 9D 06 E4 */	lwz r4, 0x6e4(r29)
/* 807C161C  4B 86 B8 A0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807C1620  7C 7E 1B 78 */	mr r30, r3
/* 807C1624  2C 1E 00 04 */	cmpwi r30, 4
/* 807C1628  40 82 01 B8 */	bne lbl_807C17E0
/* 807C162C  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 807C1630  3C 80 80 7C */	lis r4, stringBase0@ha
/* 807C1634  38 84 20 B0 */	addi r4, r4, stringBase0@l
/* 807C1638  4B 86 B8 84 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807C163C  7C 7E 1B 78 */	mr r30, r3
/* 807C1640  2C 1E 00 04 */	cmpwi r30, 4
/* 807C1644  40 82 01 9C */	bne lbl_807C17E0
/* 807C1648  7F A3 EB 78 */	mr r3, r29
/* 807C164C  3C 80 80 7C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807C1650  38 84 13 94 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807C1654  38 A0 16 00 */	li r5, 0x1600
/* 807C1658  4B 85 8E 58 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807C165C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C1660  40 82 00 0C */	bne lbl_807C166C
/* 807C1664  38 60 00 05 */	li r3, 5
/* 807C1668  48 00 01 7C */	b lbl_807C17E4
lbl_807C166C:
/* 807C166C  3C 60 80 7C */	lis r3, struct_807C23DC+0x1@ha
/* 807C1670  8C 03 23 DD */	lbzu r0, struct_807C23DC+0x1@l(r3)
/* 807C1674  28 00 00 00 */	cmplwi r0, 0
/* 807C1678  40 82 00 20 */	bne lbl_807C1698
/* 807C167C  38 00 00 01 */	li r0, 1
/* 807C1680  98 03 00 00 */	stb r0, 0(r3)
/* 807C1684  98 1D 0A CC */	stb r0, 0xacc(r29)
/* 807C1688  38 00 FF FF */	li r0, -1
/* 807C168C  3C 60 80 7C */	lis r3, l_HIO@ha
/* 807C1690  38 63 23 EC */	addi r3, r3, l_HIO@l
/* 807C1694  98 03 00 04 */	stb r0, 4(r3)
lbl_807C1698:
/* 807C1698  38 00 00 04 */	li r0, 4
/* 807C169C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 807C16A0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 807C16A4  80 63 00 04 */	lwz r3, 4(r3)
/* 807C16A8  38 03 00 24 */	addi r0, r3, 0x24
/* 807C16AC  90 1D 05 04 */	stw r0, 0x504(r29)
/* 807C16B0  7F A3 EB 78 */	mr r3, r29
/* 807C16B4  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 807C16B8  FC 40 08 90 */	fmr f2, f1
/* 807C16BC  FC 60 08 90 */	fmr f3, f1
/* 807C16C0  4B 85 8E 68 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807C16C4  7F A3 EB 78 */	mr r3, r29
/* 807C16C8  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807C16CC  FC 40 08 90 */	fmr f2, f1
/* 807C16D0  FC 60 08 90 */	fmr f3, f1
/* 807C16D4  4B 85 8E 64 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807C16D8  38 00 00 00 */	li r0, 0
/* 807C16DC  90 01 00 08 */	stw r0, 8(r1)
/* 807C16E0  38 7D 07 3C */	addi r3, r29, 0x73c
/* 807C16E4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807C16E8  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 807C16EC  7F A6 EB 78 */	mr r6, r29
/* 807C16F0  38 E0 00 01 */	li r7, 1
/* 807C16F4  39 1D 06 FC */	addi r8, r29, 0x6fc
/* 807C16F8  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 807C16FC  39 40 00 00 */	li r10, 0
/* 807C1700  4B 8B 4B 48 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807C1704  38 7D 06 FC */	addi r3, r29, 0x6fc
/* 807C1708  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807C170C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807C1710  4B 8B 48 48 */	b SetWall__12dBgS_AcchCirFff
/* 807C1714  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807C1718  D0 1D 08 04 */	stfs f0, 0x804(r29)
/* 807C171C  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 807C1720  60 00 20 00 */	ori r0, r0, 0x2000
/* 807C1724  90 1D 07 68 */	stw r0, 0x768(r29)
/* 807C1728  38 00 00 50 */	li r0, 0x50
/* 807C172C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807C1730  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 807C1734  38 7D 09 14 */	addi r3, r29, 0x914
/* 807C1738  38 80 00 64 */	li r4, 0x64
/* 807C173C  38 A0 00 00 */	li r5, 0
/* 807C1740  7F A6 EB 78 */	mr r6, r29
/* 807C1744  4B 8C 21 1C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807C1748  38 7D 09 50 */	addi r3, r29, 0x950
/* 807C174C  3C 80 80 7C */	lis r4, data_807C2100@ha
/* 807C1750  38 84 21 00 */	addi r4, r4, data_807C2100@l
/* 807C1754  4B 8C 32 E0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807C1758  38 1D 09 14 */	addi r0, r29, 0x914
/* 807C175C  90 1D 09 94 */	stw r0, 0x994(r29)
/* 807C1760  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 807C1764  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807C1768  38 BD 05 38 */	addi r5, r29, 0x538
/* 807C176C  38 C0 00 03 */	li r6, 3
/* 807C1770  38 E0 00 01 */	li r7, 1
/* 807C1774  4B AF F9 20 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807C1778  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 807C177C  3C 80 80 7C */	lis r4, stringBase0@ha
/* 807C1780  38 84 20 B0 */	addi r4, r4, stringBase0@l
/* 807C1784  38 84 00 11 */	addi r4, r4, 0x11
/* 807C1788  4B B0 04 08 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 807C178C  38 1D 05 C0 */	addi r0, r29, 0x5c0
/* 807C1790  90 1D 0A 90 */	stw r0, 0xa90(r29)
/* 807C1794  38 00 00 01 */	li r0, 1
/* 807C1798  98 1D 0A A6 */	stb r0, 0xaa6(r29)
/* 807C179C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807C17A0  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807C17A4  88 1D 06 F7 */	lbz r0, 0x6f7(r29)
/* 807C17A8  28 00 00 00 */	cmplwi r0, 0
/* 807C17AC  40 82 00 18 */	bne lbl_807C17C4
/* 807C17B0  7F A3 EB 78 */	mr r3, r29
/* 807C17B4  38 80 00 00 */	li r4, 0
/* 807C17B8  38 A0 00 00 */	li r5, 0
/* 807C17BC  4B FF C4 29 */	bl setActionMode__8daE_TT_cFii
/* 807C17C0  48 00 00 14 */	b lbl_807C17D4
lbl_807C17C4:
/* 807C17C4  7F A3 EB 78 */	mr r3, r29
/* 807C17C8  38 80 00 06 */	li r4, 6
/* 807C17CC  38 A0 00 00 */	li r5, 0
/* 807C17D0  4B FF C4 15 */	bl setActionMode__8daE_TT_cFii
lbl_807C17D4:
/* 807C17D4  7F A3 EB 78 */	mr r3, r29
/* 807C17D8  38 80 00 01 */	li r4, 1
/* 807C17DC  4B FF F6 35 */	bl mtx_set__8daE_TT_cFi
lbl_807C17E0:
/* 807C17E0  7F C3 F3 78 */	mr r3, r30
lbl_807C17E4:
/* 807C17E4  39 61 00 30 */	addi r11, r1, 0x30
/* 807C17E8  4B BA 0A 3C */	b _restgpr_28
/* 807C17EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807C17F0  7C 08 03 A6 */	mtlr r0
/* 807C17F4  38 21 00 30 */	addi r1, r1, 0x30
/* 807C17F8  4E 80 00 20 */	blr 
