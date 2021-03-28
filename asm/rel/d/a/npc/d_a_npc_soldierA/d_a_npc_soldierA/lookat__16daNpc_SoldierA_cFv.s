lbl_80AF14AC:
/* 80AF14AC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80AF14B0  7C 08 02 A6 */	mflr r0
/* 80AF14B4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80AF14B8  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80AF14BC  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80AF14C0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80AF14C4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80AF14C8  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80AF14CC  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80AF14D0  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80AF14D4  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80AF14D8  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80AF14DC  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 80AF14E0  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80AF14E4  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 80AF14E8  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 80AF14EC  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 80AF14F0  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 80AF14F4  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 80AF14F8  39 61 00 60 */	addi r11, r1, 0x60
/* 80AF14FC  4B 87 0C D8 */	b _savegpr_27
/* 80AF1500  7C 7B 1B 78 */	mr r27, r3
/* 80AF1504  3C 60 80 AF */	lis r3, m__22daNpc_SoldierA_Param_c@ha
/* 80AF1508  3B E3 26 E8 */	addi r31, r3, m__22daNpc_SoldierA_Param_c@l
/* 80AF150C  38 60 00 00 */	li r3, 0
/* 80AF1510  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 80AF1514  83 C4 00 04 */	lwz r30, 4(r4)
/* 80AF1518  3B A0 00 00 */	li r29, 0
/* 80AF151C  38 9F 00 00 */	addi r4, r31, 0
/* 80AF1520  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 80AF1524  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 80AF1528  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 80AF152C  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 80AF1530  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 80AF1534  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 80AF1538  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 80AF153C  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 80AF1540  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 80AF1544  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80AF1548  7C 04 00 50 */	subf r0, r4, r0
/* 80AF154C  7C 1C 07 34 */	extsh r28, r0
/* 80AF1550  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 80AF1554  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AF1558  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 80AF155C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AF1560  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 80AF1564  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AF1568  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 80AF156C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AF1570  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 80AF1574  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AF1578  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 80AF157C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AF1580  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 80AF1584  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AF1588  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 80AF158C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AF1590  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 80AF1594  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AF1598  80 9F 01 64 */	lwz r4, 0x164(r31)
/* 80AF159C  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 80AF15A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80AF15A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AF15A8  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 80AF15AC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AF15B0  38 1B 09 1A */	addi r0, r27, 0x91a
/* 80AF15B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AF15B8  38 1B 09 20 */	addi r0, r27, 0x920
/* 80AF15BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AF15C0  38 1B 09 26 */	addi r0, r27, 0x926
/* 80AF15C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AF15C8  A8 1B 0E 14 */	lha r0, 0xe14(r27)
/* 80AF15CC  2C 00 00 01 */	cmpwi r0, 1
/* 80AF15D0  41 82 00 1C */	beq lbl_80AF15EC
/* 80AF15D4  40 80 00 08 */	bge lbl_80AF15DC
/* 80AF15D8  48 00 00 44 */	b lbl_80AF161C
lbl_80AF15DC:
/* 80AF15DC  2C 00 00 04 */	cmpwi r0, 4
/* 80AF15E0  41 82 00 34 */	beq lbl_80AF1614
/* 80AF15E4  40 80 00 38 */	bge lbl_80AF161C
/* 80AF15E8  48 00 00 0C */	b lbl_80AF15F4
lbl_80AF15EC:
/* 80AF15EC  3B A0 00 01 */	li r29, 1
/* 80AF15F0  48 00 00 2C */	b lbl_80AF161C
lbl_80AF15F4:
/* 80AF15F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF15F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF15FC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AF1600  2C 00 00 03 */	cmpwi r0, 3
/* 80AF1604  40 82 00 18 */	bne lbl_80AF161C
/* 80AF1608  C3 3F 01 70 */	lfs f25, 0x170(r31)
/* 80AF160C  C3 1F 01 74 */	lfs f24, 0x174(r31)
/* 80AF1610  48 00 00 0C */	b lbl_80AF161C
lbl_80AF1614:
/* 80AF1614  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80AF1618  4B 65 F0 D4 */	b getActorP__18daNpcF_ActorMngr_cFv
lbl_80AF161C:
/* 80AF161C  28 03 00 00 */	cmplwi r3, 0
/* 80AF1620  41 82 00 54 */	beq lbl_80AF1674
/* 80AF1624  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 80AF1628  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 80AF162C  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 80AF1630  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 80AF1634  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 80AF1638  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 80AF163C  A8 1B 0E 14 */	lha r0, 0xe14(r27)
/* 80AF1640  2C 00 00 02 */	cmpwi r0, 2
/* 80AF1644  41 82 00 24 */	beq lbl_80AF1668
/* 80AF1648  2C 00 00 03 */	cmpwi r0, 3
/* 80AF164C  41 82 00 1C */	beq lbl_80AF1668
/* 80AF1650  2C 00 00 04 */	cmpwi r0, 4
/* 80AF1654  41 82 00 14 */	beq lbl_80AF1668
/* 80AF1658  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 80AF165C  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 80AF1660  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AF1664  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_80AF1668:
/* 80AF1668  38 1B 08 78 */	addi r0, r27, 0x878
/* 80AF166C  90 1B 0C 0C */	stw r0, 0xc0c(r27)
/* 80AF1670  48 00 00 0C */	b lbl_80AF167C
lbl_80AF1674:
/* 80AF1674  38 00 00 00 */	li r0, 0
/* 80AF1678  90 1B 0C 0C */	stw r0, 0xc0c(r27)
lbl_80AF167C:
/* 80AF167C  D3 61 00 08 */	stfs f27, 8(r1)
/* 80AF1680  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 80AF1684  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 80AF1688  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 80AF168C  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80AF1690  FC 20 F8 90 */	fmr f1, f31
/* 80AF1694  FC 40 F0 90 */	fmr f2, f30
/* 80AF1698  FC 60 E8 90 */	fmr f3, f29
/* 80AF169C  FC 80 E0 90 */	fmr f4, f28
/* 80AF16A0  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 80AF16A4  FC C0 28 90 */	fmr f6, f5
/* 80AF16A8  FC E0 28 90 */	fmr f7, f5
/* 80AF16AC  FD 00 28 90 */	fmr f8, f5
/* 80AF16B0  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80AF16B4  38 A1 00 24 */	addi r5, r1, 0x24
/* 80AF16B8  4B 65 FA 00 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80AF16BC  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80AF16C0  7F 64 DB 78 */	mr r4, r27
/* 80AF16C4  38 BE 00 24 */	addi r5, r30, 0x24
/* 80AF16C8  38 C1 00 18 */	addi r6, r1, 0x18
/* 80AF16CC  7F A7 EB 78 */	mr r7, r29
/* 80AF16D0  7F 88 E3 78 */	mr r8, r28
/* 80AF16D4  39 20 00 00 */	li r9, 0
/* 80AF16D8  4B 65 FC 78 */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80AF16DC  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80AF16E0  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80AF16E4  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80AF16E8  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80AF16EC  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80AF16F0  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80AF16F4  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 80AF16F8  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80AF16FC  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 80AF1700  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80AF1704  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 80AF1708  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 80AF170C  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 80AF1710  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 80AF1714  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 80AF1718  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 80AF171C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AF1720  4B 87 0B 00 */	b _restgpr_27
/* 80AF1724  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80AF1728  7C 08 03 A6 */	mtlr r0
/* 80AF172C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80AF1730  4E 80 00 20 */	blr 
