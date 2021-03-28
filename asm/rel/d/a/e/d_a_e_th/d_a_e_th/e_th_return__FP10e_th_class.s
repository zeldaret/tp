lbl_807B141C:
/* 807B141C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807B1420  7C 08 02 A6 */	mflr r0
/* 807B1424  90 01 00 44 */	stw r0, 0x44(r1)
/* 807B1428  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807B142C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807B1430  7C 7E 1B 78 */	mr r30, r3
/* 807B1434  3C 60 80 7B */	lis r3, lit_3906@ha
/* 807B1438  3B E3 44 9C */	addi r31, r3, lit_3906@l
/* 807B143C  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 807B1440  90 01 00 08 */	stw r0, 8(r1)
/* 807B1444  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807B1448  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807B144C  38 81 00 08 */	addi r4, r1, 8
/* 807B1450  4B 86 83 A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807B1454  7C 64 1B 78 */	mr r4, r3
/* 807B1458  38 00 00 02 */	li r0, 2
/* 807B145C  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 807B1460  38 61 00 0C */	addi r3, r1, 0xc
/* 807B1464  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 807B1468  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 807B146C  4B AB 56 C8 */	b __mi__4cXyzCFRC3Vec
/* 807B1470  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 807B1474  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807B1478  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807B147C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807B1480  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 807B1484  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807B1488  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 807B148C  2C 00 00 02 */	cmpwi r0, 2
/* 807B1490  41 82 01 10 */	beq lbl_807B15A0
/* 807B1494  40 80 00 14 */	bge lbl_807B14A8
/* 807B1498  2C 00 00 00 */	cmpwi r0, 0
/* 807B149C  41 82 00 18 */	beq lbl_807B14B4
/* 807B14A0  40 80 00 80 */	bge lbl_807B1520
/* 807B14A4  48 00 01 B4 */	b lbl_807B1658
lbl_807B14A8:
/* 807B14A8  2C 00 00 04 */	cmpwi r0, 4
/* 807B14AC  40 80 01 AC */	bge lbl_807B1658
/* 807B14B0  48 00 01 6C */	b lbl_807B161C
lbl_807B14B4:
/* 807B14B4  EC 21 00 72 */	fmuls f1, f1, f1
/* 807B14B8  EC 00 00 32 */	fmuls f0, f0, f0
/* 807B14BC  EC 21 00 2A */	fadds f1, f1, f0
/* 807B14C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B14C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B14C8  40 81 00 0C */	ble lbl_807B14D4
/* 807B14CC  FC 00 08 34 */	frsqrte f0, f1
/* 807B14D0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807B14D4:
/* 807B14D4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 807B14D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B14DC  40 80 00 20 */	bge lbl_807B14FC
/* 807B14E0  88 1E 06 8A */	lbz r0, 0x68a(r30)
/* 807B14E4  60 00 00 01 */	ori r0, r0, 1
/* 807B14E8  98 1E 06 8A */	stb r0, 0x68a(r30)
/* 807B14EC  38 00 00 00 */	li r0, 0
/* 807B14F0  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807B14F4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807B14F8  48 00 01 60 */	b lbl_807B1658
lbl_807B14FC:
/* 807B14FC  7F C3 F3 78 */	mr r3, r30
/* 807B1500  38 80 00 17 */	li r4, 0x17
/* 807B1504  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 807B1508  38 A0 00 00 */	li r5, 0
/* 807B150C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807B1510  4B FF EF 95 */	bl anm_init__FP10e_th_classifUcf
/* 807B1514  38 00 00 01 */	li r0, 1
/* 807B1518  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807B151C  48 00 01 3C */	b lbl_807B1658
lbl_807B1520:
/* 807B1520  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807B1524  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807B1528  FC 00 00 1E */	fctiwz f0, f0
/* 807B152C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807B1530  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 807B1534  2C 00 00 09 */	cmpwi r0, 9
/* 807B1538  40 82 00 10 */	bne lbl_807B1548
/* 807B153C  88 1E 06 8A */	lbz r0, 0x68a(r30)
/* 807B1540  60 00 00 01 */	ori r0, r0, 1
/* 807B1544  98 1E 06 8A */	stb r0, 0x68a(r30)
lbl_807B1548:
/* 807B1548  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807B154C  38 80 00 01 */	li r4, 1
/* 807B1550  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807B1554  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B1558  40 82 00 18 */	bne lbl_807B1570
/* 807B155C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807B1560  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807B1564  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807B1568  41 82 00 08 */	beq lbl_807B1570
/* 807B156C  38 80 00 00 */	li r4, 0
lbl_807B1570:
/* 807B1570  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807B1574  41 82 00 24 */	beq lbl_807B1598
/* 807B1578  7F C3 F3 78 */	mr r3, r30
/* 807B157C  38 80 00 1B */	li r4, 0x1b
/* 807B1580  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807B1584  38 A0 00 02 */	li r5, 2
/* 807B1588  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807B158C  4B FF EF 19 */	bl anm_init__FP10e_th_classifUcf
/* 807B1590  38 00 00 02 */	li r0, 2
/* 807B1594  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807B1598:
/* 807B1598  38 00 00 64 */	li r0, 0x64
/* 807B159C  B0 1E 06 9C */	sth r0, 0x69c(r30)
lbl_807B15A0:
/* 807B15A0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 807B15A4  EC 20 00 32 */	fmuls f1, f0, f0
/* 807B15A8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807B15AC  EC 00 00 32 */	fmuls f0, f0, f0
/* 807B15B0  EC 21 00 2A */	fadds f1, f1, f0
/* 807B15B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B15B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B15BC  40 81 00 0C */	ble lbl_807B15C8
/* 807B15C0  FC 00 08 34 */	frsqrte f0, f1
/* 807B15C4  EC 20 00 72 */	fmuls f1, f0, f1
lbl_807B15C8:
/* 807B15C8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 807B15CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B15D0  40 80 00 30 */	bge lbl_807B1600
/* 807B15D4  7F C3 F3 78 */	mr r3, r30
/* 807B15D8  38 80 00 1A */	li r4, 0x1a
/* 807B15DC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807B15E0  38 A0 00 00 */	li r5, 0
/* 807B15E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807B15E8  4B FF EE BD */	bl anm_init__FP10e_th_classifUcf
/* 807B15EC  38 00 00 03 */	li r0, 3
/* 807B15F0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807B15F4  38 00 00 00 */	li r0, 0
/* 807B15F8  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 807B15FC  48 00 00 5C */	b lbl_807B1658
lbl_807B1600:
/* 807B1600  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 807B1604  2C 00 00 00 */	cmpwi r0, 0
/* 807B1608  40 82 00 50 */	bne lbl_807B1658
/* 807B160C  38 00 00 00 */	li r0, 0
/* 807B1610  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807B1614  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807B1618  48 00 00 40 */	b lbl_807B1658
lbl_807B161C:
/* 807B161C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807B1620  38 80 00 01 */	li r4, 1
/* 807B1624  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807B1628  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B162C  40 82 00 18 */	bne lbl_807B1644
/* 807B1630  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807B1634  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807B1638  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807B163C  41 82 00 08 */	beq lbl_807B1644
/* 807B1640  38 80 00 00 */	li r4, 0
lbl_807B1644:
/* 807B1644  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807B1648  41 82 00 10 */	beq lbl_807B1658
/* 807B164C  38 00 00 00 */	li r0, 0
/* 807B1650  B0 1E 06 86 */	sth r0, 0x686(r30)
/* 807B1654  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_807B1658:
/* 807B1658  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807B165C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807B1660  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807B1664  7C 08 03 A6 */	mtlr r0
/* 807B1668  38 21 00 40 */	addi r1, r1, 0x40
/* 807B166C  4E 80 00 20 */	blr 
