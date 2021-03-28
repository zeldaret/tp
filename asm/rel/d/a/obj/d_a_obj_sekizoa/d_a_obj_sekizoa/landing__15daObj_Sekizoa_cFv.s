lbl_80CD14D8:
/* 80CD14D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CD14DC  7C 08 02 A6 */	mflr r0
/* 80CD14E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CD14E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD14E8  4B 69 0C F4 */	b _savegpr_29
/* 80CD14EC  7C 7F 1B 78 */	mr r31, r3
/* 80CD14F0  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha
/* 80CD14F4  3B C3 5C FC */	addi r30, r3, m__21daObj_Sekizoa_Param_c@l
/* 80CD14F8  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600DB@ha */
/* 80CD14FC  38 03 00 DB */	addi r0, r3, 0x00DB /* 0x000600DB@l */
/* 80CD1500  90 01 00 08 */	stw r0, 8(r1)
/* 80CD1504  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CD1508  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CD150C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD1510  38 81 00 08 */	addi r4, r1, 8
/* 80CD1514  38 A0 00 00 */	li r5, 0
/* 80CD1518  38 C0 00 00 */	li r6, 0
/* 80CD151C  38 E0 00 00 */	li r7, 0
/* 80CD1520  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80CD1524  FC 40 08 90 */	fmr f2, f1
/* 80CD1528  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 80CD152C  FC 80 18 90 */	fmr f4, f3
/* 80CD1530  39 00 00 00 */	li r8, 0
/* 80CD1534  4B 5D A4 50 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CD1538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD153C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD1540  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD1544  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD1548  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD154C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CD1550  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD1554  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CD1558  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CD155C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CD1560  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CD1564  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CD1568  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CD156C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CD1570  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CD1574  7F E3 FB 78 */	mr r3, r31
/* 80CD1578  38 81 00 10 */	addi r4, r1, 0x10
/* 80CD157C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80CD1580  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 80CD1584  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 80CD1588  C0 7E 01 34 */	lfs f3, 0x134(r30)
/* 80CD158C  38 C0 00 00 */	li r6, 0
/* 80CD1590  4B 47 97 60 */	b chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80CD1594  2C 03 00 00 */	cmpwi r3, 0
/* 80CD1598  41 82 00 2C */	beq lbl_80CD15C4
/* 80CD159C  38 00 00 99 */	li r0, 0x99
/* 80CD15A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CD15A4  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CD15A8  38 81 00 0C */	addi r4, r1, 0xc
/* 80CD15AC  38 A0 00 00 */	li r5, 0
/* 80CD15B0  38 C0 FF FF */	li r6, -1
/* 80CD15B4  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80CD15B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD15BC  7D 89 03 A6 */	mtctr r12
/* 80CD15C0  4E 80 04 21 */	bctrl 
lbl_80CD15C4:
/* 80CD15C4  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80CD15C8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CD15CC  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80CD15D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CD15D4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CD15D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CD15DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CD15E0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CD15E4  38 80 00 07 */	li r4, 7
/* 80CD15E8  38 A0 00 0F */	li r5, 0xf
/* 80CD15EC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80CD15F0  4B 39 E4 34 */	b StartShock__12dVibration_cFii4cXyz
/* 80CD15F4  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD15F8  2C 00 00 01 */	cmpwi r0, 1
/* 80CD15FC  41 82 00 48 */	beq lbl_80CD1644
/* 80CD1600  40 80 00 70 */	bge lbl_80CD1670
/* 80CD1604  2C 00 00 00 */	cmpwi r0, 0
/* 80CD1608  40 80 00 0C */	bge lbl_80CD1614
/* 80CD160C  48 00 00 64 */	b lbl_80CD1670
/* 80CD1610  48 00 00 60 */	b lbl_80CD1670
lbl_80CD1614:
/* 80CD1614  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1618  2C 00 00 09 */	cmpwi r0, 9
/* 80CD161C  41 82 00 54 */	beq lbl_80CD1670
/* 80CD1620  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80CD1624  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD1628  4B 47 42 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD162C  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80CD1630  38 00 00 09 */	li r0, 9
/* 80CD1634  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD1638  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80CD163C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80CD1640  48 00 00 30 */	b lbl_80CD1670
lbl_80CD1644:
/* 80CD1644  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80CD1648  2C 00 00 14 */	cmpwi r0, 0x14
/* 80CD164C  41 82 00 24 */	beq lbl_80CD1670
/* 80CD1650  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80CD1654  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD1658  4B 47 42 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD165C  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80CD1660  38 00 00 14 */	li r0, 0x14
/* 80CD1664  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80CD1668  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80CD166C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80CD1670:
/* 80CD1670  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD1674  4B 69 0B B4 */	b _restgpr_29
/* 80CD1678  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CD167C  7C 08 03 A6 */	mtlr r0
/* 80CD1680  38 21 00 50 */	addi r1, r1, 0x50
/* 80CD1684  4E 80 00 20 */	blr 
