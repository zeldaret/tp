lbl_800B154C:
/* 800B154C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B1550  7C 08 02 A6 */	mflr r0
/* 800B1554  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B1558  39 61 00 30 */	addi r11, r1, 0x30
/* 800B155C  48 2B 0C 81 */	bl _savegpr_29
/* 800B1560  7C 7F 1B 78 */	mr r31, r3
/* 800B1564  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800B1568  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B156C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800B1570  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800B1574  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800B1578  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800B157C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800B1580  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800B1584  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800B1588  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800B158C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B1590  41 82 00 14 */	beq lbl_800B15A4
/* 800B1594  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030023@ha */
/* 800B1598  3B C3 00 23 */	addi r30, r3, 0x0023 /* 0x00030023@l */
/* 800B159C  3B A3 00 22 */	addi r29, r3, 0x22
/* 800B15A0  48 00 00 2C */	b lbl_800B15CC
lbl_800B15A4:
/* 800B15A4  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 800B15A8  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 800B15AC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800B15B0  40 80 00 08 */	bge lbl_800B15B8
/* 800B15B4  48 00 00 08 */	b lbl_800B15BC
lbl_800B15B8:
/* 800B15B8  FC 00 08 90 */	fmr f0, f1
lbl_800B15BC:
/* 800B15BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800B15C0  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003001D@ha */
/* 800B15C4  3B C3 00 1D */	addi r30, r3, 0x001D /* 0x0003001D@l */
/* 800B15C8  3B A3 00 1C */	addi r29, r3, 0x1c
lbl_800B15CC:
/* 800B15CC  38 61 00 14 */	addi r3, r1, 0x14
/* 800B15D0  4B F6 C7 B5 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 800B15D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B15D8  41 82 01 1C */	beq lbl_800B16F4
/* 800B15DC  C0 0D 87 58 */	lfs f0, mWaterY__11fopAcM_wt_c(r13)
/* 800B15E0  D0 1F 33 B8 */	stfs f0, 0x33b8(r31)
/* 800B15E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B15E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B15EC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800B15F0  3C 80 80 3F */	lis r4, mWaterCheck__11fopAcM_wt_c@ha
/* 800B15F4  38 84 1D 80 */	addi r4, r4, mWaterCheck__11fopAcM_wt_c@l
/* 800B15F8  4B FC 38 59 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 800B15FC  98 7F 2F C5 */	stb r3, 0x2fc5(r31)
/* 800B1600  3C 60 80 3F */	lis r3, mWaterCheck__11fopAcM_wt_c@ha
/* 800B1604  38 63 1D 80 */	addi r3, r3, mWaterCheck__11fopAcM_wt_c@l
/* 800B1608  48 0F 9F 95 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800B160C  98 7F 2F C6 */	stb r3, 0x2fc6(r31)
/* 800B1610  88 1F 2F C5 */	lbz r0, 0x2fc5(r31)
/* 800B1614  28 00 00 06 */	cmplwi r0, 6
/* 800B1618  41 82 00 F4 */	beq lbl_800B170C
/* 800B161C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B1620  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800B1624  41 82 00 C0 */	beq lbl_800B16E4
/* 800B1628  C0 3F 33 B8 */	lfs f1, 0x33b8(r31)
/* 800B162C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800B1630  D0 01 00 08 */	stfs f0, 8(r1)
/* 800B1634  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800B1638  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800B163C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800B1640  C0 5F 33 BC */	lfs f2, 0x33bc(r31)
/* 800B1644  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 800B1648  40 80 00 24 */	bge lbl_800B166C
/* 800B164C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800B1650  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800B1654  4C 41 13 82 */	cror 2, 1, 2
/* 800B1658  40 82 00 14 */	bne lbl_800B166C
/* 800B165C  7F E3 FB 78 */	mr r3, r31
/* 800B1660  7F C4 F3 78 */	mr r4, r30
/* 800B1664  48 00 DB 31 */	bl seStartMapInfo__9daAlink_cFUl
/* 800B1668  48 00 00 38 */	b lbl_800B16A0
lbl_800B166C:
/* 800B166C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 800B1670  40 81 00 30 */	ble lbl_800B16A0
/* 800B1674  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800B1678  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800B167C  4C 40 13 82 */	cror 2, 0, 2
/* 800B1680  40 82 00 20 */	bne lbl_800B16A0
/* 800B1684  7F E3 FB 78 */	mr r3, r31
/* 800B1688  7F A4 EB 78 */	mr r4, r29
/* 800B168C  48 00 DB 09 */	bl seStartMapInfo__9daAlink_cFUl
/* 800B1690  38 61 00 08 */	addi r3, r1, 8
/* 800B1694  C0 3F 34 20 */	lfs f1, 0x3420(r31)
/* 800B1698  38 80 00 00 */	li r4, 0
/* 800B169C  4B F6 E1 E1 */	bl fopKyM_createWpillar__FPC4cXyzfi
lbl_800B16A0:
/* 800B16A0  C0 3F 33 BC */	lfs f1, 0x33bc(r31)
/* 800B16A4  C0 1F 33 B8 */	lfs f0, 0x33b8(r31)
/* 800B16A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B16AC  40 80 00 38 */	bge lbl_800B16E4
/* 800B16B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800B16B4  7C 09 07 74 */	extsb r9, r0
/* 800B16B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B16BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B16C0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800B16C4  38 9F 31 A8 */	addi r4, r31, 0x31a8
/* 800B16C8  3C A0 80 3F */	lis r5, mWaterCheck__11fopAcM_wt_c@ha
/* 800B16CC  38 A5 1D 80 */	addi r5, r5, mWaterCheck__11fopAcM_wt_c@l
/* 800B16D0  38 C1 00 08 */	addi r6, r1, 8
/* 800B16D4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B16D8  38 FF 01 0C */	addi r7, r31, 0x10c
/* 800B16DC  39 00 00 00 */	li r8, 0
/* 800B16E0  4B F9 B1 59 */	bl setWaterRipple__13dPa_control_cFPUlR13cBgS_PolyInfoPC4cXyzfPC12dKy_tevstr_cPC4cXyzSc
lbl_800B16E4:
/* 800B16E4  7F E3 FB 78 */	mr r3, r31
/* 800B16E8  C0 3F 33 B8 */	lfs f1, 0x33b8(r31)
/* 800B16EC  48 05 F0 D1 */	bl checkWaterInKandelaar__9daAlink_cFf
/* 800B16F0  48 00 00 1C */	b lbl_800B170C
lbl_800B16F4:
/* 800B16F4  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800B16F8  D0 1F 33 B8 */	stfs f0, 0x33b8(r31)
/* 800B16FC  38 00 00 10 */	li r0, 0x10
/* 800B1700  98 1F 2F C5 */	stb r0, 0x2fc5(r31)
/* 800B1704  38 00 00 00 */	li r0, 0
/* 800B1708  98 1F 2F C6 */	stb r0, 0x2fc6(r31)
lbl_800B170C:
/* 800B170C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800B1710  D0 1F 33 BC */	stfs f0, 0x33bc(r31)
/* 800B1714  39 61 00 30 */	addi r11, r1, 0x30
/* 800B1718  48 2B 0B 11 */	bl _restgpr_29
/* 800B171C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B1720  7C 08 03 A6 */	mtlr r0
/* 800B1724  38 21 00 30 */	addi r1, r1, 0x30
/* 800B1728  4E 80 00 20 */	blr 
