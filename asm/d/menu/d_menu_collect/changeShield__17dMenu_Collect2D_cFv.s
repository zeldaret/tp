lbl_801B2D00:
/* 801B2D00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B2D04  7C 08 02 A6 */	mflr r0
/* 801B2D08  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B2D0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B2D10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B2D14  7C 7E 1B 78 */	mr r30, r3
/* 801B2D18  88 03 02 57 */	lbz r0, 0x257(r3)
/* 801B2D1C  2C 00 00 04 */	cmpwi r0, 4
/* 801B2D20  41 82 01 38 */	beq lbl_801B2E58
/* 801B2D24  40 80 01 A8 */	bge lbl_801B2ECC
/* 801B2D28  2C 00 00 03 */	cmpwi r0, 3
/* 801B2D2C  40 80 00 08 */	bge lbl_801B2D34
/* 801B2D30  48 00 01 9C */	b lbl_801B2ECC
lbl_801B2D34:
/* 801B2D34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2D38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2D3C  3B E3 00 CC */	addi r31, r3, 0xcc
/* 801B2D40  7F E3 FB 78 */	mr r3, r31
/* 801B2D44  38 80 00 2B */	li r4, 0x2b
/* 801B2D48  4B E8 11 81 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B2D4C  2C 03 00 00 */	cmpwi r3, 0
/* 801B2D50  41 82 00 7C */	beq lbl_801B2DCC
/* 801B2D54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2D58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2D5C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 801B2D60  28 00 00 2B */	cmplwi r0, 0x2b
/* 801B2D64  41 82 01 68 */	beq lbl_801B2ECC
/* 801B2D68  38 60 00 2B */	li r3, 0x2b
/* 801B2D6C  38 80 00 00 */	li r4, 0
/* 801B2D70  48 06 B8 65 */	bl dMeter2Info_setShield__FUcb
/* 801B2D74  7F C3 F3 78 */	mr r3, r30
/* 801B2D78  38 80 00 00 */	li r4, 0
/* 801B2D7C  48 00 0F 79 */	bl setEquipItemFrameColorShield__17dMenu_Collect2D_cFi
/* 801B2D80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2D84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2D88  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801B2D8C  4B F8 D2 D9 */	bl setShieldChange__9daAlink_cFv
/* 801B2D90  38 00 00 4F */	li r0, 0x4f
/* 801B2D94  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B2D98  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B2D9C  38 81 00 10 */	addi r4, r1, 0x10
/* 801B2DA0  38 A0 00 00 */	li r5, 0
/* 801B2DA4  38 C0 00 00 */	li r6, 0
/* 801B2DA8  38 E0 00 00 */	li r7, 0
/* 801B2DAC  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2DB0  FC 40 08 90 */	fmr f2, f1
/* 801B2DB4  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B2DB8  FC 80 18 90 */	fmr f4, f3
/* 801B2DBC  39 00 00 00 */	li r8, 0
/* 801B2DC0  48 0F 8B C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B2DC4  48 06 BC 0D */	bl dMeter2Info_set2DVibration__Fv
/* 801B2DC8  48 00 01 04 */	b lbl_801B2ECC
lbl_801B2DCC:
/* 801B2DCC  7F E3 FB 78 */	mr r3, r31
/* 801B2DD0  38 80 00 2A */	li r4, 0x2a
/* 801B2DD4  4B E8 10 F5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B2DD8  2C 03 00 00 */	cmpwi r3, 0
/* 801B2DDC  41 82 00 F0 */	beq lbl_801B2ECC
/* 801B2DE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2DE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2DE8  88 03 00 15 */	lbz r0, 0x15(r3)
/* 801B2DEC  28 00 00 2A */	cmplwi r0, 0x2a
/* 801B2DF0  41 82 00 DC */	beq lbl_801B2ECC
/* 801B2DF4  38 60 00 2A */	li r3, 0x2a
/* 801B2DF8  38 80 00 00 */	li r4, 0
/* 801B2DFC  48 06 B7 D9 */	bl dMeter2Info_setShield__FUcb
/* 801B2E00  7F C3 F3 78 */	mr r3, r30
/* 801B2E04  38 80 00 00 */	li r4, 0
/* 801B2E08  48 00 0E ED */	bl setEquipItemFrameColorShield__17dMenu_Collect2D_cFi
/* 801B2E0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2E10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2E14  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801B2E18  4B F8 D2 4D */	bl setShieldChange__9daAlink_cFv
/* 801B2E1C  38 00 00 4F */	li r0, 0x4f
/* 801B2E20  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B2E24  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B2E28  38 81 00 0C */	addi r4, r1, 0xc
/* 801B2E2C  38 A0 00 00 */	li r5, 0
/* 801B2E30  38 C0 00 00 */	li r6, 0
/* 801B2E34  38 E0 00 00 */	li r7, 0
/* 801B2E38  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2E3C  FC 40 08 90 */	fmr f2, f1
/* 801B2E40  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B2E44  FC 80 18 90 */	fmr f4, f3
/* 801B2E48  39 00 00 00 */	li r8, 0
/* 801B2E4C  48 0F 8B 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B2E50  48 06 BB 81 */	bl dMeter2Info_set2DVibration__Fv
/* 801B2E54  48 00 00 78 */	b lbl_801B2ECC
lbl_801B2E58:
/* 801B2E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2E5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2E60  88 03 00 15 */	lbz r0, 0x15(r3)
/* 801B2E64  28 00 00 2C */	cmplwi r0, 0x2c
/* 801B2E68  41 82 00 64 */	beq lbl_801B2ECC
/* 801B2E6C  38 60 00 2C */	li r3, 0x2c
/* 801B2E70  38 80 00 00 */	li r4, 0
/* 801B2E74  48 06 B7 61 */	bl dMeter2Info_setShield__FUcb
/* 801B2E78  7F C3 F3 78 */	mr r3, r30
/* 801B2E7C  38 80 00 01 */	li r4, 1
/* 801B2E80  48 00 0E 75 */	bl setEquipItemFrameColorShield__17dMenu_Collect2D_cFi
/* 801B2E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2E88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2E8C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801B2E90  4B F8 D1 D5 */	bl setShieldChange__9daAlink_cFv
/* 801B2E94  38 00 00 4F */	li r0, 0x4f
/* 801B2E98  90 01 00 08 */	stw r0, 8(r1)
/* 801B2E9C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B2EA0  38 81 00 08 */	addi r4, r1, 8
/* 801B2EA4  38 A0 00 00 */	li r5, 0
/* 801B2EA8  38 C0 00 00 */	li r6, 0
/* 801B2EAC  38 E0 00 00 */	li r7, 0
/* 801B2EB0  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2EB4  FC 40 08 90 */	fmr f2, f1
/* 801B2EB8  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B2EBC  FC 80 18 90 */	fmr f4, f3
/* 801B2EC0  39 00 00 00 */	li r8, 0
/* 801B2EC4  48 0F 8A C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B2EC8  48 06 BB 09 */	bl dMeter2Info_set2DVibration__Fv
lbl_801B2ECC:
/* 801B2ECC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B2ED0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B2ED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B2ED8  7C 08 03 A6 */	mtlr r0
/* 801B2EDC  38 21 00 20 */	addi r1, r1, 0x20
/* 801B2EE0  4E 80 00 20 */	blr 
