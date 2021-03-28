lbl_801C12B4:
/* 801C12B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C12B8  7C 08 02 A6 */	mflr r0
/* 801C12BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C12C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801C12C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801C12C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C12CC  7C 7F 1B 78 */	mr r31, r3
/* 801C12D0  88 03 00 F3 */	lbz r0, 0xf3(r3)
/* 801C12D4  28 00 00 00 */	cmplwi r0, 0
/* 801C12D8  40 82 01 88 */	bne lbl_801C1460
/* 801C12DC  88 1F 00 F1 */	lbz r0, 0xf1(r31)
/* 801C12E0  28 00 00 00 */	cmplwi r0, 0
/* 801C12E4  40 82 01 7C */	bne lbl_801C1460
/* 801C12E8  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C12EC  7C 00 07 75 */	extsb. r0, r0
/* 801C12F0  41 82 03 DC */	beq lbl_801C16CC
/* 801C12F4  88 1F 00 F0 */	lbz r0, 0xf0(r31)
/* 801C12F8  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801C12FC  C0 42 A6 60 */	lfs f2, lit_3803(r2)
/* 801C1300  D0 5F 00 90 */	stfs f2, 0x90(r31)
/* 801C1304  88 7F 00 EA */	lbz r3, 0xea(r31)
/* 801C1308  7C 60 07 75 */	extsb. r0, r3
/* 801C130C  40 81 00 A4 */	ble lbl_801C13B0
/* 801C1310  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1314  7C 03 07 74 */	extsb r3, r0
/* 801C1318  88 1F 00 ED */	lbz r0, 0xed(r31)
/* 801C131C  7C 00 07 74 */	extsb r0, r0
/* 801C1320  7C 03 00 00 */	cmpw r3, r0
/* 801C1324  40 80 01 30 */	bge lbl_801C1454
/* 801C1328  C8 22 A6 A8 */	lfd f1, lit_4168(r2)
/* 801C132C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801C1330  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C1334  3C 80 43 30 */	lis r4, 0x4330
/* 801C1338  90 81 00 08 */	stw r4, 8(r1)
/* 801C133C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C1340  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C1344  EC 00 10 2A */	fadds f0, f0, f2
/* 801C1348  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 801C134C  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1350  7C 03 07 74 */	extsb r3, r0
/* 801C1354  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C1358  7C 00 07 74 */	extsb r0, r0
/* 801C135C  7C 03 02 14 */	add r0, r3, r0
/* 801C1360  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C1364  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C1368  90 81 00 10 */	stw r4, 0x10(r1)
/* 801C136C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C1370  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C1374  EC 00 10 2A */	fadds f0, f0, f2
/* 801C1378  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 801C137C  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1380  98 1F 00 E8 */	stb r0, 0xe8(r31)
/* 801C1384  88 1F 00 F0 */	lbz r0, 0xf0(r31)
/* 801C1388  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801C138C  88 1F 00 F3 */	lbz r0, 0xf3(r31)
/* 801C1390  98 1F 00 F1 */	stb r0, 0xf1(r31)
/* 801C1394  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1398  98 1F 00 E9 */	stb r0, 0xe9(r31)
/* 801C139C  88 7F 00 E7 */	lbz r3, 0xe7(r31)
/* 801C13A0  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C13A4  7C 03 02 14 */	add r0, r3, r0
/* 801C13A8  98 1F 00 E7 */	stb r0, 0xe7(r31)
/* 801C13AC  48 00 00 A8 */	b lbl_801C1454
lbl_801C13B0:
/* 801C13B0  7C 60 07 75 */	extsb. r0, r3
/* 801C13B4  40 80 00 A0 */	bge lbl_801C1454
/* 801C13B8  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C13BC  7C 03 07 74 */	extsb r3, r0
/* 801C13C0  88 1F 00 EE */	lbz r0, 0xee(r31)
/* 801C13C4  7C 00 07 74 */	extsb r0, r0
/* 801C13C8  7C 03 00 00 */	cmpw r3, r0
/* 801C13CC  40 81 00 88 */	ble lbl_801C1454
/* 801C13D0  C8 22 A6 A8 */	lfd f1, lit_4168(r2)
/* 801C13D4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801C13D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C13DC  3C 80 43 30 */	lis r4, 0x4330
/* 801C13E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 801C13E4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C13E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C13EC  EC 00 10 2A */	fadds f0, f0, f2
/* 801C13F0  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 801C13F4  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C13F8  7C 03 07 74 */	extsb r3, r0
/* 801C13FC  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C1400  7C 00 07 74 */	extsb r0, r0
/* 801C1404  7C 03 02 14 */	add r0, r3, r0
/* 801C1408  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C140C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C1410  90 81 00 08 */	stw r4, 8(r1)
/* 801C1414  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C1418  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C141C  EC 00 10 2A */	fadds f0, f0, f2
/* 801C1420  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 801C1424  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1428  98 1F 00 E8 */	stb r0, 0xe8(r31)
/* 801C142C  88 7F 00 E7 */	lbz r3, 0xe7(r31)
/* 801C1430  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C1434  7C 03 02 14 */	add r0, r3, r0
/* 801C1438  98 1F 00 E7 */	stb r0, 0xe7(r31)
/* 801C143C  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1440  98 1F 00 E9 */	stb r0, 0xe9(r31)
/* 801C1444  88 1F 00 F0 */	lbz r0, 0xf0(r31)
/* 801C1448  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801C144C  88 1F 00 F3 */	lbz r0, 0xf3(r31)
/* 801C1450  98 1F 00 F1 */	stb r0, 0xf1(r31)
lbl_801C1454:
/* 801C1454  38 00 00 00 */	li r0, 0
/* 801C1458  98 1F 00 EA */	stb r0, 0xea(r31)
/* 801C145C  48 00 02 70 */	b lbl_801C16CC
lbl_801C1460:
/* 801C1460  88 1F 00 F1 */	lbz r0, 0xf1(r31)
/* 801C1464  28 00 00 00 */	cmplwi r0, 0
/* 801C1468  41 82 02 64 */	beq lbl_801C16CC
/* 801C146C  88 7F 00 EA */	lbz r3, 0xea(r31)
/* 801C1470  7C 60 07 75 */	extsb. r0, r3
/* 801C1474  41 82 02 58 */	beq lbl_801C16CC
/* 801C1478  7C 60 07 75 */	extsb. r0, r3
/* 801C147C  40 81 01 1C */	ble lbl_801C1598
/* 801C1480  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1484  7C 03 07 74 */	extsb r3, r0
/* 801C1488  88 1F 00 ED */	lbz r0, 0xed(r31)
/* 801C148C  7C 00 07 74 */	extsb r0, r0
/* 801C1490  7C 03 00 00 */	cmpw r3, r0
/* 801C1494  40 80 02 20 */	bge lbl_801C16B4
/* 801C1498  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 801C149C  48 1A AC 61 */	bl floor
/* 801C14A0  FC 40 08 18 */	frsp f2, f1
/* 801C14A4  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C14A8  7C 04 07 74 */	extsb r4, r0
/* 801C14AC  C8 22 A6 A8 */	lfd f1, lit_4168(r2)
/* 801C14B0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801C14B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C14B8  3C 00 43 30 */	lis r0, 0x4330
/* 801C14BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C14C0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C14C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C14C8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801C14CC  40 82 00 20 */	bne lbl_801C14EC
/* 801C14D0  88 1F 00 E8 */	lbz r0, 0xe8(r31)
/* 801C14D4  7C 03 07 74 */	extsb r3, r0
/* 801C14D8  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C14DC  7C 00 07 74 */	extsb r0, r0
/* 801C14E0  7C 04 02 14 */	add r0, r4, r0
/* 801C14E4  7C 03 00 00 */	cmpw r3, r0
/* 801C14E8  41 82 00 14 */	beq lbl_801C14FC
lbl_801C14EC:
/* 801C14EC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 801C14F0  C0 02 A6 94 */	lfs f0, lit_3837(r2)
/* 801C14F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C14F8  40 81 00 48 */	ble lbl_801C1540
lbl_801C14FC:
/* 801C14FC  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 801C1500  88 1F 00 F0 */	lbz r0, 0xf0(r31)
/* 801C1504  C8 22 A6 B0 */	lfd f1, lit_4170(r2)
/* 801C1508  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C150C  3C 00 43 30 */	lis r0, 0x4330
/* 801C1510  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C1514  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C1518  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C151C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801C1520  FC 00 00 1E */	fctiwz f0, f0
/* 801C1524  D8 01 00 08 */	stfd f0, 8(r1)
/* 801C1528  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801C152C  98 1F 00 F1 */	stb r0, 0xf1(r31)
/* 801C1530  88 1F 00 F1 */	lbz r0, 0xf1(r31)
/* 801C1534  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801C1538  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 801C153C  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
lbl_801C1540:
/* 801C1540  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1544  7C 03 07 74 */	extsb r3, r0
/* 801C1548  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C154C  7C 00 07 74 */	extsb r0, r0
/* 801C1550  7C 03 02 14 */	add r0, r3, r0
/* 801C1554  C8 22 A6 A8 */	lfd f1, lit_4168(r2)
/* 801C1558  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C155C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C1560  3C 00 43 30 */	lis r0, 0x4330
/* 801C1564  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C1568  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C156C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C1570  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C1574  EC 01 00 2A */	fadds f0, f1, f0
/* 801C1578  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 801C157C  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1580  98 1F 00 E8 */	stb r0, 0xe8(r31)
/* 801C1584  88 7F 00 E7 */	lbz r3, 0xe7(r31)
/* 801C1588  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C158C  7C 03 02 14 */	add r0, r3, r0
/* 801C1590  98 1F 00 E7 */	stb r0, 0xe7(r31)
/* 801C1594  48 00 01 20 */	b lbl_801C16B4
lbl_801C1598:
/* 801C1598  7C 60 07 75 */	extsb. r0, r3
/* 801C159C  40 80 01 18 */	bge lbl_801C16B4
/* 801C15A0  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C15A4  7C 03 07 74 */	extsb r3, r0
/* 801C15A8  88 1F 00 EE */	lbz r0, 0xee(r31)
/* 801C15AC  7C 00 07 74 */	extsb r0, r0
/* 801C15B0  7C 03 00 00 */	cmpw r3, r0
/* 801C15B4  40 81 01 00 */	ble lbl_801C16B4
/* 801C15B8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 801C15BC  48 1A AB 41 */	bl floor
/* 801C15C0  FC 40 08 18 */	frsp f2, f1
/* 801C15C4  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C15C8  7C 04 07 74 */	extsb r4, r0
/* 801C15CC  C8 22 A6 A8 */	lfd f1, lit_4168(r2)
/* 801C15D0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801C15D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C15D8  3C 00 43 30 */	lis r0, 0x4330
/* 801C15DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C15E0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C15E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C15E8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801C15EC  40 82 00 20 */	bne lbl_801C160C
/* 801C15F0  88 1F 00 E8 */	lbz r0, 0xe8(r31)
/* 801C15F4  7C 03 07 74 */	extsb r3, r0
/* 801C15F8  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C15FC  7C 00 07 74 */	extsb r0, r0
/* 801C1600  7C 04 02 14 */	add r0, r4, r0
/* 801C1604  7C 03 00 00 */	cmpw r3, r0
/* 801C1608  41 82 00 14 */	beq lbl_801C161C
lbl_801C160C:
/* 801C160C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 801C1610  C0 02 A6 94 */	lfs f0, lit_3837(r2)
/* 801C1614  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C1618  40 81 00 48 */	ble lbl_801C1660
lbl_801C161C:
/* 801C161C  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 801C1620  88 1F 00 F0 */	lbz r0, 0xf0(r31)
/* 801C1624  C8 22 A6 B0 */	lfd f1, lit_4170(r2)
/* 801C1628  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C162C  3C 00 43 30 */	lis r0, 0x4330
/* 801C1630  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C1634  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C1638  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C163C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801C1640  FC 00 00 1E */	fctiwz f0, f0
/* 801C1644  D8 01 00 08 */	stfd f0, 8(r1)
/* 801C1648  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801C164C  98 1F 00 F1 */	stb r0, 0xf1(r31)
/* 801C1650  88 1F 00 F1 */	lbz r0, 0xf1(r31)
/* 801C1654  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801C1658  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 801C165C  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
lbl_801C1660:
/* 801C1660  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C1664  7C 03 07 74 */	extsb r3, r0
/* 801C1668  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C166C  7C 00 07 74 */	extsb r0, r0
/* 801C1670  7C 03 02 14 */	add r0, r3, r0
/* 801C1674  C8 22 A6 A8 */	lfd f1, lit_4168(r2)
/* 801C1678  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C167C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C1680  3C 00 43 30 */	lis r0, 0x4330
/* 801C1684  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C1688  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C168C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C1690  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C1694  EC 01 00 2A */	fadds f0, f1, f0
/* 801C1698  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 801C169C  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C16A0  98 1F 00 E8 */	stb r0, 0xe8(r31)
/* 801C16A4  88 7F 00 E7 */	lbz r3, 0xe7(r31)
/* 801C16A8  88 1F 00 EA */	lbz r0, 0xea(r31)
/* 801C16AC  7C 03 02 14 */	add r0, r3, r0
/* 801C16B0  98 1F 00 E7 */	stb r0, 0xe7(r31)
lbl_801C16B4:
/* 801C16B4  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C16B8  D0 1F 00 90 */	stfs f0, 0x90(r31)
/* 801C16BC  38 00 00 00 */	li r0, 0
/* 801C16C0  98 1F 00 EA */	stb r0, 0xea(r31)
/* 801C16C4  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C16C8  98 1F 00 EB */	stb r0, 0xeb(r31)
lbl_801C16CC:
/* 801C16CC  88 1F 00 F1 */	lbz r0, 0xf1(r31)
/* 801C16D0  28 00 00 00 */	cmplwi r0, 0
/* 801C16D4  41 82 00 BC */	beq lbl_801C1790
/* 801C16D8  88 7F 00 F0 */	lbz r3, 0xf0(r31)
/* 801C16DC  88 1F 00 F3 */	lbz r0, 0xf3(r31)
/* 801C16E0  7C 00 18 50 */	subf r0, r0, r3
/* 801C16E4  C8 22 A6 A8 */	lfd f1, lit_4168(r2)
/* 801C16E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C16EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C16F0  3C 00 43 30 */	lis r0, 0x4330
/* 801C16F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C16F8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C16FC  EC 40 08 28 */	fsubs f2, f0, f1
/* 801C1700  C8 22 A6 B0 */	lfd f1, lit_4170(r2)
/* 801C1704  90 61 00 0C */	stw r3, 0xc(r1)
/* 801C1708  90 01 00 08 */	stw r0, 8(r1)
/* 801C170C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C1710  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C1714  EF E2 00 24 */	fdivs f31, f2, f0
/* 801C1718  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 801C171C  48 1A A7 A1 */	bl ceil
/* 801C1720  FC 00 08 18 */	frsp f0, f1
/* 801C1724  FC 00 00 1E */	fctiwz f0, f0
/* 801C1728  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801C172C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801C1730  98 1F 00 EB */	stb r0, 0xeb(r31)
/* 801C1734  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 801C1738  48 1A A7 85 */	bl ceil
/* 801C173C  FC 00 08 18 */	frsp f0, f1
/* 801C1740  FC 00 00 1E */	fctiwz f0, f0
/* 801C1744  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801C1748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C174C  98 1F 00 EC */	stb r0, 0xec(r31)
/* 801C1750  FC 20 F8 90 */	fmr f1, f31
/* 801C1754  48 1A A9 A9 */	bl floor
/* 801C1758  FC 00 08 18 */	frsp f0, f1
/* 801C175C  EC 3F 00 28 */	fsubs f1, f31, f0
/* 801C1760  C8 42 A6 A0 */	lfd f2, lit_3947(r2)
/* 801C1764  48 1A AF FD */	bl fmod
/* 801C1768  FC 00 08 18 */	frsp f0, f1
/* 801C176C  D0 1F 00 90 */	stfs f0, 0x90(r31)
/* 801C1770  88 7F 00 F1 */	lbz r3, 0xf1(r31)
/* 801C1774  38 03 FF FF */	addi r0, r3, -1
/* 801C1778  98 1F 00 F1 */	stb r0, 0xf1(r31)
/* 801C177C  88 1F 00 F1 */	lbz r0, 0xf1(r31)
/* 801C1780  28 00 00 00 */	cmplwi r0, 0
/* 801C1784  40 82 00 0C */	bne lbl_801C1790
/* 801C1788  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801C178C  98 1F 00 E8 */	stb r0, 0xe8(r31)
lbl_801C1790:
/* 801C1790  88 7F 00 F3 */	lbz r3, 0xf3(r31)
/* 801C1794  28 03 00 00 */	cmplwi r3, 0
/* 801C1798  41 82 00 C4 */	beq lbl_801C185C
/* 801C179C  38 03 FF FF */	addi r0, r3, -1
/* 801C17A0  98 1F 00 F3 */	stb r0, 0xf3(r31)
/* 801C17A4  88 7F 00 F3 */	lbz r3, 0xf3(r31)
/* 801C17A8  28 03 00 00 */	cmplwi r3, 0
/* 801C17AC  41 82 00 8C */	beq lbl_801C1838
/* 801C17B0  88 1F 00 F1 */	lbz r0, 0xf1(r31)
/* 801C17B4  28 00 00 00 */	cmplwi r0, 0
/* 801C17B8  41 82 00 80 */	beq lbl_801C1838
/* 801C17BC  88 9F 00 F0 */	lbz r4, 0xf0(r31)
/* 801C17C0  7C 03 20 50 */	subf r0, r3, r4
/* 801C17C4  C8 22 A6 A8 */	lfd f1, lit_4168(r2)
/* 801C17C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C17CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C17D0  3C 00 43 30 */	lis r0, 0x4330
/* 801C17D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C17D8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801C17DC  EC 40 08 28 */	fsubs f2, f0, f1
/* 801C17E0  C8 22 A6 B0 */	lfd f1, lit_4170(r2)
/* 801C17E4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801C17E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 801C17EC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801C17F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C17F4  EF E2 00 24 */	fdivs f31, f2, f0
/* 801C17F8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 801C17FC  48 1A A6 C1 */	bl ceil
/* 801C1800  FC 00 08 18 */	frsp f0, f1
/* 801C1804  FC 00 00 1E */	fctiwz f0, f0
/* 801C1808  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801C180C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C1810  98 1F 00 EB */	stb r0, 0xeb(r31)
/* 801C1814  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 801C1818  48 1A A6 A5 */	bl ceil
/* 801C181C  FC 00 08 18 */	frsp f0, f1
/* 801C1820  FC 00 00 1E */	fctiwz f0, f0
/* 801C1824  D8 01 00 08 */	stfd f0, 8(r1)
/* 801C1828  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801C182C  98 1F 00 EC */	stb r0, 0xec(r31)
/* 801C1830  D3 FF 00 90 */	stfs f31, 0x90(r31)
/* 801C1834  48 00 00 28 */	b lbl_801C185C
lbl_801C1838:
/* 801C1838  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C183C  D0 1F 00 90 */	stfs f0, 0x90(r31)
/* 801C1840  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 801C1844  48 1A A6 79 */	bl ceil
/* 801C1848  FC 00 08 18 */	frsp f0, f1
/* 801C184C  FC 00 00 1E */	fctiwz f0, f0
/* 801C1850  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801C1854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C1858  98 1F 00 EB */	stb r0, 0xeb(r31)
lbl_801C185C:
/* 801C185C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801C1860  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801C1864  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C1868  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C186C  7C 08 03 A6 */	mtlr r0
/* 801C1870  38 21 00 40 */	addi r1, r1, 0x40
/* 801C1874  4E 80 00 20 */	blr 
