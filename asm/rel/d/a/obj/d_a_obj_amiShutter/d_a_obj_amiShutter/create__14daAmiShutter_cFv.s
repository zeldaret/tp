lbl_80BA1650:
/* 80BA1650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1654  7C 08 02 A6 */	mflr r0
/* 80BA1658  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA165C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA1660  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA1664  7C 7E 1B 78 */	mr r30, r3
/* 80BA1668  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BA166C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BA1670  40 82 00 48 */	bne lbl_80BA16B8
/* 80BA1674  28 1E 00 00 */	cmplwi r30, 0
/* 80BA1678  41 82 00 34 */	beq lbl_80BA16AC
/* 80BA167C  4B 4D 6F A8 */	b __ct__16dBgS_MoveBgActorFv
/* 80BA1680  3C 60 80 BA */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80BA1684  38 03 24 DC */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80BA1688  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80BA168C  93 DE 05 AC */	stw r30, 0x5ac(r30)
/* 80BA1690  38 00 00 00 */	li r0, 0
/* 80BA1694  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80BA1698  3C 60 80 BA */	lis r3, __vt__14daAmiShutter_c@ha
/* 80BA169C  38 63 24 F4 */	addi r3, r3, __vt__14daAmiShutter_c@l
/* 80BA16A0  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80BA16A4  38 03 00 28 */	addi r0, r3, 0x28
/* 80BA16A8  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80BA16AC:
/* 80BA16AC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BA16B0  60 00 00 08 */	ori r0, r0, 8
/* 80BA16B4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BA16B8:
/* 80BA16B8  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80BA16BC  3C 80 80 BA */	lis r4, stringBase0@ha
/* 80BA16C0  38 84 23 D4 */	addi r4, r4, stringBase0@l
/* 80BA16C4  4B 48 B7 F8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BA16C8  7C 7F 1B 78 */	mr r31, r3
/* 80BA16CC  2C 1F 00 04 */	cmpwi r31, 4
/* 80BA16D0  40 82 01 40 */	bne lbl_80BA1810
/* 80BA16D4  7F C3 F3 78 */	mr r3, r30
/* 80BA16D8  3C 80 80 BA */	lis r4, stringBase0@ha
/* 80BA16DC  38 84 23 D4 */	addi r4, r4, stringBase0@l
/* 80BA16E0  38 A0 00 07 */	li r5, 7
/* 80BA16E4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BA16E8  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BA16EC  38 E0 1A 00 */	li r7, 0x1a00
/* 80BA16F0  39 00 00 00 */	li r8, 0
/* 80BA16F4  4B 4D 70 C8 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BA16F8  2C 03 00 05 */	cmpwi r3, 5
/* 80BA16FC  40 82 00 0C */	bne lbl_80BA1708
/* 80BA1700  38 60 00 05 */	li r3, 5
/* 80BA1704  48 00 01 10 */	b lbl_80BA1814
lbl_80BA1708:
/* 80BA1708  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80BA170C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BA1710  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BA1714  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80BA1718  80 83 00 04 */	lwz r4, 4(r3)
/* 80BA171C  7F C3 F3 78 */	mr r3, r30
/* 80BA1720  4B 47 8E 58 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BA1724  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BA1728  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80BA172C  98 1E 05 C5 */	stb r0, 0x5c5(r30)
/* 80BA1730  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BA1734  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80BA1738  88 1E 05 C5 */	lbz r0, 0x5c5(r30)
/* 80BA173C  28 00 00 00 */	cmplwi r0, 0
/* 80BA1740  41 82 00 0C */	beq lbl_80BA174C
/* 80BA1744  28 00 00 01 */	cmplwi r0, 1
/* 80BA1748  40 82 00 88 */	bne lbl_80BA17D0
lbl_80BA174C:
/* 80BA174C  28 00 00 00 */	cmplwi r0, 0
/* 80BA1750  40 82 00 40 */	bne lbl_80BA1790
/* 80BA1754  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 80BA1758  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)
/* 80BA175C  28 00 00 00 */	cmplwi r0, 0
/* 80BA1760  41 82 00 30 */	beq lbl_80BA1790
/* 80BA1764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA1768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA176C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BA1770  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80BA1774  3C 60 80 BA */	lis r3, lit_3739@ha
/* 80BA1778  C0 03 23 98 */	lfs f0, lit_3739@l(r3)
/* 80BA177C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA1780  40 81 00 10 */	ble lbl_80BA1790
/* 80BA1784  38 00 00 04 */	li r0, 4
/* 80BA1788  98 1E 05 C4 */	stb r0, 0x5c4(r30)
/* 80BA178C  48 00 00 7C */	b lbl_80BA1808
lbl_80BA1790:
/* 80BA1790  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BA1794  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80BA1798  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BA179C  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80BA17A0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BA17A4  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80BA17A8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80BA17AC  3C 60 80 BA */	lis r3, lit_3740@ha
/* 80BA17B0  C0 03 23 9C */	lfs f0, lit_3740@l(r3)
/* 80BA17B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BA17B8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80BA17BC  38 00 00 01 */	li r0, 1
/* 80BA17C0  98 1E 05 D9 */	stb r0, 0x5d9(r30)
/* 80BA17C4  7F C3 F3 78 */	mr r3, r30
/* 80BA17C8  48 00 04 05 */	bl init_modeWaitEvent__14daAmiShutter_cFv
/* 80BA17CC  48 00 00 3C */	b lbl_80BA1808
lbl_80BA17D0:
/* 80BA17D0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BA17D4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BA17D8  98 1E 05 C6 */	stb r0, 0x5c6(r30)
/* 80BA17DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA17E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BA17E4  88 9E 05 C6 */	lbz r4, 0x5c6(r30)
/* 80BA17E8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BA17EC  7C 05 07 74 */	extsb r5, r0
/* 80BA17F0  4B 49 3B 70 */	b isSwitch__10dSv_info_cCFii
/* 80BA17F4  98 7E 05 C7 */	stb r3, 0x5c7(r30)
/* 80BA17F8  38 00 00 00 */	li r0, 0
/* 80BA17FC  98 1E 05 D9 */	stb r0, 0x5d9(r30)
/* 80BA1800  7F C3 F3 78 */	mr r3, r30
/* 80BA1804  48 00 03 49 */	bl init_modeWait__14daAmiShutter_cFv
lbl_80BA1808:
/* 80BA1808  7F C3 F3 78 */	mr r3, r30
/* 80BA180C  4B FF FD 51 */	bl setBaseMtx__14daAmiShutter_cFv
lbl_80BA1810:
/* 80BA1810  7F E3 FB 78 */	mr r3, r31
lbl_80BA1814:
/* 80BA1814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA1818  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA181C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1820  7C 08 03 A6 */	mtlr r0
/* 80BA1824  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1828  4E 80 00 20 */	blr 
