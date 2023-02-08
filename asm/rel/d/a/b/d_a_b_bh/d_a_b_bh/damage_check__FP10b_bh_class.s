lbl_805B1254:
/* 805B1254  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805B1258  7C 08 02 A6 */	mflr r0
/* 805B125C  90 01 00 74 */	stw r0, 0x74(r1)
/* 805B1260  39 61 00 70 */	addi r11, r1, 0x70
/* 805B1264  4B DB 0F 79 */	bl _savegpr_29
/* 805B1268  7C 7E 1B 78 */	mr r30, r3
/* 805B126C  3C 60 80 5B */	lis r3, lit_3764@ha /* 0x805B3140@ha */
/* 805B1270  3B E3 31 40 */	addi r31, r3, lit_3764@l /* 0x805B3140@l */
/* 805B1274  A8 7E 06 6A */	lha r3, 0x66a(r30)
/* 805B1278  2C 03 00 05 */	cmpwi r3, 5
/* 805B127C  41 82 00 0C */	beq lbl_805B1288
/* 805B1280  2C 03 00 15 */	cmpwi r3, 0x15
/* 805B1284  40 82 01 38 */	bne lbl_805B13BC
lbl_805B1288:
/* 805B1288  80 1E 0A CC */	lwz r0, 0xacc(r30)
/* 805B128C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805B1290  41 82 01 2C */	beq lbl_805B13BC
/* 805B1294  2C 03 00 15 */	cmpwi r3, 0x15
/* 805B1298  40 82 00 30 */	bne lbl_805B12C8
/* 805B129C  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 805B12A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B12A4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805B12A8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805B12AC  38 81 00 0C */	addi r4, r1, 0xc
/* 805B12B0  4B A6 85 49 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B12B4  88 83 06 EC */	lbz r4, 0x6ec(r3)
/* 805B12B8  7C 80 07 75 */	extsb. r0, r4
/* 805B12BC  41 82 00 0C */	beq lbl_805B12C8
/* 805B12C0  38 04 FF FF */	addi r0, r4, -1
/* 805B12C4  98 03 06 EC */	stb r0, 0x6ec(r3)
lbl_805B12C8:
/* 805B12C8  38 00 00 06 */	li r0, 6
/* 805B12CC  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 805B12D0  38 00 00 00 */	li r0, 0
/* 805B12D4  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 805B12D8  38 00 00 01 */	li r0, 1
/* 805B12DC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805B12E0  3C 60 80 5B */	lis r3, l_HIO@ha /* 0x805B33FC@ha */
/* 805B12E4  3B A3 33 FC */	addi r29, r3, l_HIO@l /* 0x805B33FC@l */
/* 805B12E8  A8 1D 00 10 */	lha r0, 0x10(r29)
/* 805B12EC  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 805B12F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805B12F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B12F8  3C 00 43 30 */	lis r0, 0x4330
/* 805B12FC  90 01 00 40 */	stw r0, 0x40(r1)
/* 805B1300  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 805B1304  EC 20 08 28 */	fsubs f1, f0, f1
/* 805B1308  4B CB 66 4D */	bl cM_rndF__Ff
/* 805B130C  A8 1D 00 10 */	lha r0, 0x10(r29)
/* 805B1310  C8 5F 00 78 */	lfd f2, 0x78(r31)
/* 805B1314  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805B1318  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805B131C  3C 00 43 30 */	lis r0, 0x4330
/* 805B1320  90 01 00 48 */	stw r0, 0x48(r1)
/* 805B1324  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 805B1328  EC 00 10 28 */	fsubs f0, f0, f2
/* 805B132C  EC 00 08 2A */	fadds f0, f0, f1
/* 805B1330  FC 00 00 1E */	fctiwz f0, f0
/* 805B1334  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 805B1338  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B133C  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 805B1340  38 00 00 00 */	li r0, 0
/* 805B1344  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 805B1348  7F C3 F3 78 */	mr r3, r30
/* 805B134C  38 80 00 0A */	li r4, 0xa
/* 805B1350  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805B1354  38 A0 00 00 */	li r5, 0
/* 805B1358  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805B135C  4B FF CF 49 */	bl anm_init__FP10b_bh_classifUcf
/* 805B1360  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070103@ha */
/* 805B1364  38 03 01 03 */	addi r0, r3, 0x0103 /* 0x00070103@l */
/* 805B1368  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B136C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805B1370  38 81 00 14 */	addi r4, r1, 0x14
/* 805B1374  38 A0 FF FF */	li r5, -1
/* 805B1378  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 805B137C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B1380  7D 89 03 A6 */	mtctr r12
/* 805B1384  4E 80 04 21 */	bctrl 
/* 805B1388  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B138C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805B1390  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805B1394  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805B1398  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805B139C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B13A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B13A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805B13A8  38 80 00 08 */	li r4, 8
/* 805B13AC  38 A0 00 1F */	li r5, 0x1f
/* 805B13B0  38 C1 00 24 */	addi r6, r1, 0x24
/* 805B13B4  4B AB E6 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 805B13B8  48 00 01 D8 */	b lbl_805B1590
lbl_805B13BC:
/* 805B13BC  38 61 00 18 */	addi r3, r1, 0x18
/* 805B13C0  38 9E 06 B0 */	addi r4, r30, 0x6b0
/* 805B13C4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805B13C8  4B CB 57 6D */	bl __mi__4cXyzCFRC3Vec
/* 805B13CC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805B13D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805B13D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B13D8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805B13DC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805B13E0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805B13E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B13E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805B13EC  88 1E 0A 24 */	lbz r0, 0xa24(r30)
/* 805B13F0  7C 00 07 75 */	extsb. r0, r0
/* 805B13F4  41 82 00 A4 */	beq lbl_805B1498
/* 805B13F8  80 1E 0A 9C */	lwz r0, 0xa9c(r30)
/* 805B13FC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805B1400  90 1E 0A 9C */	stw r0, 0xa9c(r30)
/* 805B1404  3C 60 80 5B */	lis r3, s_b_sub__FPvPv@ha /* 0x805B10AC@ha */
/* 805B1408  38 63 10 AC */	addi r3, r3, s_b_sub__FPvPv@l /* 0x805B10AC@l */
/* 805B140C  7F C4 F3 78 */	mr r4, r30
/* 805B1410  4B A6 FF 29 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 805B1414  28 03 00 00 */	cmplwi r3, 0
/* 805B1418  41 82 00 8C */	beq lbl_805B14A4
/* 805B141C  88 1E 0A 25 */	lbz r0, 0xa25(r30)
/* 805B1420  7C 00 07 75 */	extsb. r0, r0
/* 805B1424  41 82 00 1C */	beq lbl_805B1440
/* 805B1428  38 00 00 16 */	li r0, 0x16
/* 805B142C  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 805B1430  38 60 00 0E */	li r3, 0xe
/* 805B1434  38 80 FF FF */	li r4, -1
/* 805B1438  4B A7 C6 65 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 805B143C  48 00 00 48 */	b lbl_805B1484
lbl_805B1440:
/* 805B1440  38 00 00 0A */	li r0, 0xa
/* 805B1444  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 805B1448  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 805B144C  90 01 00 08 */	stw r0, 8(r1)
/* 805B1450  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805B1454  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805B1458  38 81 00 08 */	addi r4, r1, 8
/* 805B145C  4B A6 83 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805B1460  88 03 06 FD */	lbz r0, 0x6fd(r3)
/* 805B1464  7C 00 07 75 */	extsb. r0, r0
/* 805B1468  40 82 00 1C */	bne lbl_805B1484
/* 805B146C  38 00 00 14 */	li r0, 0x14
/* 805B1470  B0 03 12 38 */	sth r0, 0x1238(r3)
/* 805B1474  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 805B1478  98 03 12 3C */	stb r0, 0x123c(r3)
/* 805B147C  38 00 00 01 */	li r0, 1
/* 805B1480  98 03 06 FD */	stb r0, 0x6fd(r3)
lbl_805B1484:
/* 805B1484  38 00 00 00 */	li r0, 0
/* 805B1488  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 805B148C  38 00 00 0A */	li r0, 0xa
/* 805B1490  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 805B1494  48 00 00 FC */	b lbl_805B1590
lbl_805B1498:
/* 805B1498  80 1E 0A 9C */	lwz r0, 0xa9c(r30)
/* 805B149C  60 00 00 01 */	ori r0, r0, 1
/* 805B14A0  90 1E 0A 9C */	stw r0, 0xa9c(r30)
lbl_805B14A4:
/* 805B14A4  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 805B14A8  2C 00 00 00 */	cmpwi r0, 0
/* 805B14AC  40 82 00 90 */	bne lbl_805B153C
/* 805B14B0  38 7E 0A 70 */	addi r3, r30, 0xa70
/* 805B14B4  4B AD 2F AD */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805B14B8  28 03 00 00 */	cmplwi r3, 0
/* 805B14BC  41 82 00 80 */	beq lbl_805B153C
/* 805B14C0  38 00 00 06 */	li r0, 6
/* 805B14C4  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 805B14C8  38 7E 0A 70 */	addi r3, r30, 0xa70
/* 805B14CC  4B AD 30 2D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 805B14D0  90 7E 0C E4 */	stw r3, 0xce4(r30)
/* 805B14D4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805B14D8  80 9E 0C E4 */	lwz r4, 0xce4(r30)
/* 805B14DC  38 A0 00 2D */	li r5, 0x2d
/* 805B14E0  38 C0 00 00 */	li r6, 0
/* 805B14E4  4B AD 60 31 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805B14E8  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 805B14EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 805B14F0  41 82 00 4C */	beq lbl_805B153C
/* 805B14F4  2C 00 00 16 */	cmpwi r0, 0x16
/* 805B14F8  41 82 00 44 */	beq lbl_805B153C
/* 805B14FC  7F C3 F3 78 */	mr r3, r30
/* 805B1500  38 80 00 0A */	li r4, 0xa
/* 805B1504  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805B1508  38 A0 00 00 */	li r5, 0
/* 805B150C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805B1510  4B FF CD 95 */	bl anm_init__FP10b_bh_classifUcf
/* 805B1514  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070103@ha */
/* 805B1518  38 03 01 03 */	addi r0, r3, 0x0103 /* 0x00070103@l */
/* 805B151C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B1520  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 805B1524  38 81 00 10 */	addi r4, r1, 0x10
/* 805B1528  38 A0 FF FF */	li r5, -1
/* 805B152C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 805B1530  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B1534  7D 89 03 A6 */	mtctr r12
/* 805B1538  4E 80 04 21 */	bctrl 
lbl_805B153C:
/* 805B153C  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 805B1540  2C 00 00 0A */	cmpwi r0, 0xa
/* 805B1544  40 82 00 4C */	bne lbl_805B1590
/* 805B1548  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 805B154C  38 80 00 01 */	li r4, 1
/* 805B1550  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805B1554  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805B1558  40 82 00 18 */	bne lbl_805B1570
/* 805B155C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805B1560  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805B1564  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B1568  41 82 00 08 */	beq lbl_805B1570
/* 805B156C  38 80 00 00 */	li r4, 0
lbl_805B1570:
/* 805B1570  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805B1574  41 82 00 1C */	beq lbl_805B1590
/* 805B1578  7F C3 F3 78 */	mr r3, r30
/* 805B157C  38 80 00 0C */	li r4, 0xc
/* 805B1580  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805B1584  38 A0 00 02 */	li r5, 2
/* 805B1588  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805B158C  4B FF CD 19 */	bl anm_init__FP10b_bh_classifUcf
lbl_805B1590:
/* 805B1590  39 61 00 70 */	addi r11, r1, 0x70
/* 805B1594  4B DB 0C 95 */	bl _restgpr_29
/* 805B1598  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805B159C  7C 08 03 A6 */	mtlr r0
/* 805B15A0  38 21 00 70 */	addi r1, r1, 0x70
/* 805B15A4  4E 80 00 20 */	blr 
