lbl_80AC15B4:
/* 80AC15B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80AC15B8  7C 08 02 A6 */	mflr r0
/* 80AC15BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80AC15C0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80AC15C4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80AC15C8  39 61 00 60 */	addi r11, r1, 0x60
/* 80AC15CC  4B 8A 0C 08 */	b _savegpr_27
/* 80AC15D0  7C 7E 1B 78 */	mr r30, r3
/* 80AC15D4  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha
/* 80AC15D8  3B E3 44 F8 */	addi r31, r3, m__18daNpc_Saru_Param_c@l
/* 80AC15DC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80AC15E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AC15E4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80AC15E8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AC15EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AC15F0  88 1E 0F D8 */	lbz r0, 0xfd8(r30)
/* 80AC15F4  28 00 00 00 */	cmplwi r0, 0
/* 80AC15F8  41 82 00 1C */	beq lbl_80AC1614
/* 80AC15FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC1600  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC1604  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AC1608  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80AC160C  60 00 02 00 */	ori r0, r0, 0x200
/* 80AC1610  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_80AC1614:
/* 80AC1614  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AC1618  38 80 00 00 */	li r4, 0
/* 80AC161C  4B 68 68 20 */	b calc__19daNpcT_DmgStagger_cFi
/* 80AC1620  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80AC1624  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80AC1628  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80AC162C  7C 03 00 50 */	subf r0, r3, r0
/* 80AC1630  7C 00 07 34 */	extsh r0, r0
/* 80AC1634  C8 3F 00 F0 */	lfd f1, 0xf0(r31)
/* 80AC1638  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AC163C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AC1640  3C 00 43 30 */	lis r0, 0x4330
/* 80AC1644  90 01 00 40 */	stw r0, 0x40(r1)
/* 80AC1648  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80AC164C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AC1650  EF E2 00 32 */	fmuls f31, f2, f0
/* 80AC1654  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AC1658  83 63 00 04 */	lwz r27, 4(r3)
/* 80AC165C  7F C3 F3 78 */	mr r3, r30
/* 80AC1660  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AC1664  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AC1668  7D 89 03 A6 */	mtctr r12
/* 80AC166C  4E 80 04 21 */	bctrl 
/* 80AC1670  7C 7C 1B 78 */	mr r28, r3
/* 80AC1674  7F C3 F3 78 */	mr r3, r30
/* 80AC1678  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AC167C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80AC1680  7D 89 03 A6 */	mtctr r12
/* 80AC1684  4E 80 04 21 */	bctrl 
/* 80AC1688  7C 7D 1B 78 */	mr r29, r3
/* 80AC168C  7F C3 F3 78 */	mr r3, r30
/* 80AC1690  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AC1694  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AC1698  7D 89 03 A6 */	mtctr r12
/* 80AC169C  4E 80 04 21 */	bctrl 
/* 80AC16A0  7C 67 1B 78 */	mr r7, r3
/* 80AC16A4  39 5F 00 00 */	addi r10, r31, 0
/* 80AC16A8  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80AC16AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AC16B0  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80AC16B4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AC16B8  7F C4 F3 78 */	mr r4, r30
/* 80AC16BC  7F 65 DB 78 */	mr r5, r27
/* 80AC16C0  38 C1 00 34 */	addi r6, r1, 0x34
/* 80AC16C4  7F A8 EB 78 */	mr r8, r29
/* 80AC16C8  7F 89 E3 78 */	mr r9, r28
/* 80AC16CC  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80AC16D0  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80AC16D4  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80AC16D8  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80AC16DC  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80AC16E0  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80AC16E4  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80AC16E8  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80AC16EC  39 40 00 00 */	li r10, 0
/* 80AC16F0  4B 68 55 E8 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80AC16F4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AC16F8  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80AC16FC  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80AC1700  FC 60 F8 90 */	fmr f3, f31
/* 80AC1704  4B 68 65 34 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80AC1708  7F C3 F3 78 */	mr r3, r30
/* 80AC170C  4B 68 7A 84 */	b setMtx__8daNpcT_cFv
/* 80AC1710  7F C3 F3 78 */	mr r3, r30
/* 80AC1714  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AC1718  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AC171C  7D 89 03 A6 */	mtctr r12
/* 80AC1720  4E 80 04 21 */	bctrl 
/* 80AC1724  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80AC1728  80 84 00 04 */	lwz r4, 4(r4)
/* 80AC172C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80AC1730  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80AC1734  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80AC1738  7C 64 02 14 */	add r3, r4, r0
/* 80AC173C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AC1740  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AC1744  4B 88 4D 6C */	b PSMTXCopy
/* 80AC1748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AC174C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AC1750  38 81 00 34 */	addi r4, r1, 0x34
/* 80AC1754  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AC1758  4B 88 56 14 */	b PSMTXMultVec
/* 80AC175C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AC1760  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AC1764  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AC1768  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AC176C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AC1770  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AC1774  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80AC1778  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AC177C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80AC1780  D0 1E 0E 0C */	stfs f0, 0xe0c(r30)
/* 80AC1784  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80AC1788  D0 1E 0E 10 */	stfs f0, 0xe10(r30)
/* 80AC178C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80AC1790  D0 1E 0E 14 */	stfs f0, 0xe14(r30)
/* 80AC1794  38 9E 0E 0C */	addi r4, r30, 0xe0c
/* 80AC1798  7C 85 23 78 */	mr r5, r4
/* 80AC179C  4B 88 55 D0 */	b PSMTXMultVec
/* 80AC17A0  38 7E 0E 0C */	addi r3, r30, 0xe0c
/* 80AC17A4  38 81 00 34 */	addi r4, r1, 0x34
/* 80AC17A8  7C 65 1B 78 */	mr r5, r3
/* 80AC17AC  4B 88 59 08 */	b PSVECSubtract
/* 80AC17B0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AC17B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AC17B8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AC17BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AC17C0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AC17C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AC17C8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AC17CC  38 81 00 28 */	addi r4, r1, 0x28
/* 80AC17D0  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80AC17D4  38 A0 00 00 */	li r5, 0
/* 80AC17D8  48 00 27 F9 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80AC17DC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AC17E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AC17E4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AC17E8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AC17EC  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AC17F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AC17F4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AC17F8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AC17FC  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80AC1800  38 C0 00 00 */	li r6, 0
/* 80AC1804  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80AC1808  38 E0 00 00 */	li r7, 0
/* 80AC180C  48 00 26 A9 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80AC1810  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80AC1814  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AC1818  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AC181C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80AC1820  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AC1824  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AC1828  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AC182C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AC1830  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AC1834  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80AC1838  4B 54 AB A4 */	b mDoMtx_YrotS__FPA4_fs
/* 80AC183C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AC1840  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AC1844  38 81 00 34 */	addi r4, r1, 0x34
/* 80AC1848  7C 85 23 78 */	mr r5, r4
/* 80AC184C  4B 88 55 20 */	b PSMTXMultVec
/* 80AC1850  38 61 00 10 */	addi r3, r1, 0x10
/* 80AC1854  38 81 00 34 */	addi r4, r1, 0x34
/* 80AC1858  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80AC185C  4B 7A 52 88 */	b __pl__4cXyzCFRC3Vec
/* 80AC1860  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80AC1864  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AC1868  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80AC186C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AC1870  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80AC1874  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80AC1878  7F C3 F3 78 */	mr r3, r30
/* 80AC187C  48 00 03 D1 */	bl setSe__12daNpc_Saru_cFv
/* 80AC1880  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80AC1884  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80AC1888  39 61 00 60 */	addi r11, r1, 0x60
/* 80AC188C  4B 8A 09 94 */	b _restgpr_27
/* 80AC1890  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80AC1894  7C 08 03 A6 */	mtlr r0
/* 80AC1898  38 21 00 70 */	addi r1, r1, 0x70
/* 80AC189C  4E 80 00 20 */	blr 
