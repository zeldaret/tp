lbl_806C14D4:
/* 806C14D4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806C14D8  7C 08 02 A6 */	mflr r0
/* 806C14DC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806C14E0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806C14E4  4B CA 0C D0 */	b _savegpr_19
/* 806C14E8  7C 7E 1B 78 */	mr r30, r3
/* 806C14EC  7C 9A 23 78 */	mr r26, r4
/* 806C14F0  7C BB 2B 78 */	mr r27, r5
/* 806C14F4  7C DC 33 78 */	mr r28, r6
/* 806C14F8  3C 60 80 6C */	lis r3, cNullVec__6Z2Calc@ha
/* 806C14FC  3A E3 1A 00 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 806C1500  3C 60 80 6C */	lis r3, lit_3803@ha
/* 806C1504  3B E3 19 38 */	addi r31, r3, lit_3803@l
/* 806C1508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C150C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806C1510  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806C1514  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 806C1518  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 806C151C  28 00 00 00 */	cmplwi r0, 0
/* 806C1520  41 82 03 A4 */	beq lbl_806C18C4
/* 806C1524  7F C4 F3 78 */	mr r4, r30
/* 806C1528  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806C152C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806C1530  7D 89 03 A6 */	mtctr r12
/* 806C1534  4E 80 04 21 */	bctrl 
/* 806C1538  2C 03 00 00 */	cmpwi r3, 0
/* 806C153C  41 82 03 88 */	beq lbl_806C18C4
/* 806C1540  4B AE B0 3C */	b dKy_darkworld_check__Fv
/* 806C1544  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806C1548  30 03 FF FF */	addic r0, r3, -1
/* 806C154C  7F A0 19 10 */	subfe r29, r0, r3
/* 806C1550  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806C1554  28 00 00 00 */	cmplwi r0, 0
/* 806C1558  40 82 02 A0 */	bne lbl_806C17F8
/* 806C155C  38 00 00 01 */	li r0, 1
/* 806C1560  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806C1564  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 806C1568  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 806C156C  80 63 00 00 */	lwz r3, 0(r3)
/* 806C1570  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806C1574  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806C1578  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806C157C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806C1580  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806C1584  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806C1588  4B C8 4F 28 */	b PSMTXCopy
/* 806C158C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806C1590  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806C1594  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C1598  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806C159C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806C15A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806C15A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806C15A8  38 81 00 4C */	addi r4, r1, 0x4c
/* 806C15AC  38 A1 00 58 */	addi r5, r1, 0x58
/* 806C15B0  4B C8 57 BC */	b PSMTXMultVec
/* 806C15B4  38 61 00 34 */	addi r3, r1, 0x34
/* 806C15B8  38 81 00 58 */	addi r4, r1, 0x58
/* 806C15BC  7F 65 DB 78 */	mr r5, r27
/* 806C15C0  4B BA 55 74 */	b __mi__4cXyzCFRC3Vec
/* 806C15C4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806C15C8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806C15CC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806C15D0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806C15D4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806C15D8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806C15DC  4B BA 60 98 */	b cM_atan2s__Fff
/* 806C15E0  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806C15E4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806C15E8  EC 20 00 32 */	fmuls f1, f0, f0
/* 806C15EC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806C15F0  EC 00 00 32 */	fmuls f0, f0, f0
/* 806C15F4  EC 41 00 2A */	fadds f2, f1, f0
/* 806C15F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C15FC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C1600  40 81 00 0C */	ble lbl_806C160C
/* 806C1604  FC 00 10 34 */	frsqrte f0, f2
/* 806C1608  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806C160C:
/* 806C160C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806C1610  4B BA 60 64 */	b cM_atan2s__Fff
/* 806C1614  7C 03 00 D0 */	neg r0, r3
/* 806C1618  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806C161C  38 80 00 00 */	li r4, 0
/* 806C1620  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806C1624  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806C1628  7C 00 07 74 */	extsb r0, r0
/* 806C162C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C1630  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 806C1634  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806C1638  57 A5 10 3A */	slwi r5, r29, 2
/* 806C163C  90 81 00 08 */	stw r4, 8(r1)
/* 806C1640  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C1644  3A B7 00 20 */	addi r21, r23, 0x20
/* 806C1648  7E B5 2A 14 */	add r21, r21, r5
/* 806C164C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806C1650  3A D7 00 28 */	addi r22, r23, 0x28
/* 806C1654  7E D6 2A 14 */	add r22, r22, r5
/* 806C1658  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806C165C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806C1660  38 80 00 00 */	li r4, 0
/* 806C1664  38 A0 02 9B */	li r5, 0x29b
/* 806C1668  7F 66 DB 78 */	mr r6, r27
/* 806C166C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806C1670  39 01 00 2C */	addi r8, r1, 0x2c
/* 806C1674  7F 89 E3 78 */	mr r9, r28
/* 806C1678  39 40 00 FF */	li r10, 0xff
/* 806C167C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C1680  4B 98 B4 10 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806C1684  7C 79 1B 79 */	or. r25, r3, r3
/* 806C1688  41 82 00 FC */	beq lbl_806C1784
/* 806C168C  38 61 00 40 */	addi r3, r1, 0x40
/* 806C1690  4B C8 5A A8 */	b PSVECSquareMag
/* 806C1694  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C1698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C169C  40 81 00 58 */	ble lbl_806C16F4
/* 806C16A0  FC 00 08 34 */	frsqrte f0, f1
/* 806C16A4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C16A8  FC 44 00 32 */	fmul f2, f4, f0
/* 806C16AC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C16B0  FC 00 00 32 */	fmul f0, f0, f0
/* 806C16B4  FC 01 00 32 */	fmul f0, f1, f0
/* 806C16B8  FC 03 00 28 */	fsub f0, f3, f0
/* 806C16BC  FC 02 00 32 */	fmul f0, f2, f0
/* 806C16C0  FC 44 00 32 */	fmul f2, f4, f0
/* 806C16C4  FC 00 00 32 */	fmul f0, f0, f0
/* 806C16C8  FC 01 00 32 */	fmul f0, f1, f0
/* 806C16CC  FC 03 00 28 */	fsub f0, f3, f0
/* 806C16D0  FC 02 00 32 */	fmul f0, f2, f0
/* 806C16D4  FC 44 00 32 */	fmul f2, f4, f0
/* 806C16D8  FC 00 00 32 */	fmul f0, f0, f0
/* 806C16DC  FC 01 00 32 */	fmul f0, f1, f0
/* 806C16E0  FC 03 00 28 */	fsub f0, f3, f0
/* 806C16E4  FC 02 00 32 */	fmul f0, f2, f0
/* 806C16E8  FC 21 00 32 */	fmul f1, f1, f0
/* 806C16EC  FC 20 08 18 */	frsp f1, f1
/* 806C16F0  48 00 00 88 */	b lbl_806C1778
lbl_806C16F4:
/* 806C16F4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C16F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C16FC  40 80 00 10 */	bge lbl_806C170C
/* 806C1700  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C1704  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806C1708  48 00 00 70 */	b lbl_806C1778
lbl_806C170C:
/* 806C170C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806C1710  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806C1714  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C1718  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C171C  7C 03 00 00 */	cmpw r3, r0
/* 806C1720  41 82 00 14 */	beq lbl_806C1734
/* 806C1724  40 80 00 40 */	bge lbl_806C1764
/* 806C1728  2C 03 00 00 */	cmpwi r3, 0
/* 806C172C  41 82 00 20 */	beq lbl_806C174C
/* 806C1730  48 00 00 34 */	b lbl_806C1764
lbl_806C1734:
/* 806C1734  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C1738  41 82 00 0C */	beq lbl_806C1744
/* 806C173C  38 00 00 01 */	li r0, 1
/* 806C1740  48 00 00 28 */	b lbl_806C1768
lbl_806C1744:
/* 806C1744  38 00 00 02 */	li r0, 2
/* 806C1748  48 00 00 20 */	b lbl_806C1768
lbl_806C174C:
/* 806C174C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C1750  41 82 00 0C */	beq lbl_806C175C
/* 806C1754  38 00 00 05 */	li r0, 5
/* 806C1758  48 00 00 10 */	b lbl_806C1768
lbl_806C175C:
/* 806C175C  38 00 00 03 */	li r0, 3
/* 806C1760  48 00 00 08 */	b lbl_806C1768
lbl_806C1764:
/* 806C1764  38 00 00 04 */	li r0, 4
lbl_806C1768:
/* 806C1768  2C 00 00 01 */	cmpwi r0, 1
/* 806C176C  40 82 00 0C */	bne lbl_806C1778
/* 806C1770  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C1774  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806C1778:
/* 806C1778  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806C177C  EC 00 00 72 */	fmuls f0, f0, f1
/* 806C1780  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806C1784:
/* 806C1784  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806C1788  7C 04 07 74 */	extsb r4, r0
/* 806C178C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806C1790  38 00 00 00 */	li r0, 0
/* 806C1794  90 01 00 08 */	stw r0, 8(r1)
/* 806C1798  90 81 00 0C */	stw r4, 0xc(r1)
/* 806C179C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806C17A0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806C17A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 806C17A8  38 80 00 00 */	li r4, 0
/* 806C17AC  38 A0 02 9C */	li r5, 0x29c
/* 806C17B0  7F 66 DB 78 */	mr r6, r27
/* 806C17B4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806C17B8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806C17BC  7F 89 E3 78 */	mr r9, r28
/* 806C17C0  39 40 00 FF */	li r10, 0xff
/* 806C17C4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C17C8  4B 98 B2 C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806C17CC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806C17D0  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806C17D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 806C17D8  7F 43 D3 78 */	mr r3, r26
/* 806C17DC  38 81 00 28 */	addi r4, r1, 0x28
/* 806C17E0  38 A0 00 00 */	li r5, 0
/* 806C17E4  38 C0 FF FF */	li r6, -1
/* 806C17E8  81 9A 00 00 */	lwz r12, 0(r26)
/* 806C17EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806C17F0  7D 89 03 A6 */	mtctr r12
/* 806C17F4  4E 80 04 21 */	bctrl 
lbl_806C17F8:
/* 806C17F8  3A A0 00 00 */	li r21, 0
/* 806C17FC  3A C0 00 00 */	li r22, 0
/* 806C1800  3A 80 00 00 */	li r20, 0
/* 806C1804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C1808  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806C180C  57 A0 10 3A */	slwi r0, r29, 2
/* 806C1810  3B 17 00 28 */	addi r24, r23, 0x28
/* 806C1814  7F 18 02 14 */	add r24, r24, r0
/* 806C1818  3B B7 00 20 */	addi r29, r23, 0x20
/* 806C181C  7F BD 02 14 */	add r29, r29, r0
/* 806C1820  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806C1824:
/* 806C1824  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806C1828  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806C182C  7C 05 07 74 */	extsb r5, r0
/* 806C1830  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806C1834  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806C1838  38 00 00 FF */	li r0, 0xff
/* 806C183C  90 01 00 08 */	stw r0, 8(r1)
/* 806C1840  38 00 00 00 */	li r0, 0
/* 806C1844  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C1848  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806C184C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806C1850  93 01 00 18 */	stw r24, 0x18(r1)
/* 806C1854  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806C1858  38 A0 00 00 */	li r5, 0
/* 806C185C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806C1860  7F 67 DB 78 */	mr r7, r27
/* 806C1864  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806C1868  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806C186C  7F 8A E3 78 */	mr r10, r28
/* 806C1870  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C1874  4B 98 BC 58 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806C1878  7C 7E B9 2E */	stwx r3, r30, r23
/* 806C187C  3A B5 00 01 */	addi r21, r21, 1
/* 806C1880  2C 15 00 03 */	cmpwi r21, 3
/* 806C1884  3A D6 00 02 */	addi r22, r22, 2
/* 806C1888  3A 94 00 04 */	addi r20, r20, 4
/* 806C188C  41 80 FF 98 */	blt lbl_806C1824
/* 806C1890  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806C1894  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806C1898  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C189C  7F 43 D3 78 */	mr r3, r26
/* 806C18A0  38 81 00 24 */	addi r4, r1, 0x24
/* 806C18A4  38 A0 00 00 */	li r5, 0
/* 806C18A8  38 C0 FF FF */	li r6, -1
/* 806C18AC  81 9A 00 00 */	lwz r12, 0(r26)
/* 806C18B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806C18B4  7D 89 03 A6 */	mtctr r12
/* 806C18B8  4E 80 04 21 */	bctrl 
/* 806C18BC  38 60 00 01 */	li r3, 1
/* 806C18C0  48 00 00 10 */	b lbl_806C18D0
lbl_806C18C4:
/* 806C18C4  38 00 00 00 */	li r0, 0
/* 806C18C8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806C18CC  38 60 00 00 */	li r3, 0
lbl_806C18D0:
/* 806C18D0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806C18D4  4B CA 09 2C */	b _restgpr_19
/* 806C18D8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806C18DC  7C 08 03 A6 */	mtlr r0
/* 806C18E0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806C18E4  4E 80 00 20 */	blr 
