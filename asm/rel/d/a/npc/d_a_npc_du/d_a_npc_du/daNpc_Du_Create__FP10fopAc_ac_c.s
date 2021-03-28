lbl_809B1410:
/* 809B1410  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809B1414  7C 08 02 A6 */	mflr r0
/* 809B1418  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B141C  39 61 00 30 */	addi r11, r1, 0x30
/* 809B1420  4B 9B 0D B8 */	b _savegpr_28
/* 809B1424  7C 7E 1B 78 */	mr r30, r3
/* 809B1428  3C 80 80 9B */	lis r4, lit_3762@ha
/* 809B142C  3B E4 18 48 */	addi r31, r4, lit_3762@l
/* 809B1430  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809B1434  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809B1438  40 82 00 F0 */	bne lbl_809B1528
/* 809B143C  7F C0 F3 79 */	or. r0, r30, r30
/* 809B1440  41 82 00 DC */	beq lbl_809B151C
/* 809B1444  7C 1D 03 78 */	mr r29, r0
/* 809B1448  4B 66 77 1C */	b __ct__10fopAc_ac_cFv
/* 809B144C  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 809B1450  4B 6C 4A 5C */	b __ct__12dBgS_AcchCirFv
/* 809B1454  3B 9D 06 28 */	addi r28, r29, 0x628
/* 809B1458  7F 83 E3 78 */	mr r3, r28
/* 809B145C  4B 6C 4C 44 */	b __ct__9dBgS_AcchFv
/* 809B1460  3C 60 80 9B */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809B1464  38 63 19 A4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809B1468  90 7C 00 10 */	stw r3, 0x10(r28)
/* 809B146C  38 03 00 0C */	addi r0, r3, 0xc
/* 809B1470  90 1C 00 14 */	stw r0, 0x14(r28)
/* 809B1474  38 03 00 18 */	addi r0, r3, 0x18
/* 809B1478  90 1C 00 24 */	stw r0, 0x24(r28)
/* 809B147C  38 7C 00 14 */	addi r3, r28, 0x14
/* 809B1480  4B 6C 79 E8 */	b SetObj__16dBgS_PolyPassChkFv
/* 809B1484  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809B1488  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809B148C  90 1D 08 1C */	stw r0, 0x81c(r29)
/* 809B1490  38 7D 08 20 */	addi r3, r29, 0x820
/* 809B1494  4B 6D 22 CC */	b __ct__10dCcD_GSttsFv
/* 809B1498  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809B149C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809B14A0  90 7D 08 1C */	stw r3, 0x81c(r29)
/* 809B14A4  38 03 00 20 */	addi r0, r3, 0x20
/* 809B14A8  90 1D 08 20 */	stw r0, 0x820(r29)
/* 809B14AC  3B 9D 08 40 */	addi r28, r29, 0x840
/* 809B14B0  7F 83 E3 78 */	mr r3, r28
/* 809B14B4  4B 6D 25 74 */	b __ct__12dCcD_GObjInfFv
/* 809B14B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809B14BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809B14C0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 809B14C4  3C 60 80 9B */	lis r3, __vt__8cM3dGAab@ha
/* 809B14C8  38 03 19 98 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809B14CC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 809B14D0  3C 60 80 9B */	lis r3, __vt__8cM3dGSph@ha
/* 809B14D4  38 03 19 8C */	addi r0, r3, __vt__8cM3dGSph@l
/* 809B14D8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 809B14DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 809B14E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 809B14E4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 809B14E8  38 03 00 58 */	addi r0, r3, 0x58
/* 809B14EC  90 1C 01 34 */	stw r0, 0x134(r28)
/* 809B14F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 809B14F4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 809B14F8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 809B14FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 809B1500  90 1C 01 20 */	stw r0, 0x120(r28)
/* 809B1504  38 03 00 84 */	addi r0, r3, 0x84
/* 809B1508  90 1C 01 34 */	stw r0, 0x134(r28)
/* 809B150C  38 7D 09 88 */	addi r3, r29, 0x988
/* 809B1510  4B 89 89 F0 */	b __ct__10dMsgFlow_cFv
/* 809B1514  38 7D 09 DC */	addi r3, r29, 0x9dc
/* 809B1518  4B 90 D3 2C */	b __ct__16Z2SoundObjSimpleFv
lbl_809B151C:
/* 809B151C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809B1520  60 00 00 08 */	ori r0, r0, 8
/* 809B1524  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809B1528:
/* 809B1528  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 809B152C  3C 80 80 9B */	lis r4, stringBase0@ha
/* 809B1530  38 84 18 DC */	addi r4, r4, stringBase0@l
/* 809B1534  38 84 00 07 */	addi r4, r4, 7
/* 809B1538  4B 67 B9 84 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809B153C  7C 7D 1B 78 */	mr r29, r3
/* 809B1540  2C 1D 00 04 */	cmpwi r29, 4
/* 809B1544  40 82 01 40 */	bne lbl_809B1684
/* 809B1548  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809B154C  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 809B1550  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 809B1554  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 809B1558  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 809B155C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 809B1560  B0 1E 09 84 */	sth r0, 0x984(r30)
/* 809B1564  38 00 00 00 */	li r0, 0
/* 809B1568  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 809B156C  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 809B1570  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 809B1574  28 00 00 01 */	cmplwi r0, 1
/* 809B1578  40 82 00 10 */	bne lbl_809B1588
/* 809B157C  38 00 02 EF */	li r0, 0x2ef
/* 809B1580  B0 1E 09 84 */	sth r0, 0x984(r30)
/* 809B1584  48 00 00 0C */	b lbl_809B1590
lbl_809B1588:
/* 809B1588  38 00 02 F0 */	li r0, 0x2f0
/* 809B158C  B0 1E 09 84 */	sth r0, 0x984(r30)
lbl_809B1590:
/* 809B1590  7F C3 F3 78 */	mr r3, r30
/* 809B1594  3C 80 80 9B */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 809B1598  38 84 11 E0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 809B159C  38 A0 12 80 */	li r5, 0x1280
/* 809B15A0  4B 66 8F 10 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809B15A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809B15A8  40 82 00 0C */	bne lbl_809B15B4
/* 809B15AC  38 60 00 05 */	li r3, 5
/* 809B15B0  48 00 00 D8 */	b lbl_809B1688
lbl_809B15B4:
/* 809B15B4  3C 60 80 9B */	lis r3, data_809B19E8@ha
/* 809B15B8  8C 03 19 E8 */	lbzu r0, data_809B19E8@l(r3)
/* 809B15BC  28 00 00 00 */	cmplwi r0, 0
/* 809B15C0  40 82 00 20 */	bne lbl_809B15E0
/* 809B15C4  38 00 00 01 */	li r0, 1
/* 809B15C8  98 1E 09 FC */	stb r0, 0x9fc(r30)
/* 809B15CC  98 03 00 00 */	stb r0, 0(r3)
/* 809B15D0  38 00 FF FF */	li r0, -1
/* 809B15D4  3C 60 80 9B */	lis r3, l_HIO@ha
/* 809B15D8  38 63 19 F8 */	addi r3, r3, l_HIO@l
/* 809B15DC  98 03 00 04 */	stb r0, 4(r3)
lbl_809B15E0:
/* 809B15E0  38 00 00 00 */	li r0, 0
/* 809B15E4  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 809B15E8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 809B15EC  80 63 00 04 */	lwz r3, 4(r3)
/* 809B15F0  38 63 00 24 */	addi r3, r3, 0x24
/* 809B15F4  90 7E 05 04 */	stw r3, 0x504(r30)
/* 809B15F8  90 01 00 08 */	stw r0, 8(r1)
/* 809B15FC  38 7E 06 28 */	addi r3, r30, 0x628
/* 809B1600  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809B1604  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809B1608  7F C6 F3 78 */	mr r6, r30
/* 809B160C  38 E0 00 01 */	li r7, 1
/* 809B1610  39 1E 05 E8 */	addi r8, r30, 0x5e8
/* 809B1614  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809B1618  39 40 00 00 */	li r10, 0
/* 809B161C  4B 6C 4C 2C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809B1620  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 809B1624  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 809B1628  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 809B162C  4B 6C 49 2C */	b SetWall__12dBgS_AcchCirFff
/* 809B1630  38 7E 08 04 */	addi r3, r30, 0x804
/* 809B1634  38 80 00 64 */	li r4, 0x64
/* 809B1638  38 A0 00 00 */	li r5, 0
/* 809B163C  7F C6 F3 78 */	mr r6, r30
/* 809B1640  4B 6D 22 20 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809B1644  38 7E 08 40 */	addi r3, r30, 0x840
/* 809B1648  3C 80 80 9B */	lis r4, cc_sph_src@ha
/* 809B164C  38 84 18 FC */	addi r4, r4, cc_sph_src@l
/* 809B1650  4B 6D 33 E4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 809B1654  38 1E 08 04 */	addi r0, r30, 0x804
/* 809B1658  90 1E 08 84 */	stw r0, 0x884(r30)
/* 809B165C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 809B1660  4B 8B 62 F4 */	b cM_rndF__Ff
/* 809B1664  FC 00 08 1E */	fctiwz f0, f1
/* 809B1668  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809B166C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B1670  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 809B1674  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 809B1678  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 809B167C  7F C3 F3 78 */	mr r3, r30
/* 809B1680  4B FF F7 61 */	bl daNpc_Du_Execute__FP12npc_du_class
lbl_809B1684:
/* 809B1684  7F A3 EB 78 */	mr r3, r29
lbl_809B1688:
/* 809B1688  39 61 00 30 */	addi r11, r1, 0x30
/* 809B168C  4B 9B 0B 98 */	b _restgpr_28
/* 809B1690  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809B1694  7C 08 03 A6 */	mtlr r0
/* 809B1698  38 21 00 30 */	addi r1, r1, 0x30
/* 809B169C  4E 80 00 20 */	blr 
