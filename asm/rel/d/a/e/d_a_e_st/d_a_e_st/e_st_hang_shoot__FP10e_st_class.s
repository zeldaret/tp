lbl_807A11EC:
/* 807A11EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807A11F0  7C 08 02 A6 */	mflr r0
/* 807A11F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807A11F8  39 61 00 40 */	addi r11, r1, 0x40
/* 807A11FC  4B BC 0F D4 */	b _savegpr_26
/* 807A1200  7C 7D 1B 78 */	mr r29, r3
/* 807A1204  3C 80 80 7A */	lis r4, lit_3903@ha
/* 807A1208  3B C4 68 24 */	addi r30, r4, lit_3903@l
/* 807A120C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807A1210  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 807A1214  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A1218  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 807A121C  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 807A1220  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A1224  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A1228  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A122C  4C 40 13 82 */	cror 2, 0, 2
/* 807A1230  40 82 00 38 */	bne lbl_807A1268
/* 807A1234  38 00 00 0A */	li r0, 0xa
/* 807A1238  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A123C  38 00 00 00 */	li r0, 0
/* 807A1240  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1244  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 807A1248  4B AC 67 0C */	b cM_rndF__Ff
/* 807A124C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807A1250  EC 00 08 2A */	fadds f0, f0, f1
/* 807A1254  FC 00 00 1E */	fctiwz f0, f0
/* 807A1258  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807A125C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807A1260  B0 1D 06 84 */	sth r0, 0x684(r29)
/* 807A1264  48 00 02 EC */	b lbl_807A1550
lbl_807A1268:
/* 807A1268  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 807A126C  2C 00 00 01 */	cmpwi r0, 1
/* 807A1270  41 82 00 C0 */	beq lbl_807A1330
/* 807A1274  40 80 00 10 */	bge lbl_807A1284
/* 807A1278  2C 00 00 00 */	cmpwi r0, 0
/* 807A127C  40 80 00 14 */	bge lbl_807A1290
/* 807A1280  48 00 02 9C */	b lbl_807A151C
lbl_807A1284:
/* 807A1284  2C 00 00 03 */	cmpwi r0, 3
/* 807A1288  40 80 02 94 */	bge lbl_807A151C
/* 807A128C  48 00 00 F8 */	b lbl_807A1384
lbl_807A1290:
/* 807A1290  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 807A1294  28 00 00 00 */	cmplwi r0, 0
/* 807A1298  40 82 00 34 */	bne lbl_807A12CC
/* 807A129C  38 00 00 02 */	li r0, 2
/* 807A12A0  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A12A4  38 80 00 17 */	li r4, 0x17
/* 807A12A8  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807A12AC  38 A0 00 00 */	li r5, 0
/* 807A12B0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A12B4  4B FF CB 99 */	bl anm_init__FP10e_st_classifUcf
/* 807A12B8  38 00 00 50 */	li r0, 0x50
/* 807A12BC  B0 1D 06 82 */	sth r0, 0x682(r29)
/* 807A12C0  38 00 00 00 */	li r0, 0
/* 807A12C4  98 1D 0F 84 */	stb r0, 0xf84(r29)
/* 807A12C8  48 00 02 54 */	b lbl_807A151C
lbl_807A12CC:
/* 807A12CC  38 00 00 01 */	li r0, 1
/* 807A12D0  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A12D4  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 807A12D8  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 807A12DC  EC 01 00 2A */	fadds f0, f1, f0
/* 807A12E0  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 807A12E4  C0 5D 06 94 */	lfs f2, 0x694(r29)
/* 807A12E8  C0 1D 07 48 */	lfs f0, 0x748(r29)
/* 807A12EC  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807A12F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 807A12F4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807A12F8  40 81 00 0C */	ble lbl_807A1304
/* 807A12FC  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 807A1300  48 00 00 18 */	b lbl_807A1318
lbl_807A1304:
/* 807A1304  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 807A1308  EC 01 00 2A */	fadds f0, f1, f0
/* 807A130C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807A1310  40 80 00 08 */	bge lbl_807A1318
/* 807A1314  D0 1D 06 94 */	stfs f0, 0x694(r29)
lbl_807A1318:
/* 807A1318  7F A3 EB 78 */	mr r3, r29
/* 807A131C  38 80 00 12 */	li r4, 0x12
/* 807A1320  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807A1324  38 A0 00 02 */	li r5, 2
/* 807A1328  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 807A132C  4B FF CB 21 */	bl anm_init__FP10e_st_classifUcf
lbl_807A1330:
/* 807A1330  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 807A1334  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 807A1338  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A133C  FC 00 02 10 */	fabs f0, f0
/* 807A1340  FC 20 00 18 */	frsp f1, f0
/* 807A1344  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 807A1348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A134C  40 80 01 D0 */	bge lbl_807A151C
/* 807A1350  38 00 00 02 */	li r0, 2
/* 807A1354  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A1358  7F A3 EB 78 */	mr r3, r29
/* 807A135C  38 80 00 17 */	li r4, 0x17
/* 807A1360  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807A1364  38 A0 00 00 */	li r5, 0
/* 807A1368  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A136C  4B FF CA E1 */	bl anm_init__FP10e_st_classifUcf
/* 807A1370  38 00 00 50 */	li r0, 0x50
/* 807A1374  B0 1D 06 82 */	sth r0, 0x682(r29)
/* 807A1378  38 00 00 00 */	li r0, 0
/* 807A137C  98 1D 0F 84 */	stb r0, 0xf84(r29)
/* 807A1380  48 00 01 9C */	b lbl_807A151C
lbl_807A1384:
/* 807A1384  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807A1388  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807A138C  FC 00 00 1E */	fctiwz f0, f0
/* 807A1390  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807A1394  83 61 00 1C */	lwz r27, 0x1c(r1)
/* 807A1398  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 807A139C  41 80 00 68 */	blt lbl_807A1404
/* 807A13A0  2C 1B 00 2A */	cmpwi r27, 0x2a
/* 807A13A4  41 81 00 60 */	bgt lbl_807A1404
/* 807A13A8  3B 40 00 00 */	li r26, 0
/* 807A13AC  3B 80 00 00 */	li r28, 0
lbl_807A13B0:
/* 807A13B0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807A13B4  7C 07 07 74 */	extsb r7, r0
/* 807A13B8  93 81 00 08 */	stw r28, 8(r1)
/* 807A13BC  38 60 01 C0 */	li r3, 0x1c0
/* 807A13C0  28 1D 00 00 */	cmplwi r29, 0
/* 807A13C4  41 82 00 0C */	beq lbl_807A13D0
/* 807A13C8  80 9D 00 04 */	lwz r4, 4(r29)
/* 807A13CC  48 00 00 08 */	b lbl_807A13D4
lbl_807A13D0:
/* 807A13D0  38 80 FF FF */	li r4, -1
lbl_807A13D4:
/* 807A13D4  88 BD 0F 84 */	lbz r5, 0xf84(r29)
/* 807A13D8  38 DD 07 04 */	addi r6, r29, 0x704
/* 807A13DC  39 00 00 00 */	li r8, 0
/* 807A13E0  39 20 00 00 */	li r9, 0
/* 807A13E4  39 40 FF FF */	li r10, -1
/* 807A13E8  4B 87 8B 08 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 807A13EC  88 7D 0F 84 */	lbz r3, 0xf84(r29)
/* 807A13F0  38 03 00 01 */	addi r0, r3, 1
/* 807A13F4  98 1D 0F 84 */	stb r0, 0xf84(r29)
/* 807A13F8  3B 5A 00 01 */	addi r26, r26, 1
/* 807A13FC  2C 1A 00 05 */	cmpwi r26, 5
/* 807A1400  41 80 FF B0 */	blt lbl_807A13B0
lbl_807A1404:
/* 807A1404  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 807A1408  41 80 00 38 */	blt lbl_807A1440
/* 807A140C  2C 1B 00 37 */	cmpwi r27, 0x37
/* 807A1410  41 81 00 30 */	bgt lbl_807A1440
/* 807A1414  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A6@ha */
/* 807A1418  38 03 00 A6 */	addi r0, r3, 0x00A6 /* 0x000700A6@l */
/* 807A141C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A1420  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807A1424  38 81 00 10 */	addi r4, r1, 0x10
/* 807A1428  38 A0 00 00 */	li r5, 0
/* 807A142C  38 C0 FF FF */	li r6, -1
/* 807A1430  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 807A1434  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807A1438  7D 89 03 A6 */	mtctr r12
/* 807A143C  4E 80 04 21 */	bctrl 
lbl_807A1440:
/* 807A1440  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807A1444  38 80 00 01 */	li r4, 1
/* 807A1448  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A144C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A1450  40 82 00 18 */	bne lbl_807A1468
/* 807A1454  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A1458  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A145C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A1460  41 82 00 08 */	beq lbl_807A1468
/* 807A1464  38 80 00 00 */	li r4, 0
lbl_807A1468:
/* 807A1468  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A146C  41 82 00 B0 */	beq lbl_807A151C
/* 807A1470  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807A1474  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807A1478  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 807A147C  41 82 00 70 */	beq lbl_807A14EC
/* 807A1480  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807A1484  28 00 00 01 */	cmplwi r0, 1
/* 807A1488  40 82 00 64 */	bne lbl_807A14EC
/* 807A148C  38 00 00 0C */	li r0, 0xc
/* 807A1490  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A1494  38 00 00 00 */	li r0, 0
/* 807A1498  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A149C  C0 1D 07 10 */	lfs f0, 0x710(r29)
/* 807A14A0  D0 1D 07 50 */	stfs f0, 0x750(r29)
/* 807A14A4  C0 1D 07 14 */	lfs f0, 0x714(r29)
/* 807A14A8  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 807A14AC  C0 1D 07 18 */	lfs f0, 0x718(r29)
/* 807A14B0  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 807A14B4  38 00 00 02 */	li r0, 2
/* 807A14B8  98 1D 07 20 */	stb r0, 0x720(r29)
/* 807A14BC  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 807A14C0  C0 3D 07 48 */	lfs f1, 0x748(r29)
/* 807A14C4  C0 1D 07 54 */	lfs f0, 0x754(r29)
/* 807A14C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807A14CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A14D0  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 807A14D4  C0 3D 07 5C */	lfs f1, 0x75c(r29)
/* 807A14D8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 807A14DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A14E0  40 81 00 3C */	ble lbl_807A151C
/* 807A14E4  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 807A14E8  48 00 00 34 */	b lbl_807A151C
lbl_807A14EC:
/* 807A14EC  38 00 00 0A */	li r0, 0xa
/* 807A14F0  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807A14F4  38 00 00 00 */	li r0, 0
/* 807A14F8  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A14FC  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807A1500  4B AC 64 54 */	b cM_rndF__Ff
/* 807A1504  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 807A1508  EC 00 08 2A */	fadds f0, f0, f1
/* 807A150C  FC 00 00 1E */	fctiwz f0, f0
/* 807A1510  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807A1514  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807A1518  B0 1D 06 84 */	sth r0, 0x684(r29)
lbl_807A151C:
/* 807A151C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807A1520  C0 3D 06 94 */	lfs f1, 0x694(r29)
/* 807A1524  C0 5E 00 F4 */	lfs f2, 0xf4(r30)
/* 807A1528  C0 7E 00 F8 */	lfs f3, 0xf8(r30)
/* 807A152C  4B AC E5 10 */	b cLib_addCalc2__FPffff
/* 807A1530  7F A3 EB 78 */	mr r3, r29
/* 807A1534  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A1538  4B 87 91 D8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A153C  7C 64 1B 78 */	mr r4, r3
/* 807A1540  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807A1544  38 A0 00 04 */	li r5, 4
/* 807A1548  38 C0 10 00 */	li r6, 0x1000
/* 807A154C  4B AC F0 BC */	b cLib_addCalcAngleS2__FPssss
lbl_807A1550:
/* 807A1550  39 61 00 40 */	addi r11, r1, 0x40
/* 807A1554  4B BC 0C C8 */	b _restgpr_26
/* 807A1558  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807A155C  7C 08 03 A6 */	mtlr r0
/* 807A1560  38 21 00 40 */	addi r1, r1, 0x40
/* 807A1564  4E 80 00 20 */	blr 
