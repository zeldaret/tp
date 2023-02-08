lbl_80CE14DC:
/* 80CE14DC  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 80CE14E0  7C 08 02 A6 */	mflr r0
/* 80CE14E4  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 80CE14E8  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 80CE14EC  F3 E1 01 98 */	psq_st f31, 408(r1), 0, 0 /* qr0 */
/* 80CE14F0  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 80CE14F4  F3 C1 01 88 */	psq_st f30, 392(r1), 0, 0 /* qr0 */
/* 80CE14F8  39 61 01 80 */	addi r11, r1, 0x180
/* 80CE14FC  4B 68 0C A5 */	bl __save_gpr
/* 80CE1500  7C 6F 1B 78 */	mr r15, r3
/* 80CE1504  3C 60 80 CE */	lis r3, lit_3779@ha /* 0x80CE39E8@ha */
/* 80CE1508  3B 03 39 E8 */	addi r24, r3, lit_3779@l /* 0x80CE39E8@l */
/* 80CE150C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE1510  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE1514  90 01 01 30 */	stw r0, 0x130(r1)
/* 80CE1518  7C 03 03 78 */	mr r3, r0
/* 80CE151C  82 43 5D AC */	lwz r18, 0x5dac(r3)
/* 80CE1520  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CE1524  38 80 00 00 */	li r4, 0
/* 80CE1528  38 A0 00 00 */	li r5, 0
/* 80CE152C  38 C0 00 00 */	li r6, 0
/* 80CE1530  4B 58 5E C5 */	bl __ct__5csXyzFsss
/* 80CE1534  39 C1 00 94 */	addi r14, r1, 0x94
/* 80CE1538  7D C3 73 78 */	mr r3, r14
/* 80CE153C  4B 39 60 41 */	bl __ct__11dBgS_GndChkFv
/* 80CE1540  3C 60 80 CE */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80CE3C48@ha */
/* 80CE1544  38 63 3C 48 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x80CE3C48@l */
/* 80CE1548  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 80CE154C  38 03 00 0C */	addi r0, r3, 0xc
/* 80CE1550  90 01 01 20 */	stw r0, 0x120(r1)
/* 80CE1554  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80CE1558  38 03 00 18 */	addi r0, r3, 0x18
/* 80CE155C  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80CE1560  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80CE1564  38 03 00 24 */	addi r0, r3, 0x24
/* 80CE1568  90 01 01 18 */	stw r0, 0x118(r1)
/* 80CE156C  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80CE1570  38 6E 00 3C */	addi r3, r14, 0x3c
/* 80CE1574  4B 39 78 F5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CE1578  3A 20 00 00 */	li r17, 0
/* 80CE157C  3B E0 00 00 */	li r31, 0
/* 80CE1580  3B C0 00 00 */	li r30, 0
/* 80CE1584  3B A0 00 00 */	li r29, 0
/* 80CE1588  3B 80 00 00 */	li r28, 0
/* 80CE158C  3B 60 00 00 */	li r27, 0
/* 80CE1590  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE1594  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE1598  38 19 0F 38 */	addi r0, r25, 0xf38
/* 80CE159C  90 01 01 24 */	stw r0, 0x124(r1)
/* 80CE15A0  7C 03 03 78 */	mr r3, r0
/* 80CE15A4  38 03 3E C8 */	addi r0, r3, 0x3ec8
/* 80CE15A8  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80CE15AC  38 19 23 3C */	addi r0, r25, 0x233c
/* 80CE15B0  90 01 01 28 */	stw r0, 0x128(r1)
lbl_80CE15B4:
/* 80CE15B4  7E CF 8A 14 */	add r22, r15, r17
/* 80CE15B8  88 76 05 FC */	lbz r3, 0x5fc(r22)
/* 80CE15BC  7C 60 07 75 */	extsb. r0, r3
/* 80CE15C0  41 82 0E 78 */	beq lbl_80CE2438
/* 80CE15C4  7C 60 07 74 */	extsb r0, r3
/* 80CE15C8  2C 00 00 01 */	cmpwi r0, 1
/* 80CE15CC  40 82 05 20 */	bne lbl_80CE1AEC
/* 80CE15D0  2C 11 00 02 */	cmpwi r17, 2
/* 80CE15D4  40 80 00 98 */	bge lbl_80CE166C
/* 80CE15D8  88 16 0C 30 */	lbz r0, 0xc30(r22)
/* 80CE15DC  7C 00 07 75 */	extsb. r0, r0
/* 80CE15E0  41 82 00 58 */	beq lbl_80CE1638
/* 80CE15E4  7D CF DA 14 */	add r14, r15, r27
/* 80CE15E8  38 6E 0A 28 */	addi r3, r14, 0xa28
/* 80CE15EC  38 80 00 00 */	li r4, 0
/* 80CE15F0  38 A0 00 02 */	li r5, 2
/* 80CE15F4  38 C0 01 2C */	li r6, 0x12c
/* 80CE15F8  4B 58 F0 11 */	bl cLib_addCalcAngleS2__FPssss
/* 80CE15FC  A8 0E 0A 28 */	lha r0, 0xa28(r14)
/* 80CE1600  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 80CE1604  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CE1608  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CE160C  7C 60 22 14 */	add r3, r0, r4
/* 80CE1610  C0 23 00 04 */	lfs f1, 4(r3)
/* 80CE1614  38 9C 0B 94 */	addi r4, r28, 0xb94
/* 80CE1618  7C 6F 22 AE */	lhax r3, r15, r4
/* 80CE161C  C0 18 00 80 */	lfs f0, 0x80(r24)
/* 80CE1620  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE1624  FC 00 00 1E */	fctiwz f0, f0
/* 80CE1628  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80CE162C  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80CE1630  7C 03 02 14 */	add r0, r3, r0
/* 80CE1634  7C 0F 23 2E */	sthx r0, r15, r4
lbl_80CE1638:
/* 80CE1638  38 1B 0A 28 */	addi r0, r27, 0xa28
/* 80CE163C  7C 0F 02 AE */	lhax r0, r15, r0
/* 80CE1640  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE1644  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CE1648  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CE164C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CE1650  C0 18 00 84 */	lfs f0, 0x84(r24)
/* 80CE1654  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE1658  FC 00 02 10 */	fabs f0, f0
/* 80CE165C  FC 20 00 18 */	frsp f1, f0
/* 80CE1660  C0 18 00 4C */	lfs f0, 0x4c(r24)
/* 80CE1664  EF C0 08 2A */	fadds f30, f0, f1
/* 80CE1668  48 00 01 20 */	b lbl_80CE1788
lbl_80CE166C:
/* 80CE166C  2C 11 00 0A */	cmpwi r17, 0xa
/* 80CE1670  40 80 00 88 */	bge lbl_80CE16F8
/* 80CE1674  7D CF DA 14 */	add r14, r15, r27
/* 80CE1678  38 6E 0A 2A */	addi r3, r14, 0xa2a
/* 80CE167C  7E 0F E2 14 */	add r16, r15, r28
/* 80CE1680  A8 90 0B C8 */	lha r4, 0xbc8(r16)
/* 80CE1684  38 A0 00 01 */	li r5, 1
/* 80CE1688  38 C0 08 00 */	li r6, 0x800
/* 80CE168C  4B 58 EF 7D */	bl cLib_addCalcAngleS2__FPssss
/* 80CE1690  88 16 0C 30 */	lbz r0, 0xc30(r22)
/* 80CE1694  7C 00 07 75 */	extsb. r0, r0
/* 80CE1698  40 82 00 18 */	bne lbl_80CE16B0
/* 80CE169C  A8 6E 0A 28 */	lha r3, 0xa28(r14)
/* 80CE16A0  A8 10 0B FC */	lha r0, 0xbfc(r16)
/* 80CE16A4  7C 03 02 14 */	add r0, r3, r0
/* 80CE16A8  B0 0E 0A 28 */	sth r0, 0xa28(r14)
/* 80CE16AC  48 00 00 18 */	b lbl_80CE16C4
lbl_80CE16B0:
/* 80CE16B0  38 6E 0A 28 */	addi r3, r14, 0xa28
/* 80CE16B4  38 80 C0 00 */	li r4, -16384
/* 80CE16B8  38 A0 00 01 */	li r5, 1
/* 80CE16BC  38 C0 0C 00 */	li r6, 0xc00
/* 80CE16C0  4B 58 EF 49 */	bl cLib_addCalcAngleS2__FPssss
lbl_80CE16C4:
/* 80CE16C4  A8 0E 0A 28 */	lha r0, 0xa28(r14)
/* 80CE16C8  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 80CE16CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CE16D0  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CE16D4  7C 60 22 14 */	add r3, r0, r4
/* 80CE16D8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80CE16DC  C0 18 00 24 */	lfs f0, 0x24(r24)
/* 80CE16E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE16E4  FC 00 02 10 */	fabs f0, f0
/* 80CE16E8  FC 20 00 18 */	frsp f1, f0
/* 80CE16EC  C0 18 00 4C */	lfs f0, 0x4c(r24)
/* 80CE16F0  EF C0 08 2A */	fadds f30, f0, f1
/* 80CE16F4  48 00 00 94 */	b lbl_80CE1788
lbl_80CE16F8:
/* 80CE16F8  7E 0F DA 14 */	add r16, r15, r27
/* 80CE16FC  38 70 0A 2A */	addi r3, r16, 0xa2a
/* 80CE1700  7D CF E2 14 */	add r14, r15, r28
/* 80CE1704  A8 8E 0B C8 */	lha r4, 0xbc8(r14)
/* 80CE1708  38 A0 00 01 */	li r5, 1
/* 80CE170C  38 C0 08 00 */	li r6, 0x800
/* 80CE1710  4B 58 EE F9 */	bl cLib_addCalcAngleS2__FPssss
/* 80CE1714  88 16 0C 30 */	lbz r0, 0xc30(r22)
/* 80CE1718  7C 00 07 75 */	extsb. r0, r0
/* 80CE171C  40 82 00 18 */	bne lbl_80CE1734
/* 80CE1720  A8 70 0A 28 */	lha r3, 0xa28(r16)
/* 80CE1724  A8 0E 0B FC */	lha r0, 0xbfc(r14)
/* 80CE1728  7C 03 02 14 */	add r0, r3, r0
/* 80CE172C  B0 10 0A 28 */	sth r0, 0xa28(r16)
/* 80CE1730  48 00 00 18 */	b lbl_80CE1748
lbl_80CE1734:
/* 80CE1734  38 70 0A 28 */	addi r3, r16, 0xa28
/* 80CE1738  38 80 00 00 */	li r4, 0
/* 80CE173C  38 A0 00 01 */	li r5, 1
/* 80CE1740  38 C0 0C 00 */	li r6, 0xc00
/* 80CE1744  4B 58 EE C5 */	bl cLib_addCalcAngleS2__FPssss
lbl_80CE1748:
/* 80CE1748  38 6E 0B 60 */	addi r3, r14, 0xb60
/* 80CE174C  38 80 00 00 */	li r4, 0
/* 80CE1750  38 A0 00 01 */	li r5, 1
/* 80CE1754  38 C0 0C 00 */	li r6, 0xc00
/* 80CE1758  4B 58 EE B1 */	bl cLib_addCalcAngleS2__FPssss
/* 80CE175C  A8 10 0A 28 */	lha r0, 0xa28(r16)
/* 80CE1760  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE1764  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CE1768  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CE176C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CE1770  C0 18 00 88 */	lfs f0, 0x88(r24)
/* 80CE1774  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE1778  FC 00 02 10 */	fabs f0, f0
/* 80CE177C  FC 20 00 18 */	frsp f1, f0
/* 80CE1780  C0 18 00 4C */	lfs f0, 0x4c(r24)
/* 80CE1784  EF C0 08 2A */	fadds f30, f0, f1
lbl_80CE1788:
/* 80CE1788  7D CF EA 14 */	add r14, r15, r29
/* 80CE178C  3A 0E 06 18 */	addi r16, r14, 0x618
/* 80CE1790  7E 03 83 78 */	mr r3, r16
/* 80CE1794  38 8E 08 F0 */	addi r4, r14, 0x8f0
/* 80CE1798  7E 05 83 78 */	mr r5, r16
/* 80CE179C  4B 66 58 F5 */	bl PSVECAdd
/* 80CE17A0  C0 2E 08 F4 */	lfs f1, 0x8f4(r14)
/* 80CE17A4  C0 18 00 4C */	lfs f0, 0x4c(r24)
/* 80CE17A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CE17AC  D0 0E 08 F4 */	stfs f0, 0x8f4(r14)
/* 80CE17B0  C0 2E 08 F4 */	lfs f1, 0x8f4(r14)
/* 80CE17B4  C0 18 00 8C */	lfs f0, 0x8c(r24)
/* 80CE17B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE17BC  40 80 00 08 */	bge lbl_80CE17C4
/* 80CE17C0  D0 0E 08 F4 */	stfs f0, 0x8f4(r14)
lbl_80CE17C4:
/* 80CE17C4  88 19 4F AD */	lbz r0, 0x4fad(r25)
/* 80CE17C8  28 00 00 00 */	cmplwi r0, 0
/* 80CE17CC  40 82 00 28 */	bne lbl_80CE17F4
/* 80CE17D0  88 0F 04 E2 */	lbz r0, 0x4e2(r15)
/* 80CE17D4  2C 00 00 13 */	cmpwi r0, 0x13
/* 80CE17D8  40 82 00 1C */	bne lbl_80CE17F4
/* 80CE17DC  C0 2E 06 1C */	lfs f1, 0x61c(r14)
/* 80CE17E0  C0 18 00 90 */	lfs f0, 0x90(r24)
/* 80CE17E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE17E8  40 80 00 0C */	bge lbl_80CE17F4
/* 80CE17EC  38 00 00 00 */	li r0, 0
/* 80CE17F0  98 16 05 FC */	stb r0, 0x5fc(r22)
lbl_80CE17F4:
/* 80CE17F4  88 0F 04 E2 */	lbz r0, 0x4e2(r15)
/* 80CE17F8  2C 00 00 02 */	cmpwi r0, 2
/* 80CE17FC  41 82 00 5C */	beq lbl_80CE1858
/* 80CE1800  80 61 01 2C */	lwz r3, 0x12c(r1)
/* 80CE1804  3C 80 80 CE */	lis r4, d_a_obj_so__stringBase0@ha /* 0x80CE3B60@ha */
/* 80CE1808  38 84 3B 60 */	addi r4, r4, d_a_obj_so__stringBase0@l /* 0x80CE3B60@l */
/* 80CE180C  4B 68 71 89 */	bl strcmp
/* 80CE1810  2C 03 00 00 */	cmpwi r3, 0
/* 80CE1814  41 82 00 44 */	beq lbl_80CE1858
/* 80CE1818  C0 0E 06 18 */	lfs f0, 0x618(r14)
/* 80CE181C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80CE1820  C0 2E 06 1C */	lfs f1, 0x61c(r14)
/* 80CE1824  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80CE1828  C0 0E 06 20 */	lfs f0, 0x620(r14)
/* 80CE182C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80CE1830  C0 18 00 24 */	lfs f0, 0x24(r24)
/* 80CE1834  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE1838  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80CE183C  38 61 00 94 */	addi r3, r1, 0x94
/* 80CE1840  38 81 00 7C */	addi r4, r1, 0x7c
/* 80CE1844  4B 58 64 E5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80CE1848  80 61 01 24 */	lwz r3, 0x124(r1)
/* 80CE184C  38 81 00 94 */	addi r4, r1, 0x94
/* 80CE1850  4B 39 2C 51 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80CE1854  D0 2F 04 AC */	stfs f1, 0x4ac(r15)
lbl_80CE1858:
/* 80CE1858  C0 2E 06 1C */	lfs f1, 0x61c(r14)
/* 80CE185C  C0 0F 04 AC */	lfs f0, 0x4ac(r15)
/* 80CE1860  EC 00 F0 2A */	fadds f0, f0, f30
/* 80CE1864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE1868  4C 40 13 82 */	cror 2, 0, 2
/* 80CE186C  40 82 02 80 */	bne lbl_80CE1AEC
/* 80CE1870  D0 0E 06 1C */	stfs f0, 0x61c(r14)
/* 80CE1874  C0 2E 08 F4 */	lfs f1, 0x8f4(r14)
/* 80CE1878  C0 18 00 04 */	lfs f0, 4(r24)
/* 80CE187C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE1880  40 80 01 84 */	bge lbl_80CE1A04
/* 80CE1884  88 76 0C 30 */	lbz r3, 0xc30(r22)
/* 80CE1888  7C 60 07 74 */	extsb r0, r3
/* 80CE188C  2C 00 00 03 */	cmpwi r0, 3
/* 80CE1890  40 80 01 74 */	bge lbl_80CE1A04
/* 80CE1894  7C 60 07 75 */	extsb. r0, r3
/* 80CE1898  40 82 00 D0 */	bne lbl_80CE1968
/* 80CE189C  7E 6F F2 14 */	add r19, r15, r30
/* 80CE18A0  38 73 0C 4C */	addi r3, r19, 0xc4c
/* 80CE18A4  38 93 0C B4 */	addi r4, r19, 0xcb4
/* 80CE18A8  7E 05 83 78 */	mr r5, r16
/* 80CE18AC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80CE18B0  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80CE18B4  38 EF 01 0C */	addi r7, r15, 0x10c
/* 80CE18B8  39 00 00 00 */	li r8, 0
/* 80CE18BC  4B 33 B7 65 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80CE18C0  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80CE18C4  38 63 02 10 */	addi r3, r3, 0x210
/* 80CE18C8  80 93 0C 4C */	lwz r4, 0xc4c(r19)
/* 80CE18CC  4B 36 9F E9 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CE18D0  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80CE18D4  38 63 02 10 */	addi r3, r3, 0x210
/* 80CE18D8  80 93 0C B4 */	lwz r4, 0xcb4(r19)
/* 80CE18DC  4B 36 9F D9 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80CE18E0  2C 11 00 01 */	cmpwi r17, 1
/* 80CE18E4  41 81 00 84 */	bgt lbl_80CE1968
/* 80CE18E8  88 0F 05 70 */	lbz r0, 0x570(r15)
/* 80CE18EC  28 00 00 01 */	cmplwi r0, 1
/* 80CE18F0  41 82 00 2C */	beq lbl_80CE191C
/* 80CE18F4  C0 38 00 20 */	lfs f1, 0x20(r24)
/* 80CE18F8  4B 58 60 95 */	bl cM_rndFX__Ff
/* 80CE18FC  FC 00 08 1E */	fctiwz f0, f1
/* 80CE1900  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80CE1904  80 61 00 EC */	lwz r3, 0xec(r1)
/* 80CE1908  A8 0F 04 E4 */	lha r0, 0x4e4(r15)
/* 80CE190C  7C 60 1A 14 */	add r3, r0, r3
/* 80CE1910  38 1B 0A 28 */	addi r0, r27, 0xa28
/* 80CE1914  7C 6F 03 2E */	sthx r3, r15, r0
/* 80CE1918  48 00 00 50 */	b lbl_80CE1968
lbl_80CE191C:
/* 80CE191C  2C 11 00 00 */	cmpwi r17, 0
/* 80CE1920  40 82 00 28 */	bne lbl_80CE1948
/* 80CE1924  C0 38 00 94 */	lfs f1, 0x94(r24)
/* 80CE1928  4B 58 60 65 */	bl cM_rndFX__Ff
/* 80CE192C  FC 00 08 1E */	fctiwz f0, f1
/* 80CE1930  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80CE1934  80 61 00 EC */	lwz r3, 0xec(r1)
/* 80CE1938  38 63 C9 00 */	addi r3, r3, -14080
/* 80CE193C  38 1B 0A 28 */	addi r0, r27, 0xa28
/* 80CE1940  7C 6F 03 2E */	sthx r3, r15, r0
/* 80CE1944  48 00 00 24 */	b lbl_80CE1968
lbl_80CE1948:
/* 80CE1948  C0 38 00 94 */	lfs f1, 0x94(r24)
/* 80CE194C  4B 58 60 41 */	bl cM_rndFX__Ff
/* 80CE1950  FC 00 08 1E */	fctiwz f0, f1
/* 80CE1954  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80CE1958  80 61 00 EC */	lwz r3, 0xec(r1)
/* 80CE195C  38 63 F0 00 */	addi r3, r3, -4096
/* 80CE1960  38 1B 0A 28 */	addi r0, r27, 0xa28
/* 80CE1964  7C 6F 03 2E */	sthx r3, r15, r0
lbl_80CE1968:
/* 80CE1968  C0 2E 08 F4 */	lfs f1, 0x8f4(r14)
/* 80CE196C  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 80CE1970  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CE1974  D0 0E 08 F4 */	stfs f0, 0x8f4(r14)
/* 80CE1978  88 76 0C 30 */	lbz r3, 0xc30(r22)
/* 80CE197C  38 03 00 01 */	addi r0, r3, 1
/* 80CE1980  98 16 0C 30 */	stb r0, 0xc30(r22)
/* 80CE1984  C0 0E 08 F0 */	lfs f0, 0x8f0(r14)
/* 80CE1988  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 80CE198C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE1990  D0 0E 08 F0 */	stfs f0, 0x8f0(r14)
/* 80CE1994  C0 0E 08 F8 */	lfs f0, 0x8f8(r14)
/* 80CE1998  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CE199C  D0 0E 08 F8 */	stfs f0, 0x8f8(r14)
/* 80CE19A0  2C 11 00 02 */	cmpwi r17, 2
/* 80CE19A4  41 80 01 48 */	blt lbl_80CE1AEC
/* 80CE19A8  C0 38 00 A0 */	lfs f1, 0xa0(r24)
/* 80CE19AC  C0 0E 08 F4 */	lfs f0, 0x8f4(r14)
/* 80CE19B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CE19B4  4B 58 5F D9 */	bl cM_rndFX__Ff
/* 80CE19B8  FC 00 08 1E */	fctiwz f0, f1
/* 80CE19BC  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80CE19C0  80 81 00 EC */	lwz r4, 0xec(r1)
/* 80CE19C4  38 7B 0A 28 */	addi r3, r27, 0xa28
/* 80CE19C8  7C 0F 1A AE */	lhax r0, r15, r3
/* 80CE19CC  7C 00 22 14 */	add r0, r0, r4
/* 80CE19D0  7C 0F 1B 2E */	sthx r0, r15, r3
/* 80CE19D4  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 80CE19D8  C0 0E 08 F4 */	lfs f0, 0x8f4(r14)
/* 80CE19DC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CE19E0  4B 58 5F AD */	bl cM_rndFX__Ff
/* 80CE19E4  FC 00 08 1E */	fctiwz f0, f1
/* 80CE19E8  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80CE19EC  80 81 00 F4 */	lwz r4, 0xf4(r1)
/* 80CE19F0  38 7C 0B C8 */	addi r3, r28, 0xbc8
/* 80CE19F4  7C 0F 1A AE */	lhax r0, r15, r3
/* 80CE19F8  7C 00 22 14 */	add r0, r0, r4
/* 80CE19FC  7C 0F 1B 2E */	sthx r0, r15, r3
/* 80CE1A00  48 00 00 EC */	b lbl_80CE1AEC
lbl_80CE1A04:
/* 80CE1A04  C0 18 00 6C */	lfs f0, 0x6c(r24)
/* 80CE1A08  D0 0E 08 F4 */	stfs f0, 0x8f4(r14)
/* 80CE1A0C  C0 B8 00 04 */	lfs f5, 4(r24)
/* 80CE1A10  D0 AE 08 F8 */	stfs f5, 0x8f8(r14)
/* 80CE1A14  D0 AE 08 F0 */	stfs f5, 0x8f0(r14)
/* 80CE1A18  80 61 01 30 */	lwz r3, 0x130(r1)
/* 80CE1A1C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CE1A20  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80CE1A24  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80CE1A28  41 82 00 C4 */	beq lbl_80CE1AEC
/* 80CE1A2C  C0 32 04 D0 */	lfs f1, 0x4d0(r18)
/* 80CE1A30  C0 0E 06 18 */	lfs f0, 0x618(r14)
/* 80CE1A34  EC 81 00 28 */	fsubs f4, f1, f0
/* 80CE1A38  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 80CE1A3C  C0 32 04 D4 */	lfs f1, 0x4d4(r18)
/* 80CE1A40  C0 0E 06 1C */	lfs f0, 0x61c(r14)
/* 80CE1A44  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CE1A48  FC 60 00 50 */	fneg f3, f0
/* 80CE1A4C  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 80CE1A50  C0 32 04 D8 */	lfs f1, 0x4d8(r18)
/* 80CE1A54  C0 0E 06 20 */	lfs f0, 0x620(r14)
/* 80CE1A58  EC 41 00 28 */	fsubs f2, f1, f0
/* 80CE1A5C  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 80CE1A60  FC 20 18 18 */	frsp f1, f3
/* 80CE1A64  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 80CE1A68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE1A6C  40 81 00 80 */	ble lbl_80CE1AEC
/* 80CE1A70  EC 24 01 32 */	fmuls f1, f4, f4
/* 80CE1A74  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80CE1A78  EC 21 00 2A */	fadds f1, f1, f0
/* 80CE1A7C  FC 01 28 40 */	fcmpo cr0, f1, f5
/* 80CE1A80  40 81 00 0C */	ble lbl_80CE1A8C
/* 80CE1A84  FC 00 08 34 */	frsqrte f0, f1
/* 80CE1A88  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80CE1A8C:
/* 80CE1A8C  C0 18 00 A4 */	lfs f0, 0xa4(r24)
/* 80CE1A90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE1A94  40 80 00 58 */	bge lbl_80CE1AEC
/* 80CE1A98  2C 11 00 02 */	cmpwi r17, 2
/* 80CE1A9C  41 80 00 1C */	blt lbl_80CE1AB8
/* 80CE1AA0  C0 38 00 64 */	lfs f1, 0x64(r24)
/* 80CE1AA4  4B 58 5E E9 */	bl cM_rndFX__Ff
/* 80CE1AA8  D0 2E 08 F0 */	stfs f1, 0x8f0(r14)
/* 80CE1AAC  C0 38 00 64 */	lfs f1, 0x64(r24)
/* 80CE1AB0  4B 58 5E DD */	bl cM_rndFX__Ff
/* 80CE1AB4  D0 2E 08 F8 */	stfs f1, 0x8f8(r14)
lbl_80CE1AB8:
/* 80CE1AB8  C0 18 00 4C */	lfs f0, 0x4c(r24)
/* 80CE1ABC  D0 0E 08 F4 */	stfs f0, 0x8f4(r14)
/* 80CE1AC0  38 00 00 01 */	li r0, 1
/* 80CE1AC4  98 16 0C 30 */	stb r0, 0xc30(r22)
/* 80CE1AC8  C0 38 00 AC */	lfs f1, 0xac(r24)
/* 80CE1ACC  4B 58 5E C1 */	bl cM_rndFX__Ff
/* 80CE1AD0  C0 18 00 A8 */	lfs f0, 0xa8(r24)
/* 80CE1AD4  EC 00 08 2A */	fadds f0, f0, f1
/* 80CE1AD8  FC 00 00 1E */	fctiwz f0, f0
/* 80CE1ADC  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80CE1AE0  80 61 00 F4 */	lwz r3, 0xf4(r1)
/* 80CE1AE4  38 1B 0A 28 */	addi r0, r27, 0xa28
/* 80CE1AE8  7C 6F 03 2E */	sthx r3, r15, r0
lbl_80CE1AEC:
/* 80CE1AEC  2C 11 00 02 */	cmpwi r17, 2
/* 80CE1AF0  41 80 00 D4 */	blt lbl_80CE1BC4
/* 80CE1AF4  88 16 05 FC */	lbz r0, 0x5fc(r22)
/* 80CE1AF8  2C 00 00 01 */	cmpwi r0, 1
/* 80CE1AFC  40 82 00 C8 */	bne lbl_80CE1BC4
/* 80CE1B00  3A 80 00 00 */	li r20, 0
/* 80CE1B04  39 C0 00 00 */	li r14, 0
/* 80CE1B08  7E 0F EA 14 */	add r16, r15, r29
/* 80CE1B0C  C3 D8 00 04 */	lfs f30, 4(r24)
/* 80CE1B10  C3 F8 00 B0 */	lfs f31, 0xb0(r24)
lbl_80CE1B14:
/* 80CE1B14  C0 30 06 18 */	lfs f1, 0x618(r16)
/* 80CE1B18  7E 6F 72 14 */	add r19, r15, r14
/* 80CE1B1C  C0 13 06 18 */	lfs f0, 0x618(r19)
/* 80CE1B20  EC 21 00 28 */	fsubs f1, f1, f0
/* 80CE1B24  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80CE1B28  C0 50 06 20 */	lfs f2, 0x620(r16)
/* 80CE1B2C  C0 13 06 20 */	lfs f0, 0x620(r19)
/* 80CE1B30  EC 42 00 28 */	fsubs f2, f2, f0
/* 80CE1B34  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 80CE1B38  EC 61 00 72 */	fmuls f3, f1, f1
/* 80CE1B3C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80CE1B40  EC 63 00 2A */	fadds f3, f3, f0
/* 80CE1B44  FC 03 F0 40 */	fcmpo cr0, f3, f30
/* 80CE1B48  40 81 00 0C */	ble lbl_80CE1B54
/* 80CE1B4C  FC 00 18 34 */	frsqrte f0, f3
/* 80CE1B50  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_80CE1B54:
/* 80CE1B54  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 80CE1B58  40 80 00 5C */	bge lbl_80CE1BB4
/* 80CE1B5C  4B 58 5B 19 */	bl cM_atan2s__Fff
/* 80CE1B60  7C 64 1B 78 */	mr r4, r3
/* 80CE1B64  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CE1B68  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CE1B6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE1B70  4B 32 A8 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 80CE1B74  C0 18 00 04 */	lfs f0, 4(r24)
/* 80CE1B78  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80CE1B7C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CE1B80  C0 18 00 B0 */	lfs f0, 0xb0(r24)
/* 80CE1B84  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CE1B88  38 61 00 88 */	addi r3, r1, 0x88
/* 80CE1B8C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80CE1B90  4B 58 F3 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CE1B94  C0 33 06 18 */	lfs f1, 0x618(r19)
/* 80CE1B98  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80CE1B9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE1BA0  D0 10 06 18 */	stfs f0, 0x618(r16)
/* 80CE1BA4  C0 33 06 20 */	lfs f1, 0x620(r19)
/* 80CE1BA8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80CE1BAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE1BB0  D0 10 06 20 */	stfs f0, 0x620(r16)
lbl_80CE1BB4:
/* 80CE1BB4  3A 94 00 01 */	addi r20, r20, 1
/* 80CE1BB8  2C 14 00 02 */	cmpwi r20, 2
/* 80CE1BBC  39 CE 00 0C */	addi r14, r14, 0xc
/* 80CE1BC0  41 80 FF 54 */	blt lbl_80CE1B14
lbl_80CE1BC4:
/* 80CE1BC4  7E AF EA 14 */	add r21, r15, r29
/* 80CE1BC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1BCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1BD0  C0 35 06 18 */	lfs f1, 0x618(r21)
/* 80CE1BD4  C0 55 06 1C */	lfs f2, 0x61c(r21)
/* 80CE1BD8  7E 6F F2 14 */	add r19, r15, r30
/* 80CE1BDC  C0 13 07 50 */	lfs f0, 0x750(r19)
/* 80CE1BE0  EC 42 00 2A */	fadds f2, f2, f0
/* 80CE1BE4  C0 75 06 20 */	lfs f3, 0x620(r21)
/* 80CE1BE8  4B 66 4D 01 */	bl PSMTXTrans
/* 80CE1BEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1BF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1BF4  A8 8F 0D C2 */	lha r4, 0xdc2(r15)
/* 80CE1BF8  4B 32 A7 A5 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CE1BFC  2C 11 00 00 */	cmpwi r17, 0
/* 80CE1C00  41 82 00 14 */	beq lbl_80CE1C14
/* 80CE1C04  2C 11 00 0A */	cmpwi r17, 0xa
/* 80CE1C08  41 80 00 44 */	blt lbl_80CE1C4C
/* 80CE1C0C  2C 11 00 11 */	cmpwi r17, 0x11
/* 80CE1C10  41 81 00 3C */	bgt lbl_80CE1C4C
lbl_80CE1C14:
/* 80CE1C14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1C18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1C1C  A8 8F 0D B8 */	lha r4, 0xdb8(r15)
/* 80CE1C20  4B 32 A8 15 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CE1C24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1C28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1C2C  A8 8F 0D B6 */	lha r4, 0xdb6(r15)
/* 80CE1C30  4B 32 A7 6D */	bl mDoMtx_XrotM__FPA4_fs
/* 80CE1C34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1C38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1C3C  A8 0F 0D B8 */	lha r0, 0xdb8(r15)
/* 80CE1C40  7C 00 00 D0 */	neg r0, r0
/* 80CE1C44  7C 04 07 34 */	extsh r4, r0
/* 80CE1C48  4B 32 A7 ED */	bl mDoMtx_YrotM__FPA4_fs
lbl_80CE1C4C:
/* 80CE1C4C  2C 11 00 00 */	cmpwi r17, 0
/* 80CE1C50  40 82 00 2C */	bne lbl_80CE1C7C
/* 80CE1C54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1C58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1C5C  38 1C 0B 94 */	addi r0, r28, 0xb94
/* 80CE1C60  7C 8F 02 AE */	lhax r4, r15, r0
/* 80CE1C64  4B 32 A7 D1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CE1C68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1C6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1C70  A8 8F 0D B6 */	lha r4, 0xdb6(r15)
/* 80CE1C74  4B 32 A7 29 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CE1C78  48 00 00 28 */	b lbl_80CE1CA0
lbl_80CE1C7C:
/* 80CE1C7C  2C 11 00 01 */	cmpwi r17, 1
/* 80CE1C80  40 82 00 20 */	bne lbl_80CE1CA0
/* 80CE1C84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1C88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1C8C  38 1C 0B 94 */	addi r0, r28, 0xb94
/* 80CE1C90  7C 0F 02 AE */	lhax r0, r15, r0
/* 80CE1C94  7C 00 00 D0 */	neg r0, r0
/* 80CE1C98  7C 04 07 34 */	extsh r4, r0
/* 80CE1C9C  4B 32 A7 99 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80CE1CA0:
/* 80CE1CA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1CA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1CA8  7E 8F DA 14 */	add r20, r15, r27
/* 80CE1CAC  A8 94 0A 2A */	lha r4, 0xa2a(r20)
/* 80CE1CB0  4B 32 A7 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CE1CB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1CB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1CBC  A8 94 0A 28 */	lha r4, 0xa28(r20)
/* 80CE1CC0  4B 32 A6 DD */	bl mDoMtx_XrotM__FPA4_fs
/* 80CE1CC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1CC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1CCC  A8 94 0A 2C */	lha r4, 0xa2c(r20)
/* 80CE1CD0  4B 32 A7 FD */	bl mDoMtx_ZrotM__FPA4_fs
/* 80CE1CD4  2C 11 00 00 */	cmpwi r17, 0
/* 80CE1CD8  40 82 00 24 */	bne lbl_80CE1CFC
/* 80CE1CDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1CE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1CE4  38 1C 0B 94 */	addi r0, r28, 0xb94
/* 80CE1CE8  7C 0F 02 AE */	lhax r0, r15, r0
/* 80CE1CEC  7C 00 00 D0 */	neg r0, r0
/* 80CE1CF0  7C 04 07 34 */	extsh r4, r0
/* 80CE1CF4  4B 32 A7 41 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CE1CF8  48 00 00 20 */	b lbl_80CE1D18
lbl_80CE1CFC:
/* 80CE1CFC  2C 11 00 01 */	cmpwi r17, 1
/* 80CE1D00  40 82 00 18 */	bne lbl_80CE1D18
/* 80CE1D04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1D08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1D0C  38 1C 0B 94 */	addi r0, r28, 0xb94
/* 80CE1D10  7C 8F 02 AE */	lhax r4, r15, r0
/* 80CE1D14  4B 32 A7 21 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80CE1D18:
/* 80CE1D18  2C 11 00 0A */	cmpwi r17, 0xa
/* 80CE1D1C  41 80 00 28 */	blt lbl_80CE1D44
/* 80CE1D20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1D24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1D28  38 1C 0B 60 */	addi r0, r28, 0xb60
/* 80CE1D2C  7C 8F 02 AE */	lhax r4, r15, r0
/* 80CE1D30  4B 32 A7 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CE1D34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE1D38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE1D3C  38 80 40 00 */	li r4, 0x4000
/* 80CE1D40  4B 32 A6 5D */	bl mDoMtx_XrotM__FPA4_fs
lbl_80CE1D44:
/* 80CE1D44  C0 35 07 B8 */	lfs f1, 0x7b8(r21)
/* 80CE1D48  C0 55 07 BC */	lfs f2, 0x7bc(r21)
/* 80CE1D4C  C0 75 07 C0 */	lfs f3, 0x7c0(r21)
/* 80CE1D50  4B 32 B0 E9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CE1D54  2C 11 00 02 */	cmpwi r17, 2
/* 80CE1D58  41 80 06 5C */	blt lbl_80CE23B4
/* 80CE1D5C  2C 11 00 0A */	cmpwi r17, 0xa
/* 80CE1D60  40 80 06 54 */	bge lbl_80CE23B4
/* 80CE1D64  88 16 05 FC */	lbz r0, 0x5fc(r22)
/* 80CE1D68  2C 00 00 02 */	cmpwi r0, 2
/* 80CE1D6C  40 82 06 48 */	bne lbl_80CE23B4
/* 80CE1D70  C0 15 06 18 */	lfs f0, 0x618(r21)
/* 80CE1D74  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80CE1D78  C0 35 06 1C */	lfs f1, 0x61c(r21)
/* 80CE1D7C  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80CE1D80  C0 15 06 20 */	lfs f0, 0x620(r21)
/* 80CE1D84  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80CE1D88  88 16 1A 96 */	lbz r0, 0x1a96(r22)
/* 80CE1D8C  7C 00 07 74 */	extsb r0, r0
/* 80CE1D90  2C 00 00 02 */	cmpwi r0, 2
/* 80CE1D94  40 80 03 18 */	bge lbl_80CE20AC
/* 80CE1D98  C0 18 00 B4 */	lfs f0, 0xb4(r24)
/* 80CE1D9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE1DA0  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80CE1DA4  38 11 FF FE */	addi r0, r17, -2
/* 80CE1DA8  1C 00 01 3C */	mulli r0, r0, 0x13c
/* 80CE1DAC  7E 0F 02 14 */	add r16, r15, r0
/* 80CE1DB0  39 D0 11 DC */	addi r14, r16, 0x11dc
/* 80CE1DB4  7D C3 73 78 */	mr r3, r14
/* 80CE1DB8  C0 38 00 50 */	lfs f1, 0x50(r24)
/* 80CE1DBC  4B 58 D4 45 */	bl SetR__8cM3dGCylFf
/* 80CE1DC0  7D C3 73 78 */	mr r3, r14
/* 80CE1DC4  C0 38 00 B8 */	lfs f1, 0xb8(r24)
/* 80CE1DC8  4B 58 D4 31 */	bl SetH__8cM3dGCylFf
/* 80CE1DCC  A8 0F 10 56 */	lha r0, 0x1056(r15)
/* 80CE1DD0  2C 00 00 00 */	cmpwi r0, 0
/* 80CE1DD4  40 82 02 E4 */	bne lbl_80CE20B8
/* 80CE1DD8  39 D0 10 B8 */	addi r14, r16, 0x10b8
/* 80CE1DDC  7D C3 73 78 */	mr r3, r14
/* 80CE1DE0  4B 3A 26 81 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80CE1DE4  28 03 00 00 */	cmplwi r3, 0
/* 80CE1DE8  41 82 02 D0 */	beq lbl_80CE20B8
/* 80CE1DEC  7D C3 73 78 */	mr r3, r14
/* 80CE1DF0  4B 3A 27 09 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80CE1DF4  90 6F 10 94 */	stw r3, 0x1094(r15)
/* 80CE1DF8  38 6F 0D 1C */	addi r3, r15, 0xd1c
/* 80CE1DFC  80 8F 10 94 */	lwz r4, 0x1094(r15)
/* 80CE1E00  38 A0 00 29 */	li r5, 0x29
/* 80CE1E04  38 C0 00 00 */	li r6, 0
/* 80CE1E08  4B 3A 57 0D */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80CE1E0C  38 6F 10 94 */	addi r3, r15, 0x1094
/* 80CE1E10  4B 3A 5C 49 */	bl at_power_check__FP11dCcU_AtInfo
/* 80CE1E14  80 6F 10 94 */	lwz r3, 0x1094(r15)
/* 80CE1E18  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80CE1E1C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80CE1E20  41 82 00 28 */	beq lbl_80CE1E48
/* 80CE1E24  38 80 00 00 */	li r4, 0
/* 80CE1E28  38 60 00 02 */	li r3, 2
/* 80CE1E2C  38 00 00 08 */	li r0, 8
/* 80CE1E30  7C 09 03 A6 */	mtctr r0
lbl_80CE1E34:
/* 80CE1E34  38 04 1A 98 */	addi r0, r4, 0x1a98
/* 80CE1E38  7C 6F 01 AE */	stbx r3, r15, r0
/* 80CE1E3C  38 84 00 01 */	addi r4, r4, 1
/* 80CE1E40  42 00 FF F4 */	bdnz lbl_80CE1E34
/* 80CE1E44  48 00 00 28 */	b lbl_80CE1E6C
lbl_80CE1E48:
/* 80CE1E48  A0 0F 10 B0 */	lhz r0, 0x10b0(r15)
/* 80CE1E4C  28 00 00 14 */	cmplwi r0, 0x14
/* 80CE1E50  41 80 00 10 */	blt lbl_80CE1E60
/* 80CE1E54  38 00 00 02 */	li r0, 2
/* 80CE1E58  98 16 1A 96 */	stb r0, 0x1a96(r22)
/* 80CE1E5C  48 00 00 10 */	b lbl_80CE1E6C
lbl_80CE1E60:
/* 80CE1E60  38 00 00 02 */	li r0, 2
/* 80CE1E64  B0 0F 10 56 */	sth r0, 0x1056(r15)
/* 80CE1E68  98 16 1A 96 */	stb r0, 0x1a96(r22)
lbl_80CE1E6C:
/* 80CE1E6C  C0 15 06 18 */	lfs f0, 0x618(r21)
/* 80CE1E70  D0 15 1A A8 */	stfs f0, 0x1aa8(r21)
/* 80CE1E74  C0 15 06 1C */	lfs f0, 0x61c(r21)
/* 80CE1E78  D0 15 1A AC */	stfs f0, 0x1aac(r21)
/* 80CE1E7C  C0 15 06 20 */	lfs f0, 0x620(r21)
/* 80CE1E80  D0 15 1A B0 */	stfs f0, 0x1ab0(r21)
/* 80CE1E84  88 16 1A 96 */	lbz r0, 0x1a96(r22)
/* 80CE1E88  7C 00 07 74 */	extsb r0, r0
/* 80CE1E8C  2C 00 00 02 */	cmpwi r0, 2
/* 80CE1E90  41 80 00 20 */	blt lbl_80CE1EB0
/* 80CE1E94  38 00 00 02 */	li r0, 2
/* 80CE1E98  98 16 1A 96 */	stb r0, 0x1a96(r22)
/* 80CE1E9C  C0 35 1A AC */	lfs f1, 0x1aac(r21)
/* 80CE1EA0  C0 18 00 BC */	lfs f0, 0xbc(r24)
/* 80CE1EA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE1EA8  D0 15 1A AC */	stfs f0, 0x1aac(r21)
/* 80CE1EAC  48 00 00 14 */	b lbl_80CE1EC0
lbl_80CE1EB0:
/* 80CE1EB0  C0 35 1A AC */	lfs f1, 0x1aac(r21)
/* 80CE1EB4  C0 18 00 C0 */	lfs f0, 0xc0(r24)
/* 80CE1EB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE1EBC  D0 15 1A AC */	stfs f0, 0x1aac(r21)
lbl_80CE1EC0:
/* 80CE1EC0  88 16 1A 96 */	lbz r0, 0x1a96(r22)
/* 80CE1EC4  2C 00 00 02 */	cmpwi r0, 2
/* 80CE1EC8  40 82 01 04 */	bne lbl_80CE1FCC
/* 80CE1ECC  3A 00 00 00 */	li r16, 0
/* 80CE1ED0  3A E0 00 00 */	li r23, 0
/* 80CE1ED4  C3 F8 00 68 */	lfs f31, 0x68(r24)
lbl_80CE1ED8:
/* 80CE1ED8  C0 38 00 2C */	lfs f1, 0x2c(r24)
/* 80CE1EDC  4B 58 5A 79 */	bl cM_rndF__Ff
/* 80CE1EE0  EC 1F 08 2A */	fadds f0, f31, f1
/* 80CE1EE4  FC 00 00 1E */	fctiwz f0, f0
/* 80CE1EE8  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80CE1EEC  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80CE1EF0  7D CF BA 14 */	add r14, r15, r23
/* 80CE1EF4  B0 0E 1B 40 */	sth r0, 0x1b40(r14)
/* 80CE1EF8  C0 38 00 2C */	lfs f1, 0x2c(r24)
/* 80CE1EFC  4B 58 5A 59 */	bl cM_rndF__Ff
/* 80CE1F00  EC 1F 08 2A */	fadds f0, f31, f1
/* 80CE1F04  FC 00 00 1E */	fctiwz f0, f0
/* 80CE1F08  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80CE1F0C  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80CE1F10  B0 0E 1B 50 */	sth r0, 0x1b50(r14)
/* 80CE1F14  3A 10 00 01 */	addi r16, r16, 1
/* 80CE1F18  2C 10 00 08 */	cmpwi r16, 8
/* 80CE1F1C  3A F7 00 02 */	addi r23, r23, 2
/* 80CE1F20  41 80 FF B8 */	blt lbl_80CE1ED8
/* 80CE1F24  C0 38 00 C4 */	lfs f1, 0xc4(r24)
/* 80CE1F28  4B 58 5A 65 */	bl cM_rndFX__Ff
/* 80CE1F2C  FC 00 08 1E */	fctiwz f0, f1
/* 80CE1F30  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 80CE1F34  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80CE1F38  B0 14 0A 28 */	sth r0, 0xa28(r20)
/* 80CE1F3C  C0 38 00 C4 */	lfs f1, 0xc4(r24)
/* 80CE1F40  4B 58 5A 4D */	bl cM_rndFX__Ff
/* 80CE1F44  FC 00 08 1E */	fctiwz f0, f1
/* 80CE1F48  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80CE1F4C  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80CE1F50  B0 14 0A 2C */	sth r0, 0xa2c(r20)
/* 80CE1F54  C0 38 00 C4 */	lfs f1, 0xc4(r24)
/* 80CE1F58  4B 58 5A 35 */	bl cM_rndFX__Ff
/* 80CE1F5C  FC 00 08 1E */	fctiwz f0, f1
/* 80CE1F60  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 80CE1F64  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 80CE1F68  7D CF E2 14 */	add r14, r15, r28
/* 80CE1F6C  B0 0E 1B 1C */	sth r0, 0x1b1c(r14)
/* 80CE1F70  C0 38 00 C4 */	lfs f1, 0xc4(r24)
/* 80CE1F74  4B 58 5A 19 */	bl cM_rndFX__Ff
/* 80CE1F78  FC 00 08 1E */	fctiwz f0, f1
/* 80CE1F7C  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 80CE1F80  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80CE1F84  B0 0E 1B 2C */	sth r0, 0x1b2c(r14)
/* 80CE1F88  C0 38 00 4C */	lfs f1, 0x4c(r24)
/* 80CE1F8C  4B 58 59 C9 */	bl cM_rndF__Ff
/* 80CE1F90  C0 18 00 64 */	lfs f0, 0x64(r24)
/* 80CE1F94  EC 00 08 2A */	fadds f0, f0, f1
/* 80CE1F98  FC 00 00 1E */	fctiwz f0, f0
/* 80CE1F9C  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80CE1FA0  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 80CE1FA4  B0 0E 1B 3C */	sth r0, 0x1b3c(r14)
/* 80CE1FA8  C0 38 00 4C */	lfs f1, 0x4c(r24)
/* 80CE1FAC  4B 58 59 A9 */	bl cM_rndF__Ff
/* 80CE1FB0  C0 18 00 64 */	lfs f0, 0x64(r24)
/* 80CE1FB4  EC 00 08 2A */	fadds f0, f0, f1
/* 80CE1FB8  FC 00 00 1E */	fctiwz f0, f0
/* 80CE1FBC  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80CE1FC0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80CE1FC4  B0 0E 1B 4C */	sth r0, 0x1b4c(r14)
/* 80CE1FC8  48 00 00 68 */	b lbl_80CE2030
lbl_80CE1FCC:
/* 80CE1FCC  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 80CE1FD0  4B 58 59 BD */	bl cM_rndFX__Ff
/* 80CE1FD4  FC 00 08 1E */	fctiwz f0, f1
/* 80CE1FD8  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80CE1FDC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80CE1FE0  B0 14 0A 28 */	sth r0, 0xa28(r20)
/* 80CE1FE4  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 80CE1FE8  4B 58 59 A5 */	bl cM_rndFX__Ff
/* 80CE1FEC  FC 00 08 1E */	fctiwz f0, f1
/* 80CE1FF0  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80CE1FF4  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 80CE1FF8  B0 14 0A 2C */	sth r0, 0xa2c(r20)
/* 80CE1FFC  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 80CE2000  4B 58 59 8D */	bl cM_rndFX__Ff
/* 80CE2004  FC 00 08 1E */	fctiwz f0, f1
/* 80CE2008  D8 01 01 00 */	stfd f0, 0x100(r1)
/* 80CE200C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80CE2010  7D CF E2 14 */	add r14, r15, r28
/* 80CE2014  B0 0E 1B 1C */	sth r0, 0x1b1c(r14)
/* 80CE2018  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 80CE201C  4B 58 59 71 */	bl cM_rndFX__Ff
/* 80CE2020  FC 00 08 1E */	fctiwz f0, f1
/* 80CE2024  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 80CE2028  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 80CE202C  B0 0E 1B 2C */	sth r0, 0x1b2c(r14)
lbl_80CE2030:
/* 80CE2030  C0 18 00 C8 */	lfs f0, 0xc8(r24)
/* 80CE2034  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80CE2038  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80CE203C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80CE2040  3A 00 00 00 */	li r16, 0
/* 80CE2044  3B 40 00 00 */	li r26, 0
/* 80CE2048  3A F5 06 18 */	addi r23, r21, 0x618
/* 80CE204C  3C 60 80 CE */	lis r3, e_id@ha /* 0x80CE3B70@ha */
/* 80CE2050  39 C3 3B 70 */	addi r14, r3, e_id@l /* 0x80CE3B70@l */
lbl_80CE2054:
/* 80CE2054  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80CE2058  38 80 00 00 */	li r4, 0
/* 80CE205C  90 81 00 08 */	stw r4, 8(r1)
/* 80CE2060  38 00 FF FF */	li r0, -1
/* 80CE2064  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE2068  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CE206C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CE2070  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CE2074  38 80 00 00 */	li r4, 0
/* 80CE2078  7C AE D2 2E */	lhzx r5, r14, r26
/* 80CE207C  7E E6 BB 78 */	mr r6, r23
/* 80CE2080  38 E0 00 00 */	li r7, 0
/* 80CE2084  39 0F 04 E4 */	addi r8, r15, 0x4e4
/* 80CE2088  39 21 00 64 */	addi r9, r1, 0x64
/* 80CE208C  39 40 00 FF */	li r10, 0xff
/* 80CE2090  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80CE2094  4B 36 A9 FD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CE2098  3A 10 00 01 */	addi r16, r16, 1
/* 80CE209C  2C 10 00 03 */	cmpwi r16, 3
/* 80CE20A0  3B 5A 00 02 */	addi r26, r26, 2
/* 80CE20A4  41 80 FF B0 */	blt lbl_80CE2054
/* 80CE20A8  48 00 00 10 */	b lbl_80CE20B8
lbl_80CE20AC:
/* 80CE20AC  C0 18 00 CC */	lfs f0, 0xcc(r24)
/* 80CE20B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CE20B4  D0 01 00 74 */	stfs f0, 0x74(r1)
lbl_80CE20B8:
/* 80CE20B8  88 76 1A 96 */	lbz r3, 0x1a96(r22)
/* 80CE20BC  7C 60 07 75 */	extsb. r0, r3
/* 80CE20C0  41 82 02 D0 */	beq lbl_80CE2390
/* 80CE20C4  7C 60 07 74 */	extsb r0, r3
/* 80CE20C8  2C 00 00 02 */	cmpwi r0, 2
/* 80CE20CC  40 82 02 9C */	bne lbl_80CE2368
/* 80CE20D0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80CE20D4  38 95 06 18 */	addi r4, r21, 0x618
/* 80CE20D8  38 B2 04 D0 */	addi r5, r18, 0x4d0
/* 80CE20DC  4B 58 4A 59 */	bl __mi__4cXyzCFRC3Vec
/* 80CE20E0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CE20E4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80CE20E8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CE20EC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CE20F0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CE20F4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CE20F8  C0 18 00 04 */	lfs f0, 4(r24)
/* 80CE20FC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CE2100  38 61 00 88 */	addi r3, r1, 0x88
/* 80CE2104  4B 66 50 35 */	bl PSVECSquareMag
/* 80CE2108  C0 18 00 04 */	lfs f0, 4(r24)
/* 80CE210C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE2110  40 81 00 58 */	ble lbl_80CE2168
/* 80CE2114  FC 00 08 34 */	frsqrte f0, f1
/* 80CE2118  C8 98 00 D0 */	lfd f4, 0xd0(r24)
/* 80CE211C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE2120  C8 78 00 D8 */	lfd f3, 0xd8(r24)
/* 80CE2124  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE2128  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE212C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE2130  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE2134  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE2138  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE213C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE2140  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE2144  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE2148  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE214C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE2150  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE2154  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE2158  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE215C  FF C1 00 32 */	fmul f30, f1, f0
/* 80CE2160  FF C0 F0 18 */	frsp f30, f30
/* 80CE2164  48 00 00 90 */	b lbl_80CE21F4
lbl_80CE2168:
/* 80CE2168  C8 18 00 E0 */	lfd f0, 0xe0(r24)
/* 80CE216C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE2170  40 80 00 10 */	bge lbl_80CE2180
/* 80CE2174  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CE2178  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CE217C  48 00 00 78 */	b lbl_80CE21F4
lbl_80CE2180:
/* 80CE2180  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CE2184  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80CE2188  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CE218C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CE2190  7C 03 00 00 */	cmpw r3, r0
/* 80CE2194  41 82 00 14 */	beq lbl_80CE21A8
/* 80CE2198  40 80 00 40 */	bge lbl_80CE21D8
/* 80CE219C  2C 03 00 00 */	cmpwi r3, 0
/* 80CE21A0  41 82 00 20 */	beq lbl_80CE21C0
/* 80CE21A4  48 00 00 34 */	b lbl_80CE21D8
lbl_80CE21A8:
/* 80CE21A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CE21AC  41 82 00 0C */	beq lbl_80CE21B8
/* 80CE21B0  38 00 00 01 */	li r0, 1
/* 80CE21B4  48 00 00 28 */	b lbl_80CE21DC
lbl_80CE21B8:
/* 80CE21B8  38 00 00 02 */	li r0, 2
/* 80CE21BC  48 00 00 20 */	b lbl_80CE21DC
lbl_80CE21C0:
/* 80CE21C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CE21C4  41 82 00 0C */	beq lbl_80CE21D0
/* 80CE21C8  38 00 00 05 */	li r0, 5
/* 80CE21CC  48 00 00 10 */	b lbl_80CE21DC
lbl_80CE21D0:
/* 80CE21D0  38 00 00 03 */	li r0, 3
/* 80CE21D4  48 00 00 08 */	b lbl_80CE21DC
lbl_80CE21D8:
/* 80CE21D8  38 00 00 04 */	li r0, 4
lbl_80CE21DC:
/* 80CE21DC  2C 00 00 01 */	cmpwi r0, 1
/* 80CE21E0  40 82 00 10 */	bne lbl_80CE21F0
/* 80CE21E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CE21E8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CE21EC  48 00 00 08 */	b lbl_80CE21F4
lbl_80CE21F0:
/* 80CE21F0  FF C0 08 90 */	fmr f30, f1
lbl_80CE21F4:
/* 80CE21F4  C0 18 00 E8 */	lfs f0, 0xe8(r24)
/* 80CE21F8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80CE21FC  40 80 00 94 */	bge lbl_80CE2290
/* 80CE2200  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80CE2204  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80CE2208  4B 58 54 6D */	bl cM_atan2s__Fff
/* 80CE220C  7C 64 1B 78 */	mr r4, r3
/* 80CE2210  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CE2214  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CE2218  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE221C  4B 32 A1 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CE2220  C0 18 00 04 */	lfs f0, 4(r24)
/* 80CE2224  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80CE2228  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CE222C  C0 38 00 EC */	lfs f1, 0xec(r24)
/* 80CE2230  C0 18 00 E8 */	lfs f0, 0xe8(r24)
/* 80CE2234  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80CE2238  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CE223C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CE2240  38 61 00 88 */	addi r3, r1, 0x88
/* 80CE2244  38 81 00 7C */	addi r4, r1, 0x7c
/* 80CE2248  4B 58 EC A5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CE224C  38 74 0A 28 */	addi r3, r20, 0xa28
/* 80CE2250  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80CE2254  FC 00 00 1E */	fctiwz f0, f0
/* 80CE2258  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80CE225C  80 81 01 14 */	lwz r4, 0x114(r1)
/* 80CE2260  38 A0 00 02 */	li r5, 2
/* 80CE2264  38 C0 04 00 */	li r6, 0x400
/* 80CE2268  4B 58 E3 A1 */	bl cLib_addCalcAngleS2__FPssss
/* 80CE226C  38 74 0A 2C */	addi r3, r20, 0xa2c
/* 80CE2270  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80CE2274  FC 00 00 50 */	fneg f0, f0
/* 80CE2278  FC 00 00 1E */	fctiwz f0, f0
/* 80CE227C  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80CE2280  80 81 01 0C */	lwz r4, 0x10c(r1)
/* 80CE2284  38 A0 00 02 */	li r5, 2
/* 80CE2288  38 C0 04 00 */	li r6, 0x400
/* 80CE228C  4B 58 E3 7D */	bl cLib_addCalcAngleS2__FPssss
lbl_80CE2290:
/* 80CE2290  38 9C 1B 3C */	addi r4, r28, 0x1b3c
/* 80CE2294  7C 6F 22 AE */	lhax r3, r15, r4
/* 80CE2298  2C 03 00 00 */	cmpwi r3, 0
/* 80CE229C  41 82 00 0C */	beq lbl_80CE22A8
/* 80CE22A0  38 03 FF FF */	addi r0, r3, -1
/* 80CE22A4  7C 0F 23 2E */	sthx r0, r15, r4
lbl_80CE22A8:
/* 80CE22A8  A8 CF 0D AC */	lha r6, 0xdac(r15)
/* 80CE22AC  1C 06 13 00 */	mulli r0, r6, 0x1300
/* 80CE22B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE22B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CE22B8  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CE22BC  7C 45 04 2E */	lfsx f2, r5, r0
/* 80CE22C0  7C 0F 22 AE */	lhax r0, r15, r4
/* 80CE22C4  1C 00 02 BC */	mulli r0, r0, 0x2bc
/* 80CE22C8  C8 38 01 08 */	lfd f1, 0x108(r24)
/* 80CE22CC  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80CE22D0  90 81 01 14 */	stw r4, 0x114(r1)
/* 80CE22D4  3C 60 43 30 */	lis r3, 0x4330
/* 80CE22D8  90 61 01 10 */	stw r3, 0x110(r1)
/* 80CE22DC  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 80CE22E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CE22E4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CE22E8  FC 00 00 1E */	fctiwz f0, f0
/* 80CE22EC  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80CE22F0  81 C1 01 0C */	lwz r14, 0x10c(r1)
/* 80CE22F4  1C 06 18 00 */	mulli r0, r6, 0x1800
/* 80CE22F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE22FC  7C 45 04 2E */	lfsx f2, r5, r0
/* 80CE2300  90 81 01 04 */	stw r4, 0x104(r1)
/* 80CE2304  90 61 01 00 */	stw r3, 0x100(r1)
/* 80CE2308  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 80CE230C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CE2310  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CE2314  FC 00 00 1E */	fctiwz f0, f0
/* 80CE2318  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 80CE231C  80 81 00 FC */	lwz r4, 0xfc(r1)
/* 80CE2320  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE2324  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE2328  4B 32 A1 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CE232C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE2330  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE2334  7D C4 73 78 */	mr r4, r14
/* 80CE2338  4B 32 A0 65 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CE233C  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80CE2340  C0 58 00 F0 */	lfs f2, 0xf0(r24)
/* 80CE2344  FC 60 08 90 */	fmr f3, f1
/* 80CE2348  4B 32 AA F1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CE234C  C0 38 00 04 */	lfs f1, 4(r24)
/* 80CE2350  C0 58 00 F4 */	lfs f2, 0xf4(r24)
/* 80CE2354  FC 60 08 90 */	fmr f3, f1
/* 80CE2358  4B 32 AA 45 */	bl transM__14mDoMtx_stack_cFfff
/* 80CE235C  C0 18 00 F8 */	lfs f0, 0xf8(r24)
/* 80CE2360  D0 13 07 50 */	stfs f0, 0x750(r19)
/* 80CE2364  48 00 00 2C */	b lbl_80CE2390
lbl_80CE2368:
/* 80CE2368  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80CE236C  C0 58 00 9C */	lfs f2, 0x9c(r24)
/* 80CE2370  FC 60 08 90 */	fmr f3, f1
/* 80CE2374  4B 32 AA C5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CE2378  C0 38 00 04 */	lfs f1, 4(r24)
/* 80CE237C  C0 58 00 F4 */	lfs f2, 0xf4(r24)
/* 80CE2380  FC 60 08 90 */	fmr f3, f1
/* 80CE2384  4B 32 AA 19 */	bl transM__14mDoMtx_stack_cFfff
/* 80CE2388  C0 18 00 FC */	lfs f0, 0xfc(r24)
/* 80CE238C  D0 13 07 50 */	stfs f0, 0x750(r19)
lbl_80CE2390:
/* 80CE2390  38 11 FF FE */	addi r0, r17, -2
/* 80CE2394  1C 00 01 3C */	mulli r0, r0, 0x13c
/* 80CE2398  7D CF 02 14 */	add r14, r15, r0
/* 80CE239C  38 6E 11 DC */	addi r3, r14, 0x11dc
/* 80CE23A0  38 81 00 70 */	addi r4, r1, 0x70
/* 80CE23A4  4B 58 CE 39 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CE23A8  80 61 01 28 */	lwz r3, 0x128(r1)
/* 80CE23AC  38 8E 10 B8 */	addi r4, r14, 0x10b8
/* 80CE23B0  4B 58 27 F9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80CE23B4:
/* 80CE23B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE23B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE23BC  80 93 05 94 */	lwz r4, 0x594(r19)
/* 80CE23C0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE23C4  4B 66 40 ED */	bl PSMTXCopy
/* 80CE23C8  2C 11 00 01 */	cmpwi r17, 1
/* 80CE23CC  41 81 00 6C */	bgt lbl_80CE2438
/* 80CE23D0  88 0F 04 E2 */	lbz r0, 0x4e2(r15)
/* 80CE23D4  2C 00 00 02 */	cmpwi r0, 2
/* 80CE23D8  40 82 00 60 */	bne lbl_80CE2438
/* 80CE23DC  80 13 10 4C */	lwz r0, 0x104c(r19)
/* 80CE23E0  28 00 00 00 */	cmplwi r0, 0
/* 80CE23E4  41 82 00 54 */	beq lbl_80CE2438
/* 80CE23E8  88 16 0C 30 */	lbz r0, 0xc30(r22)
/* 80CE23EC  7C 00 07 75 */	extsb. r0, r0
/* 80CE23F0  40 82 00 0C */	bne lbl_80CE23FC
/* 80CE23F4  2C 11 00 01 */	cmpwi r17, 1
/* 80CE23F8  40 82 00 40 */	bne lbl_80CE2438
lbl_80CE23FC:
/* 80CE23FC  C0 38 00 04 */	lfs f1, 4(r24)
/* 80CE2400  C0 58 01 00 */	lfs f2, 0x100(r24)
/* 80CE2404  FC 60 08 90 */	fmr f3, f1
/* 80CE2408  4B 32 A9 95 */	bl transM__14mDoMtx_stack_cFfff
/* 80CE240C  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80CE2410  C0 58 00 3C */	lfs f2, 0x3c(r24)
/* 80CE2414  FC 60 08 90 */	fmr f3, f1
/* 80CE2418  4B 32 AA 21 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CE241C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE2420  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE2424  38 9F 0F EC */	addi r4, r31, 0xfec
/* 80CE2428  7C 8F 22 14 */	add r4, r15, r4
/* 80CE242C  4B 66 40 85 */	bl PSMTXCopy
/* 80CE2430  80 73 10 4C */	lwz r3, 0x104c(r19)
/* 80CE2434  4B 39 95 8D */	bl Move__4dBgWFv
lbl_80CE2438:
/* 80CE2438  3A 31 00 01 */	addi r17, r17, 1
/* 80CE243C  2C 11 00 1A */	cmpwi r17, 0x1a
/* 80CE2440  3B FF 00 30 */	addi r31, r31, 0x30
/* 80CE2444  3B DE 00 04 */	addi r30, r30, 4
/* 80CE2448  3B BD 00 0C */	addi r29, r29, 0xc
/* 80CE244C  3B 9C 00 02 */	addi r28, r28, 2
/* 80CE2450  3B 7B 00 06 */	addi r27, r27, 6
/* 80CE2454  41 80 F1 60 */	blt lbl_80CE15B4
/* 80CE2458  3A 60 00 00 */	li r19, 0
/* 80CE245C  3A 80 00 00 */	li r20, 0
/* 80CE2460  3A A0 00 00 */	li r21, 0
/* 80CE2464  3A C0 00 00 */	li r22, 0
lbl_80CE2468:
/* 80CE2468  3A 33 1A 98 */	addi r17, r19, 0x1a98
/* 80CE246C  7C 6F 88 AE */	lbzx r3, r15, r17
/* 80CE2470  7C 60 07 75 */	extsb. r0, r3
/* 80CE2474  41 82 03 40 */	beq lbl_80CE27B4
/* 80CE2478  7C 60 07 74 */	extsb r0, r3
/* 80CE247C  2C 00 00 02 */	cmpwi r0, 2
/* 80CE2480  40 82 01 D4 */	bne lbl_80CE2654
/* 80CE2484  38 61 00 40 */	addi r3, r1, 0x40
/* 80CE2488  38 13 00 02 */	addi r0, r19, 2
/* 80CE248C  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80CE2490  38 84 06 18 */	addi r4, r4, 0x618
/* 80CE2494  7C 8F 22 14 */	add r4, r15, r4
/* 80CE2498  38 B2 04 D0 */	addi r5, r18, 0x4d0
/* 80CE249C  4B 58 46 99 */	bl __mi__4cXyzCFRC3Vec
/* 80CE24A0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80CE24A4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80CE24A8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CE24AC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CE24B0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80CE24B4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CE24B8  C0 18 00 04 */	lfs f0, 4(r24)
/* 80CE24BC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CE24C0  38 61 00 88 */	addi r3, r1, 0x88
/* 80CE24C4  4B 66 4C 75 */	bl PSVECSquareMag
/* 80CE24C8  C0 18 00 04 */	lfs f0, 4(r24)
/* 80CE24CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE24D0  40 81 00 58 */	ble lbl_80CE2528
/* 80CE24D4  FC 00 08 34 */	frsqrte f0, f1
/* 80CE24D8  C8 98 00 D0 */	lfd f4, 0xd0(r24)
/* 80CE24DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE24E0  C8 78 00 D8 */	lfd f3, 0xd8(r24)
/* 80CE24E4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE24E8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE24EC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE24F0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE24F4  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE24F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE24FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE2500  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE2504  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE2508  FC 44 00 32 */	fmul f2, f4, f0
/* 80CE250C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CE2510  FC 01 00 32 */	fmul f0, f1, f0
/* 80CE2514  FC 03 00 28 */	fsub f0, f3, f0
/* 80CE2518  FC 02 00 32 */	fmul f0, f2, f0
/* 80CE251C  FF C1 00 32 */	fmul f30, f1, f0
/* 80CE2520  FF C0 F0 18 */	frsp f30, f30
/* 80CE2524  48 00 00 90 */	b lbl_80CE25B4
lbl_80CE2528:
/* 80CE2528  C8 18 00 E0 */	lfd f0, 0xe0(r24)
/* 80CE252C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CE2530  40 80 00 10 */	bge lbl_80CE2540
/* 80CE2534  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CE2538  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CE253C  48 00 00 78 */	b lbl_80CE25B4
lbl_80CE2540:
/* 80CE2540  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CE2544  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80CE2548  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CE254C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CE2550  7C 03 00 00 */	cmpw r3, r0
/* 80CE2554  41 82 00 14 */	beq lbl_80CE2568
/* 80CE2558  40 80 00 40 */	bge lbl_80CE2598
/* 80CE255C  2C 03 00 00 */	cmpwi r3, 0
/* 80CE2560  41 82 00 20 */	beq lbl_80CE2580
/* 80CE2564  48 00 00 34 */	b lbl_80CE2598
lbl_80CE2568:
/* 80CE2568  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CE256C  41 82 00 0C */	beq lbl_80CE2578
/* 80CE2570  38 00 00 01 */	li r0, 1
/* 80CE2574  48 00 00 28 */	b lbl_80CE259C
lbl_80CE2578:
/* 80CE2578  38 00 00 02 */	li r0, 2
/* 80CE257C  48 00 00 20 */	b lbl_80CE259C
lbl_80CE2580:
/* 80CE2580  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CE2584  41 82 00 0C */	beq lbl_80CE2590
/* 80CE2588  38 00 00 05 */	li r0, 5
/* 80CE258C  48 00 00 10 */	b lbl_80CE259C
lbl_80CE2590:
/* 80CE2590  38 00 00 03 */	li r0, 3
/* 80CE2594  48 00 00 08 */	b lbl_80CE259C
lbl_80CE2598:
/* 80CE2598  38 00 00 04 */	li r0, 4
lbl_80CE259C:
/* 80CE259C  2C 00 00 01 */	cmpwi r0, 1
/* 80CE25A0  40 82 00 10 */	bne lbl_80CE25B0
/* 80CE25A4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CE25A8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CE25AC  48 00 00 08 */	b lbl_80CE25B4
lbl_80CE25B0:
/* 80CE25B0  FF C0 08 90 */	fmr f30, f1
lbl_80CE25B4:
/* 80CE25B4  C0 18 00 E8 */	lfs f0, 0xe8(r24)
/* 80CE25B8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80CE25BC  40 80 00 98 */	bge lbl_80CE2654
/* 80CE25C0  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80CE25C4  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80CE25C8  4B 58 50 AD */	bl cM_atan2s__Fff
/* 80CE25CC  7C 64 1B 78 */	mr r4, r3
/* 80CE25D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80CE25D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80CE25D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE25DC  4B 32 9E 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CE25E0  C0 18 00 04 */	lfs f0, 4(r24)
/* 80CE25E4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80CE25E8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CE25EC  C0 38 00 EC */	lfs f1, 0xec(r24)
/* 80CE25F0  C0 18 00 E8 */	lfs f0, 0xe8(r24)
/* 80CE25F4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80CE25F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CE25FC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CE2600  38 61 00 88 */	addi r3, r1, 0x88
/* 80CE2604  38 81 00 7C */	addi r4, r1, 0x7c
/* 80CE2608  4B 58 E8 E5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80CE260C  7D CF B2 14 */	add r14, r15, r22
/* 80CE2610  38 6E 1B 20 */	addi r3, r14, 0x1b20
/* 80CE2614  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80CE2618  FC 00 00 1E */	fctiwz f0, f0
/* 80CE261C  D8 01 01 10 */	stfd f0, 0x110(r1)
/* 80CE2620  80 81 01 14 */	lwz r4, 0x114(r1)
/* 80CE2624  38 A0 00 02 */	li r5, 2
/* 80CE2628  38 C0 04 00 */	li r6, 0x400
/* 80CE262C  4B 58 DF DD */	bl cLib_addCalcAngleS2__FPssss
/* 80CE2630  38 6E 1B 30 */	addi r3, r14, 0x1b30
/* 80CE2634  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80CE2638  FC 00 00 50 */	fneg f0, f0
/* 80CE263C  FC 00 00 1E */	fctiwz f0, f0
/* 80CE2640  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80CE2644  80 81 01 0C */	lwz r4, 0x10c(r1)
/* 80CE2648  38 A0 00 02 */	li r5, 2
/* 80CE264C  38 C0 04 00 */	li r6, 0x400
/* 80CE2650  4B 58 DF B9 */	bl cLib_addCalcAngleS2__FPssss
lbl_80CE2654:
/* 80CE2654  7D CF AA 14 */	add r14, r15, r21
/* 80CE2658  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE265C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE2660  C0 2E 1A C0 */	lfs f1, 0x1ac0(r14)
/* 80CE2664  C0 4E 1A C4 */	lfs f2, 0x1ac4(r14)
/* 80CE2668  C0 6E 1A C8 */	lfs f3, 0x1ac8(r14)
/* 80CE266C  4B 66 42 7D */	bl PSMTXTrans
/* 80CE2670  7E 0F B2 14 */	add r16, r15, r22
/* 80CE2674  A8 70 1B 50 */	lha r3, 0x1b50(r16)
/* 80CE2678  2C 03 00 00 */	cmpwi r3, 0
/* 80CE267C  41 82 00 0C */	beq lbl_80CE2688
/* 80CE2680  38 03 FF FF */	addi r0, r3, -1
/* 80CE2684  B0 10 1B 50 */	sth r0, 0x1b50(r16)
lbl_80CE2688:
/* 80CE2688  A8 CF 0D AC */	lha r6, 0xdac(r15)
/* 80CE268C  1C 06 15 00 */	mulli r0, r6, 0x1500
/* 80CE2690  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE2694  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CE2698  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CE269C  7C 45 04 2E */	lfsx f2, r5, r0
/* 80CE26A0  A8 10 1B 50 */	lha r0, 0x1b50(r16)
/* 80CE26A4  1C 00 02 BC */	mulli r0, r0, 0x2bc
/* 80CE26A8  C8 38 01 08 */	lfd f1, 0x108(r24)
/* 80CE26AC  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80CE26B0  90 81 01 14 */	stw r4, 0x114(r1)
/* 80CE26B4  3C 60 43 30 */	lis r3, 0x4330
/* 80CE26B8  90 61 01 10 */	stw r3, 0x110(r1)
/* 80CE26BC  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 80CE26C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CE26C4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CE26C8  FC 00 00 1E */	fctiwz f0, f0
/* 80CE26CC  D8 01 01 08 */	stfd f0, 0x108(r1)
/* 80CE26D0  80 E1 01 0C */	lwz r7, 0x10c(r1)
/* 80CE26D4  1C 06 12 00 */	mulli r0, r6, 0x1200
/* 80CE26D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CE26DC  7C 45 04 2E */	lfsx f2, r5, r0
/* 80CE26E0  90 81 01 04 */	stw r4, 0x104(r1)
/* 80CE26E4  90 61 01 00 */	stw r3, 0x100(r1)
/* 80CE26E8  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 80CE26EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CE26F0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CE26F4  FC 00 00 1E */	fctiwz f0, f0
/* 80CE26F8  D8 01 00 F8 */	stfd f0, 0xf8(r1)
/* 80CE26FC  82 E1 00 FC */	lwz r23, 0xfc(r1)
/* 80CE2700  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE2704  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE2708  A8 10 1B 20 */	lha r0, 0x1b20(r16)
/* 80CE270C  7C 00 3A 14 */	add r0, r0, r7
/* 80CE2710  7C 04 07 34 */	extsh r4, r0
/* 80CE2714  4B 32 9C 89 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CE2718  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE271C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE2720  A8 10 1B 30 */	lha r0, 0x1b30(r16)
/* 80CE2724  3C 97 00 01 */	addis r4, r23, 1
/* 80CE2728  38 84 80 00 */	addi r4, r4, -32768
/* 80CE272C  7C 00 22 14 */	add r0, r0, r4
/* 80CE2730  7C 04 07 34 */	extsh r4, r0
/* 80CE2734  4B 32 9D 99 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80CE2738  C0 2E 07 D0 */	lfs f1, 0x7d0(r14)
/* 80CE273C  C0 4E 07 D4 */	lfs f2, 0x7d4(r14)
/* 80CE2740  C0 6E 07 D8 */	lfs f3, 0x7d8(r14)
/* 80CE2744  4B 32 A6 F5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CE2748  7C 0F 88 AE */	lbzx r0, r15, r17
/* 80CE274C  7C 00 07 74 */	extsb r0, r0
/* 80CE2750  2C 00 00 02 */	cmpwi r0, 2
/* 80CE2754  40 82 00 28 */	bne lbl_80CE277C
/* 80CE2758  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80CE275C  C0 58 00 F0 */	lfs f2, 0xf0(r24)
/* 80CE2760  FC 60 08 90 */	fmr f3, f1
/* 80CE2764  4B 32 A6 D5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CE2768  C0 38 00 04 */	lfs f1, 4(r24)
/* 80CE276C  C0 58 01 00 */	lfs f2, 0x100(r24)
/* 80CE2770  FC 60 08 90 */	fmr f3, f1
/* 80CE2774  4B 32 A6 29 */	bl transM__14mDoMtx_stack_cFfff
/* 80CE2778  48 00 00 24 */	b lbl_80CE279C
lbl_80CE277C:
/* 80CE277C  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80CE2780  C0 58 00 9C */	lfs f2, 0x9c(r24)
/* 80CE2784  FC 60 08 90 */	fmr f3, f1
/* 80CE2788  4B 32 A6 B1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80CE278C  C0 38 00 04 */	lfs f1, 4(r24)
/* 80CE2790  C0 58 01 00 */	lfs f2, 0x100(r24)
/* 80CE2794  FC 60 08 90 */	fmr f3, f1
/* 80CE2798  4B 32 A6 05 */	bl transM__14mDoMtx_stack_cFfff
lbl_80CE279C:
/* 80CE279C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE27A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE27A4  38 14 1A A0 */	addi r0, r20, 0x1aa0
/* 80CE27A8  7C 8F 00 2E */	lwzx r4, r15, r0
/* 80CE27AC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE27B0  4B 66 3D 01 */	bl PSMTXCopy
lbl_80CE27B4:
/* 80CE27B4  3A 73 00 01 */	addi r19, r19, 1
/* 80CE27B8  2C 13 00 08 */	cmpwi r19, 8
/* 80CE27BC  3A 94 00 04 */	addi r20, r20, 4
/* 80CE27C0  3A B5 00 0C */	addi r21, r21, 0xc
/* 80CE27C4  3A D6 00 02 */	addi r22, r22, 2
/* 80CE27C8  41 80 FC A0 */	blt lbl_80CE2468
/* 80CE27CC  88 0F 10 54 */	lbz r0, 0x1054(r15)
/* 80CE27D0  7C 00 07 75 */	extsb. r0, r0
/* 80CE27D4  40 82 02 38 */	bne lbl_80CE2A0C
/* 80CE27D8  39 C0 00 00 */	li r14, 0
/* 80CE27DC  38 A0 00 00 */	li r5, 0
/* 80CE27E0  38 C0 00 00 */	li r6, 0
/* 80CE27E4  38 E0 00 00 */	li r7, 0
lbl_80CE27E8:
/* 80CE27E8  38 07 1A 98 */	addi r0, r7, 0x1a98
/* 80CE27EC  7C 0F 00 AE */	lbzx r0, r15, r0
/* 80CE27F0  7C 00 07 74 */	extsb r0, r0
/* 80CE27F4  2C 00 00 02 */	cmpwi r0, 2
/* 80CE27F8  40 82 00 68 */	bne lbl_80CE2860
/* 80CE27FC  38 80 00 00 */	li r4, 0
/* 80CE2800  39 00 00 01 */	li r8, 1
/* 80CE2804  38 00 00 07 */	li r0, 7
/* 80CE2808  7C 09 03 A6 */	mtctr r0
lbl_80CE280C:
/* 80CE280C  7C 07 42 14 */	add r0, r7, r8
/* 80CE2810  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 80CE2814  38 03 1A 98 */	addi r0, r3, 0x1a98
/* 80CE2818  7C 0F 00 AE */	lbzx r0, r15, r0
/* 80CE281C  7C 00 07 74 */	extsb r0, r0
/* 80CE2820  2C 00 00 02 */	cmpwi r0, 2
/* 80CE2824  40 82 00 10 */	bne lbl_80CE2834
/* 80CE2828  7C 65 1B 78 */	mr r5, r3
/* 80CE282C  38 84 00 01 */	addi r4, r4, 1
/* 80CE2830  48 00 00 08 */	b lbl_80CE2838
lbl_80CE2834:
/* 80CE2834  38 80 00 00 */	li r4, 0
lbl_80CE2838:
/* 80CE2838  39 08 00 01 */	addi r8, r8, 1
/* 80CE283C  42 00 FF D0 */	bdnz lbl_80CE280C
/* 80CE2840  7C 83 07 74 */	extsb r3, r4
/* 80CE2844  2C 03 00 03 */	cmpwi r3, 3
/* 80CE2848  41 80 00 18 */	blt lbl_80CE2860
/* 80CE284C  7D C0 07 74 */	extsb r0, r14
/* 80CE2850  7C 00 18 00 */	cmpw r0, r3
/* 80CE2854  40 80 00 0C */	bge lbl_80CE2860
/* 80CE2858  7C 8E 23 78 */	mr r14, r4
/* 80CE285C  7C A6 2B 78 */	mr r6, r5
lbl_80CE2860:
/* 80CE2860  38 E7 00 01 */	addi r7, r7, 1
/* 80CE2864  2C 07 00 08 */	cmpwi r7, 8
/* 80CE2868  41 80 FF 80 */	blt lbl_80CE27E8
/* 80CE286C  7D C0 07 75 */	extsb. r0, r14
/* 80CE2870  41 82 01 74 */	beq lbl_80CE29E4
/* 80CE2874  7D C0 07 74 */	extsb r0, r14
/* 80CE2878  2C 00 00 03 */	cmpwi r0, 3
/* 80CE287C  40 82 00 0C */	bne lbl_80CE2888
/* 80CE2880  38 C6 FF FF */	addi r6, r6, -1
/* 80CE2884  48 00 00 30 */	b lbl_80CE28B4
lbl_80CE2888:
/* 80CE2888  2C 00 00 04 */	cmpwi r0, 4
/* 80CE288C  40 82 00 0C */	bne lbl_80CE2898
/* 80CE2890  38 C6 FF FE */	addi r6, r6, -2
/* 80CE2894  48 00 00 20 */	b lbl_80CE28B4
lbl_80CE2898:
/* 80CE2898  2C 00 00 05 */	cmpwi r0, 5
/* 80CE289C  40 82 00 0C */	bne lbl_80CE28A8
/* 80CE28A0  38 C6 FF FE */	addi r6, r6, -2
/* 80CE28A4  48 00 00 10 */	b lbl_80CE28B4
lbl_80CE28A8:
/* 80CE28A8  2C 00 00 06 */	cmpwi r0, 6
/* 80CE28AC  41 80 00 08 */	blt lbl_80CE28B4
/* 80CE28B0  38 C6 FF FD */	addi r6, r6, -3
lbl_80CE28B4:
/* 80CE28B4  38 61 00 34 */	addi r3, r1, 0x34
/* 80CE28B8  54 C4 07 7E */	clrlwi r4, r6, 0x1d
/* 80CE28BC  38 04 00 02 */	addi r0, r4, 2
/* 80CE28C0  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80CE28C4  38 84 06 18 */	addi r4, r4, 0x618
/* 80CE28C8  7C 8F 22 14 */	add r4, r15, r4
/* 80CE28CC  38 AF 04 D0 */	addi r5, r15, 0x4d0
/* 80CE28D0  4B 58 42 65 */	bl __mi__4cXyzCFRC3Vec
/* 80CE28D4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80CE28D8  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80CE28DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CE28E0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CE28E4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80CE28E8  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80CE28EC  4B 58 4D 89 */	bl cM_atan2s__Fff
/* 80CE28F0  B0 6F 0D BC */	sth r3, 0xdbc(r15)
/* 80CE28F4  7D C3 07 74 */	extsb r3, r14
/* 80CE28F8  1C 03 01 F4 */	mulli r0, r3, 0x1f4
/* 80CE28FC  B0 0F 0D BA */	sth r0, 0xdba(r15)
/* 80CE2900  2C 03 00 07 */	cmpwi r3, 7
/* 80CE2904  40 82 00 E0 */	bne lbl_80CE29E4
/* 80CE2908  7D E3 7B 78 */	mr r3, r15
/* 80CE290C  38 80 00 01 */	li r4, 1
/* 80CE2910  4B FF DE 35 */	bl part_set__FP12obj_so_classSc
/* 80CE2914  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800AF@ha */
/* 80CE2918  38 03 00 AF */	addi r0, r3, 0x00AF /* 0x000800AF@l */
/* 80CE291C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80CE2920  38 6F 0D 1C */	addi r3, r15, 0xd1c
/* 80CE2924  38 81 00 28 */	addi r4, r1, 0x28
/* 80CE2928  38 A0 00 00 */	li r5, 0
/* 80CE292C  38 C0 FF FF */	li r6, -1
/* 80CE2930  81 8F 0D 1C */	lwz r12, 0xd1c(r15)
/* 80CE2934  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CE2938  7D 89 03 A6 */	mtctr r12
/* 80CE293C  4E 80 04 21 */	bctrl 
/* 80CE2940  38 60 00 01 */	li r3, 1
/* 80CE2944  B0 6F 0D AE */	sth r3, 0xdae(r15)
/* 80CE2948  38 00 00 02 */	li r0, 2
/* 80CE294C  B0 0F 0D B0 */	sth r0, 0xdb0(r15)
/* 80CE2950  98 6F 10 54 */	stb r3, 0x1054(r15)
/* 80CE2954  38 60 00 00 */	li r3, 0
/* 80CE2958  C0 18 00 04 */	lfs f0, 4(r24)
/* 80CE295C  38 00 00 08 */	li r0, 8
/* 80CE2960  7C 09 03 A6 */	mtctr r0
lbl_80CE2964:
/* 80CE2964  38 03 07 58 */	addi r0, r3, 0x758
/* 80CE2968  7C 0F 05 2E */	stfsx f0, r15, r0
/* 80CE296C  38 63 00 04 */	addi r3, r3, 4
/* 80CE2970  42 00 FF F4 */	bdnz lbl_80CE2964
/* 80CE2974  38 00 00 00 */	li r0, 0
/* 80CE2978  B0 0F 0D BA */	sth r0, 0xdba(r15)
/* 80CE297C  B0 0F 0D B6 */	sth r0, 0xdb6(r15)
/* 80CE2980  B0 0F 0D BC */	sth r0, 0xdbc(r15)
/* 80CE2984  B0 0F 0D B8 */	sth r0, 0xdb8(r15)
/* 80CE2988  80 61 01 24 */	lwz r3, 0x124(r1)
/* 80CE298C  85 83 3E E8 */	lwzu r12, 0x3ee8(r3)
/* 80CE2990  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80CE2994  7D 89 03 A6 */	mtctr r12
/* 80CE2998  4E 80 04 21 */	bctrl 
/* 80CE299C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80CE29A0  54 00 87 7F */	rlwinm. r0, r0, 0x10, 0x1d, 0x1f
/* 80CE29A4  40 82 00 24 */	bne lbl_80CE29C8
/* 80CE29A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE29AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE29B0  80 0F 00 B0 */	lwz r0, 0xb0(r15)
/* 80CE29B4  54 04 46 3E */	srwi r4, r0, 0x18
/* 80CE29B8  88 0F 04 E2 */	lbz r0, 0x4e2(r15)
/* 80CE29BC  7C 05 07 74 */	extsb r5, r0
/* 80CE29C0  4B 35 28 41 */	bl onSwitch__10dSv_info_cFii
/* 80CE29C4  48 00 00 20 */	b lbl_80CE29E4
lbl_80CE29C8:
/* 80CE29C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE29CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE29D0  80 0F 00 B0 */	lwz r0, 0xb0(r15)
/* 80CE29D4  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CE29D8  88 0F 04 E2 */	lbz r0, 0x4e2(r15)
/* 80CE29DC  7C 05 07 74 */	extsb r5, r0
/* 80CE29E0  4B 35 28 21 */	bl onSwitch__10dSv_info_cFii
lbl_80CE29E4:
/* 80CE29E4  38 6F 0D B8 */	addi r3, r15, 0xdb8
/* 80CE29E8  A8 8F 0D BC */	lha r4, 0xdbc(r15)
/* 80CE29EC  38 A0 00 02 */	li r5, 2
/* 80CE29F0  38 C0 08 00 */	li r6, 0x800
/* 80CE29F4  4B 58 DC 15 */	bl cLib_addCalcAngleS2__FPssss
/* 80CE29F8  38 6F 0D B6 */	addi r3, r15, 0xdb6
/* 80CE29FC  A8 8F 0D BA */	lha r4, 0xdba(r15)
/* 80CE2A00  38 A0 00 02 */	li r5, 2
/* 80CE2A04  38 C0 08 00 */	li r6, 0x800
/* 80CE2A08  4B 58 DC 01 */	bl cLib_addCalcAngleS2__FPssss
lbl_80CE2A0C:
/* 80CE2A0C  3C 60 80 CE */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x80CE3C48@ha */
/* 80CE2A10  38 03 3C 48 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x80CE3C48@l */
/* 80CE2A14  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80CE2A18  80 01 01 20 */	lwz r0, 0x120(r1)
/* 80CE2A1C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80CE2A20  80 01 01 1C */	lwz r0, 0x11c(r1)
/* 80CE2A24  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80CE2A28  80 01 01 18 */	lwz r0, 0x118(r1)
/* 80CE2A2C  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80CE2A30  38 61 00 94 */	addi r3, r1, 0x94
/* 80CE2A34  38 80 00 00 */	li r4, 0
/* 80CE2A38  4B 39 4B B9 */	bl __dt__11dBgS_GndChkFv
/* 80CE2A3C  E3 E1 01 98 */	psq_l f31, 408(r1), 0, 0 /* qr0 */
/* 80CE2A40  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 80CE2A44  E3 C1 01 88 */	psq_l f30, 392(r1), 0, 0 /* qr0 */
/* 80CE2A48  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 80CE2A4C  39 61 01 80 */	addi r11, r1, 0x180
/* 80CE2A50  4B 67 F7 9D */	bl __restore_gpr
/* 80CE2A54  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 80CE2A58  7C 08 03 A6 */	mtlr r0
/* 80CE2A5C  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 80CE2A60  4E 80 00 20 */	blr 
