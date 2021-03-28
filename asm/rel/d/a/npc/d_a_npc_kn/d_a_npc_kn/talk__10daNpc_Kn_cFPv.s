lbl_80A2D9C4:
/* 80A2D9C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A2D9C8  7C 08 02 A6 */	mflr r0
/* 80A2D9CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A2D9D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2D9D4  4B 93 48 08 */	b _savegpr_29
/* 80A2D9D8  7C 7E 1B 78 */	mr r30, r3
/* 80A2D9DC  3B E0 00 00 */	li r31, 0
/* 80A2D9E0  A0 03 0E 2A */	lhz r0, 0xe2a(r3)
/* 80A2D9E4  2C 00 00 02 */	cmpwi r0, 2
/* 80A2D9E8  41 82 00 2C */	beq lbl_80A2DA14
/* 80A2D9EC  40 80 01 8C */	bge lbl_80A2DB78
/* 80A2D9F0  2C 00 00 00 */	cmpwi r0, 0
/* 80A2D9F4  40 80 00 0C */	bge lbl_80A2DA00
/* 80A2D9F8  48 00 01 80 */	b lbl_80A2DB78
/* 80A2D9FC  48 00 01 7C */	b lbl_80A2DB78
lbl_80A2DA00:
/* 80A2DA00  80 9E 0A B0 */	lwz r4, 0xab0(r30)
/* 80A2DA04  38 A0 00 00 */	li r5, 0
/* 80A2DA08  48 00 D9 E1 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A2DA0C  38 00 00 02 */	li r0, 2
/* 80A2DA10  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A2DA14:
/* 80A2DA14  88 1E 0A BD */	lbz r0, 0xabd(r30)
/* 80A2DA18  28 00 00 00 */	cmplwi r0, 0
/* 80A2DA1C  40 82 01 04 */	bne lbl_80A2DB20
/* 80A2DA20  80 1E 0D 14 */	lwz r0, 0xd14(r30)
/* 80A2DA24  2C 00 00 01 */	cmpwi r0, 1
/* 80A2DA28  41 82 00 2C */	beq lbl_80A2DA54
/* 80A2DA2C  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A2DA30  4B 71 7C CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A2DA34  38 00 00 00 */	li r0, 0
/* 80A2DA38  90 1E 0B FC */	stw r0, 0xbfc(r30)
/* 80A2DA3C  3C 60 80 A4 */	lis r3, lit_4204@ha
/* 80A2DA40  C0 03 09 00 */	lfs f0, lit_4204@l(r3)
/* 80A2DA44  D0 1E 0D 28 */	stfs f0, 0xd28(r30)
/* 80A2DA48  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A2DA4C  38 00 00 01 */	li r0, 1
/* 80A2DA50  90 1E 0D 14 */	stw r0, 0xd14(r30)
lbl_80A2DA54:
/* 80A2DA54  38 00 00 00 */	li r0, 0
/* 80A2DA58  98 1E 0D 33 */	stb r0, 0xd33(r30)
/* 80A2DA5C  7F C3 F3 78 */	mr r3, r30
/* 80A2DA60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A2DA64  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80A2DA68  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A2DA6C  4B 5E CC A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2DA70  A8 9E 0D AE */	lha r4, 0xdae(r30)
/* 80A2DA74  7C 60 07 34 */	extsh r0, r3
/* 80A2DA78  7C 04 00 00 */	cmpw r4, r0
/* 80A2DA7C  40 82 00 0C */	bne lbl_80A2DA88
/* 80A2DA80  3B E0 00 01 */	li r31, 1
/* 80A2DA84  48 00 00 A0 */	b lbl_80A2DB24
lbl_80A2DA88:
/* 80A2DA88  7F C3 F3 78 */	mr r3, r30
/* 80A2DA8C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A2DA90  4B 5E CC 80 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A2DA94  7C 64 1B 78 */	mr r4, r3
/* 80A2DA98  7F C3 F3 78 */	mr r3, r30
/* 80A2DA9C  38 A0 00 01 */	li r5, 1
/* 80A2DAA0  38 C0 00 20 */	li r6, 0x20
/* 80A2DAA4  38 E0 00 14 */	li r7, 0x14
/* 80A2DAA8  39 00 00 00 */	li r8, 0
/* 80A2DAAC  48 00 D7 75 */	bl step__10daNpc_Kn_cFsiiii
/* 80A2DAB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A2DAB4  41 82 00 70 */	beq lbl_80A2DB24
/* 80A2DAB8  3B E0 00 01 */	li r31, 1
/* 80A2DABC  80 1E 0B 8C */	lwz r0, 0xb8c(r30)
/* 80A2DAC0  2C 00 00 01 */	cmpwi r0, 1
/* 80A2DAC4  41 82 00 28 */	beq lbl_80A2DAEC
/* 80A2DAC8  83 BE 0B 90 */	lwz r29, 0xb90(r30)
/* 80A2DACC  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 80A2DAD0  4B 71 7D C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2DAD4  93 BE 0B 90 */	stw r29, 0xb90(r30)
/* 80A2DAD8  38 00 00 01 */	li r0, 1
/* 80A2DADC  90 1E 0B 8C */	stw r0, 0xb8c(r30)
/* 80A2DAE0  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A2DAE4  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A2DAE8  D0 1E 0B 9C */	stfs f0, 0xb9c(r30)
lbl_80A2DAEC:
/* 80A2DAEC  80 1E 0B B0 */	lwz r0, 0xbb0(r30)
/* 80A2DAF0  2C 00 00 00 */	cmpwi r0, 0
/* 80A2DAF4  41 82 00 30 */	beq lbl_80A2DB24
/* 80A2DAF8  83 BE 0B B4 */	lwz r29, 0xbb4(r30)
/* 80A2DAFC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A2DB00  4B 71 7D 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A2DB04  93 BE 0B B4 */	stw r29, 0xbb4(r30)
/* 80A2DB08  38 00 00 00 */	li r0, 0
/* 80A2DB0C  90 1E 0B B0 */	stw r0, 0xbb0(r30)
/* 80A2DB10  3C 60 80 A4 */	lis r3, lit_4613@ha
/* 80A2DB14  C0 03 09 14 */	lfs f0, lit_4613@l(r3)
/* 80A2DB18  D0 1E 0B C0 */	stfs f0, 0xbc0(r30)
/* 80A2DB1C  48 00 00 08 */	b lbl_80A2DB24
lbl_80A2DB20:
/* 80A2DB20  3B E0 00 01 */	li r31, 1
lbl_80A2DB24:
/* 80A2DB24  2C 1F 00 00 */	cmpwi r31, 0
/* 80A2DB28  41 82 00 50 */	beq lbl_80A2DB78
/* 80A2DB2C  7F C3 F3 78 */	mr r3, r30
/* 80A2DB30  38 80 00 00 */	li r4, 0
/* 80A2DB34  38 A0 00 00 */	li r5, 0
/* 80A2DB38  38 C0 00 00 */	li r6, 0
/* 80A2DB3C  38 E0 00 00 */	li r7, 0
/* 80A2DB40  48 00 D9 09 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A2DB44  2C 03 00 00 */	cmpwi r3, 0
/* 80A2DB48  41 82 00 30 */	beq lbl_80A2DB78
/* 80A2DB4C  38 7E 0B CC */	addi r3, r30, 0xbcc
/* 80A2DB50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A2DB54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A2DB58  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A2DB5C  4B 71 7B 84 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A2DB60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2DB64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A2DB68  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A2DB6C  4B 61 48 FC */	b reset__14dEvt_control_cFv
/* 80A2DB70  38 00 00 03 */	li r0, 3
/* 80A2DB74  B0 1E 0E 2A */	sth r0, 0xe2a(r30)
lbl_80A2DB78:
/* 80A2DB78  38 60 00 00 */	li r3, 0
/* 80A2DB7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A2DB80  4B 93 46 A8 */	b _restgpr_29
/* 80A2DB84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A2DB88  7C 08 03 A6 */	mtlr r0
/* 80A2DB8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2DB90  4E 80 00 20 */	blr 
