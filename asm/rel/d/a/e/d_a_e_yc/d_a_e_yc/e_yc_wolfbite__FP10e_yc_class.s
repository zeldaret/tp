lbl_807F1218:
/* 807F1218  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807F121C  7C 08 02 A6 */	mflr r0
/* 807F1220  90 01 00 44 */	stw r0, 0x44(r1)
/* 807F1224  39 61 00 40 */	addi r11, r1, 0x40
/* 807F1228  4B B7 0F AC */	b _savegpr_27
/* 807F122C  7C 7D 1B 78 */	mr r29, r3
/* 807F1230  3C 60 80 7F */	lis r3, lit_3715@ha
/* 807F1234  3B C3 28 64 */	addi r30, r3, lit_3715@l
/* 807F1238  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F123C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F1240  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 807F1244  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 807F1248  90 01 00 08 */	stw r0, 8(r1)
/* 807F124C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807F1250  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807F1254  38 81 00 08 */	addi r4, r1, 8
/* 807F1258  4B 82 85 A0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807F125C  7C 7F 1B 78 */	mr r31, r3
/* 807F1260  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F1264  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807F1268  FC 00 00 1E */	fctiwz f0, f0
/* 807F126C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807F1270  83 61 00 24 */	lwz r27, 0x24(r1)
/* 807F1274  38 00 00 0A */	li r0, 0xa
/* 807F1278  B0 1D 06 AA */	sth r0, 0x6aa(r29)
/* 807F127C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807F1280  C0 3E 00 00 */	lfs f1, 0(r30)
/* 807F1284  C0 5E 00 A0 */	lfs f2, 0xa0(r30)
/* 807F1288  4B A7 E7 F8 */	b cLib_addCalc0__FPfff
/* 807F128C  A8 1D 06 70 */	lha r0, 0x670(r29)
/* 807F1290  2C 00 00 02 */	cmpwi r0, 2
/* 807F1294  41 82 00 D8 */	beq lbl_807F136C
/* 807F1298  40 80 00 14 */	bge lbl_807F12AC
/* 807F129C  2C 00 00 00 */	cmpwi r0, 0
/* 807F12A0  41 82 00 18 */	beq lbl_807F12B8
/* 807F12A4  40 80 00 74 */	bge lbl_807F1318
/* 807F12A8  48 00 03 7C */	b lbl_807F1624
lbl_807F12AC:
/* 807F12AC  2C 00 00 04 */	cmpwi r0, 4
/* 807F12B0  40 80 03 74 */	bge lbl_807F1624
/* 807F12B4  48 00 02 C8 */	b lbl_807F157C
lbl_807F12B8:
/* 807F12B8  7F A3 EB 78 */	mr r3, r29
/* 807F12BC  38 80 00 10 */	li r4, 0x10
/* 807F12C0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807F12C4  38 A0 00 00 */	li r5, 0
/* 807F12C8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F12CC  4B FF EC 25 */	bl anm_init__FP10e_yc_classifUcf
/* 807F12D0  38 00 00 01 */	li r0, 1
/* 807F12D4  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F12D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007004A@ha */
/* 807F12DC  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0007004A@l */
/* 807F12E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F12E4  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F12E8  38 81 00 0C */	addi r4, r1, 0xc
/* 807F12EC  38 A0 FF FF */	li r5, -1
/* 807F12F0  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F12F4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807F12F8  7D 89 03 A6 */	mtctr r12
/* 807F12FC  4E 80 04 21 */	bctrl 
/* 807F1300  A8 7D 05 62 */	lha r3, 0x562(r29)
/* 807F1304  38 03 FF FB */	addi r0, r3, -5
/* 807F1308  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807F130C  38 00 00 00 */	li r0, 0
/* 807F1310  98 1D 06 B3 */	stb r0, 0x6b3(r29)
/* 807F1314  48 00 03 10 */	b lbl_807F1624
lbl_807F1318:
/* 807F1318  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F131C  38 80 00 01 */	li r4, 1
/* 807F1320  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F1324  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F1328  40 82 00 18 */	bne lbl_807F1340
/* 807F132C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F1330  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F1334  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F1338  41 82 00 08 */	beq lbl_807F1340
/* 807F133C  38 80 00 00 */	li r4, 0
lbl_807F1340:
/* 807F1340  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F1344  41 82 02 E0 */	beq lbl_807F1624
/* 807F1348  7F A3 EB 78 */	mr r3, r29
/* 807F134C  38 80 00 14 */	li r4, 0x14
/* 807F1350  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807F1354  38 A0 00 02 */	li r5, 2
/* 807F1358  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F135C  4B FF EB 95 */	bl anm_init__FP10e_yc_classifUcf
/* 807F1360  38 00 00 02 */	li r0, 2
/* 807F1364  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F1368  48 00 02 BC */	b lbl_807F1624
lbl_807F136C:
/* 807F136C  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 807F1370  2C 00 00 13 */	cmpwi r0, 0x13
/* 807F1374  40 82 00 4C */	bne lbl_807F13C0
/* 807F1378  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F137C  38 80 00 01 */	li r4, 1
/* 807F1380  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F1384  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F1388  40 82 00 18 */	bne lbl_807F13A0
/* 807F138C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F1390  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F1394  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F1398  41 82 00 08 */	beq lbl_807F13A0
/* 807F139C  38 80 00 00 */	li r4, 0
lbl_807F13A0:
/* 807F13A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F13A4  41 82 00 1C */	beq lbl_807F13C0
/* 807F13A8  7F A3 EB 78 */	mr r3, r29
/* 807F13AC  38 80 00 14 */	li r4, 0x14
/* 807F13B0  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807F13B4  38 A0 00 02 */	li r5, 2
/* 807F13B8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F13BC  4B FF EB 35 */	bl anm_init__FP10e_yc_classifUcf
lbl_807F13C0:
/* 807F13C0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 807F13C4  2C 00 00 00 */	cmpwi r0, 0
/* 807F13C8  40 81 00 10 */	ble lbl_807F13D8
/* 807F13CC  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 807F13D0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 807F13D4  41 82 01 64 */	beq lbl_807F1538
lbl_807F13D8:
/* 807F13D8  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 807F13DC  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 807F13E0  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 807F13E4  7F A3 EB 78 */	mr r3, r29
/* 807F13E8  38 80 00 13 */	li r4, 0x13
/* 807F13EC  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 807F13F0  38 A0 00 00 */	li r5, 0
/* 807F13F4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F13F8  4B FF EA F9 */	bl anm_init__FP10e_yc_classifUcf
/* 807F13FC  A8 7D 05 62 */	lha r3, 0x562(r29)
/* 807F1400  38 03 FF FB */	addi r0, r3, -5
/* 807F1404  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 807F1408  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 807F140C  2C 00 00 00 */	cmpwi r0, 0
/* 807F1410  41 81 00 C0 */	bgt lbl_807F14D0
/* 807F1414  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 807F1418  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 807F141C  90 1C 05 78 */	stw r0, 0x578(r28)
/* 807F1420  7F A3 EB 78 */	mr r3, r29
/* 807F1424  38 80 00 12 */	li r4, 0x12
/* 807F1428  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807F142C  38 A0 00 00 */	li r5, 0
/* 807F1430  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F1434  4B FF EA BD */	bl anm_init__FP10e_yc_classifUcf
/* 807F1438  38 00 00 03 */	li r0, 3
/* 807F143C  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F1440  38 00 00 05 */	li r0, 5
/* 807F1444  B0 1F 13 70 */	sth r0, 0x1370(r31)
/* 807F1448  38 00 00 07 */	li r0, 7
/* 807F144C  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 807F1450  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
/* 807F1454  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F1458  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 807F145C  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 807F1460  38 A0 00 20 */	li r5, 0x20
/* 807F1464  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F1468  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807F146C  7D 89 03 A6 */	mtctr r12
/* 807F1470  4E 80 04 21 */	bctrl 
/* 807F1474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F1478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F147C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807F1480  38 80 00 03 */	li r4, 3
/* 807F1484  7F A5 EB 78 */	mr r5, r29
/* 807F1488  38 DC 05 38 */	addi r6, r28, 0x538
/* 807F148C  38 FC 04 E4 */	addi r7, r28, 0x4e4
/* 807F1490  39 00 00 00 */	li r8, 0
/* 807F1494  39 20 00 00 */	li r9, 0
/* 807F1498  4B 85 AD 80 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807F149C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F14A0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807F14A4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807F14A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807F14AC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807F14B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F14B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F14B8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807F14BC  38 80 00 05 */	li r4, 5
/* 807F14C0  38 A0 00 4F */	li r5, 0x4f
/* 807F14C4  38 C1 00 10 */	addi r6, r1, 0x10
/* 807F14C8  4B 87 E5 5C */	b StartShock__12dVibration_cFii4cXyz
/* 807F14CC  48 00 01 78 */	b lbl_807F1644
lbl_807F14D0:
/* 807F14D0  88 7D 06 B3 */	lbz r3, 0x6b3(r29)
/* 807F14D4  38 03 00 01 */	addi r0, r3, 1
/* 807F14D8  98 1D 06 B3 */	stb r0, 0x6b3(r29)
/* 807F14DC  88 1D 06 B3 */	lbz r0, 0x6b3(r29)
/* 807F14E0  7C 00 07 74 */	extsb r0, r0
/* 807F14E4  2C 00 00 05 */	cmpwi r0, 5
/* 807F14E8  41 80 00 30 */	blt lbl_807F1518
/* 807F14EC  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 807F14F0  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 807F14F4  90 1C 05 78 */	stw r0, 0x578(r28)
/* 807F14F8  7F A3 EB 78 */	mr r3, r29
/* 807F14FC  38 80 00 11 */	li r4, 0x11
/* 807F1500  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807F1504  38 A0 00 00 */	li r5, 0
/* 807F1508  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F150C  4B FF E9 E5 */	bl anm_init__FP10e_yc_classifUcf
/* 807F1510  38 00 00 03 */	li r0, 3
/* 807F1514  B0 1D 06 70 */	sth r0, 0x670(r29)
lbl_807F1518:
/* 807F1518  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 807F151C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 807F1520  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 807F1524  38 A0 00 1E */	li r5, 0x1e
/* 807F1528  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 807F152C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 807F1530  7D 89 03 A6 */	mtctr r12
/* 807F1534  4E 80 04 21 */	bctrl 
lbl_807F1538:
/* 807F1538  7F 83 E3 78 */	mr r3, r28
/* 807F153C  7F A4 EB 78 */	mr r4, r29
/* 807F1540  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 807F1544  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 807F1548  7D 89 03 A6 */	mtctr r12
/* 807F154C  4E 80 04 21 */	bctrl 
/* 807F1550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807F1554  40 82 00 D0 */	bne lbl_807F1624
/* 807F1558  7F A3 EB 78 */	mr r3, r29
/* 807F155C  38 80 00 11 */	li r4, 0x11
/* 807F1560  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807F1564  38 A0 00 00 */	li r5, 0
/* 807F1568  C0 5E 00 00 */	lfs f2, 0(r30)
/* 807F156C  4B FF E9 85 */	bl anm_init__FP10e_yc_classifUcf
/* 807F1570  38 00 00 03 */	li r0, 3
/* 807F1574  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F1578  48 00 00 AC */	b lbl_807F1624
lbl_807F157C:
/* 807F157C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807F1580  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 807F1584  EC 01 00 2A */	fadds f0, f1, f0
/* 807F1588  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807F158C  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 807F1590  2C 00 00 12 */	cmpwi r0, 0x12
/* 807F1594  40 82 00 14 */	bne lbl_807F15A8
/* 807F1598  2C 1B 00 18 */	cmpwi r27, 0x18
/* 807F159C  40 82 00 0C */	bne lbl_807F15A8
/* 807F15A0  38 00 00 01 */	li r0, 1
/* 807F15A4  98 1F 0A 8F */	stb r0, 0xa8f(r31)
lbl_807F15A8:
/* 807F15A8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F15AC  38 80 00 01 */	li r4, 1
/* 807F15B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807F15B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807F15B8  40 82 00 18 */	bne lbl_807F15D0
/* 807F15BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807F15C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807F15C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807F15C8  41 82 00 08 */	beq lbl_807F15D0
/* 807F15CC  38 80 00 00 */	li r4, 0
lbl_807F15D0:
/* 807F15D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807F15D4  41 82 00 50 */	beq lbl_807F1624
/* 807F15D8  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 807F15DC  2C 00 00 12 */	cmpwi r0, 0x12
/* 807F15E0  40 82 00 2C */	bne lbl_807F160C
/* 807F15E4  38 00 00 00 */	li r0, 0
/* 807F15E8  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F15EC  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F15F0  38 00 00 01 */	li r0, 1
/* 807F15F4  90 1D 06 64 */	stw r0, 0x664(r29)
/* 807F15F8  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 807F15FC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 807F1600  EC 01 00 2A */	fadds f0, f1, f0
/* 807F1604  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 807F1608  48 00 00 1C */	b lbl_807F1624
lbl_807F160C:
/* 807F160C  38 00 00 0A */	li r0, 0xa
/* 807F1610  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F1614  38 00 00 00 */	li r0, 0
/* 807F1618  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F161C  38 00 00 01 */	li r0, 1
/* 807F1620  90 1D 06 64 */	stw r0, 0x664(r29)
lbl_807F1624:
/* 807F1624  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807F1628  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807F162C  3C 84 00 01 */	addis r4, r4, 1
/* 807F1630  38 04 80 00 */	addi r0, r4, -32768
/* 807F1634  7C 04 07 34 */	extsh r4, r0
/* 807F1638  38 A0 00 02 */	li r5, 2
/* 807F163C  38 C0 10 00 */	li r6, 0x1000
/* 807F1640  4B A7 EF C8 */	b cLib_addCalcAngleS2__FPssss
lbl_807F1644:
/* 807F1644  39 61 00 40 */	addi r11, r1, 0x40
/* 807F1648  4B B7 0B D8 */	b _restgpr_27
/* 807F164C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807F1650  7C 08 03 A6 */	mtlr r0
/* 807F1654  38 21 00 40 */	addi r1, r1, 0x40
/* 807F1658  4E 80 00 20 */	blr 
