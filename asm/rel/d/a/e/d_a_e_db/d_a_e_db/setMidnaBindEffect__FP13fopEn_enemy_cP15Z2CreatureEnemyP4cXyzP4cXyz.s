lbl_806A146C:
/* 806A146C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806A1470  7C 08 02 A6 */	mflr r0
/* 806A1474  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806A1478  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806A147C  4B CC 0D 39 */	bl _savegpr_19
/* 806A1480  7C 7E 1B 78 */	mr r30, r3
/* 806A1484  7C 9A 23 78 */	mr r26, r4
/* 806A1488  7C BB 2B 78 */	mr r27, r5
/* 806A148C  7C DC 33 78 */	mr r28, r6
/* 806A1490  3C 60 80 6A */	lis r3, cNullVec__6Z2Calc@ha /* 0x806A1A74@ha */
/* 806A1494  3A E3 1A 74 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x806A1A74@l */
/* 806A1498  3C 60 80 6A */	lis r3, lit_3902@ha /* 0x806A190C@ha */
/* 806A149C  3B E3 19 0C */	addi r31, r3, lit_3902@l /* 0x806A190C@l */
/* 806A14A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A14A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A14A8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806A14AC  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806A14B0  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 806A14B4  28 00 00 00 */	cmplwi r0, 0
/* 806A14B8  41 82 03 A4 */	beq lbl_806A185C
/* 806A14BC  7F C4 F3 78 */	mr r4, r30
/* 806A14C0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806A14C4  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806A14C8  7D 89 03 A6 */	mtctr r12
/* 806A14CC  4E 80 04 21 */	bctrl 
/* 806A14D0  2C 03 00 00 */	cmpwi r3, 0
/* 806A14D4  41 82 03 88 */	beq lbl_806A185C
/* 806A14D8  4B B0 B0 A5 */	bl dKy_darkworld_check__Fv
/* 806A14DC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806A14E0  30 03 FF FF */	addic r0, r3, -1
/* 806A14E4  7F A0 19 10 */	subfe r29, r0, r3
/* 806A14E8  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806A14EC  28 00 00 00 */	cmplwi r0, 0
/* 806A14F0  40 82 02 A0 */	bne lbl_806A1790
/* 806A14F4  38 00 00 01 */	li r0, 1
/* 806A14F8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806A14FC  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806A1500  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 806A1504  80 63 00 00 */	lwz r3, 0(r3)
/* 806A1508  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806A150C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806A1510  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806A1514  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806A1518  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A151C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A1520  4B CA 4F 91 */	bl PSMTXCopy
/* 806A1524  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A1528  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806A152C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A1530  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806A1534  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806A1538  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A153C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A1540  38 81 00 4C */	addi r4, r1, 0x4c
/* 806A1544  38 A1 00 58 */	addi r5, r1, 0x58
/* 806A1548  4B CA 58 25 */	bl PSMTXMultVec
/* 806A154C  38 61 00 34 */	addi r3, r1, 0x34
/* 806A1550  38 81 00 58 */	addi r4, r1, 0x58
/* 806A1554  7F 65 DB 78 */	mr r5, r27
/* 806A1558  4B BC 55 DD */	bl __mi__4cXyzCFRC3Vec
/* 806A155C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806A1560  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806A1564  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806A1568  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806A156C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806A1570  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806A1574  4B BC 61 01 */	bl cM_atan2s__Fff
/* 806A1578  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806A157C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806A1580  EC 20 00 32 */	fmuls f1, f0, f0
/* 806A1584  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806A1588  EC 00 00 32 */	fmuls f0, f0, f0
/* 806A158C  EC 41 00 2A */	fadds f2, f1, f0
/* 806A1590  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A1594  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806A1598  40 81 00 0C */	ble lbl_806A15A4
/* 806A159C  FC 00 10 34 */	frsqrte f0, f2
/* 806A15A0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806A15A4:
/* 806A15A4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806A15A8  4B BC 60 CD */	bl cM_atan2s__Fff
/* 806A15AC  7C 03 00 D0 */	neg r0, r3
/* 806A15B0  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806A15B4  38 80 00 00 */	li r4, 0
/* 806A15B8  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806A15BC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A15C0  7C 00 07 74 */	extsb r0, r0
/* 806A15C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A15C8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A15CC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806A15D0  57 A5 10 3A */	slwi r5, r29, 2
/* 806A15D4  90 81 00 08 */	stw r4, 8(r1)
/* 806A15D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A15DC  3A B7 00 20 */	addi r21, r23, 0x20
/* 806A15E0  7E B5 2A 14 */	add r21, r21, r5
/* 806A15E4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806A15E8  3A D7 00 28 */	addi r22, r23, 0x28
/* 806A15EC  7E D6 2A 14 */	add r22, r22, r5
/* 806A15F0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806A15F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 806A15F8  38 80 00 00 */	li r4, 0
/* 806A15FC  38 A0 02 9B */	li r5, 0x29b
/* 806A1600  7F 66 DB 78 */	mr r6, r27
/* 806A1604  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A1608  39 01 00 2C */	addi r8, r1, 0x2c
/* 806A160C  7F 89 E3 78 */	mr r9, r28
/* 806A1610  39 40 00 FF */	li r10, 0xff
/* 806A1614  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A1618  4B 9A B4 79 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A161C  7C 79 1B 79 */	or. r25, r3, r3
/* 806A1620  41 82 00 FC */	beq lbl_806A171C
/* 806A1624  38 61 00 40 */	addi r3, r1, 0x40
/* 806A1628  4B CA 5B 11 */	bl PSVECSquareMag
/* 806A162C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A1630  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A1634  40 81 00 58 */	ble lbl_806A168C
/* 806A1638  FC 00 08 34 */	frsqrte f0, f1
/* 806A163C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806A1640  FC 44 00 32 */	fmul f2, f4, f0
/* 806A1644  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806A1648  FC 00 00 32 */	fmul f0, f0, f0
/* 806A164C  FC 01 00 32 */	fmul f0, f1, f0
/* 806A1650  FC 03 00 28 */	fsub f0, f3, f0
/* 806A1654  FC 02 00 32 */	fmul f0, f2, f0
/* 806A1658  FC 44 00 32 */	fmul f2, f4, f0
/* 806A165C  FC 00 00 32 */	fmul f0, f0, f0
/* 806A1660  FC 01 00 32 */	fmul f0, f1, f0
/* 806A1664  FC 03 00 28 */	fsub f0, f3, f0
/* 806A1668  FC 02 00 32 */	fmul f0, f2, f0
/* 806A166C  FC 44 00 32 */	fmul f2, f4, f0
/* 806A1670  FC 00 00 32 */	fmul f0, f0, f0
/* 806A1674  FC 01 00 32 */	fmul f0, f1, f0
/* 806A1678  FC 03 00 28 */	fsub f0, f3, f0
/* 806A167C  FC 02 00 32 */	fmul f0, f2, f0
/* 806A1680  FC 21 00 32 */	fmul f1, f1, f0
/* 806A1684  FC 20 08 18 */	frsp f1, f1
/* 806A1688  48 00 00 88 */	b lbl_806A1710
lbl_806A168C:
/* 806A168C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806A1690  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A1694  40 80 00 10 */	bge lbl_806A16A4
/* 806A1698  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806A169C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806A16A0  48 00 00 70 */	b lbl_806A1710
lbl_806A16A4:
/* 806A16A4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806A16A8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806A16AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806A16B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806A16B4  7C 03 00 00 */	cmpw r3, r0
/* 806A16B8  41 82 00 14 */	beq lbl_806A16CC
/* 806A16BC  40 80 00 40 */	bge lbl_806A16FC
/* 806A16C0  2C 03 00 00 */	cmpwi r3, 0
/* 806A16C4  41 82 00 20 */	beq lbl_806A16E4
/* 806A16C8  48 00 00 34 */	b lbl_806A16FC
lbl_806A16CC:
/* 806A16CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A16D0  41 82 00 0C */	beq lbl_806A16DC
/* 806A16D4  38 00 00 01 */	li r0, 1
/* 806A16D8  48 00 00 28 */	b lbl_806A1700
lbl_806A16DC:
/* 806A16DC  38 00 00 02 */	li r0, 2
/* 806A16E0  48 00 00 20 */	b lbl_806A1700
lbl_806A16E4:
/* 806A16E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806A16E8  41 82 00 0C */	beq lbl_806A16F4
/* 806A16EC  38 00 00 05 */	li r0, 5
/* 806A16F0  48 00 00 10 */	b lbl_806A1700
lbl_806A16F4:
/* 806A16F4  38 00 00 03 */	li r0, 3
/* 806A16F8  48 00 00 08 */	b lbl_806A1700
lbl_806A16FC:
/* 806A16FC  38 00 00 04 */	li r0, 4
lbl_806A1700:
/* 806A1700  2C 00 00 01 */	cmpwi r0, 1
/* 806A1704  40 82 00 0C */	bne lbl_806A1710
/* 806A1708  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806A170C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806A1710:
/* 806A1710  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806A1714  EC 00 00 72 */	fmuls f0, f0, f1
/* 806A1718  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806A171C:
/* 806A171C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A1720  7C 04 07 74 */	extsb r4, r0
/* 806A1724  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806A1728  38 00 00 00 */	li r0, 0
/* 806A172C  90 01 00 08 */	stw r0, 8(r1)
/* 806A1730  90 81 00 0C */	stw r4, 0xc(r1)
/* 806A1734  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806A1738  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806A173C  90 01 00 18 */	stw r0, 0x18(r1)
/* 806A1740  38 80 00 00 */	li r4, 0
/* 806A1744  38 A0 02 9C */	li r5, 0x29c
/* 806A1748  7F 66 DB 78 */	mr r6, r27
/* 806A174C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806A1750  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806A1754  7F 89 E3 78 */	mr r9, r28
/* 806A1758  39 40 00 FF */	li r10, 0xff
/* 806A175C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A1760  4B 9A B3 31 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A1764  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806A1768  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806A176C  90 01 00 28 */	stw r0, 0x28(r1)
/* 806A1770  7F 43 D3 78 */	mr r3, r26
/* 806A1774  38 81 00 28 */	addi r4, r1, 0x28
/* 806A1778  38 A0 00 00 */	li r5, 0
/* 806A177C  38 C0 FF FF */	li r6, -1
/* 806A1780  81 9A 00 00 */	lwz r12, 0(r26)
/* 806A1784  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806A1788  7D 89 03 A6 */	mtctr r12
/* 806A178C  4E 80 04 21 */	bctrl 
lbl_806A1790:
/* 806A1790  3A A0 00 00 */	li r21, 0
/* 806A1794  3A C0 00 00 */	li r22, 0
/* 806A1798  3A 80 00 00 */	li r20, 0
/* 806A179C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A17A0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A17A4  57 A0 10 3A */	slwi r0, r29, 2
/* 806A17A8  3B 17 00 28 */	addi r24, r23, 0x28
/* 806A17AC  7F 18 02 14 */	add r24, r24, r0
/* 806A17B0  3B B7 00 20 */	addi r29, r23, 0x20
/* 806A17B4  7F BD 02 14 */	add r29, r29, r0
/* 806A17B8  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806A17BC:
/* 806A17BC  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806A17C0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806A17C4  7C 05 07 74 */	extsb r5, r0
/* 806A17C8  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806A17CC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806A17D0  38 00 00 FF */	li r0, 0xff
/* 806A17D4  90 01 00 08 */	stw r0, 8(r1)
/* 806A17D8  38 00 00 00 */	li r0, 0
/* 806A17DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A17E0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806A17E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806A17E8  93 01 00 18 */	stw r24, 0x18(r1)
/* 806A17EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806A17F0  38 A0 00 00 */	li r5, 0
/* 806A17F4  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806A17F8  7F 67 DB 78 */	mr r7, r27
/* 806A17FC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806A1800  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806A1804  7F 8A E3 78 */	mr r10, r28
/* 806A1808  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806A180C  4B 9A BC C1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806A1810  7C 7E B9 2E */	stwx r3, r30, r23
/* 806A1814  3A B5 00 01 */	addi r21, r21, 1
/* 806A1818  2C 15 00 03 */	cmpwi r21, 3
/* 806A181C  3A D6 00 02 */	addi r22, r22, 2
/* 806A1820  3A 94 00 04 */	addi r20, r20, 4
/* 806A1824  41 80 FF 98 */	blt lbl_806A17BC
/* 806A1828  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806A182C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806A1830  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A1834  7F 43 D3 78 */	mr r3, r26
/* 806A1838  38 81 00 24 */	addi r4, r1, 0x24
/* 806A183C  38 A0 00 00 */	li r5, 0
/* 806A1840  38 C0 FF FF */	li r6, -1
/* 806A1844  81 9A 00 00 */	lwz r12, 0(r26)
/* 806A1848  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806A184C  7D 89 03 A6 */	mtctr r12
/* 806A1850  4E 80 04 21 */	bctrl 
/* 806A1854  38 60 00 01 */	li r3, 1
/* 806A1858  48 00 00 10 */	b lbl_806A1868
lbl_806A185C:
/* 806A185C  38 00 00 00 */	li r0, 0
/* 806A1860  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806A1864  38 60 00 00 */	li r3, 0
lbl_806A1868:
/* 806A1868  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806A186C  4B CC 09 95 */	bl _restgpr_19
/* 806A1870  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806A1874  7C 08 03 A6 */	mtlr r0
/* 806A1878  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806A187C  4E 80 00 20 */	blr 
