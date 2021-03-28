lbl_806E155C:
/* 806E155C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 806E1560  7C 08 02 A6 */	mflr r0
/* 806E1564  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 806E1568  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806E156C  4B C8 0C 68 */	b _savegpr_27
/* 806E1570  7C 7F 1B 78 */	mr r31, r3
/* 806E1574  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E1578  3B C3 59 20 */	addi r30, r3, lit_3791@l
/* 806E157C  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 806E1580  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 806E1584  EC 41 00 32 */	fmuls f2, f1, f0
/* 806E1588  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806E158C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806E1590  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 806E1594  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806E1598  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806E159C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806E15A0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 806E15A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E15A8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 806E15AC  38 61 00 64 */	addi r3, r1, 0x64
/* 806E15B0  4B 99 66 B8 */	b __ct__11dBgS_LinChkFv
/* 806E15B4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806E15B8  4B 92 B7 AC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 806E15BC  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806E15C0  4B 92 B9 84 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E15C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E15C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E15CC  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 806E15D0  4B 92 AE 64 */	b mDoMtx_YrotM__FPA4_fs
/* 806E15D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E15D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E15DC  38 81 00 30 */	addi r4, r1, 0x30
/* 806E15E0  7C 85 23 78 */	mr r5, r4
/* 806E15E4  4B C6 57 88 */	b PSMTXMultVec
/* 806E15E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E15EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E15F0  38 81 00 24 */	addi r4, r1, 0x24
/* 806E15F4  7C 85 23 78 */	mr r5, r4
/* 806E15F8  4B C6 57 74 */	b PSMTXMultVec
/* 806E15FC  38 61 00 64 */	addi r3, r1, 0x64
/* 806E1600  38 81 00 24 */	addi r4, r1, 0x24
/* 806E1604  38 A1 00 30 */	addi r5, r1, 0x30
/* 806E1608  38 C0 00 00 */	li r6, 0
/* 806E160C  4B 99 67 58 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E1610  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E1614  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E1618  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806E161C  7F A3 EB 78 */	mr r3, r29
/* 806E1620  38 81 00 64 */	addi r4, r1, 0x64
/* 806E1624  4B 99 2D 90 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806E1628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E162C  41 82 01 E4 */	beq lbl_806E1810
/* 806E1630  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E1634  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E1638  90 01 00 60 */	stw r0, 0x60(r1)
/* 806E163C  7F A3 EB 78 */	mr r3, r29
/* 806E1640  3B 81 00 78 */	addi r28, r1, 0x78
/* 806E1644  7F 84 E3 78 */	mr r4, r28
/* 806E1648  38 A1 00 50 */	addi r5, r1, 0x50
/* 806E164C  4B 99 30 F8 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806E1650  7F A3 EB 78 */	mr r3, r29
/* 806E1654  7F 84 E3 78 */	mr r4, r28
/* 806E1658  4B 99 36 B4 */	b GetMagnetCode__4dBgSFRC13cBgS_PolyInfo
/* 806E165C  2C 03 00 00 */	cmpwi r3, 0
/* 806E1660  40 82 00 30 */	bne lbl_806E1690
/* 806E1664  A8 7F 05 B4 */	lha r3, 0x5b4(r31)
/* 806E1668  38 03 02 00 */	addi r0, r3, 0x200
/* 806E166C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 806E1670  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E1674  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E1678  90 01 00 60 */	stw r0, 0x60(r1)
/* 806E167C  38 61 00 64 */	addi r3, r1, 0x64
/* 806E1680  38 80 FF FF */	li r4, -1
/* 806E1684  4B 99 66 58 */	b __dt__11dBgS_LinChkFv
/* 806E1688  38 60 00 01 */	li r3, 1
/* 806E168C  48 00 01 B4 */	b lbl_806E1840
lbl_806E1690:
/* 806E1690  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E1694  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E1698  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806E169C  7F A3 EB 78 */	mr r3, r29
/* 806E16A0  7F 84 E3 78 */	mr r4, r28
/* 806E16A4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806E16A8  4B 99 30 9C */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806E16AC  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 806E16B0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806E16B4  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 806E16B8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806E16BC  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 806E16C0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806E16C4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E16C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E16CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E16D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E16D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806E16D8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806E16DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806E16E0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806E16E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806E16E8  38 61 00 18 */	addi r3, r1, 0x18
/* 806E16EC  38 81 00 0C */	addi r4, r1, 0xc
/* 806E16F0  4B C6 5C AC */	b PSVECSquareDistance
/* 806E16F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E16F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E16FC  40 81 00 58 */	ble lbl_806E1754
/* 806E1700  FC 00 08 34 */	frsqrte f0, f1
/* 806E1704  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806E1708  FC 44 00 32 */	fmul f2, f4, f0
/* 806E170C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806E1710  FC 00 00 32 */	fmul f0, f0, f0
/* 806E1714  FC 01 00 32 */	fmul f0, f1, f0
/* 806E1718  FC 03 00 28 */	fsub f0, f3, f0
/* 806E171C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E1720  FC 44 00 32 */	fmul f2, f4, f0
/* 806E1724  FC 00 00 32 */	fmul f0, f0, f0
/* 806E1728  FC 01 00 32 */	fmul f0, f1, f0
/* 806E172C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E1730  FC 02 00 32 */	fmul f0, f2, f0
/* 806E1734  FC 44 00 32 */	fmul f2, f4, f0
/* 806E1738  FC 00 00 32 */	fmul f0, f0, f0
/* 806E173C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E1740  FC 03 00 28 */	fsub f0, f3, f0
/* 806E1744  FC 02 00 32 */	fmul f0, f2, f0
/* 806E1748  FC 41 00 32 */	fmul f2, f1, f0
/* 806E174C  FC 40 10 18 */	frsp f2, f2
/* 806E1750  48 00 00 90 */	b lbl_806E17E0
lbl_806E1754:
/* 806E1754  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806E1758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E175C  40 80 00 10 */	bge lbl_806E176C
/* 806E1760  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E1764  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 806E1768  48 00 00 78 */	b lbl_806E17E0
lbl_806E176C:
/* 806E176C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E1770  80 81 00 08 */	lwz r4, 8(r1)
/* 806E1774  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E1778  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E177C  7C 03 00 00 */	cmpw r3, r0
/* 806E1780  41 82 00 14 */	beq lbl_806E1794
/* 806E1784  40 80 00 40 */	bge lbl_806E17C4
/* 806E1788  2C 03 00 00 */	cmpwi r3, 0
/* 806E178C  41 82 00 20 */	beq lbl_806E17AC
/* 806E1790  48 00 00 34 */	b lbl_806E17C4
lbl_806E1794:
/* 806E1794  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E1798  41 82 00 0C */	beq lbl_806E17A4
/* 806E179C  38 00 00 01 */	li r0, 1
/* 806E17A0  48 00 00 28 */	b lbl_806E17C8
lbl_806E17A4:
/* 806E17A4  38 00 00 02 */	li r0, 2
/* 806E17A8  48 00 00 20 */	b lbl_806E17C8
lbl_806E17AC:
/* 806E17AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E17B0  41 82 00 0C */	beq lbl_806E17BC
/* 806E17B4  38 00 00 05 */	li r0, 5
/* 806E17B8  48 00 00 10 */	b lbl_806E17C8
lbl_806E17BC:
/* 806E17BC  38 00 00 03 */	li r0, 3
/* 806E17C0  48 00 00 08 */	b lbl_806E17C8
lbl_806E17C4:
/* 806E17C4  38 00 00 04 */	li r0, 4
lbl_806E17C8:
/* 806E17C8  2C 00 00 01 */	cmpwi r0, 1
/* 806E17CC  40 82 00 10 */	bne lbl_806E17DC
/* 806E17D0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E17D4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 806E17D8  48 00 00 08 */	b lbl_806E17E0
lbl_806E17DC:
/* 806E17DC  FC 40 08 90 */	fmr f2, f1
lbl_806E17E0:
/* 806E17E0  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 806E17E4  4B B8 5E 90 */	b cM_atan2s__Fff
/* 806E17E8  7C 03 00 D0 */	neg r0, r3
/* 806E17EC  7C 1C 07 34 */	extsh r28, r0
/* 806E17F0  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806E17F4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 806E17F8  4B B8 5E 7C */	b cM_atan2s__Fff
/* 806E17FC  7C 7B 1B 78 */	mr r27, r3
/* 806E1800  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha
/* 806E1804  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E1808  90 01 00 4C */	stw r0, 0x4c(r1)
/* 806E180C  90 01 00 60 */	stw r0, 0x60(r1)
lbl_806E1810:
/* 806E1810  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 806E1814  7F 84 E3 78 */	mr r4, r28
/* 806E1818  38 A0 01 50 */	li r5, 0x150
/* 806E181C  4B B8 F3 74 */	b cLib_chaseAngleS__FPsss
/* 806E1820  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806E1824  7F 64 DB 78 */	mr r4, r27
/* 806E1828  38 A0 01 50 */	li r5, 0x150
/* 806E182C  4B B8 F3 64 */	b cLib_chaseAngleS__FPsss
/* 806E1830  38 61 00 64 */	addi r3, r1, 0x64
/* 806E1834  38 80 FF FF */	li r4, -1
/* 806E1838  4B 99 64 A4 */	b __dt__11dBgS_LinChkFv
/* 806E183C  38 60 00 00 */	li r3, 0
lbl_806E1840:
/* 806E1840  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806E1844  4B C8 09 DC */	b _restgpr_27
/* 806E1848  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 806E184C  7C 08 03 A6 */	mtlr r0
/* 806E1850  38 21 00 F0 */	addi r1, r1, 0xf0
/* 806E1854  4E 80 00 20 */	blr 
