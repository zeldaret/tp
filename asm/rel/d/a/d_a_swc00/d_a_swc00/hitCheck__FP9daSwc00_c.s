lbl_805A13F8:
/* 805A13F8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805A13FC  7C 08 02 A6 */	mflr r0
/* 805A1400  90 01 00 64 */	stw r0, 0x64(r1)
/* 805A1404  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 805A1408  93 C1 00 58 */	stw r30, 0x58(r1)
/* 805A140C  7C 7F 1B 78 */	mr r31, r3
/* 805A1410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A1414  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A1418  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 805A141C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805A1420  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 805A1424  28 00 00 02 */	cmplwi r0, 2
/* 805A1428  40 82 00 0C */	bne lbl_805A1434
/* 805A142C  83 C3 5D B8 */	lwz r30, 0x5db8(r3)
/* 805A1430  48 00 00 08 */	b lbl_805A1438
lbl_805A1434:
/* 805A1434  7C 9E 23 78 */	mr r30, r4
lbl_805A1438:
/* 805A1438  28 1E 00 00 */	cmplwi r30, 0
/* 805A143C  40 82 00 0C */	bne lbl_805A1448
/* 805A1440  38 60 00 00 */	li r3, 0
/* 805A1444  48 00 01 80 */	b lbl_805A15C4
lbl_805A1448:
/* 805A1448  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A144C  54 00 77 BE */	rlwinm r0, r0, 0xe, 0x1e, 0x1f
/* 805A1450  2C 00 00 03 */	cmpwi r0, 3
/* 805A1454  40 82 00 4C */	bne lbl_805A14A0
/* 805A1458  7F E3 FB 78 */	mr r3, r31
/* 805A145C  7F C4 F3 78 */	mr r4, r30
/* 805A1460  4B A7 96 35 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805A1464  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 805A1468  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805A146C  EC 42 00 28 */	fsubs f2, f2, f0
/* 805A1470  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805A1474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A1478  40 80 01 48 */	bge lbl_805A15C0
/* 805A147C  3C 60 80 5A */	lis r3, lit_3708@ha /* 0x805A1D94@ha */
/* 805A1480  C0 03 1D 94 */	lfs f0, lit_3708@l(r3)  /* 0x805A1D94@l */
/* 805A1484  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805A1488  40 80 01 38 */	bge lbl_805A15C0
/* 805A148C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 805A1490  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A1494  40 80 01 2C */	bge lbl_805A15C0
/* 805A1498  38 60 00 01 */	li r3, 1
/* 805A149C  48 00 01 28 */	b lbl_805A15C4
lbl_805A14A0:
/* 805A14A0  2C 00 00 00 */	cmpwi r0, 0
/* 805A14A4  40 82 01 1C */	bne lbl_805A15C0
/* 805A14A8  38 61 00 20 */	addi r3, r1, 0x20
/* 805A14AC  38 9F 05 68 */	addi r4, r31, 0x568
/* 805A14B0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805A14B4  4B CC 56 81 */	bl __mi__4cXyzCFRC3Vec
/* 805A14B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805A14BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805A14C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805A14C4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805A14C8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805A14CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805A14D0  38 61 00 14 */	addi r3, r1, 0x14
/* 805A14D4  38 9F 05 74 */	addi r4, r31, 0x574
/* 805A14D8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805A14DC  4B CC 56 59 */	bl __mi__4cXyzCFRC3Vec
/* 805A14E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805A14E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805A14E8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805A14EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805A14F0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805A14F4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805A14F8  38 61 00 08 */	addi r3, r1, 8
/* 805A14FC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805A1500  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805A1504  4B CC 56 31 */	bl __mi__4cXyzCFRC3Vec
/* 805A1508  C0 01 00 08 */	lfs f0, 8(r1)
/* 805A150C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805A1510  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805A1514  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805A1518  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805A151C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805A1520  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A1524  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A1528  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805A152C  7C 00 00 D0 */	neg r0, r0
/* 805A1530  7C 04 07 34 */	extsh r4, r0
/* 805A1534  4B A6 AE A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 805A1538  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A153C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A1540  38 81 00 2C */	addi r4, r1, 0x2c
/* 805A1544  7C 85 23 78 */	mr r5, r4
/* 805A1548  4B DA 58 25 */	bl PSMTXMultVec
/* 805A154C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805A1550  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 805A1554  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805A1558  4C 40 13 82 */	cror 2, 0, 2
/* 805A155C  40 82 00 64 */	bne lbl_805A15C0
/* 805A1560  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805A1564  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A1568  4C 40 13 82 */	cror 2, 0, 2
/* 805A156C  40 82 00 54 */	bne lbl_805A15C0
/* 805A1570  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805A1574  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 805A1578  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805A157C  4C 40 13 82 */	cror 2, 0, 2
/* 805A1580  40 82 00 40 */	bne lbl_805A15C0
/* 805A1584  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805A1588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A158C  4C 40 13 82 */	cror 2, 0, 2
/* 805A1590  40 82 00 30 */	bne lbl_805A15C0
/* 805A1594  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805A1598  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 805A159C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805A15A0  4C 40 13 82 */	cror 2, 0, 2
/* 805A15A4  40 82 00 1C */	bne lbl_805A15C0
/* 805A15A8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805A15AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A15B0  4C 40 13 82 */	cror 2, 0, 2
/* 805A15B4  40 82 00 0C */	bne lbl_805A15C0
/* 805A15B8  38 60 00 01 */	li r3, 1
/* 805A15BC  48 00 00 08 */	b lbl_805A15C4
lbl_805A15C0:
/* 805A15C0  38 60 00 00 */	li r3, 0
lbl_805A15C4:
/* 805A15C4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 805A15C8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 805A15CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805A15D0  7C 08 03 A6 */	mtlr r0
/* 805A15D4  38 21 00 60 */	addi r1, r1, 0x60
/* 805A15D8  4E 80 00 20 */	blr 
