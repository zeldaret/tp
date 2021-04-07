lbl_806F13A8:
/* 806F13A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806F13AC  7C 08 02 A6 */	mflr r0
/* 806F13B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806F13B4  39 61 00 40 */	addi r11, r1, 0x40
/* 806F13B8  4B C7 0E 21 */	bl _savegpr_28
/* 806F13BC  7C 7C 1B 78 */	mr r28, r3
/* 806F13C0  3C 60 80 6F */	lis r3, lit_3767@ha /* 0x806F5514@ha */
/* 806F13C4  3B C3 55 14 */	addi r30, r3, lit_3767@l /* 0x806F5514@l */
/* 806F13C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F13CC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F13D0  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 806F13D4  38 00 00 05 */	li r0, 5
/* 806F13D8  B0 1C 06 B4 */	sth r0, 0x6b4(r28)
/* 806F13DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704E2@ha */
/* 806F13E0  38 03 04 E2 */	addi r0, r3, 0x04E2 /* 0x000704E2@l */
/* 806F13E4  90 01 00 08 */	stw r0, 8(r1)
/* 806F13E8  38 7C 05 D8 */	addi r3, r28, 0x5d8
/* 806F13EC  38 81 00 08 */	addi r4, r1, 8
/* 806F13F0  38 A0 00 00 */	li r5, 0
/* 806F13F4  38 C0 FF FF */	li r6, -1
/* 806F13F8  81 9C 05 D8 */	lwz r12, 0x5d8(r28)
/* 806F13FC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806F1400  7D 89 03 A6 */	mtctr r12
/* 806F1404  4E 80 04 21 */	bctrl 
/* 806F1408  A8 1C 06 98 */	lha r0, 0x698(r28)
/* 806F140C  2C 00 00 00 */	cmpwi r0, 0
/* 806F1410  41 82 00 3C */	beq lbl_806F144C
/* 806F1414  40 80 00 90 */	bge lbl_806F14A4
/* 806F1418  2C 00 FF FF */	cmpwi r0, -1
/* 806F141C  40 80 00 0C */	bge lbl_806F1428
/* 806F1420  48 00 00 84 */	b lbl_806F14A4
/* 806F1424  48 00 00 80 */	b lbl_806F14A4
lbl_806F1428:
/* 806F1428  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806F142C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806F1430  80 63 00 00 */	lwz r3, 0(r3)
/* 806F1434  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806F1438  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000086@ha */
/* 806F143C  38 84 00 86 */	addi r4, r4, 0x0086 /* 0x01000086@l */
/* 806F1440  38 A0 00 00 */	li r5, 0
/* 806F1444  38 C0 00 00 */	li r6, 0
/* 806F1448  4B BB DB C9 */	bl bgmStart__8Z2SeqMgrFUlUll
lbl_806F144C:
/* 806F144C  7F 83 E3 78 */	mr r3, r28
/* 806F1450  38 80 00 15 */	li r4, 0x15
/* 806F1454  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 806F1458  38 A0 00 02 */	li r5, 2
/* 806F145C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806F1460  4B FF F9 11 */	bl anm_init__FP14e_hzelda_classifUcf
/* 806F1464  38 00 00 01 */	li r0, 1
/* 806F1468  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 806F146C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 806F1470  4B B7 64 E5 */	bl cM_rndF__Ff
/* 806F1474  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 806F1478  EC 00 08 2A */	fadds f0, f0, f1
/* 806F147C  FC 00 00 1E */	fctiwz f0, f0
/* 806F1480  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806F1484  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 806F1488  B0 1C 06 AC */	sth r0, 0x6ac(r28)
/* 806F148C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F1490  D0 1C 06 9C */	stfs f0, 0x69c(r28)
/* 806F1494  A8 7C 06 A4 */	lha r3, 0x6a4(r28)
/* 806F1498  3C 63 00 01 */	addis r3, r3, 1
/* 806F149C  38 03 80 00 */	addi r0, r3, -32768
/* 806F14A0  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
lbl_806F14A4:
/* 806F14A4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 806F14A8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806F14AC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806F14B0  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 806F14B4  4B B7 E5 89 */	bl cLib_addCalc2__FPffff
/* 806F14B8  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806F14BC  A8 9C 06 A4 */	lha r4, 0x6a4(r28)
/* 806F14C0  38 A0 00 02 */	li r5, 2
/* 806F14C4  38 C0 03 00 */	li r6, 0x300
/* 806F14C8  4B B7 F1 41 */	bl cLib_addCalcAngleS2__FPssss
/* 806F14CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F14D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F14D4  80 63 00 00 */	lwz r3, 0(r3)
/* 806F14D8  A8 9C 05 D0 */	lha r4, 0x5d0(r28)
/* 806F14DC  4B 91 AF 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 806F14E0  A8 9C 06 94 */	lha r4, 0x694(r28)
/* 806F14E4  1C 04 01 2C */	mulli r0, r4, 0x12c
/* 806F14E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806F14EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806F14F0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806F14F4  7C 03 04 2E */	lfsx f0, r3, r0
/* 806F14F8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 806F14FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 806F1500  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806F1504  1C 04 02 BC */	mulli r0, r4, 0x2bc
/* 806F1508  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806F150C  7C 43 04 2E */	lfsx f2, r3, r0
/* 806F1510  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 806F1514  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806F1518  EC 01 00 2A */	fadds f0, f1, f0
/* 806F151C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806F1520  1C 04 01 90 */	mulli r0, r4, 0x190
/* 806F1524  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806F1528  7C 43 04 2E */	lfsx f2, r3, r0
/* 806F152C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 806F1530  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 806F1534  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806F1538  EC 01 00 2A */	fadds f0, f1, f0
/* 806F153C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F1540  38 61 00 18 */	addi r3, r1, 0x18
/* 806F1544  38 9C 05 B8 */	addi r4, r28, 0x5b8
/* 806F1548  4B B7 F9 A5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F154C  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806F1550  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806F1554  7C 65 1B 78 */	mr r5, r3
/* 806F1558  4B C5 5B 39 */	bl PSVECAdd
/* 806F155C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806F1560  C0 3C 05 B8 */	lfs f1, 0x5b8(r28)
/* 806F1564  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 806F1568  C0 7C 06 9C */	lfs f3, 0x69c(r28)
/* 806F156C  4B B7 E4 D1 */	bl cLib_addCalc2__FPffff
/* 806F1570  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 806F1574  C0 3C 05 BC */	lfs f1, 0x5bc(r28)
/* 806F1578  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 806F157C  C0 7C 06 9C */	lfs f3, 0x69c(r28)
/* 806F1580  4B B7 E4 BD */	bl cLib_addCalc2__FPffff
/* 806F1584  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 806F1588  C0 3C 05 C0 */	lfs f1, 0x5c0(r28)
/* 806F158C  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 806F1590  C0 7C 06 9C */	lfs f3, 0x69c(r28)
/* 806F1594  4B B7 E4 A9 */	bl cLib_addCalc2__FPffff
/* 806F1598  38 7C 06 9C */	addi r3, r28, 0x69c
/* 806F159C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 806F15A0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806F15A4  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 806F15A8  4B B7 E4 95 */	bl cLib_addCalc2__FPffff
/* 806F15AC  38 00 00 01 */	li r0, 1
/* 806F15B0  98 1C 06 BB */	stb r0, 0x6bb(r28)
/* 806F15B4  C0 3C 06 D8 */	lfs f1, 0x6d8(r28)
/* 806F15B8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806F15BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F15C0  40 80 01 2C */	bge lbl_806F16EC
/* 806F15C4  A8 1C 06 AC */	lha r0, 0x6ac(r28)
/* 806F15C8  2C 00 00 00 */	cmpwi r0, 0
/* 806F15CC  40 82 00 98 */	bne lbl_806F1664
/* 806F15D0  88 7C 14 13 */	lbz r3, 0x1413(r28)
/* 806F15D4  28 03 00 00 */	cmplwi r3, 0
/* 806F15D8  41 82 00 38 */	beq lbl_806F1610
/* 806F15DC  38 03 FF FF */	addi r0, r3, -1
/* 806F15E0  98 1C 14 13 */	stb r0, 0x1413(r28)
/* 806F15E4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F15E8  4B B7 63 6D */	bl cM_rndF__Ff
/* 806F15EC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806F15F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F15F4  40 80 00 10 */	bge lbl_806F1604
/* 806F15F8  38 00 00 01 */	li r0, 1
/* 806F15FC  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 806F1600  48 00 00 58 */	b lbl_806F1658
lbl_806F1604:
/* 806F1604  38 00 00 02 */	li r0, 2
/* 806F1608  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 806F160C  48 00 00 4C */	b lbl_806F1658
lbl_806F1610:
/* 806F1610  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F1614  4B B7 63 41 */	bl cM_rndF__Ff
/* 806F1618  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 806F161C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F1620  40 80 00 10 */	bge lbl_806F1630
/* 806F1624  38 00 00 03 */	li r0, 3
/* 806F1628  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 806F162C  48 00 00 2C */	b lbl_806F1658
lbl_806F1630:
/* 806F1630  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F1634  4B B7 63 21 */	bl cM_rndF__Ff
/* 806F1638  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806F163C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F1640  40 80 00 10 */	bge lbl_806F1650
/* 806F1644  38 00 00 01 */	li r0, 1
/* 806F1648  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 806F164C  48 00 00 0C */	b lbl_806F1658
lbl_806F1650:
/* 806F1650  38 00 00 02 */	li r0, 2
/* 806F1654  B0 1C 06 96 */	sth r0, 0x696(r28)
lbl_806F1658:
/* 806F1658  38 00 00 00 */	li r0, 0
/* 806F165C  B0 1C 06 98 */	sth r0, 0x698(r28)
/* 806F1660  48 00 00 E0 */	b lbl_806F1740
lbl_806F1664:
/* 806F1664  3C 60 80 6F */	lis r3, shot_s_sub__FPvPv@ha /* 0x806F1214@ha */
/* 806F1668  38 63 12 14 */	addi r3, r3, shot_s_sub__FPvPv@l /* 0x806F1214@l */
/* 806F166C  7F 84 E3 78 */	mr r4, r28
/* 806F1670  4B 92 FC C9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806F1674  28 03 00 00 */	cmplwi r3, 0
/* 806F1678  40 82 00 3C */	bne lbl_806F16B4
/* 806F167C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806F1680  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806F1684  81 8C 02 50 */	lwz r12, 0x250(r12)
/* 806F1688  7D 89 03 A6 */	mtctr r12
/* 806F168C  4E 80 04 21 */	bctrl 
/* 806F1690  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806F1694  41 82 00 58 */	beq lbl_806F16EC
/* 806F1698  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 806F169C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806F16A0  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 806F16A4  7D 89 03 A6 */	mtctr r12
/* 806F16A8  4E 80 04 21 */	bctrl 
/* 806F16AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806F16B0  40 82 00 3C */	bne lbl_806F16EC
lbl_806F16B4:
/* 806F16B4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 806F16B8  D0 1C 06 D8 */	stfs f0, 0x6d8(r28)
/* 806F16BC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F16C0  4B B7 62 95 */	bl cM_rndF__Ff
/* 806F16C4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806F16C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F16CC  40 80 00 14 */	bge lbl_806F16E0
/* 806F16D0  A8 7C 06 A4 */	lha r3, 0x6a4(r28)
/* 806F16D4  38 03 40 00 */	addi r0, r3, 0x4000
/* 806F16D8  B0 1C 06 DC */	sth r0, 0x6dc(r28)
/* 806F16DC  48 00 00 10 */	b lbl_806F16EC
lbl_806F16E0:
/* 806F16E0  A8 7C 06 A4 */	lha r3, 0x6a4(r28)
/* 806F16E4  38 03 C0 00 */	addi r0, r3, -16384
/* 806F16E8  B0 1C 06 DC */	sth r0, 0x6dc(r28)
lbl_806F16EC:
/* 806F16EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806F16F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806F16F4  80 63 00 00 */	lwz r3, 0(r3)
/* 806F16F8  A8 9C 06 DC */	lha r4, 0x6dc(r28)
/* 806F16FC  4B 91 AC E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 806F1700  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F1704  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806F1708  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806F170C  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 806F1710  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F1714  38 61 00 18 */	addi r3, r1, 0x18
/* 806F1718  38 81 00 0C */	addi r4, r1, 0xc
/* 806F171C  4B B7 F7 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F1720  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806F1724  38 81 00 0C */	addi r4, r1, 0xc
/* 806F1728  7C 65 1B 78 */	mr r5, r3
/* 806F172C  4B C5 59 65 */	bl PSVECAdd
/* 806F1730  38 7C 06 D8 */	addi r3, r28, 0x6d8
/* 806F1734  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806F1738  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 806F173C  4B B7 E3 45 */	bl cLib_addCalc0__FPfff
lbl_806F1740:
/* 806F1740  39 61 00 40 */	addi r11, r1, 0x40
/* 806F1744  4B C7 0A E1 */	bl _restgpr_28
/* 806F1748  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806F174C  7C 08 03 A6 */	mtlr r0
/* 806F1750  38 21 00 40 */	addi r1, r1, 0x40
/* 806F1754  4E 80 00 20 */	blr 
