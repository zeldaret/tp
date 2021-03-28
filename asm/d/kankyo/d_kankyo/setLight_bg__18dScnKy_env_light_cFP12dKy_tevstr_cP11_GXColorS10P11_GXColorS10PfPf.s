lbl_801A133C:
/* 801A133C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801A1340  7C 08 02 A6 */	mflr r0
/* 801A1344  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801A1348  39 61 00 C0 */	addi r11, r1, 0xc0
/* 801A134C  48 1C 0E 5D */	bl _savegpr_16
/* 801A1350  7C 73 1B 78 */	mr r19, r3
/* 801A1354  7C 94 23 78 */	mr r20, r4
/* 801A1358  7C BC 2B 78 */	mr r28, r5
/* 801A135C  7C D5 33 78 */	mr r21, r6
/* 801A1360  7C F6 3B 78 */	mr r22, r7
/* 801A1364  7D 17 43 78 */	mr r23, r8
/* 801A1368  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A136C  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 801A1370  88 04 12 C2 */	lbz r0, 0x12c2(r4)
/* 801A1374  98 14 03 7F */	stb r0, 0x37f(r20)
/* 801A1378  88 04 12 C3 */	lbz r0, 0x12c3(r4)
/* 801A137C  98 14 03 7E */	stb r0, 0x37e(r20)
/* 801A1380  88 74 03 7F */	lbz r3, 0x37f(r20)
/* 801A1384  88 14 03 7E */	lbz r0, 0x37e(r20)
/* 801A1388  7C 03 00 40 */	cmplw r3, r0
/* 801A138C  41 82 00 0C */	beq lbl_801A1398
/* 801A1390  C0 04 11 DC */	lfs f0, 0x11dc(r4)
/* 801A1394  D0 14 03 70 */	stfs f0, 0x370(r20)
lbl_801A1398:
/* 801A1398  38 01 00 20 */	addi r0, r1, 0x20
/* 801A139C  90 01 00 08 */	stw r0, 8(r1)
/* 801A13A0  38 01 00 34 */	addi r0, r1, 0x34
/* 801A13A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A13A8  38 01 00 30 */	addi r0, r1, 0x30
/* 801A13AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801A13B0  38 01 00 2C */	addi r0, r1, 0x2c
/* 801A13B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A13B8  38 14 03 70 */	addi r0, r20, 0x370
/* 801A13BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 801A13C0  38 14 03 7B */	addi r0, r20, 0x37b
/* 801A13C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A13C8  7E 63 9B 78 */	mr r3, r19
/* 801A13CC  38 94 03 7D */	addi r4, r20, 0x37d
/* 801A13D0  38 B4 03 7C */	addi r5, r20, 0x37c
/* 801A13D4  38 D4 03 7F */	addi r6, r20, 0x37f
/* 801A13D8  38 F4 03 7E */	addi r7, r20, 0x37e
/* 801A13DC  39 01 00 23 */	addi r8, r1, 0x23
/* 801A13E0  39 21 00 21 */	addi r9, r1, 0x21
/* 801A13E4  39 41 00 22 */	addi r10, r1, 0x22
/* 801A13E8  4B FF E7 ED */	bl setLight_palno_get__18dScnKy_env_light_cFPUcPUcPUcPUcPUcPUcPUcPUcPfPiPiPfPUc
/* 801A13EC  88 01 00 23 */	lbz r0, 0x23(r1)
/* 801A13F0  28 00 00 FF */	cmplwi r0, 0xff
/* 801A13F4  40 82 00 38 */	bne lbl_801A142C
/* 801A13F8  38 60 00 00 */	li r3, 0
/* 801A13FC  38 C0 00 FF */	li r6, 0xff
/* 801A1400  7C 65 1B 78 */	mr r5, r3
/* 801A1404  7C 64 1B 78 */	mr r4, r3
/* 801A1408  38 00 00 04 */	li r0, 4
/* 801A140C  7C 09 03 A6 */	mtctr r0
lbl_801A1410:
/* 801A1410  7C FC 1A 14 */	add r7, r28, r3
/* 801A1414  B0 C7 00 00 */	sth r6, 0(r7)
/* 801A1418  B0 A7 00 02 */	sth r5, 2(r7)
/* 801A141C  B0 87 00 04 */	sth r4, 4(r7)
/* 801A1420  38 63 00 08 */	addi r3, r3, 8
/* 801A1424  42 00 FF EC */	bdnz lbl_801A1410
/* 801A1428  48 00 02 80 */	b lbl_801A16A8
lbl_801A142C:
/* 801A142C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A1430  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801A1434  80 7F 00 04 */	lwz r3, 4(r31)
/* 801A1438  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A143C  7F 63 02 14 */	add r27, r3, r0
/* 801A1440  88 01 00 21 */	lbz r0, 0x21(r1)
/* 801A1444  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A1448  7F 43 02 14 */	add r26, r3, r0
/* 801A144C  88 01 00 22 */	lbz r0, 0x22(r1)
/* 801A1450  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A1454  7F 23 02 14 */	add r25, r3, r0
/* 801A1458  88 01 00 20 */	lbz r0, 0x20(r1)
/* 801A145C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 801A1460  7F 03 02 14 */	add r24, r3, r0
/* 801A1464  3A 40 00 00 */	li r18, 0
/* 801A1468  3A 00 00 00 */	li r16, 0
/* 801A146C  3A 20 00 00 */	li r17, 0
lbl_801A1470:
/* 801A1470  80 73 11 70 */	lwz r3, 0x1170(r19)
/* 801A1474  80 13 11 74 */	lwz r0, 0x1174(r19)
/* 801A1478  90 61 00 48 */	stw r3, 0x48(r1)
/* 801A147C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801A1480  7C 7C 82 14 */	add r3, r28, r16
/* 801A1484  38 91 00 03 */	addi r4, r17, 3
/* 801A1488  7C 9B 22 14 */	add r4, r27, r4
/* 801A148C  38 B1 00 03 */	addi r5, r17, 3
/* 801A1490  7C B9 2A 14 */	add r5, r25, r5
/* 801A1494  38 D1 00 03 */	addi r6, r17, 3
/* 801A1498  7C DA 32 14 */	add r6, r26, r6
/* 801A149C  38 F1 00 03 */	addi r7, r17, 3
/* 801A14A0  7C F8 3A 14 */	add r7, r24, r7
/* 801A14A4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801A14A8  C0 54 03 70 */	lfs f2, 0x370(r20)
/* 801A14AC  39 01 00 48 */	addi r8, r1, 0x48
/* 801A14B0  C0 7F 12 00 */	lfs f3, 0x1200(r31)
/* 801A14B4  4B FF EE 8D */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A14B8  3A 52 00 01 */	addi r18, r18, 1
/* 801A14BC  2C 12 00 04 */	cmpwi r18, 4
/* 801A14C0  3A 10 00 08 */	addi r16, r16, 8
/* 801A14C4  3A 31 00 03 */	addi r17, r17, 3
/* 801A14C8  41 80 FF A8 */	blt lbl_801A1470
/* 801A14CC  4B FB DF 59 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A14D0  2C 03 00 00 */	cmpwi r3, 0
/* 801A14D4  41 82 00 0C */	beq lbl_801A14E0
/* 801A14D8  7F 83 E3 78 */	mr r3, r28
/* 801A14DC  4B FF B6 31 */	bl dKy_WolfPowerup_BgAmbCol__FP11_GXColorS10
lbl_801A14E0:
/* 801A14E0  38 00 00 FF */	li r0, 0xff
/* 801A14E4  B0 1C 00 1E */	sth r0, 0x1e(r28)
/* 801A14E8  B0 1C 00 16 */	sth r0, 0x16(r28)
/* 801A14EC  B0 1C 00 0E */	sth r0, 0xe(r28)
/* 801A14F0  B0 1C 00 06 */	sth r0, 6(r28)
/* 801A14F4  3B 80 00 00 */	li r28, 0
/* 801A14F8  3A 40 00 00 */	li r18, 0
/* 801A14FC  3A 20 00 00 */	li r17, 0
/* 801A1500  3A 00 00 00 */	li r16, 0
lbl_801A1504:
/* 801A1504  80 73 11 70 */	lwz r3, 0x1170(r19)
/* 801A1508  80 13 11 74 */	lwz r0, 0x1174(r19)
/* 801A150C  90 61 00 40 */	stw r3, 0x40(r1)
/* 801A1510  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A1514  3B A1 00 50 */	addi r29, r1, 0x50
/* 801A1518  7F BD 8A 14 */	add r29, r29, r17
/* 801A151C  7F A3 EB 78 */	mr r3, r29
/* 801A1520  38 90 00 0F */	addi r4, r16, 0xf
/* 801A1524  7C 9B 22 14 */	add r4, r27, r4
/* 801A1528  38 B0 00 0F */	addi r5, r16, 0xf
/* 801A152C  7C B9 2A 14 */	add r5, r25, r5
/* 801A1530  38 D0 00 0F */	addi r6, r16, 0xf
/* 801A1534  7C DA 32 14 */	add r6, r26, r6
/* 801A1538  38 F0 00 0F */	addi r7, r16, 0xf
/* 801A153C  7C F8 3A 14 */	add r7, r24, r7
/* 801A1540  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801A1544  C0 54 03 70 */	lfs f2, 0x370(r20)
/* 801A1548  39 01 00 40 */	addi r8, r1, 0x40
/* 801A154C  C0 7F 12 00 */	lfs f3, 0x1200(r31)
/* 801A1550  4B FF ED F1 */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A1554  4B FB DE D1 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A1558  2C 03 00 00 */	cmpwi r3, 0
/* 801A155C  41 82 00 14 */	beq lbl_801A1570
/* 801A1560  38 00 00 00 */	li r0, 0
/* 801A1564  B0 1D 00 00 */	sth r0, 0(r29)
/* 801A1568  B0 1D 00 02 */	sth r0, 2(r29)
/* 801A156C  B0 1D 00 04 */	sth r0, 4(r29)
lbl_801A1570:
/* 801A1570  3B D2 00 74 */	addi r30, r18, 0x74
/* 801A1574  7F D4 F2 14 */	add r30, r20, r30
/* 801A1578  A8 1D 00 00 */	lha r0, 0(r29)
/* 801A157C  98 01 00 28 */	stb r0, 0x28(r1)
/* 801A1580  A8 1D 00 02 */	lha r0, 2(r29)
/* 801A1584  98 01 00 29 */	stb r0, 0x29(r1)
/* 801A1588  A8 1D 00 04 */	lha r0, 4(r29)
/* 801A158C  98 01 00 2A */	stb r0, 0x2a(r1)
/* 801A1590  A8 1D 00 06 */	lha r0, 6(r29)
/* 801A1594  98 01 00 2B */	stb r0, 0x2b(r1)
/* 801A1598  38 61 00 28 */	addi r3, r1, 0x28
/* 801A159C  C0 34 03 74 */	lfs f1, 0x374(r20)
/* 801A15A0  4B FF CE 91 */	bl dKy_light_influence_col__FP8_GXColorf
/* 801A15A4  90 61 00 24 */	stw r3, 0x24(r1)
/* 801A15A8  88 01 00 24 */	lbz r0, 0x24(r1)
/* 801A15AC  98 1E 00 18 */	stb r0, 0x18(r30)
/* 801A15B0  88 01 00 25 */	lbz r0, 0x25(r1)
/* 801A15B4  98 1E 00 19 */	stb r0, 0x19(r30)
/* 801A15B8  88 01 00 26 */	lbz r0, 0x26(r1)
/* 801A15BC  98 1E 00 1A */	stb r0, 0x1a(r30)
/* 801A15C0  88 01 00 27 */	lbz r0, 0x27(r1)
/* 801A15C4  98 1E 00 1B */	stb r0, 0x1b(r30)
/* 801A15C8  3B 9C 00 01 */	addi r28, r28, 1
/* 801A15CC  2C 1C 00 06 */	cmpwi r28, 6
/* 801A15D0  3A 52 00 74 */	addi r18, r18, 0x74
/* 801A15D4  3A 31 00 08 */	addi r17, r17, 8
/* 801A15D8  3A 10 00 03 */	addi r16, r16, 3
/* 801A15DC  41 80 FF 28 */	blt lbl_801A1504
/* 801A15E0  80 73 11 B0 */	lwz r3, 0x11b0(r19)
/* 801A15E4  80 13 11 B4 */	lwz r0, 0x11b4(r19)
/* 801A15E8  90 61 00 38 */	stw r3, 0x38(r1)
/* 801A15EC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801A15F0  7E A3 AB 78 */	mr r3, r21
/* 801A15F4  38 9B 00 21 */	addi r4, r27, 0x21
/* 801A15F8  38 B9 00 21 */	addi r5, r25, 0x21
/* 801A15FC  38 DA 00 21 */	addi r6, r26, 0x21
/* 801A1600  38 F8 00 21 */	addi r7, r24, 0x21
/* 801A1604  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801A1608  C0 54 03 70 */	lfs f2, 0x370(r20)
/* 801A160C  39 01 00 38 */	addi r8, r1, 0x38
/* 801A1610  3D 20 80 43 */	lis r9, g_env_light@ha
/* 801A1614  39 29 CA 54 */	addi r9, r9, g_env_light@l
/* 801A1618  C0 69 12 04 */	lfs f3, 0x1204(r9)
/* 801A161C  4B FF ED 25 */	bl dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
/* 801A1620  C0 3B 00 24 */	lfs f1, 0x24(r27)
/* 801A1624  C0 5A 00 24 */	lfs f2, 0x24(r26)
/* 801A1628  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 801A162C  C0 99 00 24 */	lfs f4, 0x24(r25)
/* 801A1630  C0 B8 00 24 */	lfs f5, 0x24(r24)
/* 801A1634  C0 D4 03 70 */	lfs f6, 0x370(r20)
/* 801A1638  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A163C  3A 03 CA 54 */	addi r16, r3, g_env_light@l
/* 801A1640  C0 F0 11 EC */	lfs f7, 0x11ec(r16)
/* 801A1644  C1 10 11 F4 */	lfs f8, 0x11f4(r16)
/* 801A1648  4B FF C1 59 */	bl float_kankyo_color_ratio_set__Fffffffff
/* 801A164C  D0 36 00 00 */	stfs f1, 0(r22)
/* 801A1650  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 801A1654  C0 5A 00 28 */	lfs f2, 0x28(r26)
/* 801A1658  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 801A165C  C0 99 00 28 */	lfs f4, 0x28(r25)
/* 801A1660  C0 B8 00 28 */	lfs f5, 0x28(r24)
/* 801A1664  C0 D4 03 70 */	lfs f6, 0x370(r20)
/* 801A1668  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A166C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A1670  C0 E3 11 F0 */	lfs f7, 0x11f0(r3)
/* 801A1674  C1 10 11 F4 */	lfs f8, 0x11f4(r16)
/* 801A1678  4B FF C1 29 */	bl float_kankyo_color_ratio_set__Fffffffff
/* 801A167C  D0 37 00 00 */	stfs f1, 0(r23)
/* 801A1680  4B FB DD A5 */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 801A1684  2C 03 00 00 */	cmpwi r3, 0
/* 801A1688  41 82 00 20 */	beq lbl_801A16A8
/* 801A168C  38 00 00 00 */	li r0, 0
/* 801A1690  B0 15 00 00 */	sth r0, 0(r21)
/* 801A1694  B0 15 00 02 */	sth r0, 2(r21)
/* 801A1698  B0 15 00 04 */	sth r0, 4(r21)
/* 801A169C  7E C3 B3 78 */	mr r3, r22
/* 801A16A0  7E E4 BB 78 */	mr r4, r23
/* 801A16A4  4B FF B6 39 */	bl dKy_WolfPowerup_FogNearFar__FPfPf
lbl_801A16A8:
/* 801A16A8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 801A16AC  48 1C 0B 49 */	bl _restgpr_16
/* 801A16B0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801A16B4  7C 08 03 A6 */	mtlr r0
/* 801A16B8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801A16BC  4E 80 00 20 */	blr 
