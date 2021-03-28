lbl_80B3DB50:
/* 80B3DB50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B3DB54  7C 08 02 A6 */	mflr r0
/* 80B3DB58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B3DB5C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B3DB60  4B 82 46 74 */	b _savegpr_27
/* 80B3DB64  7C 7E 1B 78 */	mr r30, r3
/* 80B3DB68  7C 9B 23 78 */	mr r27, r4
/* 80B3DB6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3DB70  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B3DB74  3B 9F 4F F8 */	addi r28, r31, 0x4ff8
/* 80B3DB78  7F 83 E3 78 */	mr r3, r28
/* 80B3DB7C  4B 50 A3 E0 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80B3DB80  7C 7D 1B 78 */	mr r29, r3
/* 80B3DB84  7F 83 E3 78 */	mr r3, r28
/* 80B3DB88  7F 64 DB 78 */	mr r4, r27
/* 80B3DB8C  4B 50 A1 C0 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B3DB90  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DB94  41 82 00 50 */	beq lbl_80B3DBE4
/* 80B3DB98  80 9D 00 00 */	lwz r4, 0(r29)
/* 80B3DB9C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80B3DBA0  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80B3DBA4  7C 04 00 00 */	cmpw r4, r0
/* 80B3DBA8  40 80 00 3C */	bge lbl_80B3DBE4
/* 80B3DBAC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B3DBB0  7C 04 00 00 */	cmpw r4, r0
/* 80B3DBB4  40 80 00 08 */	bge lbl_80B3DBBC
/* 80B3DBB8  48 00 00 2C */	b lbl_80B3DBE4
lbl_80B3DBBC:
/* 80B3DBBC  A8 1E 0E 90 */	lha r0, 0xe90(r30)
/* 80B3DBC0  2C 00 00 03 */	cmpwi r0, 3
/* 80B3DBC4  41 82 00 0C */	beq lbl_80B3DBD0
/* 80B3DBC8  38 00 00 03 */	li r0, 3
/* 80B3DBCC  B0 1E 0E 90 */	sth r0, 0xe90(r30)
lbl_80B3DBD0:
/* 80B3DBD0  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B3DBD4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B3DBD8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B3DBDC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B3DBE0  4B 61 2A DC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80B3DBE4:
/* 80B3DBE4  80 9D 00 00 */	lwz r4, 0(r29)
/* 80B3DBE8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80B3DBEC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80B3DBF0  7C 04 00 00 */	cmpw r4, r0
/* 80B3DBF4  41 82 00 20 */	beq lbl_80B3DC14
/* 80B3DBF8  40 80 00 D4 */	bge lbl_80B3DCCC
/* 80B3DBFC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B3DC00  7C 04 00 00 */	cmpw r4, r0
/* 80B3DC04  40 80 00 08 */	bge lbl_80B3DC0C
/* 80B3DC08  48 00 00 C4 */	b lbl_80B3DCCC
lbl_80B3DC0C:
/* 80B3DC0C  38 60 00 01 */	li r3, 1
/* 80B3DC10  48 00 00 C0 */	b lbl_80B3DCD0
lbl_80B3DC14:
/* 80B3DC14  38 00 00 02 */	li r0, 2
/* 80B3DC18  90 1E 0E 7C */	stw r0, 0xe7c(r30)
/* 80B3DC1C  3C 60 80 B4 */	lis r3, lit_10156@ha
/* 80B3DC20  38 83 2C C0 */	addi r4, r3, lit_10156@l
/* 80B3DC24  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3DC28  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3DC2C  90 61 00 08 */	stw r3, 8(r1)
/* 80B3DC30  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B3DC34  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3DC38  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B3DC3C  38 00 00 03 */	li r0, 3
/* 80B3DC40  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B3DC44  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B3DC48  4B 82 43 D0 */	b __ptmf_test
/* 80B3DC4C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DC50  41 82 00 18 */	beq lbl_80B3DC68
/* 80B3DC54  7F C3 F3 78 */	mr r3, r30
/* 80B3DC58  38 80 00 00 */	li r4, 0
/* 80B3DC5C  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B3DC60  4B 82 44 24 */	b __ptmf_scall
/* 80B3DC64  60 00 00 00 */	nop 
lbl_80B3DC68:
/* 80B3DC68  38 00 00 00 */	li r0, 0
/* 80B3DC6C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B3DC70  80 61 00 08 */	lwz r3, 8(r1)
/* 80B3DC74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B3DC78  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B3DC7C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B3DC80  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B3DC84  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B3DC88  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B3DC8C  4B 82 43 8C */	b __ptmf_test
/* 80B3DC90  2C 03 00 00 */	cmpwi r3, 0
/* 80B3DC94  41 82 00 18 */	beq lbl_80B3DCAC
/* 80B3DC98  7F C3 F3 78 */	mr r3, r30
/* 80B3DC9C  38 80 00 00 */	li r4, 0
/* 80B3DCA0  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B3DCA4  4B 82 43 E0 */	b __ptmf_scall
/* 80B3DCA8  60 00 00 00 */	nop 
lbl_80B3DCAC:
/* 80B3DCAC  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B3DCB0  4B 50 47 B8 */	b reset__14dEvt_control_cFv
/* 80B3DCB4  38 00 00 00 */	li r0, 0
/* 80B3DCB8  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80B3DCBC  38 00 FF FF */	li r0, -1
/* 80B3DCC0  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80B3DCC4  38 60 00 01 */	li r3, 1
/* 80B3DCC8  48 00 00 08 */	b lbl_80B3DCD0
lbl_80B3DCCC:
/* 80B3DCCC  38 60 00 00 */	li r3, 0
lbl_80B3DCD0:
/* 80B3DCD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B3DCD4  4B 82 45 4C */	b _restgpr_27
/* 80B3DCD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B3DCDC  7C 08 03 A6 */	mtlr r0
/* 80B3DCE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80B3DCE4  4E 80 00 20 */	blr 
