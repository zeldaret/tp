lbl_80AB12D4:
/* 80AB12D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AB12D8  7C 08 02 A6 */	mflr r0
/* 80AB12DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AB12E0  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB12E4  4B 8B 0E DC */	b _savegpr_22
/* 80AB12E8  7C 7F 1B 78 */	mr r31, r3
/* 80AB12EC  7C 96 23 78 */	mr r22, r4
/* 80AB12F0  7C B7 2B 78 */	mr r23, r5
/* 80AB12F4  7C DA 33 78 */	mr r26, r6
/* 80AB12F8  7C FB 3B 78 */	mr r27, r7
/* 80AB12FC  7D 1C 43 78 */	mr r28, r8
/* 80AB1300  7D 3D 4B 78 */	mr r29, r9
/* 80AB1304  7D 58 53 78 */	mr r24, r10
/* 80AB1308  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AB130C  3C 80 80 AB */	lis r4, m__19daNpc_Pouya_Param_c@ha
/* 80AB1310  3B C4 20 00 */	addi r30, r4, m__19daNpc_Pouya_Param_c@l
/* 80AB1314  4B 56 78 50 */	b __ct__10fopAc_ac_cFv
/* 80AB1318  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80AB131C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80AB1320  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AB1324  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AB1328  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AB132C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AB1330  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AB1334  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AB1338  4B 80 F0 90 */	b __ct__10Z2CreatureFv
/* 80AB133C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AB1340  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB1344  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB1348  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AB134C  7E C3 B3 78 */	mr r3, r22
/* 80AB1350  38 80 00 00 */	li r4, 0
/* 80AB1354  4B 87 70 A8 */	b init__12J3DFrameCtrlFs
/* 80AB1358  38 00 00 00 */	li r0, 0
/* 80AB135C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AB1360  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AB1364  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB1368  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB136C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AB1370  7E C3 B3 78 */	mr r3, r22
/* 80AB1374  38 80 00 00 */	li r4, 0
/* 80AB1378  4B 87 70 84 */	b init__12J3DFrameCtrlFs
/* 80AB137C  38 00 00 00 */	li r0, 0
/* 80AB1380  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB1384  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AB1388  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB138C  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB1390  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AB1394  7E C3 B3 78 */	mr r3, r22
/* 80AB1398  38 80 00 00 */	li r4, 0
/* 80AB139C  4B 87 70 60 */	b init__12J3DFrameCtrlFs
/* 80AB13A0  38 00 00 00 */	li r0, 0
/* 80AB13A4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB13A8  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AB13AC  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB13B0  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB13B4  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AB13B8  7E C3 B3 78 */	mr r3, r22
/* 80AB13BC  38 80 00 00 */	li r4, 0
/* 80AB13C0  4B 87 70 3C */	b init__12J3DFrameCtrlFs
/* 80AB13C4  38 00 00 00 */	li r0, 0
/* 80AB13C8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB13CC  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AB13D0  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB13D4  38 03 2B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB13D8  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AB13DC  7E C3 B3 78 */	mr r3, r22
/* 80AB13E0  38 80 00 00 */	li r4, 0
/* 80AB13E4  4B 87 70 18 */	b init__12J3DFrameCtrlFs
/* 80AB13E8  38 00 00 00 */	li r0, 0
/* 80AB13EC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB13F0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AB13F4  7E C3 B3 78 */	mr r3, r22
/* 80AB13F8  4B 5C 4C A8 */	b __ct__9dBgS_AcchFv
/* 80AB13FC  3C 60 80 AB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AB1400  38 63 2B 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AB1404  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AB1408  38 03 00 0C */	addi r0, r3, 0xc
/* 80AB140C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AB1410  38 03 00 18 */	addi r0, r3, 0x18
/* 80AB1414  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AB1418  38 76 00 14 */	addi r3, r22, 0x14
/* 80AB141C  4B 5C 7A 4C */	b SetObj__16dBgS_PolyPassChkFv
/* 80AB1420  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AB1424  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AB1428  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AB142C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AB1430  4B 5D 23 30 */	b __ct__10dCcD_GSttsFv
/* 80AB1434  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AB1438  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AB143C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AB1440  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AB1444  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AB1448  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AB144C  4B 5C 4A 60 */	b __ct__12dBgS_AcchCirFv
/* 80AB1450  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AB1454  4B 7B 67 C8 */	b __ct__11cBgS_GndChkFv
/* 80AB1458  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AB145C  4B 79 8A A4 */	b __ct__10dMsgFlow_cFv
/* 80AB1460  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AB1464  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AB1468  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AB146C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AB1470  4B 5D 22 F0 */	b __ct__10dCcD_GSttsFv
/* 80AB1474  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AB1478  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80AB147C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AB1480  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AB1484  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AB1488  4B 5C 60 F4 */	b __ct__11dBgS_GndChkFv
/* 80AB148C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AB1490  4B 5C 67 D8 */	b __ct__11dBgS_LinChkFv
/* 80AB1494  3C 60 80 AB */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AB1498  38 03 2B CC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AB149C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AB14A0  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AB14A4  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AB14A8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB14AC  4B 69 43 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB14B0  3C 60 80 AB */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AB14B4  38 03 2B CC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AB14B8  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AB14BC  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AB14C0  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AB14C4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB14C8  4B 69 43 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB14CC  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AB14D0  38 03 2B D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AB14D4  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AB14D8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB14DC  4B 69 41 F8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AB14E0  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AB14E4  38 03 2B D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AB14E8  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AB14EC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AB14F0  4B 69 41 E4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AB14F4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AB14F8  3C 60 80 AB */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80AB14FC  38 03 2B E4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80AB1500  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AB1504  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AB1508  38 03 2B D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AB150C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AB1510  7F 43 D3 78 */	mr r3, r26
/* 80AB1514  4B 69 41 C0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AB1518  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AB151C  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha
/* 80AB1520  38 84 17 D8 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AB1524  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha
/* 80AB1528  38 A5 11 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80AB152C  38 C0 00 0C */	li r6, 0xc
/* 80AB1530  38 E0 00 03 */	li r7, 3
/* 80AB1534  4B 8B 08 2C */	b __construct_array
/* 80AB1538  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AB153C  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha
/* 80AB1540  38 84 17 D8 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AB1544  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha
/* 80AB1548  38 A5 11 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80AB154C  38 C0 00 0C */	li r6, 0xc
/* 80AB1550  38 E0 00 03 */	li r7, 3
/* 80AB1554  4B 8B 08 0C */	b __construct_array
/* 80AB1558  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AB155C  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha
/* 80AB1560  38 84 17 D8 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AB1564  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha
/* 80AB1568  38 A5 11 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80AB156C  38 C0 00 0C */	li r6, 0xc
/* 80AB1570  38 E0 00 03 */	li r7, 3
/* 80AB1574  4B 8B 07 EC */	b __construct_array
/* 80AB1578  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AB157C  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha
/* 80AB1580  38 84 17 D8 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AB1584  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha
/* 80AB1588  38 A5 11 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80AB158C  38 C0 00 0C */	li r6, 0xc
/* 80AB1590  38 E0 00 03 */	li r7, 3
/* 80AB1594  4B 8B 07 CC */	b __construct_array
/* 80AB1598  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AB159C  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha
/* 80AB15A0  38 84 17 D8 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AB15A4  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha
/* 80AB15A8  38 A5 11 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80AB15AC  38 C0 00 0C */	li r6, 0xc
/* 80AB15B0  38 E0 00 03 */	li r7, 3
/* 80AB15B4  4B 8B 07 AC */	b __construct_array
/* 80AB15B8  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AB15BC  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha
/* 80AB15C0  38 84 17 D8 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AB15C4  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha
/* 80AB15C8  38 A5 11 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80AB15CC  38 C0 00 0C */	li r6, 0xc
/* 80AB15D0  38 E0 00 03 */	li r7, 3
/* 80AB15D4  4B 8B 07 8C */	b __construct_array
/* 80AB15D8  7F 43 D3 78 */	mr r3, r26
/* 80AB15DC  4B 69 56 BC */	b initialize__15daNpcT_JntAnm_cFv
/* 80AB15E0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AB15E4  3C 80 80 AB */	lis r4, __ct__5csXyzFv@ha
/* 80AB15E8  38 84 16 D8 */	addi r4, r4, __ct__5csXyzFv@l
/* 80AB15EC  3C A0 80 AB */	lis r5, __dt__5csXyzFv@ha
/* 80AB15F0  38 A5 11 C0 */	addi r5, r5, __dt__5csXyzFv@l
/* 80AB15F4  38 C0 00 06 */	li r6, 6
/* 80AB15F8  38 E0 00 02 */	li r7, 2
/* 80AB15FC  4B 8B 07 64 */	b __construct_array
/* 80AB1600  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AB1604  38 80 00 00 */	li r4, 0
/* 80AB1608  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AB160C  7C A3 00 50 */	subf r5, r3, r0
/* 80AB1610  4B 55 1E 48 */	b memset
/* 80AB1614  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB1618  4B 69 42 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB161C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB1620  4B 69 42 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB1624  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB1628  4B 69 40 AC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AB162C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AB1630  4B 69 40 A4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AB1634  7F 43 D3 78 */	mr r3, r26
/* 80AB1638  4B 69 56 60 */	b initialize__15daNpcT_JntAnm_cFv
/* 80AB163C  38 A0 00 00 */	li r5, 0
/* 80AB1640  38 60 00 00 */	li r3, 0
/* 80AB1644  7C A4 2B 78 */	mr r4, r5
/* 80AB1648  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80AB164C  38 00 00 02 */	li r0, 2
/* 80AB1650  7C 09 03 A6 */	mtctr r0
lbl_80AB1654:
/* 80AB1654  7C DF 22 14 */	add r6, r31, r4
/* 80AB1658  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AB165C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AB1660  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AB1664  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AB1668  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AB166C  38 63 00 04 */	addi r3, r3, 4
/* 80AB1670  38 84 00 06 */	addi r4, r4, 6
/* 80AB1674  42 00 FF E0 */	bdnz lbl_80AB1654
/* 80AB1678  38 00 00 00 */	li r0, 0
/* 80AB167C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AB1680  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AB1684  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AB1688  38 00 FF FF */	li r0, -1
/* 80AB168C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AB1690  38 00 00 01 */	li r0, 1
/* 80AB1694  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AB1698  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80AB169C  4B 7B 62 B8 */	b cM_rndF__Ff
/* 80AB16A0  FC 00 08 1E */	fctiwz f0, f1
/* 80AB16A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AB16A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AB16AC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AB16B0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80AB16B4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AB16B8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AB16BC  7F E3 FB 78 */	mr r3, r31
/* 80AB16C0  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB16C4  4B 8B 0B 48 */	b _restgpr_22
/* 80AB16C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB16CC  7C 08 03 A6 */	mtlr r0
/* 80AB16D0  38 21 00 40 */	addi r1, r1, 0x40
/* 80AB16D4  4E 80 00 20 */	blr 
