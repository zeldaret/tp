lbl_80AE1320:
/* 80AE1320  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AE1324  7C 08 02 A6 */	mflr r0
/* 80AE1328  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AE132C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE1330  4B 88 0E A8 */	b _savegpr_28
/* 80AE1334  7C 7C 1B 78 */	mr r28, r3
/* 80AE1338  3C 60 80 AE */	lis r3, m__17daNpcShad_Param_c@ha
/* 80AE133C  38 83 1F DC */	addi r4, r3, m__17daNpcShad_Param_c@l
/* 80AE1340  38 A0 00 00 */	li r5, 0
/* 80AE1344  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80AE1348  83 E3 00 04 */	lwz r31, 4(r3)
/* 80AE134C  3B C0 00 00 */	li r30, 0
/* 80AE1350  38 64 00 00 */	addi r3, r4, 0
/* 80AE1354  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80AE1358  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80AE135C  88 1C 0E 20 */	lbz r0, 0xe20(r28)
/* 80AE1360  28 00 00 01 */	cmplwi r0, 1
/* 80AE1364  40 82 00 0C */	bne lbl_80AE1370
/* 80AE1368  C0 64 04 E0 */	lfs f3, 0x4e0(r4)
/* 80AE136C  48 00 00 08 */	b lbl_80AE1374
lbl_80AE1370:
/* 80AE1370  C0 63 00 2C */	lfs f3, 0x2c(r3)
lbl_80AE1374:
/* 80AE1374  28 00 00 01 */	cmplwi r0, 1
/* 80AE1378  40 82 00 0C */	bne lbl_80AE1384
/* 80AE137C  C0 84 04 5C */	lfs f4, 0x45c(r4)
/* 80AE1380  48 00 00 0C */	b lbl_80AE138C
lbl_80AE1384:
/* 80AE1384  38 64 00 00 */	addi r3, r4, 0
/* 80AE1388  C0 83 00 28 */	lfs f4, 0x28(r3)
lbl_80AE138C:
/* 80AE138C  38 64 00 00 */	addi r3, r4, 0
/* 80AE1390  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80AE1394  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80AE1398  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80AE139C  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80AE13A0  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80AE13A4  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80AE13A8  7C 03 00 50 */	subf r0, r3, r0
/* 80AE13AC  7C 1D 07 34 */	extsh r29, r0
/* 80AE13B0  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80AE13B4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AE13B8  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80AE13BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AE13C0  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80AE13C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AE13C8  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80AE13CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AE13D0  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80AE13D4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AE13D8  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80AE13DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AE13E0  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80AE13E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AE13E8  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80AE13EC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AE13F0  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80AE13F4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AE13F8  80 64 04 30 */	lwz r3, 0x430(r4)
/* 80AE13FC  80 04 04 34 */	lwz r0, 0x434(r4)
/* 80AE1400  90 61 00 18 */	stw r3, 0x18(r1)
/* 80AE1404  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE1408  80 04 04 38 */	lwz r0, 0x438(r4)
/* 80AE140C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AE1410  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80AE1414  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE1418  38 1C 09 20 */	addi r0, r28, 0x920
/* 80AE141C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE1420  38 1C 09 26 */	addi r0, r28, 0x926
/* 80AE1424  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AE1428  A8 1C 0E 18 */	lha r0, 0xe18(r28)
/* 80AE142C  2C 00 00 04 */	cmpwi r0, 4
/* 80AE1430  41 82 00 34 */	beq lbl_80AE1464
/* 80AE1434  40 80 00 34 */	bge lbl_80AE1468
/* 80AE1438  2C 00 00 01 */	cmpwi r0, 1
/* 80AE143C  41 82 00 10 */	beq lbl_80AE144C
/* 80AE1440  40 80 00 14 */	bge lbl_80AE1454
/* 80AE1444  48 00 00 24 */	b lbl_80AE1468
/* 80AE1448  48 00 00 20 */	b lbl_80AE1468
lbl_80AE144C:
/* 80AE144C  3B C0 00 01 */	li r30, 1
/* 80AE1450  48 00 00 18 */	b lbl_80AE1468
lbl_80AE1454:
/* 80AE1454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE1458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE145C  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80AE1460  48 00 00 08 */	b lbl_80AE1468
lbl_80AE1464:
/* 80AE1464  80 BC 0C A8 */	lwz r5, 0xca8(r28)
lbl_80AE1468:
/* 80AE1468  2C 00 00 05 */	cmpwi r0, 5
/* 80AE146C  40 82 00 10 */	bne lbl_80AE147C
/* 80AE1470  38 1C 08 78 */	addi r0, r28, 0x878
/* 80AE1474  90 1C 0C 14 */	stw r0, 0xc14(r28)
/* 80AE1478  48 00 00 5C */	b lbl_80AE14D4
lbl_80AE147C:
/* 80AE147C  28 05 00 00 */	cmplwi r5, 0
/* 80AE1480  41 82 00 4C */	beq lbl_80AE14CC
/* 80AE1484  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80AE1488  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80AE148C  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80AE1490  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80AE1494  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80AE1498  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80AE149C  A8 1C 0E 18 */	lha r0, 0xe18(r28)
/* 80AE14A0  2C 00 00 02 */	cmpwi r0, 2
/* 80AE14A4  41 82 00 1C */	beq lbl_80AE14C0
/* 80AE14A8  2C 00 00 03 */	cmpwi r0, 3
/* 80AE14AC  41 82 00 14 */	beq lbl_80AE14C0
/* 80AE14B0  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80AE14B4  C0 04 04 E4 */	lfs f0, 0x4e4(r4)
/* 80AE14B8  EC 05 00 28 */	fsubs f0, f5, f0
/* 80AE14BC  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80AE14C0:
/* 80AE14C0  38 1C 08 78 */	addi r0, r28, 0x878
/* 80AE14C4  90 1C 0C 14 */	stw r0, 0xc14(r28)
/* 80AE14C8  48 00 00 0C */	b lbl_80AE14D4
lbl_80AE14CC:
/* 80AE14CC  38 00 00 00 */	li r0, 0
/* 80AE14D0  90 1C 0C 14 */	stw r0, 0xc14(r28)
lbl_80AE14D4:
/* 80AE14D4  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80AE14D8  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80AE14DC  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80AE14E0  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80AE14E4  38 7C 0B E4 */	addi r3, r28, 0xbe4
/* 80AE14E8  C0 A4 00 90 */	lfs f5, 0x90(r4)
/* 80AE14EC  FC C0 28 90 */	fmr f6, f5
/* 80AE14F0  FC E0 28 90 */	fmr f7, f5
/* 80AE14F4  FD 00 28 90 */	fmr f8, f5
/* 80AE14F8  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80AE14FC  38 A1 00 24 */	addi r5, r1, 0x24
/* 80AE1500  4B 66 FB B8 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80AE1504  38 7C 0B E4 */	addi r3, r28, 0xbe4
/* 80AE1508  7F 84 E3 78 */	mr r4, r28
/* 80AE150C  38 BF 00 24 */	addi r5, r31, 0x24
/* 80AE1510  38 C1 00 18 */	addi r6, r1, 0x18
/* 80AE1514  7F C7 F3 78 */	mr r7, r30
/* 80AE1518  7F A8 EB 78 */	mr r8, r29
/* 80AE151C  39 20 00 00 */	li r9, 0
/* 80AE1520  4B 66 FE 30 */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80AE1524  39 61 00 60 */	addi r11, r1, 0x60
/* 80AE1528  4B 88 0C FC */	b _restgpr_28
/* 80AE152C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AE1530  7C 08 03 A6 */	mtlr r0
/* 80AE1534  38 21 00 60 */	addi r1, r1, 0x60
/* 80AE1538  4E 80 00 20 */	blr 
