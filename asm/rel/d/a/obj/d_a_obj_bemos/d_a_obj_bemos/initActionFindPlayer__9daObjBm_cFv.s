lbl_80BB1654:
/* 80BB1654  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BB1658  7C 08 02 A6 */	mflr r0
/* 80BB165C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB1660  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BB1664  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BB1668  7C 7F 1B 78 */	mr r31, r3
/* 80BB166C  3C 60 80 BB */	lis r3, l_arcName@ha
/* 80BB1670  38 63 3A 94 */	addi r3, r3, l_arcName@l
/* 80BB1674  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB1678  38 80 00 13 */	li r4, 0x13
/* 80BB167C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BB1680  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BB1684  3C A5 00 02 */	addis r5, r5, 2
/* 80BB1688  38 C0 00 80 */	li r6, 0x80
/* 80BB168C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BB1690  4B 48 AC 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BB1694  7C 65 1B 78 */	mr r5, r3
/* 80BB1698  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB169C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BB16A0  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BB16A4  38 84 00 58 */	addi r4, r4, 0x58
/* 80BB16A8  38 C0 00 01 */	li r6, 1
/* 80BB16AC  38 E0 00 00 */	li r7, 0
/* 80BB16B0  3D 00 80 BB */	lis r8, lit_3934@ha
/* 80BB16B4  C0 28 38 24 */	lfs f1, lit_3934@l(r8)
/* 80BB16B8  39 00 00 00 */	li r8, 0
/* 80BB16BC  39 20 FF FF */	li r9, -1
/* 80BB16C0  4B 45 C0 4C */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BB16C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB16C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BB16CC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80BB16D0  38 80 00 00 */	li r4, 0
/* 80BB16D4  90 81 00 08 */	stw r4, 8(r1)
/* 80BB16D8  38 00 FF FF */	li r0, -1
/* 80BB16DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB16E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BB16E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BB16E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BB16EC  38 80 00 00 */	li r4, 0
/* 80BB16F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008464@ha */
/* 80BB16F4  38 A5 84 64 */	addi r5, r5, 0x8464 /* 0x00008464@l */
/* 80BB16F8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BB16FC  38 E0 00 00 */	li r7, 0
/* 80BB1700  39 00 00 00 */	li r8, 0
/* 80BB1704  39 20 00 00 */	li r9, 0
/* 80BB1708  39 40 00 FF */	li r10, 0xff
/* 80BB170C  3D 60 80 BB */	lis r11, lit_3934@ha
/* 80BB1710  C0 2B 38 24 */	lfs f1, lit_3934@l(r11)
/* 80BB1714  4B 49 B3 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BB1718  90 7F 10 34 */	stw r3, 0x1034(r31)
/* 80BB171C  38 00 FF FF */	li r0, -1
/* 80BB1720  98 1F 10 38 */	stb r0, 0x1038(r31)
/* 80BB1724  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BB1728  7C 03 07 74 */	extsb r3, r0
/* 80BB172C  4B 47 B9 40 */	b dComIfGp_getReverb__Fi
/* 80BB1730  7C 67 1B 78 */	mr r7, r3
/* 80BB1734  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023E@ha */
/* 80BB1738  38 03 02 3E */	addi r0, r3, 0x023E /* 0x0007023E@l */
/* 80BB173C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB1740  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BB1744  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BB1748  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB174C  38 81 00 24 */	addi r4, r1, 0x24
/* 80BB1750  3B DF 05 38 */	addi r30, r31, 0x538
/* 80BB1754  7F C5 F3 78 */	mr r5, r30
/* 80BB1758  38 C0 00 00 */	li r6, 0
/* 80BB175C  3D 00 80 BB */	lis r8, lit_3934@ha
/* 80BB1760  C0 28 38 24 */	lfs f1, lit_3934@l(r8)
/* 80BB1764  FC 40 08 90 */	fmr f2, f1
/* 80BB1768  3D 00 80 BB */	lis r8, lit_4402@ha
/* 80BB176C  C0 68 38 40 */	lfs f3, lit_4402@l(r8)
/* 80BB1770  FC 80 18 90 */	fmr f4, f3
/* 80BB1774  39 00 00 00 */	li r8, 0
/* 80BB1778  4B 6F A2 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB177C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BB1780  7C 03 07 74 */	extsb r3, r0
/* 80BB1784  4B 47 B8 E8 */	b dComIfGp_getReverb__Fi
/* 80BB1788  7C 67 1B 78 */	mr r7, r3
/* 80BB178C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023F@ha */
/* 80BB1790  38 03 02 3F */	addi r0, r3, 0x023F /* 0x0007023F@l */
/* 80BB1794  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BB1798  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80BB179C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80BB17A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB17A4  38 81 00 20 */	addi r4, r1, 0x20
/* 80BB17A8  7F C5 F3 78 */	mr r5, r30
/* 80BB17AC  38 C0 00 00 */	li r6, 0
/* 80BB17B0  3D 00 80 BB */	lis r8, lit_3934@ha
/* 80BB17B4  C0 28 38 24 */	lfs f1, lit_3934@l(r8)
/* 80BB17B8  FC 40 08 90 */	fmr f2, f1
/* 80BB17BC  3D 00 80 BB */	lis r8, lit_4402@ha
/* 80BB17C0  C0 68 38 40 */	lfs f3, lit_4402@l(r8)
/* 80BB17C4  FC 80 18 90 */	fmr f4, f3
/* 80BB17C8  39 00 00 00 */	li r8, 0
/* 80BB17CC  4B 6F A1 B8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB17D0  38 00 00 00 */	li r0, 0
/* 80BB17D4  98 1F 0F E5 */	stb r0, 0xfe5(r31)
/* 80BB17D8  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB17DC  38 00 03 E8 */	li r0, 0x3e8
/* 80BB17E0  B0 1F 0F AC */	sth r0, 0xfac(r31)
/* 80BB17E4  A8 1F 0F AC */	lha r0, 0xfac(r31)
/* 80BB17E8  B0 1F 0F AA */	sth r0, 0xfaa(r31)
/* 80BB17EC  A8 1F 0F AC */	lha r0, 0xfac(r31)
/* 80BB17F0  B0 1F 0F B0 */	sth r0, 0xfb0(r31)
/* 80BB17F4  38 00 00 02 */	li r0, 2
/* 80BB17F8  98 1F 0F E4 */	stb r0, 0xfe4(r31)
/* 80BB17FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BB1800  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BB1804  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BB1808  7C 08 03 A6 */	mtlr r0
/* 80BB180C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BB1810  4E 80 00 20 */	blr 
