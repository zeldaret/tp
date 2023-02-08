lbl_8072DB10:
/* 8072DB10  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8072DB14  7C 08 02 A6 */	mflr r0
/* 8072DB18  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8072DB1C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8072DB20  4B C3 46 BD */	bl _savegpr_29
/* 8072DB24  7C 7D 1B 78 */	mr r29, r3
/* 8072DB28  3C 60 80 73 */	lis r3, lit_3911@ha /* 0x80735B28@ha */
/* 8072DB2C  3B E3 5B 28 */	addi r31, r3, lit_3911@l /* 0x80735B28@l */
/* 8072DB30  38 61 00 50 */	addi r3, r1, 0x50
/* 8072DB34  4B 94 9A 49 */	bl __ct__11dBgS_GndChkFv
/* 8072DB38  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 8072DB3C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8072DB40  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8072DB44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8072DB48  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8072DB4C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8072DB50  C0 3D 07 E0 */	lfs f1, 0x7e0(r29)
/* 8072DB54  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8072DB58  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8072DB5C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8072DB60  EC 00 08 2A */	fadds f0, f0, f1
/* 8072DB64  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8072DB68  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8072DB6C  EC 00 10 2A */	fadds f0, f0, f2
/* 8072DB70  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8072DB74  38 61 00 50 */	addi r3, r1, 0x50
/* 8072DB78  38 81 00 44 */	addi r4, r1, 0x44
/* 8072DB7C  4B B3 A1 AD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8072DB80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072DB84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072DB88  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8072DB8C  7F C3 F3 78 */	mr r3, r30
/* 8072DB90  38 81 00 50 */	addi r4, r1, 0x50
/* 8072DB94  4B 94 69 0D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8072DB98  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8072DB9C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8072DBA0  FC 20 08 18 */	frsp f1, f1
/* 8072DBA4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8072DBA8  41 82 00 54 */	beq lbl_8072DBFC
/* 8072DBAC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8072DBB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8072DBB4  FC 00 02 10 */	fabs f0, f0
/* 8072DBB8  FC 20 00 18 */	frsp f1, f0
/* 8072DBBC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8072DBC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072DBC4  40 80 00 38 */	bge lbl_8072DBFC
/* 8072DBC8  38 61 00 14 */	addi r3, r1, 0x14
/* 8072DBCC  38 81 00 44 */	addi r4, r1, 0x44
/* 8072DBD0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8072DBD4  4B B3 8F 61 */	bl __mi__4cXyzCFRC3Vec
/* 8072DBD8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8072DBDC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8072DBE0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8072DBE4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8072DBE8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8072DBEC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8072DBF0  4B B3 9A 85 */	bl cM_atan2s__Fff
/* 8072DBF4  7C 03 00 D0 */	neg r0, r3
/* 8072DBF8  B0 1D 06 88 */	sth r0, 0x688(r29)
lbl_8072DBFC:
/* 8072DBFC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8072DC00  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8072DC04  EC 01 00 2A */	fadds f0, f1, f0
/* 8072DC08  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8072DC0C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8072DC10  EC 01 00 2A */	fadds f0, f1, f0
/* 8072DC14  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8072DC18  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8072DC1C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8072DC20  38 61 00 50 */	addi r3, r1, 0x50
/* 8072DC24  38 81 00 38 */	addi r4, r1, 0x38
/* 8072DC28  4B B3 A1 01 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8072DC2C  7F C3 F3 78 */	mr r3, r30
/* 8072DC30  38 81 00 50 */	addi r4, r1, 0x50
/* 8072DC34  4B 94 68 6D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8072DC38  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8072DC3C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8072DC40  FC 20 08 18 */	frsp f1, f1
/* 8072DC44  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8072DC48  41 82 00 50 */	beq lbl_8072DC98
/* 8072DC4C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8072DC50  EC 01 00 28 */	fsubs f0, f1, f0
/* 8072DC54  FC 00 02 10 */	fabs f0, f0
/* 8072DC58  FC 20 00 18 */	frsp f1, f0
/* 8072DC5C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 8072DC60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072DC64  40 80 00 34 */	bge lbl_8072DC98
/* 8072DC68  38 61 00 08 */	addi r3, r1, 8
/* 8072DC6C  38 81 00 38 */	addi r4, r1, 0x38
/* 8072DC70  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8072DC74  4B B3 8E C1 */	bl __mi__4cXyzCFRC3Vec
/* 8072DC78  C0 41 00 08 */	lfs f2, 8(r1)
/* 8072DC7C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8072DC80  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8072DC84  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8072DC88  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8072DC8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8072DC90  4B B3 99 E5 */	bl cM_atan2s__Fff
/* 8072DC94  B0 7D 06 8C */	sth r3, 0x68c(r29)
lbl_8072DC98:
/* 8072DC98  38 61 00 50 */	addi r3, r1, 0x50
/* 8072DC9C  38 80 FF FF */	li r4, -1
/* 8072DCA0  4B 94 99 51 */	bl __dt__11dBgS_GndChkFv
/* 8072DCA4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8072DCA8  4B C3 45 81 */	bl _restgpr_29
/* 8072DCAC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8072DCB0  7C 08 03 A6 */	mtlr r0
/* 8072DCB4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8072DCB8  4E 80 00 20 */	blr 
