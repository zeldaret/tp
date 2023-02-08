lbl_801B2A74:
/* 801B2A74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B2A78  7C 08 02 A6 */	mflr r0
/* 801B2A7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B2A80  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B2A84  7C 7F 1B 78 */	mr r31, r3
/* 801B2A88  88 03 02 57 */	lbz r0, 0x257(r3)
/* 801B2A8C  2C 00 00 04 */	cmpwi r0, 4
/* 801B2A90  41 82 01 0C */	beq lbl_801B2B9C
/* 801B2A94  40 80 00 10 */	bge lbl_801B2AA4
/* 801B2A98  2C 00 00 03 */	cmpwi r0, 3
/* 801B2A9C  40 80 00 14 */	bge lbl_801B2AB0
/* 801B2AA0  48 00 02 4C */	b lbl_801B2CEC
lbl_801B2AA4:
/* 801B2AA4  2C 00 00 06 */	cmpwi r0, 6
/* 801B2AA8  40 80 02 44 */	bge lbl_801B2CEC
/* 801B2AAC  48 00 01 DC */	b lbl_801B2C88
lbl_801B2AB0:
/* 801B2AB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B2AB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B2AB8  38 63 00 CC */	addi r3, r3, 0xcc
/* 801B2ABC  38 80 00 28 */	li r4, 0x28
/* 801B2AC0  4B E8 14 09 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B2AC4  2C 03 00 00 */	cmpwi r3, 0
/* 801B2AC8  41 82 00 6C */	beq lbl_801B2B34
/* 801B2ACC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B2AD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B2AD4  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801B2AD8  28 00 00 28 */	cmplwi r0, 0x28
/* 801B2ADC  41 82 02 10 */	beq lbl_801B2CEC
/* 801B2AE0  38 60 00 28 */	li r3, 0x28
/* 801B2AE4  38 80 00 00 */	li r4, 0
/* 801B2AE8  48 06 BA 49 */	bl dMeter2Info_setSword__FUcb
/* 801B2AEC  7F E3 FB 78 */	mr r3, r31
/* 801B2AF0  38 80 00 00 */	li r4, 0
/* 801B2AF4  48 00 0E DD */	bl setEquipItemFrameColorSword__17dMenu_Collect2D_cFi
/* 801B2AF8  38 00 00 4F */	li r0, 0x4f
/* 801B2AFC  90 01 00 08 */	stw r0, 8(r1)
/* 801B2B00  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B2B04  38 81 00 08 */	addi r4, r1, 8
/* 801B2B08  38 A0 00 00 */	li r5, 0
/* 801B2B0C  38 C0 00 00 */	li r6, 0
/* 801B2B10  38 E0 00 00 */	li r7, 0
/* 801B2B14  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2B18  FC 40 08 90 */	fmr f2, f1
/* 801B2B1C  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B2B20  FC 80 18 90 */	fmr f4, f3
/* 801B2B24  39 00 00 00 */	li r8, 0
/* 801B2B28  48 0F 8E 5D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B2B2C  48 06 BE A5 */	bl dMeter2Info_set2DVibration__Fv
/* 801B2B30  48 00 01 BC */	b lbl_801B2CEC
lbl_801B2B34:
/* 801B2B34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B2B38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B2B3C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801B2B40  28 00 00 3F */	cmplwi r0, 0x3f
/* 801B2B44  41 82 01 A8 */	beq lbl_801B2CEC
/* 801B2B48  38 60 00 3F */	li r3, 0x3f
/* 801B2B4C  38 80 00 00 */	li r4, 0
/* 801B2B50  48 06 B9 E1 */	bl dMeter2Info_setSword__FUcb
/* 801B2B54  7F E3 FB 78 */	mr r3, r31
/* 801B2B58  38 80 00 00 */	li r4, 0
/* 801B2B5C  48 00 0E 75 */	bl setEquipItemFrameColorSword__17dMenu_Collect2D_cFi
/* 801B2B60  38 00 00 4F */	li r0, 0x4f
/* 801B2B64  90 01 00 18 */	stw r0, 0x18(r1)
/* 801B2B68  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B2B6C  38 81 00 18 */	addi r4, r1, 0x18
/* 801B2B70  38 A0 00 00 */	li r5, 0
/* 801B2B74  38 C0 00 00 */	li r6, 0
/* 801B2B78  38 E0 00 00 */	li r7, 0
/* 801B2B7C  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2B80  FC 40 08 90 */	fmr f2, f1
/* 801B2B84  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B2B88  FC 80 18 90 */	fmr f4, f3
/* 801B2B8C  39 00 00 00 */	li r8, 0
/* 801B2B90  48 0F 8D F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B2B94  48 06 BE 3D */	bl dMeter2Info_set2DVibration__Fv
/* 801B2B98  48 00 01 54 */	b lbl_801B2CEC
lbl_801B2B9C:
/* 801B2B9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B2BA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B2BA4  38 63 00 CC */	addi r3, r3, 0xcc
/* 801B2BA8  38 80 00 49 */	li r4, 0x49
/* 801B2BAC  4B E8 13 1D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B2BB0  2C 03 00 00 */	cmpwi r3, 0
/* 801B2BB4  41 82 00 6C */	beq lbl_801B2C20
/* 801B2BB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B2BBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B2BC0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801B2BC4  28 00 00 49 */	cmplwi r0, 0x49
/* 801B2BC8  41 82 01 24 */	beq lbl_801B2CEC
/* 801B2BCC  38 60 00 49 */	li r3, 0x49
/* 801B2BD0  38 80 00 00 */	li r4, 0
/* 801B2BD4  48 06 B9 5D */	bl dMeter2Info_setSword__FUcb
/* 801B2BD8  7F E3 FB 78 */	mr r3, r31
/* 801B2BDC  38 80 00 01 */	li r4, 1
/* 801B2BE0  48 00 0D F1 */	bl setEquipItemFrameColorSword__17dMenu_Collect2D_cFi
/* 801B2BE4  38 00 00 4F */	li r0, 0x4f
/* 801B2BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B2BEC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B2BF0  38 81 00 14 */	addi r4, r1, 0x14
/* 801B2BF4  38 A0 00 00 */	li r5, 0
/* 801B2BF8  38 C0 00 00 */	li r6, 0
/* 801B2BFC  38 E0 00 00 */	li r7, 0
/* 801B2C00  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2C04  FC 40 08 90 */	fmr f2, f1
/* 801B2C08  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B2C0C  FC 80 18 90 */	fmr f4, f3
/* 801B2C10  39 00 00 00 */	li r8, 0
/* 801B2C14  48 0F 8D 71 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B2C18  48 06 BD B9 */	bl dMeter2Info_set2DVibration__Fv
/* 801B2C1C  48 00 00 D0 */	b lbl_801B2CEC
lbl_801B2C20:
/* 801B2C20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B2C24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B2C28  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801B2C2C  28 00 00 29 */	cmplwi r0, 0x29
/* 801B2C30  41 82 00 BC */	beq lbl_801B2CEC
/* 801B2C34  38 60 00 29 */	li r3, 0x29
/* 801B2C38  38 80 00 00 */	li r4, 0
/* 801B2C3C  48 06 B8 F5 */	bl dMeter2Info_setSword__FUcb
/* 801B2C40  7F E3 FB 78 */	mr r3, r31
/* 801B2C44  38 80 00 01 */	li r4, 1
/* 801B2C48  48 00 0D 89 */	bl setEquipItemFrameColorSword__17dMenu_Collect2D_cFi
/* 801B2C4C  38 00 00 4F */	li r0, 0x4f
/* 801B2C50  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B2C54  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B2C58  38 81 00 10 */	addi r4, r1, 0x10
/* 801B2C5C  38 A0 00 00 */	li r5, 0
/* 801B2C60  38 C0 00 00 */	li r6, 0
/* 801B2C64  38 E0 00 00 */	li r7, 0
/* 801B2C68  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2C6C  FC 40 08 90 */	fmr f2, f1
/* 801B2C70  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B2C74  FC 80 18 90 */	fmr f4, f3
/* 801B2C78  39 00 00 00 */	li r8, 0
/* 801B2C7C  48 0F 8D 09 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B2C80  48 06 BD 51 */	bl dMeter2Info_set2DVibration__Fv
/* 801B2C84  48 00 00 68 */	b lbl_801B2CEC
lbl_801B2C88:
/* 801B2C88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B2C8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B2C90  88 03 00 14 */	lbz r0, 0x14(r3)
/* 801B2C94  28 00 00 49 */	cmplwi r0, 0x49
/* 801B2C98  41 82 00 54 */	beq lbl_801B2CEC
/* 801B2C9C  38 60 00 49 */	li r3, 0x49
/* 801B2CA0  38 80 00 00 */	li r4, 0
/* 801B2CA4  48 06 B8 8D */	bl dMeter2Info_setSword__FUcb
/* 801B2CA8  7F E3 FB 78 */	mr r3, r31
/* 801B2CAC  38 80 00 02 */	li r4, 2
/* 801B2CB0  48 00 0D 21 */	bl setEquipItemFrameColorSword__17dMenu_Collect2D_cFi
/* 801B2CB4  38 00 00 4F */	li r0, 0x4f
/* 801B2CB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B2CBC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B2CC0  38 81 00 0C */	addi r4, r1, 0xc
/* 801B2CC4  38 A0 00 00 */	li r5, 0
/* 801B2CC8  38 C0 00 00 */	li r6, 0
/* 801B2CCC  38 E0 00 00 */	li r7, 0
/* 801B2CD0  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2CD4  FC 40 08 90 */	fmr f2, f1
/* 801B2CD8  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B2CDC  FC 80 18 90 */	fmr f4, f3
/* 801B2CE0  39 00 00 00 */	li r8, 0
/* 801B2CE4  48 0F 8C A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B2CE8  48 06 BC E9 */	bl dMeter2Info_set2DVibration__Fv
lbl_801B2CEC:
/* 801B2CEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B2CF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B2CF4  7C 08 03 A6 */	mtlr r0
/* 801B2CF8  38 21 00 30 */	addi r1, r1, 0x30
/* 801B2CFC  4E 80 00 20 */	blr 
