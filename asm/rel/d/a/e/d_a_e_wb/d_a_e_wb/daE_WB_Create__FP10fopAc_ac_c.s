lbl_807E13A8:
/* 807E13A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 807E13AC  7C 08 02 A6 */	mflr r0
/* 807E13B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 807E13B4  39 61 00 60 */	addi r11, r1, 0x60
/* 807E13B8  4B B8 0E 04 */	b _savegpr_21
/* 807E13BC  7C 7F 1B 78 */	mr r31, r3
/* 807E13C0  3C 80 80 7E */	lis r4, cNullVec__6Z2Calc@ha
/* 807E13C4  3B 84 2F 58 */	addi r28, r4, cNullVec__6Z2Calc@l
/* 807E13C8  3C 80 80 7E */	lis r4, lit_1109@ha
/* 807E13CC  3B A4 35 78 */	addi r29, r4, lit_1109@l
/* 807E13D0  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807E13D4  3B C4 29 8C */	addi r30, r4, lit_3882@l
/* 807E13D8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807E13DC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807E13E0  40 82 01 9C */	bne lbl_807E157C
/* 807E13E4  7F E0 FB 79 */	or. r0, r31, r31
/* 807E13E8  41 82 01 88 */	beq lbl_807E1570
/* 807E13EC  7C 1A 03 78 */	mr r26, r0
/* 807E13F0  4B 83 77 74 */	b __ct__10fopAc_ac_cFv
/* 807E13F4  38 7A 05 EC */	addi r3, r26, 0x5ec
/* 807E13F8  4B AE 3C 04 */	b __ct__14Z2CreatureRideFv
/* 807E13FC  38 7A 06 EC */	addi r3, r26, 0x6ec
/* 807E1400  3C 80 80 7E */	lis r4, __ct__5csXyzFv@ha
/* 807E1404  38 84 20 90 */	addi r4, r4, __ct__5csXyzFv@l
/* 807E1408  3C A0 80 7D */	lis r5, __dt__5csXyzFv@ha
/* 807E140C  38 A5 79 B0 */	addi r5, r5, __dt__5csXyzFv@l
/* 807E1410  38 C0 00 06 */	li r6, 6
/* 807E1414  38 E0 00 1D */	li r7, 0x1d
/* 807E1418  4B B8 09 48 */	b __construct_array
/* 807E141C  38 7A 07 AC */	addi r3, r26, 0x7ac
/* 807E1420  4B 89 4A 8C */	b __ct__12dBgS_AcchCirFv
/* 807E1424  3A BA 07 EC */	addi r21, r26, 0x7ec
/* 807E1428  7E A3 AB 78 */	mr r3, r21
/* 807E142C  4B 89 4C 74 */	b __ct__9dBgS_AcchFv
/* 807E1430  3C 60 80 7E */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 807E1434  38 63 35 3C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 807E1438  90 75 00 10 */	stw r3, 0x10(r21)
/* 807E143C  38 03 00 0C */	addi r0, r3, 0xc
/* 807E1440  90 15 00 14 */	stw r0, 0x14(r21)
/* 807E1444  38 03 00 18 */	addi r0, r3, 0x18
/* 807E1448  90 15 00 24 */	stw r0, 0x24(r21)
/* 807E144C  38 75 00 14 */	addi r3, r21, 0x14
/* 807E1450  4B 89 7A 18 */	b SetObj__16dBgS_PolyPassChkFv
/* 807E1454  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 807E1458  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 807E145C  90 1A 09 DC */	stw r0, 0x9dc(r26)
/* 807E1460  38 7A 09 E0 */	addi r3, r26, 0x9e0
/* 807E1464  4B 8A 22 FC */	b __ct__10dCcD_GSttsFv
/* 807E1468  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 807E146C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807E1470  90 7A 09 DC */	stw r3, 0x9dc(r26)
/* 807E1474  38 03 00 20 */	addi r0, r3, 0x20
/* 807E1478  90 1A 09 E0 */	stw r0, 0x9e0(r26)
/* 807E147C  38 7A 0A 00 */	addi r3, r26, 0xa00
/* 807E1480  3C 80 80 7E */	lis r4, __ct__8dCcD_SphFv@ha
/* 807E1484  38 84 1E D0 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 807E1488  3C A0 80 7E */	lis r5, __dt__8dCcD_SphFv@ha
/* 807E148C  38 A5 1E 04 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 807E1490  38 C0 01 38 */	li r6, 0x138
/* 807E1494  38 E0 00 07 */	li r7, 7
/* 807E1498  4B B8 08 C8 */	b __construct_array
/* 807E149C  3B 7A 12 88 */	addi r27, r26, 0x1288
/* 807E14A0  7F 63 DB 78 */	mr r3, r27
/* 807E14A4  4B 8A 25 84 */	b __ct__12dCcD_GObjInfFv
/* 807E14A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807E14AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807E14B0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807E14B4  3C 60 80 7E */	lis r3, __vt__8cM3dGAab@ha
/* 807E14B8  38 03 35 30 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807E14BC  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 807E14C0  3C 60 80 7E */	lis r3, __vt__8cM3dGSph@ha
/* 807E14C4  38 03 35 24 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807E14C8  90 1B 01 34 */	stw r0, 0x134(r27)
/* 807E14CC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807E14D0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807E14D4  90 7B 01 20 */	stw r3, 0x120(r27)
/* 807E14D8  38 03 00 58 */	addi r0, r3, 0x58
/* 807E14DC  90 1B 01 34 */	stw r0, 0x134(r27)
/* 807E14E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807E14E4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807E14E8  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 807E14EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 807E14F0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807E14F4  38 03 00 84 */	addi r0, r3, 0x84
/* 807E14F8  90 1B 01 34 */	stw r0, 0x134(r27)
/* 807E14FC  38 7A 14 38 */	addi r3, r26, 0x1438
/* 807E1500  3C 80 80 7E */	lis r4, __ct__4cXyzFv@ha
/* 807E1504  38 84 24 FC */	addi r4, r4, __ct__4cXyzFv@l
/* 807E1508  3C A0 80 7D */	lis r5, __dt__4cXyzFv@ha
/* 807E150C  38 A5 2B 48 */	addi r5, r5, __dt__4cXyzFv@l
/* 807E1510  38 C0 00 0C */	li r6, 0xc
/* 807E1514  38 E0 00 02 */	li r7, 2
/* 807E1518  4B B8 08 48 */	b __construct_array
/* 807E151C  38 7A 14 50 */	addi r3, r26, 0x1450
/* 807E1520  3C 80 80 7E */	lis r4, __ct__6himo_sFv@ha
/* 807E1524  38 84 1D 2C */	addi r4, r4, __ct__6himo_sFv@l
/* 807E1528  3C A0 80 7E */	lis r5, __dt__6himo_sFv@ha
/* 807E152C  38 A5 1C CC */	addi r5, r5, __dt__6himo_sFv@l
/* 807E1530  38 C0 00 C0 */	li r6, 0xc0
/* 807E1534  38 E0 00 02 */	li r7, 2
/* 807E1538  4B B8 08 28 */	b __construct_array
/* 807E153C  38 7A 15 D0 */	addi r3, r26, 0x15d0
/* 807E1540  3C 80 80 7E */	lis r4, __ct__19mDoExt_3DlineMat1_cFv@ha
/* 807E1544  38 84 1C B0 */	addi r4, r4, __ct__19mDoExt_3DlineMat1_cFv@l
/* 807E1548  38 A0 00 00 */	li r5, 0
/* 807E154C  38 C0 00 3C */	li r6, 0x3c
/* 807E1550  38 E0 00 02 */	li r7, 2
/* 807E1554  4B B8 08 0C */	b __construct_array
/* 807E1558  3C 60 80 7E */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 807E155C  38 03 35 10 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 807E1560  90 1A 16 48 */	stw r0, 0x1648(r26)
/* 807E1564  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha
/* 807E1568  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l
/* 807E156C  90 1A 16 48 */	stw r0, 0x1648(r26)
lbl_807E1570:
/* 807E1570  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 807E1574  60 00 00 08 */	ori r0, r0, 8
/* 807E1578  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_807E157C:
/* 807E157C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807E1580  98 1F 05 BC */	stb r0, 0x5bc(r31)
/* 807E1584  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 807E1588  28 00 00 05 */	cmplwi r0, 5
/* 807E158C  41 82 00 1C */	beq lbl_807E15A8
/* 807E1590  28 00 00 07 */	cmplwi r0, 7
/* 807E1594  41 82 00 14 */	beq lbl_807E15A8
/* 807E1598  28 00 00 08 */	cmplwi r0, 8
/* 807E159C  41 82 00 0C */	beq lbl_807E15A8
/* 807E15A0  28 00 00 09 */	cmplwi r0, 9
/* 807E15A4  40 82 00 18 */	bne lbl_807E15BC
lbl_807E15A8:
/* 807E15A8  3C 60 80 7E */	lis r3, stringBase0@ha
/* 807E15AC  38 63 2F 0C */	addi r3, r3, stringBase0@l
/* 807E15B0  38 03 00 3F */	addi r0, r3, 0x3f
/* 807E15B4  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 807E15B8  48 00 00 14 */	b lbl_807E15CC
lbl_807E15BC:
/* 807E15BC  3C 60 80 7E */	lis r3, stringBase0@ha
/* 807E15C0  38 63 2F 0C */	addi r3, r3, stringBase0@l
/* 807E15C4  38 03 00 44 */	addi r0, r3, 0x44
/* 807E15C8  90 1F 05 B8 */	stw r0, 0x5b8(r31)
lbl_807E15CC:
/* 807E15CC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807E15D0  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 807E15D4  4B 84 B8 E8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807E15D8  7C 7A 1B 78 */	mr r26, r3
/* 807E15DC  38 00 00 00 */	li r0, 0
/* 807E15E0  98 1D 00 3E */	stb r0, 0x3e(r29)
/* 807E15E4  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 807E15E8  98 1D 00 3F */	stb r0, 0x3f(r29)
/* 807E15EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E15F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E15F4  3B 63 4E 00 */	addi r27, r3, 0x4e00
/* 807E15F8  7F 63 DB 78 */	mr r3, r27
/* 807E15FC  3C 80 80 7E */	lis r4, stringBase0@ha
/* 807E1600  38 84 2F 0C */	addi r4, r4, stringBase0@l
/* 807E1604  38 84 00 28 */	addi r4, r4, 0x28
/* 807E1608  4B B8 73 8C */	b strcmp
/* 807E160C  2C 03 00 00 */	cmpwi r3, 0
/* 807E1610  40 82 00 0C */	bne lbl_807E161C
/* 807E1614  38 00 00 02 */	li r0, 2
/* 807E1618  98 1D 00 3D */	stb r0, 0x3d(r29)
lbl_807E161C:
/* 807E161C  7F 63 DB 78 */	mr r3, r27
/* 807E1620  3C 80 80 7E */	lis r4, stringBase0@ha
/* 807E1624  38 84 2F 0C */	addi r4, r4, stringBase0@l
/* 807E1628  38 84 00 30 */	addi r4, r4, 0x30
/* 807E162C  4B B8 73 68 */	b strcmp
/* 807E1630  2C 03 00 00 */	cmpwi r3, 0
/* 807E1634  40 82 00 18 */	bne lbl_807E164C
/* 807E1638  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807E163C  7C 00 07 75 */	extsb. r0, r0
/* 807E1640  40 82 00 0C */	bne lbl_807E164C
/* 807E1644  38 00 00 01 */	li r0, 1
/* 807E1648  98 1D 00 3E */	stb r0, 0x3e(r29)
lbl_807E164C:
/* 807E164C  2C 1A 00 04 */	cmpwi r26, 4
/* 807E1650  40 82 06 44 */	bne lbl_807E1C94
/* 807E1654  38 60 00 00 */	li r3, 0
/* 807E1658  B0 7F 06 90 */	sth r3, 0x690(r31)
/* 807E165C  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 807E1660  28 00 00 FF */	cmplwi r0, 0xff
/* 807E1664  40 82 00 0C */	bne lbl_807E1670
/* 807E1668  98 7F 05 BC */	stb r3, 0x5bc(r31)
/* 807E166C  48 00 01 38 */	b lbl_807E17A4
lbl_807E1670:
/* 807E1670  28 00 00 05 */	cmplwi r0, 5
/* 807E1674  40 82 00 18 */	bne lbl_807E168C
/* 807E1678  38 00 00 01 */	li r0, 1
/* 807E167C  98 1F 07 9D */	stb r0, 0x79d(r31)
/* 807E1680  38 00 00 08 */	li r0, 8
/* 807E1684  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E1688  48 00 01 1C */	b lbl_807E17A4
lbl_807E168C:
/* 807E168C  28 00 00 07 */	cmplwi r0, 7
/* 807E1690  40 82 00 60 */	bne lbl_807E16F0
/* 807E1694  38 00 00 02 */	li r0, 2
/* 807E1698  98 1F 07 9D */	stb r0, 0x79d(r31)
/* 807E169C  38 00 00 0F */	li r0, 0xf
/* 807E16A0  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E16A4  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 807E16A8  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)
/* 807E16AC  28 00 00 00 */	cmplwi r0, 0
/* 807E16B0  40 82 00 18 */	bne lbl_807E16C8
/* 807E16B4  38 00 00 28 */	li r0, 0x28
/* 807E16B8  B0 1F 16 9E */	sth r0, 0x169e(r31)
/* 807E16BC  7F E3 FB 78 */	mr r3, r31
/* 807E16C0  4B FF 55 6D */	bl arrow_rd_set__FP10e_wb_class
/* 807E16C4  48 00 00 E0 */	b lbl_807E17A4
lbl_807E16C8:
/* 807E16C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807E16CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807E16D0  80 63 00 00 */	lwz r3, 0(r3)
/* 807E16D4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807E16D8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000096@ha */
/* 807E16DC  38 84 00 96 */	addi r4, r4, 0x0096 /* 0x01000096@l */
/* 807E16E0  4B AC DD BC */	b subBgmStart__8Z2SeqMgrFUl
/* 807E16E4  38 00 00 01 */	li r0, 1
/* 807E16E8  98 1F 17 22 */	stb r0, 0x1722(r31)
/* 807E16EC  48 00 00 B8 */	b lbl_807E17A4
lbl_807E16F0:
/* 807E16F0  28 00 00 08 */	cmplwi r0, 8
/* 807E16F4  40 82 00 44 */	bne lbl_807E1738
/* 807E16F8  38 00 00 03 */	li r0, 3
/* 807E16FC  98 1F 07 9D */	stb r0, 0x79d(r31)
/* 807E1700  38 00 00 11 */	li r0, 0x11
/* 807E1704  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E1708  7F 63 DB 78 */	mr r3, r27
/* 807E170C  3C 80 80 7E */	lis r4, stringBase0@ha
/* 807E1710  38 84 2F 0C */	addi r4, r4, stringBase0@l
/* 807E1714  38 84 00 30 */	addi r4, r4, 0x30
/* 807E1718  4B B8 72 7C */	b strcmp
/* 807E171C  2C 03 00 00 */	cmpwi r3, 0
/* 807E1720  40 82 00 0C */	bne lbl_807E172C
/* 807E1724  38 00 FF 9C */	li r0, -100
/* 807E1728  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_807E172C:
/* 807E172C  38 00 80 00 */	li r0, -32768
/* 807E1730  B0 1F 05 DC */	sth r0, 0x5dc(r31)
/* 807E1734  48 00 00 70 */	b lbl_807E17A4
lbl_807E1738:
/* 807E1738  28 00 00 06 */	cmplwi r0, 6
/* 807E173C  40 82 00 10 */	bne lbl_807E174C
/* 807E1740  38 00 00 32 */	li r0, 0x32
/* 807E1744  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E1748  48 00 00 5C */	b lbl_807E17A4
lbl_807E174C:
/* 807E174C  28 00 00 0A */	cmplwi r0, 0xa
/* 807E1750  40 82 00 38 */	bne lbl_807E1788
/* 807E1754  38 00 00 06 */	li r0, 6
/* 807E1758  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E175C  38 00 00 01 */	li r0, 1
/* 807E1760  98 1F 07 A6 */	stb r0, 0x7a6(r31)
/* 807E1764  98 1F 07 A7 */	stb r0, 0x7a7(r31)
/* 807E1768  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807E176C  4B 83 C5 50 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 807E1770  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E1774  41 82 00 30 */	beq lbl_807E17A4
/* 807E1778  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 807E177C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 807E1780  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807E1784  48 00 00 20 */	b lbl_807E17A4
lbl_807E1788:
/* 807E1788  28 00 00 09 */	cmplwi r0, 9
/* 807E178C  40 82 00 18 */	bne lbl_807E17A4
/* 807E1790  38 00 00 04 */	li r0, 4
/* 807E1794  98 1F 07 9D */	stb r0, 0x79d(r31)
/* 807E1798  38 00 00 13 */	li r0, 0x13
/* 807E179C  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E17A0  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
lbl_807E17A4:
/* 807E17A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807E17A8  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807E17AC  98 1F 05 BD */	stb r0, 0x5bd(r31)
/* 807E17B0  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E17B4  7C 00 07 75 */	extsb. r0, r0
/* 807E17B8  41 82 01 54 */	beq lbl_807E190C
/* 807E17BC  38 00 00 02 */	li r0, 2
/* 807E17C0  90 1F 06 88 */	stw r0, 0x688(r31)
/* 807E17C4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E17C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E17CC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807E17D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E17D4  3A C0 00 00 */	li r22, 0
/* 807E17D8  3B 20 00 00 */	li r25, 0
/* 807E17DC  3B 00 00 00 */	li r24, 0
/* 807E17E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807E17E4  3A E3 07 68 */	addi r23, r3, calc_mtx@l
lbl_807E17E8:
/* 807E17E8  80 77 00 00 */	lwz r3, 0(r23)
/* 807E17EC  7F 04 07 34 */	extsh r4, r24
/* 807E17F0  4B 82 AB EC */	b mDoMtx_YrotS__FPA4_fs
/* 807E17F4  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 807E17F8  2C 00 00 01 */	cmpwi r0, 1
/* 807E17FC  40 82 00 28 */	bne lbl_807E1824
/* 807E1800  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 807E1804  4B A8 61 50 */	b cM_rndF__Ff
/* 807E1808  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 807E180C  EC 00 08 2A */	fadds f0, f0, f1
/* 807E1810  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E1814  38 61 00 1C */	addi r3, r1, 0x1c
/* 807E1818  38 81 00 10 */	addi r4, r1, 0x10
/* 807E181C  4B A8 F6 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 807E1820  48 00 00 38 */	b lbl_807E1858
lbl_807E1824:
/* 807E1824  C0 1E 05 70 */	lfs f0, 0x570(r30)
/* 807E1828  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E182C  38 61 00 1C */	addi r3, r1, 0x1c
/* 807E1830  38 81 00 10 */	addi r4, r1, 0x10
/* 807E1834  4B A8 F6 B8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807E1838  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 807E183C  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 807E1840  EC 01 00 2A */	fadds f0, f1, f0
/* 807E1844  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E1848  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807E184C  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 807E1850  EC 01 00 2A */	fadds f0, f1, f0
/* 807E1854  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_807E1858:
/* 807E1858  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807E185C  38 7D 00 B8 */	addi r3, r29, 0xb8
/* 807E1860  7C 63 CA 14 */	add r3, r3, r25
/* 807E1864  D0 03 00 00 */	stfs f0, 0(r3)
/* 807E1868  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807E186C  D0 03 00 04 */	stfs f0, 4(r3)
/* 807E1870  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807E1874  D0 03 00 08 */	stfs f0, 8(r3)
/* 807E1878  3A D6 00 01 */	addi r22, r22, 1
/* 807E187C  2C 16 00 08 */	cmpwi r22, 8
/* 807E1880  3B 39 00 0C */	addi r25, r25, 0xc
/* 807E1884  3B 18 20 00 */	addi r24, r24, 0x2000
/* 807E1888  41 80 FF 60 */	blt lbl_807E17E8
/* 807E188C  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E1890  7C 00 07 74 */	extsb r0, r0
/* 807E1894  2C 00 00 01 */	cmpwi r0, 1
/* 807E1898  41 82 00 0C */	beq lbl_807E18A4
/* 807E189C  2C 00 00 02 */	cmpwi r0, 2
/* 807E18A0  40 82 00 44 */	bne lbl_807E18E4
lbl_807E18A4:
/* 807E18A4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807E18A8  7C 07 07 74 */	extsb r7, r0
/* 807E18AC  38 00 00 00 */	li r0, 0
/* 807E18B0  90 01 00 08 */	stw r0, 8(r1)
/* 807E18B4  38 60 01 19 */	li r3, 0x119
/* 807E18B8  28 1F 00 00 */	cmplwi r31, 0
/* 807E18BC  41 82 00 0C */	beq lbl_807E18C8
/* 807E18C0  80 9F 00 04 */	lwz r4, 4(r31)
/* 807E18C4  48 00 00 08 */	b lbl_807E18CC
lbl_807E18C8:
/* 807E18C8  38 80 FF FF */	li r4, -1
lbl_807E18CC:
/* 807E18CC  38 A0 00 00 */	li r5, 0
/* 807E18D0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 807E18D4  39 00 00 00 */	li r8, 0
/* 807E18D8  39 20 00 00 */	li r9, 0
/* 807E18DC  39 40 FF FF */	li r10, -1
/* 807E18E0  4B 83 86 10 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_807E18E4:
/* 807E18E4  88 1F 05 BD */	lbz r0, 0x5bd(r31)
/* 807E18E8  54 00 10 3A */	slwi r0, r0, 2
/* 807E18EC  38 7C 04 94 */	addi r3, r28, 0x494
/* 807E18F0  7C 03 04 2E */	lfsx f0, r3, r0
/* 807E18F4  D0 1F 07 A8 */	stfs f0, 0x7a8(r31)
/* 807E18F8  88 1F 05 BD */	lbz r0, 0x5bd(r31)
/* 807E18FC  54 00 10 3A */	slwi r0, r0, 2
/* 807E1900  38 7C 04 AC */	addi r3, r28, 0x4ac
/* 807E1904  7C 03 04 2E */	lfsx f0, r3, r0
/* 807E1908  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
lbl_807E190C:
/* 807E190C  7F E3 FB 78 */	mr r3, r31
/* 807E1910  3C 80 80 7E */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807E1914  38 84 10 8C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807E1918  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E191C  7C 00 07 75 */	extsb. r0, r0
/* 807E1920  38 A0 37 40 */	li r5, 0x3740
/* 807E1924  41 82 00 08 */	beq lbl_807E192C
/* 807E1928  38 A0 43 00 */	li r5, 0x4300
lbl_807E192C:
/* 807E192C  4B 83 8B 84 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807E1930  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E1934  40 82 00 0C */	bne lbl_807E1940
/* 807E1938  38 60 00 05 */	li r3, 5
/* 807E193C  48 00 03 5C */	b lbl_807E1C98
lbl_807E1940:
/* 807E1940  88 1D 00 40 */	lbz r0, 0x40(r29)
/* 807E1944  28 00 00 00 */	cmplwi r0, 0
/* 807E1948  40 82 00 1C */	bne lbl_807E1964
/* 807E194C  38 00 00 01 */	li r0, 1
/* 807E1950  98 1F 17 E0 */	stb r0, 0x17e0(r31)
/* 807E1954  98 1D 00 40 */	stb r0, 0x40(r29)
/* 807E1958  38 00 FF FF */	li r0, -1
/* 807E195C  38 7D 00 50 */	addi r3, r29, 0x50
/* 807E1960  98 03 00 04 */	stb r0, 4(r3)
lbl_807E1964:
/* 807E1964  38 00 00 04 */	li r0, 4
/* 807E1968  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 807E196C  38 00 00 0E */	li r0, 0xe
/* 807E1970  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 807E1974  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 807E1978  80 63 00 04 */	lwz r3, 4(r3)
/* 807E197C  38 03 00 24 */	addi r0, r3, 0x24
/* 807E1980  90 1F 05 04 */	stw r0, 0x504(r31)
/* 807E1984  7F E3 FB 78 */	mr r3, r31
/* 807E1988  C0 3E 05 74 */	lfs f1, 0x574(r30)
/* 807E198C  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 807E1990  FC 60 08 90 */	fmr f3, f1
/* 807E1994  4B 83 8B 94 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807E1998  7F E3 FB 78 */	mr r3, r31
/* 807E199C  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807E19A0  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 807E19A4  FC 60 08 90 */	fmr f3, f1
/* 807E19A8  4B 83 8B 90 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807E19AC  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 807E19B0  D0 1F 05 20 */	stfs f0, 0x520(r31)
/* 807E19B4  38 00 00 00 */	li r0, 0
/* 807E19B8  90 01 00 08 */	stw r0, 8(r1)
/* 807E19BC  38 7F 07 EC */	addi r3, r31, 0x7ec
/* 807E19C0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807E19C4  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 807E19C8  7F E6 FB 78 */	mr r6, r31
/* 807E19CC  38 E0 00 01 */	li r7, 1
/* 807E19D0  39 1F 07 AC */	addi r8, r31, 0x7ac
/* 807E19D4  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 807E19D8  39 40 00 00 */	li r10, 0
/* 807E19DC  4B 89 48 6C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807E19E0  38 7F 07 AC */	addi r3, r31, 0x7ac
/* 807E19E4  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807E19E8  FC 40 08 90 */	fmr f2, f1
/* 807E19EC  4B 89 45 6C */	b SetWall__12dBgS_AcchCirFff
/* 807E19F0  80 1F 08 18 */	lwz r0, 0x818(r31)
/* 807E19F4  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 807E19F8  90 1F 08 18 */	stw r0, 0x818(r31)
/* 807E19FC  38 00 00 0A */	li r0, 0xa
/* 807E1A00  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807E1A04  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 807E1A08  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E1A0C  7C 00 07 75 */	extsb. r0, r0
/* 807E1A10  41 82 00 1C */	beq lbl_807E1A2C
/* 807E1A14  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 807E1A18  38 80 00 FE */	li r4, 0xfe
/* 807E1A1C  38 A0 00 00 */	li r5, 0
/* 807E1A20  7F E6 FB 78 */	mr r6, r31
/* 807E1A24  4B 8A 1E 3C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807E1A28  48 00 00 18 */	b lbl_807E1A40
lbl_807E1A2C:
/* 807E1A2C  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 807E1A30  38 80 00 FD */	li r4, 0xfd
/* 807E1A34  38 A0 00 00 */	li r5, 0
/* 807E1A38  7F E6 FB 78 */	mr r6, r31
/* 807E1A3C  4B 8A 1E 24 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
lbl_807E1A40:
/* 807E1A40  3A A0 00 00 */	li r21, 0
/* 807E1A44  3B 20 00 00 */	li r25, 0
/* 807E1A48  3A FF 09 C4 */	addi r23, r31, 0x9c4
/* 807E1A4C  3B 00 00 02 */	li r24, 2
lbl_807E1A50:
/* 807E1A50  7E DF CA 14 */	add r22, r31, r25
/* 807E1A54  38 76 0A 00 */	addi r3, r22, 0xa00
/* 807E1A58  38 9C 04 C4 */	addi r4, r28, 0x4c4
/* 807E1A5C  4B 8A 2F D8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807E1A60  92 F6 0A 44 */	stw r23, 0xa44(r22)
/* 807E1A64  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807E1A68  7C 00 07 75 */	extsb. r0, r0
/* 807E1A6C  41 82 00 14 */	beq lbl_807E1A80
/* 807E1A70  80 16 0A 9C */	lwz r0, 0xa9c(r22)
/* 807E1A74  60 00 00 01 */	ori r0, r0, 1
/* 807E1A78  90 16 0A 9C */	stw r0, 0xa9c(r22)
/* 807E1A7C  9B 16 0A BA */	stb r24, 0xaba(r22)
lbl_807E1A80:
/* 807E1A80  3A B5 00 01 */	addi r21, r21, 1
/* 807E1A84  2C 15 00 06 */	cmpwi r21, 6
/* 807E1A88  3B 39 01 38 */	addi r25, r25, 0x138
/* 807E1A8C  40 81 FF C4 */	ble lbl_807E1A50
/* 807E1A90  38 7F 12 88 */	addi r3, r31, 0x1288
/* 807E1A94  38 9C 05 04 */	addi r4, r28, 0x504
/* 807E1A98  4B 8A 2F 9C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807E1A9C  38 1F 09 C4 */	addi r0, r31, 0x9c4
/* 807E1AA0  90 1F 12 CC */	stw r0, 0x12cc(r31)
/* 807E1AA4  38 00 00 28 */	li r0, 0x28
/* 807E1AA8  98 1F 05 48 */	stb r0, 0x548(r31)
/* 807E1AAC  38 00 00 16 */	li r0, 0x16
/* 807E1AB0  98 1F 05 44 */	stb r0, 0x544(r31)
/* 807E1AB4  38 00 00 30 */	li r0, 0x30
/* 807E1AB8  98 1F 05 4B */	stb r0, 0x54b(r31)
/* 807E1ABC  38 00 00 00 */	li r0, 0
/* 807E1AC0  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 807E1AC4  C0 3E 02 38 */	lfs f1, 0x238(r30)
/* 807E1AC8  4B A8 5E 8C */	b cM_rndF__Ff
/* 807E1ACC  FC 00 08 1E */	fctiwz f0, f1
/* 807E1AD0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807E1AD4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807E1AD8  B0 1F 06 8E */	sth r0, 0x68e(r31)
/* 807E1ADC  38 E0 00 00 */	li r7, 0
/* 807E1AE0  38 60 00 00 */	li r3, 0
lbl_807E1AE4:
/* 807E1AE4  38 80 00 00 */	li r4, 0
/* 807E1AE8  7C BF 1A 14 */	add r5, r31, r3
/* 807E1AEC  38 00 00 10 */	li r0, 0x10
/* 807E1AF0  7C 09 03 A6 */	mtctr r0
lbl_807E1AF4:
/* 807E1AF4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E1AF8  7C C5 22 14 */	add r6, r5, r4
/* 807E1AFC  D0 06 14 50 */	stfs f0, 0x1450(r6)
/* 807E1B00  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807E1B04  D0 06 14 54 */	stfs f0, 0x1454(r6)
/* 807E1B08  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807E1B0C  D0 06 14 58 */	stfs f0, 0x1458(r6)
/* 807E1B10  38 84 00 0C */	addi r4, r4, 0xc
/* 807E1B14  42 00 FF E0 */	bdnz lbl_807E1AF4
/* 807E1B18  38 E7 00 01 */	addi r7, r7, 1
/* 807E1B1C  2C 07 00 02 */	cmpwi r7, 2
/* 807E1B20  38 63 00 C0 */	addi r3, r3, 0xc0
/* 807E1B24  41 80 FF C0 */	blt lbl_807E1AE4
/* 807E1B28  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807E1B2C  D0 1F 14 38 */	stfs f0, 0x1438(r31)
/* 807E1B30  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807E1B34  D0 1F 14 3C */	stfs f0, 0x143c(r31)
/* 807E1B38  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807E1B3C  D0 1F 14 40 */	stfs f0, 0x1440(r31)
/* 807E1B40  C0 1F 14 38 */	lfs f0, 0x1438(r31)
/* 807E1B44  D0 1F 14 44 */	stfs f0, 0x1444(r31)
/* 807E1B48  C0 1F 14 3C */	lfs f0, 0x143c(r31)
/* 807E1B4C  D0 1F 14 48 */	stfs f0, 0x1448(r31)
/* 807E1B50  C0 1F 14 40 */	lfs f0, 0x1440(r31)
/* 807E1B54  D0 1F 14 4C */	stfs f0, 0x144c(r31)
/* 807E1B58  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 807E1B5C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807E1B60  38 BF 05 38 */	addi r5, r31, 0x538
/* 807E1B64  38 C0 00 06 */	li r6, 6
/* 807E1B68  38 E0 00 01 */	li r7, 1
/* 807E1B6C  4B AE 36 A0 */	b init__14Z2CreatureRideFP3VecP3VecUcUc
/* 807E1B70  38 1F 05 EC */	addi r0, r31, 0x5ec
/* 807E1B74  90 1F 13 C8 */	stw r0, 0x13c8(r31)
/* 807E1B78  7F 63 DB 78 */	mr r3, r27
/* 807E1B7C  3C 80 80 7E */	lis r4, stringBase0@ha
/* 807E1B80  38 84 2F 0C */	addi r4, r4, stringBase0@l
/* 807E1B84  4B B8 6E 10 */	b strcmp
/* 807E1B88  2C 03 00 00 */	cmpwi r3, 0
/* 807E1B8C  40 82 00 9C */	bne lbl_807E1C28
/* 807E1B90  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807E1B94  7C 00 07 74 */	extsb r0, r0
/* 807E1B98  2C 00 00 01 */	cmpwi r0, 1
/* 807E1B9C  40 82 00 38 */	bne lbl_807E1BD4
/* 807E1BA0  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 807E1BA4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807E1BA8  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 807E1BAC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807E1BB0  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 807E1BB4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807E1BB8  38 00 20 00 */	li r0, 0x2000
/* 807E1BBC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807E1BC0  38 00 00 6E */	li r0, 0x6e
/* 807E1BC4  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E1BC8  38 00 00 01 */	li r0, 1
/* 807E1BCC  98 1F 17 20 */	stb r0, 0x1720(r31)
/* 807E1BD0  48 00 00 58 */	b lbl_807E1C28
lbl_807E1BD4:
/* 807E1BD4  2C 00 00 02 */	cmpwi r0, 2
/* 807E1BD8  40 82 00 50 */	bne lbl_807E1C28
/* 807E1BDC  38 00 00 18 */	li r0, 0x18
/* 807E1BE0  B0 1F 06 90 */	sth r0, 0x690(r31)
/* 807E1BE4  7F E3 FB 78 */	mr r3, r31
/* 807E1BE8  38 80 00 12 */	li r4, 0x12
/* 807E1BEC  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807E1BF0  38 A0 00 02 */	li r5, 2
/* 807E1BF4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807E1BF8  4B FF 09 51 */	bl anm_init__FP10e_wb_classifUcf
/* 807E1BFC  38 00 00 03 */	li r0, 3
/* 807E1C00  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807E1C04  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 807E1C08  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807E1C0C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 807E1C10  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807E1C14  38 00 08 00 */	li r0, 0x800
/* 807E1C18  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 807E1C1C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807E1C20  38 00 00 01 */	li r0, 1
/* 807E1C24  98 1F 17 20 */	stb r0, 0x1720(r31)
lbl_807E1C28:
/* 807E1C28  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 807E1C2C  28 00 00 0A */	cmplwi r0, 0xa
/* 807E1C30  40 82 00 0C */	bne lbl_807E1C3C
/* 807E1C34  38 00 00 01 */	li r0, 1
/* 807E1C38  98 1D 00 3F */	stb r0, 0x3f(r29)
lbl_807E1C3C:
/* 807E1C3C  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 807E1C40  D0 1F 05 20 */	stfs f0, 0x520(r31)
/* 807E1C44  38 7D 00 50 */	addi r3, r29, 0x50
/* 807E1C48  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 807E1C4C  D0 1F 17 E8 */	stfs f0, 0x17e8(r31)
/* 807E1C50  38 00 00 01 */	li r0, 1
/* 807E1C54  90 1D 03 24 */	stw r0, 0x324(r29)
/* 807E1C58  7F E3 FB 78 */	mr r3, r31
/* 807E1C5C  4B FF E7 2D */	bl daE_WB_Execute__FP10e_wb_class
/* 807E1C60  38 00 00 00 */	li r0, 0
/* 807E1C64  90 1D 03 24 */	stw r0, 0x324(r29)
/* 807E1C68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E1C6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E1C70  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 807E1C74  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 807E1C78  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 807E1C7C  A0 84 00 B0 */	lhz r4, 0xb0(r4)
/* 807E1C80  4B 85 2D 3C */	b isEventBit__11dSv_event_cCFUs
/* 807E1C84  2C 03 00 00 */	cmpwi r3, 0
/* 807E1C88  41 82 00 0C */	beq lbl_807E1C94
/* 807E1C8C  38 00 00 01 */	li r0, 1
/* 807E1C90  98 1F 07 9E */	stb r0, 0x79e(r31)
lbl_807E1C94:
/* 807E1C94  7F 43 D3 78 */	mr r3, r26
lbl_807E1C98:
/* 807E1C98  39 61 00 60 */	addi r11, r1, 0x60
/* 807E1C9C  4B B8 05 6C */	b _restgpr_21
/* 807E1CA0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 807E1CA4  7C 08 03 A6 */	mtlr r0
/* 807E1CA8  38 21 00 60 */	addi r1, r1, 0x60
/* 807E1CAC  4E 80 00 20 */	blr 
