lbl_80A2DB94:
/* 80A2DB94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2DB98  7C 08 02 A6 */	mflr r0
/* 80A2DB9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2DBA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2DBA4  4B 93 46 34 */	b _savegpr_28
/* 80A2DBA8  7C 7C 1B 78 */	mr r28, r3
/* 80A2DBAC  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A2DBB0  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A2DBB4  A0 1C 0E 2A */	lhz r0, 0xe2a(r28)
/* 80A2DBB8  2C 00 00 02 */	cmpwi r0, 2
/* 80A2DBBC  41 82 00 34 */	beq lbl_80A2DBF0
/* 80A2DBC0  40 80 00 D8 */	bge lbl_80A2DC98
/* 80A2DBC4  2C 00 00 00 */	cmpwi r0, 0
/* 80A2DBC8  40 80 00 0C */	bge lbl_80A2DBD4
/* 80A2DBCC  48 00 00 CC */	b lbl_80A2DC98
/* 80A2DBD0  48 00 00 C8 */	b lbl_80A2DC98
lbl_80A2DBD4:
/* 80A2DBD4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A2DBD8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A2DBDC  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80A2DBE0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80A2DBE4  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80A2DBE8  38 00 00 02 */	li r0, 2
/* 80A2DBEC  B0 1C 0E 2A */	sth r0, 0xe2a(r28)
lbl_80A2DBF0:
/* 80A2DBF0  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A2DBF4  AB A3 00 64 */	lha r29, 0x64(r3)
/* 80A2DBF8  2C 1D 00 00 */	cmpwi r29, 0
/* 80A2DBFC  41 80 00 2C */	blt lbl_80A2DC28
/* 80A2DC00  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A2DC04  7C 1D 00 00 */	cmpw r29, r0
/* 80A2DC08  41 82 00 20 */	beq lbl_80A2DC28
/* 80A2DC0C  83 DC 0B 90 */	lwz r30, 0xb90(r28)
/* 80A2DC10  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A2DC14  4B 71 7C 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2DC18  93 DC 0B 90 */	stw r30, 0xb90(r28)
/* 80A2DC1C  93 BC 0B 8C */	stw r29, 0xb8c(r28)
/* 80A2DC20  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2DC24  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A2DC28:
/* 80A2DC28  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80A2DC2C  AB C3 00 66 */	lha r30, 0x66(r3)
/* 80A2DC30  2C 1E 00 00 */	cmpwi r30, 0
/* 80A2DC34  41 80 00 2C */	blt lbl_80A2DC60
/* 80A2DC38  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A2DC3C  7C 1E 00 00 */	cmpw r30, r0
/* 80A2DC40  41 82 00 20 */	beq lbl_80A2DC60
/* 80A2DC44  83 BC 0B B4 */	lwz r29, 0xbb4(r28)
/* 80A2DC48  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A2DC4C  4B 71 7C 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2DC50  93 BC 0B B4 */	stw r29, 0xbb4(r28)
/* 80A2DC54  93 DC 0B B0 */	stw r30, 0xbb0(r28)
/* 80A2DC58  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A2DC5C  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
lbl_80A2DC60:
/* 80A2DC60  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A2DC64  2C 00 00 00 */	cmpwi r0, 0
/* 80A2DC68  41 82 00 24 */	beq lbl_80A2DC8C
/* 80A2DC6C  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A2DC70  4B 71 7A 8C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2DC74  38 00 00 00 */	li r0, 0
/* 80A2DC78  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A2DC7C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A2DC80  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A2DC84  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A2DC88  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A2DC8C:
/* 80A2DC8C  38 00 00 00 */	li r0, 0
/* 80A2DC90  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A2DC94  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80A2DC98:
/* 80A2DC98  38 60 00 00 */	li r3, 0
/* 80A2DC9C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2DCA0  4B 93 45 84 */	b _restgpr_28
/* 80A2DCA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2DCA8  7C 08 03 A6 */	mtlr r0
/* 80A2DCAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2DCB0  4E 80 00 20 */	blr 
