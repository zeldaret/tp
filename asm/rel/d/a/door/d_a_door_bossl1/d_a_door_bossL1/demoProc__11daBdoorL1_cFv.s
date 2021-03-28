lbl_804E2BC0:
/* 804E2BC0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804E2BC4  7C 08 02 A6 */	mflr r0
/* 804E2BC8  90 01 00 54 */	stw r0, 0x54(r1)
/* 804E2BCC  39 61 00 50 */	addi r11, r1, 0x50
/* 804E2BD0  4B E7 F5 FC */	b _savegpr_25
/* 804E2BD4  7C 7F 1B 78 */	mr r31, r3
/* 804E2BD8  3C 80 80 4E */	lis r4, l_staff_name@ha
/* 804E2BDC  3B A4 4A 14 */	addi r29, r4, l_staff_name@l
/* 804E2BE0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804E2BE4  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 804E2BE8  83 5B 5D AC */	lwz r26, 0x5dac(r27)
/* 804E2BEC  4B FF FF 8D */	bl getDemoAction__11daBdoorL1_cFv
/* 804E2BF0  7C 7C 1B 78 */	mr r28, r3
/* 804E2BF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E2BF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E2BFC  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 804E2C00  3B D9 40 C0 */	addi r30, r25, 0x40c0
/* 804E2C04  7F C3 F3 78 */	mr r3, r30
/* 804E2C08  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E2C0C  4B B6 51 40 */	b getIsAddvance__16dEvent_manager_cFi
/* 804E2C10  2C 03 00 00 */	cmpwi r3, 0
/* 804E2C14  41 82 02 68 */	beq lbl_804E2E7C
/* 804E2C18  28 1C 00 11 */	cmplwi r28, 0x11
/* 804E2C1C  41 81 02 60 */	bgt lbl_804E2E7C
/* 804E2C20  3C 60 80 4E */	lis r3, lit_4239@ha
/* 804E2C24  38 63 4F 70 */	addi r3, r3, lit_4239@l
/* 804E2C28  57 80 10 3A */	slwi r0, r28, 2
/* 804E2C2C  7C 03 00 2E */	lwzx r0, r3, r0
/* 804E2C30  7C 09 03 A6 */	mtctr r0
/* 804E2C34  4E 80 04 20 */	bctr 
lbl_804E2C38:
/* 804E2C38  7F C3 F3 78 */	mr r3, r30
/* 804E2C3C  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E2C40  3C A0 80 4E */	lis r5, struct_804E4ADC+0x0@ha
/* 804E2C44  38 A5 4A DC */	addi r5, r5, struct_804E4ADC+0x0@l
/* 804E2C48  38 A5 03 14 */	addi r5, r5, 0x314
/* 804E2C4C  38 C0 00 03 */	li r6, 3
/* 804E2C50  4B B6 54 9C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 804E2C54  28 03 00 00 */	cmplwi r3, 0
/* 804E2C58  40 82 00 10 */	bne lbl_804E2C68
/* 804E2C5C  38 00 00 01 */	li r0, 1
/* 804E2C60  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 804E2C64  48 00 02 18 */	b lbl_804E2E7C
lbl_804E2C68:
/* 804E2C68  80 03 00 00 */	lwz r0, 0(r3)
/* 804E2C6C  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 804E2C70  48 00 02 0C */	b lbl_804E2E7C
lbl_804E2C74:
/* 804E2C74  38 00 00 05 */	li r0, 5
/* 804E2C78  98 1F 05 9A */	stb r0, 0x59a(r31)
/* 804E2C7C  48 00 02 00 */	b lbl_804E2E7C
lbl_804E2C80:
/* 804E2C80  7F E3 FB 78 */	mr r3, r31
/* 804E2C84  48 00 0F 91 */	bl unlockInit__11daBdoorL1_cFv
/* 804E2C88  48 00 01 F4 */	b lbl_804E2E7C
lbl_804E2C8C:
/* 804E2C8C  7F E3 FB 78 */	mr r3, r31
/* 804E2C90  48 00 04 F1 */	bl openInit__11daBdoorL1_cFv
/* 804E2C94  48 00 01 E8 */	b lbl_804E2E7C
lbl_804E2C98:
/* 804E2C98  7F E3 FB 78 */	mr r3, r31
/* 804E2C9C  38 81 00 18 */	addi r4, r1, 0x18
/* 804E2CA0  38 A0 00 00 */	li r5, 0
/* 804E2CA4  48 00 11 45 */	bl calcGoal__11daBdoorL1_cFP4cXyzi
/* 804E2CA8  7F C3 F3 78 */	mr r3, r30
/* 804E2CAC  38 81 00 18 */	addi r4, r1, 0x18
/* 804E2CB0  4B B6 57 14 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 804E2CB4  48 00 01 C8 */	b lbl_804E2E7C
lbl_804E2CB8:
/* 804E2CB8  7F E3 FB 78 */	mr r3, r31
/* 804E2CBC  38 81 00 18 */	addi r4, r1, 0x18
/* 804E2CC0  38 A0 00 01 */	li r5, 1
/* 804E2CC4  48 00 11 25 */	bl calcGoal__11daBdoorL1_cFP4cXyzi
/* 804E2CC8  7F C3 F3 78 */	mr r3, r30
/* 804E2CCC  38 81 00 18 */	addi r4, r1, 0x18
/* 804E2CD0  4B B6 56 F4 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 804E2CD4  48 00 01 A8 */	b lbl_804E2E7C
lbl_804E2CD8:
/* 804E2CD8  7F E3 FB 78 */	mr r3, r31
/* 804E2CDC  48 00 0B 75 */	bl closeInit__11daBdoorL1_cFv
/* 804E2CE0  48 00 01 9C */	b lbl_804E2E7C
lbl_804E2CE4:
/* 804E2CE4  7F E3 FB 78 */	mr r3, r31
/* 804E2CE8  48 00 14 19 */	bl smokeInit__11daBdoorL1_cFv
/* 804E2CEC  48 00 01 90 */	b lbl_804E2E7C
lbl_804E2CF0:
/* 804E2CF0  38 00 00 00 */	li r0, 0
/* 804E2CF4  B0 1F 05 9C */	sth r0, 0x59c(r31)
/* 804E2CF8  48 00 01 84 */	b lbl_804E2E7C
lbl_804E2CFC:
/* 804E2CFC  80 1A 05 70 */	lwz r0, 0x570(r26)
/* 804E2D00  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 804E2D04  90 1A 05 70 */	stw r0, 0x570(r26)
/* 804E2D08  80 1A 05 78 */	lwz r0, 0x578(r26)
/* 804E2D0C  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 804E2D10  90 1A 05 78 */	stw r0, 0x578(r26)
/* 804E2D14  48 00 01 68 */	b lbl_804E2E7C
lbl_804E2D18:
/* 804E2D18  80 1A 05 70 */	lwz r0, 0x570(r26)
/* 804E2D1C  64 00 08 00 */	oris r0, r0, 0x800
/* 804E2D20  90 1A 05 70 */	stw r0, 0x570(r26)
/* 804E2D24  80 1A 05 78 */	lwz r0, 0x578(r26)
/* 804E2D28  60 00 04 00 */	ori r0, r0, 0x400
/* 804E2D2C  90 1A 05 78 */	stw r0, 0x578(r26)
/* 804E2D30  48 00 01 4C */	b lbl_804E2E7C
lbl_804E2D34:
/* 804E2D34  7F 23 CB 78 */	mr r3, r25
/* 804E2D38  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 804E2D3C  4B B9 15 14 */	b Release__4cBgSFP9dBgW_Base
/* 804E2D40  7F E3 FB 78 */	mr r3, r31
/* 804E2D44  48 00 0F 89 */	bl setPos__11daBdoorL1_cFv
/* 804E2D48  48 00 01 34 */	b lbl_804E2E7C
lbl_804E2D4C:
/* 804E2D4C  4B FF F0 4D */	bl getNowLevel__Fv
/* 804E2D50  2C 03 00 08 */	cmpwi r3, 8
/* 804E2D54  40 82 00 68 */	bne lbl_804E2DBC
/* 804E2D58  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804E2D5C  7C 03 07 74 */	extsb r3, r0
/* 804E2D60  4B B4 A3 0C */	b dComIfGp_getReverb__Fi
/* 804E2D64  7C 67 1B 78 */	mr r7, r3
/* 804E2D68  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021B@ha */
/* 804E2D6C  38 03 02 1B */	addi r0, r3, 0x021B /* 0x0008021B@l */
/* 804E2D70  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E2D74  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E2D78  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E2D7C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E2D80  38 81 00 10 */	addi r4, r1, 0x10
/* 804E2D84  38 BF 05 38 */	addi r5, r31, 0x538
/* 804E2D88  38 C0 00 00 */	li r6, 0
/* 804E2D8C  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 804E2D90  FC 40 08 90 */	fmr f2, f1
/* 804E2D94  C0 7D 00 54 */	lfs f3, 0x54(r29)
/* 804E2D98  FC 80 18 90 */	fmr f4, f3
/* 804E2D9C  39 00 00 00 */	li r8, 0
/* 804E2DA0  4B DC 8B E4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804E2DA4  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 804E2DA8  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804E2DAC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804E2DB0  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 804E2DB4  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804E2DB8  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_804E2DBC:
/* 804E2DBC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804E2DC0  7C 1A 07 74 */	extsb r26, r0
/* 804E2DC4  7F E3 FB 78 */	mr r3, r31
/* 804E2DC8  4B B5 74 08 */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 804E2DCC  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804E2DD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E2DD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E2DD8  7F 45 D3 78 */	mr r5, r26
/* 804E2DDC  4B B5 25 84 */	b isSwitch__10dSv_info_cCFii
/* 804E2DE0  2C 03 00 00 */	cmpwi r3, 0
/* 804E2DE4  41 82 00 10 */	beq lbl_804E2DF4
/* 804E2DE8  38 00 00 00 */	li r0, 0
/* 804E2DEC  98 1F 05 9B */	stb r0, 0x59b(r31)
/* 804E2DF0  48 00 00 0C */	b lbl_804E2DFC
lbl_804E2DF4:
/* 804E2DF4  38 00 00 01 */	li r0, 1
/* 804E2DF8  98 1F 05 9B */	stb r0, 0x59b(r31)
lbl_804E2DFC:
/* 804E2DFC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804E2E00  7C 1A 07 74 */	extsb r26, r0
/* 804E2E04  7F E3 FB 78 */	mr r3, r31
/* 804E2E08  4B B5 73 C8 */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 804E2E0C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804E2E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E2E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E2E18  7F 45 D3 78 */	mr r5, r26
/* 804E2E1C  4B B5 23 E4 */	b onSwitch__10dSv_info_cFii
/* 804E2E20  48 00 00 5C */	b lbl_804E2E7C
lbl_804E2E24:
/* 804E2E24  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804E2E28  7C 03 07 74 */	extsb r3, r0
/* 804E2E2C  4B B4 A2 40 */	b dComIfGp_getReverb__Fi
/* 804E2E30  7C 67 1B 78 */	mr r7, r3
/* 804E2E34  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021B@ha */
/* 804E2E38  38 03 02 1B */	addi r0, r3, 0x021B /* 0x0008021B@l */
/* 804E2E3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E2E40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E2E44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E2E48  80 63 00 00 */	lwz r3, 0(r3)
/* 804E2E4C  38 81 00 0C */	addi r4, r1, 0xc
/* 804E2E50  38 BF 05 38 */	addi r5, r31, 0x538
/* 804E2E54  38 C0 00 00 */	li r6, 0
/* 804E2E58  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 804E2E5C  FC 40 08 90 */	fmr f2, f1
/* 804E2E60  C0 7D 00 54 */	lfs f3, 0x54(r29)
/* 804E2E64  FC 80 18 90 */	fmr f4, f3
/* 804E2E68  39 00 00 00 */	li r8, 0
/* 804E2E6C  4B DC 8B 18 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804E2E70  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 804E2E74  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804E2E78  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_804E2E7C:
/* 804E2E7C  28 1C 00 11 */	cmplwi r28, 0x11
/* 804E2E80  41 81 02 94 */	bgt lbl_804E3114
/* 804E2E84  3C 60 80 4E */	lis r3, lit_4240@ha
/* 804E2E88  38 63 4F 28 */	addi r3, r3, lit_4240@l
/* 804E2E8C  57 80 10 3A */	slwi r0, r28, 2
/* 804E2E90  7C 03 00 2E */	lwzx r0, r3, r0
/* 804E2E94  7C 09 03 A6 */	mtctr r0
/* 804E2E98  4E 80 04 20 */	bctr 
lbl_804E2E9C:
/* 804E2E9C  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 804E2EA0  48 00 1B 41 */	bl func_804E49E0
/* 804E2EA4  2C 03 00 00 */	cmpwi r3, 0
/* 804E2EA8  40 82 02 78 */	bne lbl_804E3120
/* 804E2EAC  7F C3 F3 78 */	mr r3, r30
/* 804E2EB0  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E2EB4  4B B6 52 C8 */	b cutEnd__16dEvent_manager_cFi
/* 804E2EB8  48 00 02 68 */	b lbl_804E3120
lbl_804E2EBC:
/* 804E2EBC  7F E3 FB 78 */	mr r3, r31
/* 804E2EC0  48 00 10 51 */	bl setAngle__11daBdoorL1_cFv
/* 804E2EC4  2C 03 00 00 */	cmpwi r3, 0
/* 804E2EC8  41 82 02 58 */	beq lbl_804E3120
/* 804E2ECC  7F C3 F3 78 */	mr r3, r30
/* 804E2ED0  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E2ED4  4B B6 52 A8 */	b cutEnd__16dEvent_manager_cFi
/* 804E2ED8  48 00 02 48 */	b lbl_804E3120
lbl_804E2EDC:
/* 804E2EDC  80 1F 05 94 */	lwz r0, 0x594(r31)
/* 804E2EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2EE4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804E2EE8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804E2EEC  38 81 00 14 */	addi r4, r1, 0x14
/* 804E2EF0  4B B3 69 08 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804E2EF4  28 03 00 00 */	cmplwi r3, 0
/* 804E2EF8  41 82 00 10 */	beq lbl_804E2F08
/* 804E2EFC  88 03 2C A4 */	lbz r0, 0x2ca4(r3)
/* 804E2F00  28 00 00 03 */	cmplwi r0, 3
/* 804E2F04  41 82 00 14 */	beq lbl_804E2F18
lbl_804E2F08:
/* 804E2F08  80 7F 05 94 */	lwz r3, 0x594(r31)
/* 804E2F0C  3C 03 00 01 */	addis r0, r3, 1
/* 804E2F10  28 00 FF FF */	cmplwi r0, 0xffff
/* 804E2F14  40 82 02 0C */	bne lbl_804E3120
lbl_804E2F18:
/* 804E2F18  7F C3 F3 78 */	mr r3, r30
/* 804E2F1C  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E2F20  4B B6 52 5C */	b cutEnd__16dEvent_manager_cFi
/* 804E2F24  48 00 01 FC */	b lbl_804E3120
lbl_804E2F28:
/* 804E2F28  7F E3 FB 78 */	mr r3, r31
/* 804E2F2C  48 00 06 51 */	bl openProc__11daBdoorL1_cFv
/* 804E2F30  2C 03 00 00 */	cmpwi r3, 0
/* 804E2F34  41 82 01 EC */	beq lbl_804E3120
/* 804E2F38  7F E3 FB 78 */	mr r3, r31
/* 804E2F3C  48 00 08 59 */	bl openEnd__11daBdoorL1_cFv
/* 804E2F40  7F C3 F3 78 */	mr r3, r30
/* 804E2F44  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E2F48  4B B6 52 34 */	b cutEnd__16dEvent_manager_cFi
/* 804E2F4C  48 00 01 D4 */	b lbl_804E3120
lbl_804E2F50:
/* 804E2F50  7F C3 F3 78 */	mr r3, r30
/* 804E2F54  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E2F58  4B B6 52 24 */	b cutEnd__16dEvent_manager_cFi
/* 804E2F5C  48 00 01 C4 */	b lbl_804E3120
lbl_804E2F60:
/* 804E2F60  7F C3 F3 78 */	mr r3, r30
/* 804E2F64  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E2F68  4B B6 52 14 */	b cutEnd__16dEvent_manager_cFi
/* 804E2F6C  48 00 01 B4 */	b lbl_804E3120
lbl_804E2F70:
/* 804E2F70  4B FF EE 29 */	bl getNowLevel__Fv
/* 804E2F74  2C 03 00 08 */	cmpwi r3, 8
/* 804E2F78  40 82 00 A8 */	bne lbl_804E3020
/* 804E2F7C  7F E3 FB 78 */	mr r3, r31
/* 804E2F80  48 00 0A AD */	bl closeProc__11daBdoorL1_cFv
/* 804E2F84  2C 03 00 00 */	cmpwi r3, 0
/* 804E2F88  41 82 01 98 */	beq lbl_804E3120
/* 804E2F8C  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804E2F90  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 804E2F94  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 804E2F98  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804E2F9C  40 82 00 58 */	bne lbl_804E2FF4
/* 804E2FA0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804E2FA4  7C 03 07 74 */	extsb r3, r0
/* 804E2FA8  4B B4 A0 C4 */	b dComIfGp_getReverb__Fi
/* 804E2FAC  7C 67 1B 78 */	mr r7, r3
/* 804E2FB0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021C@ha */
/* 804E2FB4  38 03 02 1C */	addi r0, r3, 0x021C /* 0x0008021C@l */
/* 804E2FB8  90 01 00 08 */	stw r0, 8(r1)
/* 804E2FBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804E2FC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804E2FC4  80 63 00 00 */	lwz r3, 0(r3)
/* 804E2FC8  38 81 00 08 */	addi r4, r1, 8
/* 804E2FCC  38 BF 05 38 */	addi r5, r31, 0x538
/* 804E2FD0  38 C0 00 00 */	li r6, 0
/* 804E2FD4  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 804E2FD8  FC 40 08 90 */	fmr f2, f1
/* 804E2FDC  C0 7D 00 54 */	lfs f3, 0x54(r29)
/* 804E2FE0  FC 80 18 90 */	fmr f4, f3
/* 804E2FE4  39 00 00 00 */	li r8, 0
/* 804E2FE8  4B DC 89 9C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804E2FEC  7F E3 FB 78 */	mr r3, r31
/* 804E2FF0  48 00 07 A5 */	bl openEnd__11daBdoorL1_cFv
lbl_804E2FF4:
/* 804E2FF4  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 804E2FF8  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804E2FFC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804E3000  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804E3004  4B B2 A4 24 */	b play__14mDoExt_baseAnmFv
/* 804E3008  2C 03 00 00 */	cmpwi r3, 0
/* 804E300C  41 82 01 14 */	beq lbl_804E3120
/* 804E3010  7F C3 F3 78 */	mr r3, r30
/* 804E3014  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E3018  4B B6 51 64 */	b cutEnd__16dEvent_manager_cFi
/* 804E301C  48 00 01 04 */	b lbl_804E3120
lbl_804E3020:
/* 804E3020  7F E3 FB 78 */	mr r3, r31
/* 804E3024  48 00 0A 09 */	bl closeProc__11daBdoorL1_cFv
/* 804E3028  2C 03 00 00 */	cmpwi r3, 0
/* 804E302C  41 82 00 F4 */	beq lbl_804E3120
/* 804E3030  7F E3 FB 78 */	mr r3, r31
/* 804E3034  48 00 0B D9 */	bl closeEnd__11daBdoorL1_cFv
/* 804E3038  7F C3 F3 78 */	mr r3, r30
/* 804E303C  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E3040  4B B6 51 3C */	b cutEnd__16dEvent_manager_cFi
/* 804E3044  48 00 00 DC */	b lbl_804E3120
lbl_804E3048:
/* 804E3048  7F C3 F3 78 */	mr r3, r30
/* 804E304C  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E3050  4B B6 51 2C */	b cutEnd__16dEvent_manager_cFi
/* 804E3054  48 00 00 CC */	b lbl_804E3120
lbl_804E3058:
/* 804E3058  38 00 00 03 */	li r0, 3
/* 804E305C  98 1F 05 99 */	stb r0, 0x599(r31)
/* 804E3060  7F C3 F3 78 */	mr r3, r30
/* 804E3064  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E3068  4B B6 51 14 */	b cutEnd__16dEvent_manager_cFi
/* 804E306C  48 00 00 B4 */	b lbl_804E3120
lbl_804E3070:
/* 804E3070  A8 1F 05 9C */	lha r0, 0x59c(r31)
/* 804E3074  2C 00 00 00 */	cmpwi r0, 0
/* 804E3078  40 82 00 30 */	bne lbl_804E30A8
/* 804E307C  83 5B 5D AC */	lwz r26, 0x5dac(r27)
/* 804E3080  7F E3 FB 78 */	mr r3, r31
/* 804E3084  4B B5 71 A0 */	b getExitNo__13door_param2_cFP10fopAc_ac_c
/* 804E3088  7C 64 1B 78 */	mr r4, r3
/* 804E308C  7F 43 D3 78 */	mr r3, r26
/* 804E3090  38 A0 00 FF */	li r5, 0xff
/* 804E3094  38 C0 00 00 */	li r6, 0
/* 804E3098  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 804E309C  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 804E30A0  7D 89 03 A6 */	mtctr r12
/* 804E30A4  4E 80 04 21 */	bctrl 
lbl_804E30A8:
/* 804E30A8  A8 7F 05 9C */	lha r3, 0x59c(r31)
/* 804E30AC  38 03 FF FF */	addi r0, r3, -1
/* 804E30B0  B0 1F 05 9C */	sth r0, 0x59c(r31)
/* 804E30B4  48 00 00 6C */	b lbl_804E3120
lbl_804E30B8:
/* 804E30B8  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804E30BC  4B B2 A3 6C */	b play__14mDoExt_baseAnmFv
/* 804E30C0  2C 03 00 00 */	cmpwi r3, 0
/* 804E30C4  41 82 00 5C */	beq lbl_804E3120
/* 804E30C8  7F C3 F3 78 */	mr r3, r30
/* 804E30CC  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E30D0  4B B6 50 AC */	b cutEnd__16dEvent_manager_cFi
/* 804E30D4  48 00 00 4C */	b lbl_804E3120
lbl_804E30D8:
/* 804E30D8  4B FF EC C1 */	bl getNowLevel__Fv
/* 804E30DC  2C 03 00 08 */	cmpwi r3, 8
/* 804E30E0  40 82 00 24 */	bne lbl_804E3104
/* 804E30E4  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804E30E8  4B B2 A3 40 */	b play__14mDoExt_baseAnmFv
/* 804E30EC  2C 03 00 00 */	cmpwi r3, 0
/* 804E30F0  41 82 00 30 */	beq lbl_804E3120
/* 804E30F4  7F C3 F3 78 */	mr r3, r30
/* 804E30F8  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E30FC  4B B6 50 80 */	b cutEnd__16dEvent_manager_cFi
/* 804E3100  48 00 00 20 */	b lbl_804E3120
lbl_804E3104:
/* 804E3104  7F C3 F3 78 */	mr r3, r30
/* 804E3108  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E310C  4B B6 50 70 */	b cutEnd__16dEvent_manager_cFi
/* 804E3110  48 00 00 10 */	b lbl_804E3120
lbl_804E3114:
/* 804E3114  7F C3 F3 78 */	mr r3, r30
/* 804E3118  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 804E311C  4B B6 50 60 */	b cutEnd__16dEvent_manager_cFi
lbl_804E3120:
/* 804E3120  3B 20 00 00 */	li r25, 0
/* 804E3124  3B 40 00 00 */	li r26, 0
lbl_804E3128:
/* 804E3128  38 1A 07 E4 */	addi r0, r26, 0x7e4
/* 804E312C  7C BF 00 2E */	lwzx r5, r31, r0
/* 804E3130  28 05 00 00 */	cmplwi r5, 0
/* 804E3134  41 82 00 24 */	beq lbl_804E3158
/* 804E3138  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 804E313C  28 03 00 00 */	cmplwi r3, 0
/* 804E3140  41 82 00 18 */	beq lbl_804E3158
/* 804E3144  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804E3148  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804E314C  38 85 00 68 */	addi r4, r5, 0x68
/* 804E3150  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804E3154  4B D9 D6 8C */	b func_802807E0
lbl_804E3158:
/* 804E3158  3B 39 00 01 */	addi r25, r25, 1
/* 804E315C  2C 19 00 02 */	cmpwi r25, 2
/* 804E3160  3B 5A 00 04 */	addi r26, r26, 4
/* 804E3164  41 80 FF C4 */	blt lbl_804E3128
/* 804E3168  39 61 00 50 */	addi r11, r1, 0x50
/* 804E316C  4B E7 F0 AC */	b _restgpr_25
/* 804E3170  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E3174  7C 08 03 A6 */	mtlr r0
/* 804E3178  38 21 00 50 */	addi r1, r1, 0x50
/* 804E317C  4E 80 00 20 */	blr 
