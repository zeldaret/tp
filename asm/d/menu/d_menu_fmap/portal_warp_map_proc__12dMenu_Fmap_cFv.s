lbl_801C8C0C:
/* 801C8C0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C8C10  7C 08 02 A6 */	mflr r0
/* 801C8C14  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C8C18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C8C1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C8C20  7C 7E 1B 78 */	mr r30, r3
/* 801C8C24  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801C8C28  4B E6 95 75 */	bl checkTrigger__9STControlFv
/* 801C8C2C  48 03 14 25 */	bl dMw_B_TRIGGER__Fv
/* 801C8C30  2C 03 00 00 */	cmpwi r3, 0
/* 801C8C34  41 82 00 50 */	beq lbl_801C8C84
/* 801C8C38  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C8C3C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C8C40  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801C8C44  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801C8C48  40 82 00 3C */	bne lbl_801C8C84
/* 801C8C4C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C8C50  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 801C8C54  88 03 07 72 */	lbz r0, 0x772(r3)
/* 801C8C58  28 00 00 01 */	cmplwi r0, 1
/* 801C8C5C  41 82 00 28 */	beq lbl_801C8C84
/* 801C8C60  7F C3 F3 78 */	mr r3, r30
/* 801C8C64  38 80 00 05 */	li r4, 5
/* 801C8C68  48 00 2A 69 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C8C6C  88 1E 03 09 */	lbz r0, 0x309(r30)
/* 801C8C70  28 00 00 01 */	cmplwi r0, 1
/* 801C8C74  40 82 04 04 */	bne lbl_801C9078
/* 801C8C78  38 00 00 00 */	li r0, 0
/* 801C8C7C  98 1E 03 09 */	stb r0, 0x309(r30)
/* 801C8C80  48 00 03 F8 */	b lbl_801C9078
lbl_801C8C84:
/* 801C8C84  48 03 13 B9 */	bl dMw_A_TRIGGER__Fv
/* 801C8C88  2C 03 00 00 */	cmpwi r3, 0
/* 801C8C8C  41 82 03 64 */	beq lbl_801C8FF0
/* 801C8C90  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C8C94  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C8C98  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801C8C9C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801C8CA0  40 82 03 50 */	bne lbl_801C8FF0
/* 801C8CA4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C8CA8  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 801C8CAC  88 03 07 72 */	lbz r0, 0x772(r3)
/* 801C8CB0  28 00 00 01 */	cmplwi r0, 1
/* 801C8CB4  41 82 03 3C */	beq lbl_801C8FF0
/* 801C8CB8  88 1E 03 08 */	lbz r0, 0x308(r30)
/* 801C8CBC  28 00 00 FF */	cmplwi r0, 0xff
/* 801C8CC0  41 82 02 F8 */	beq lbl_801C8FB8
/* 801C8CC4  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801C8CC8  3B E3 00 0C */	addi r31, r3, 0xc
/* 801C8CCC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8CD0  80 9E 00 08 */	lwz r4, 8(r30)
/* 801C8CD4  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 801C8CD8  48 00 E9 69 */	bl createExplain__17dMenu_Fmap2DTop_cFP10JKRExpHeapP9STControl
/* 801C8CDC  88 1E 03 08 */	lbz r0, 0x308(r30)
/* 801C8CE0  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 801C8CE4  7C 7F 02 14 */	add r3, r31, r0
/* 801C8CE8  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 801C8CEC  48 06 F7 B1 */	bl setPortalMessageID__12dMsgObject_cFUs
/* 801C8CF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801C8CF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801C8CF8  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 801C8CFC  7F E3 FB 78 */	mr r3, r31
/* 801C8D00  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C8D04  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C8D08  A0 84 00 D0 */	lhz r4, 0xd0(r4)
/* 801C8D0C  4B E6 BC B1 */	bl isEventBit__11dSv_event_cCFUs
/* 801C8D10  2C 03 00 00 */	cmpwi r3, 0
/* 801C8D14  41 82 00 44 */	beq lbl_801C8D58
/* 801C8D18  7F E3 FB 78 */	mr r3, r31
/* 801C8D1C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C8D20  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C8D24  A0 84 01 F4 */	lhz r4, 0x1f4(r4)
/* 801C8D28  4B E6 BC 95 */	bl isEventBit__11dSv_event_cCFUs
/* 801C8D2C  2C 03 00 00 */	cmpwi r3, 0
/* 801C8D30  40 82 00 28 */	bne lbl_801C8D58
/* 801C8D34  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8D38  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C8D3C  38 80 08 5D */	li r4, 0x85d
/* 801C8D40  38 A0 00 00 */	li r5, 0
/* 801C8D44  38 C0 00 00 */	li r6, 0
/* 801C8D48  38 E0 00 FF */	li r7, 0xff
/* 801C8D4C  39 00 00 01 */	li r8, 1
/* 801C8D50  48 07 58 09 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8D54  48 00 02 0C */	b lbl_801C8F60
lbl_801C8D58:
/* 801C8D58  7F E3 FB 78 */	mr r3, r31
/* 801C8D5C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C8D60  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C8D64  A0 84 06 24 */	lhz r4, 0x624(r4)
/* 801C8D68  4B E6 BC 55 */	bl isEventBit__11dSv_event_cCFUs
/* 801C8D6C  2C 03 00 00 */	cmpwi r3, 0
/* 801C8D70  41 82 00 58 */	beq lbl_801C8DC8
/* 801C8D74  7F E3 FB 78 */	mr r3, r31
/* 801C8D78  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C8D7C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C8D80  A0 84 06 22 */	lhz r4, 0x622(r4)
/* 801C8D84  4B E6 BC 39 */	bl isEventBit__11dSv_event_cCFUs
/* 801C8D88  2C 03 00 00 */	cmpwi r3, 0
/* 801C8D8C  40 82 00 3C */	bne lbl_801C8DC8
/* 801C8D90  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8D94  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C8D98  38 80 07 DE */	li r4, 0x7de
/* 801C8D9C  38 A0 00 00 */	li r5, 0
/* 801C8DA0  38 C0 00 00 */	li r6, 0
/* 801C8DA4  38 E0 00 FF */	li r7, 0xff
/* 801C8DA8  39 00 00 01 */	li r8, 1
/* 801C8DAC  48 07 57 AD */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8DB0  7F E3 FB 78 */	mr r3, r31
/* 801C8DB4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C8DB8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C8DBC  A0 84 06 26 */	lhz r4, 0x626(r4)
/* 801C8DC0  4B E6 BB CD */	bl onEventBit__11dSv_event_cFUs
/* 801C8DC4  48 00 01 9C */	b lbl_801C8F60
lbl_801C8DC8:
/* 801C8DC8  88 1E 03 08 */	lbz r0, 0x308(r30)
/* 801C8DCC  28 00 00 06 */	cmplwi r0, 6
/* 801C8DD0  40 82 00 B4 */	bne lbl_801C8E84
/* 801C8DD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801C8DD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801C8DDC  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801C8DE0  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap__stringBase0@ha /* 0x803960E8@ha */
/* 801C8DE4  38 84 60 E8 */	addi r4, r4, d_menu_d_menu_fmap__stringBase0@l /* 0x803960E8@l */
/* 801C8DE8  38 84 00 1E */	addi r4, r4, 0x1e
/* 801C8DEC  48 19 FB A9 */	bl strcmp
/* 801C8DF0  2C 03 00 00 */	cmpwi r3, 0
/* 801C8DF4  40 82 00 2C */	bne lbl_801C8E20
/* 801C8DF8  80 8D 8A 98 */	lwz r4, m_midnaActor__9daPy_py_c(r13)
/* 801C8DFC  38 60 00 00 */	li r3, 0
/* 801C8E00  80 84 08 90 */	lwz r4, 0x890(r4)
/* 801C8E04  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 801C8E08  41 82 00 10 */	beq lbl_801C8E18
/* 801C8E0C  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801C8E10  41 82 00 08 */	beq lbl_801C8E18
/* 801C8E14  38 60 00 01 */	li r3, 1
lbl_801C8E18:
/* 801C8E18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C8E1C  40 82 00 20 */	bne lbl_801C8E3C
lbl_801C8E20:
/* 801C8E20  7F E3 FB 78 */	mr r3, r31
/* 801C8E24  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C8E28  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C8E2C  A0 84 00 FA */	lhz r4, 0xfa(r4)
/* 801C8E30  4B E6 BB 8D */	bl isEventBit__11dSv_event_cCFUs
/* 801C8E34  2C 03 00 00 */	cmpwi r3, 0
/* 801C8E38  41 82 00 28 */	beq lbl_801C8E60
lbl_801C8E3C:
/* 801C8E3C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8E40  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C8E44  38 80 05 1E */	li r4, 0x51e
/* 801C8E48  38 A0 00 02 */	li r5, 2
/* 801C8E4C  38 C0 00 00 */	li r6, 0
/* 801C8E50  38 E0 00 FF */	li r7, 0xff
/* 801C8E54  39 00 00 01 */	li r8, 1
/* 801C8E58  48 07 57 01 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8E5C  48 00 01 04 */	b lbl_801C8F60
lbl_801C8E60:
/* 801C8E60  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8E64  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C8E68  38 80 05 3A */	li r4, 0x53a
/* 801C8E6C  38 A0 00 00 */	li r5, 0
/* 801C8E70  38 C0 00 00 */	li r6, 0
/* 801C8E74  38 E0 00 FF */	li r7, 0xff
/* 801C8E78  39 00 00 01 */	li r8, 1
/* 801C8E7C  48 07 56 DD */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8E80  48 00 00 E0 */	b lbl_801C8F60
lbl_801C8E84:
/* 801C8E84  28 00 00 03 */	cmplwi r0, 3
/* 801C8E88  40 82 00 B8 */	bne lbl_801C8F40
/* 801C8E8C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C8E90  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C8E94  88 03 00 BF */	lbz r0, 0xbf(r3)
/* 801C8E98  28 00 00 03 */	cmplwi r0, 3
/* 801C8E9C  40 82 00 40 */	bne lbl_801C8EDC
/* 801C8EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801C8EA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801C8EA8  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 801C8EAC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801C8EB0  7D 89 03 A6 */	mtctr r12
/* 801C8EB4  4E 80 04 21 */	bctrl 
/* 801C8EB8  88 03 00 09 */	lbz r0, 9(r3)
/* 801C8EBC  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 801C8EC0  2C 00 00 02 */	cmpwi r0, 2
/* 801C8EC4  40 82 00 18 */	bne lbl_801C8EDC
/* 801C8EC8  38 60 00 0F */	li r3, 0xf
/* 801C8ECC  38 80 FF FF */	li r4, -1
/* 801C8ED0  4B E6 4C 95 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 801C8ED4  2C 03 00 00 */	cmpwi r3, 0
/* 801C8ED8  40 82 00 20 */	bne lbl_801C8EF8
lbl_801C8EDC:
/* 801C8EDC  7F E3 FB 78 */	mr r3, r31
/* 801C8EE0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C8EE4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C8EE8  A0 84 00 66 */	lhz r4, 0x66(r4)
/* 801C8EEC  4B E6 BA D1 */	bl isEventBit__11dSv_event_cCFUs
/* 801C8EF0  2C 03 00 00 */	cmpwi r3, 0
/* 801C8EF4  41 82 00 28 */	beq lbl_801C8F1C
lbl_801C8EF8:
/* 801C8EF8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8EFC  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C8F00  38 80 05 1E */	li r4, 0x51e
/* 801C8F04  38 A0 00 02 */	li r5, 2
/* 801C8F08  38 C0 00 00 */	li r6, 0
/* 801C8F0C  38 E0 00 FF */	li r7, 0xff
/* 801C8F10  39 00 00 01 */	li r8, 1
/* 801C8F14  48 07 56 45 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8F18  48 00 00 48 */	b lbl_801C8F60
lbl_801C8F1C:
/* 801C8F1C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8F20  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C8F24  38 80 05 3B */	li r4, 0x53b
/* 801C8F28  38 A0 00 00 */	li r5, 0
/* 801C8F2C  38 C0 00 00 */	li r6, 0
/* 801C8F30  38 E0 00 FF */	li r7, 0xff
/* 801C8F34  39 00 00 01 */	li r8, 1
/* 801C8F38  48 07 56 21 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8F3C  48 00 00 24 */	b lbl_801C8F60
lbl_801C8F40:
/* 801C8F40  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8F44  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C8F48  38 80 05 1E */	li r4, 0x51e
/* 801C8F4C  38 A0 00 02 */	li r5, 2
/* 801C8F50  38 C0 00 00 */	li r6, 0
/* 801C8F54  38 E0 00 FF */	li r7, 0xff
/* 801C8F58  39 00 00 01 */	li r8, 1
/* 801C8F5C  48 07 55 FD */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
lbl_801C8F60:
/* 801C8F60  7F C3 F3 78 */	mr r3, r30
/* 801C8F64  38 80 00 09 */	li r4, 9
/* 801C8F68  48 00 27 69 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C8F6C  88 1E 03 09 */	lbz r0, 0x309(r30)
/* 801C8F70  28 00 00 01 */	cmplwi r0, 1
/* 801C8F74  40 82 00 0C */	bne lbl_801C8F80
/* 801C8F78  38 00 00 00 */	li r0, 0
/* 801C8F7C  98 1E 03 09 */	stb r0, 0x309(r30)
lbl_801C8F80:
/* 801C8F80  38 00 00 6D */	li r0, 0x6d
/* 801C8F84  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C8F88  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C8F8C  38 81 00 10 */	addi r4, r1, 0x10
/* 801C8F90  38 A0 00 00 */	li r5, 0
/* 801C8F94  38 C0 00 00 */	li r6, 0
/* 801C8F98  38 E0 00 00 */	li r7, 0
/* 801C8F9C  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C8FA0  FC 40 08 90 */	fmr f2, f1
/* 801C8FA4  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C8FA8  FC 80 18 90 */	fmr f4, f3
/* 801C8FAC  39 00 00 00 */	li r8, 0
/* 801C8FB0  48 0E 29 D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C8FB4  48 00 00 C4 */	b lbl_801C9078
lbl_801C8FB8:
/* 801C8FB8  38 00 00 4A */	li r0, 0x4a
/* 801C8FBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C8FC0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C8FC4  38 81 00 0C */	addi r4, r1, 0xc
/* 801C8FC8  38 A0 00 00 */	li r5, 0
/* 801C8FCC  38 C0 00 00 */	li r6, 0
/* 801C8FD0  38 E0 00 00 */	li r7, 0
/* 801C8FD4  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C8FD8  FC 40 08 90 */	fmr f2, f1
/* 801C8FDC  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C8FE0  FC 80 18 90 */	fmr f4, f3
/* 801C8FE4  39 00 00 00 */	li r8, 0
/* 801C8FE8  48 0E 29 9D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C8FEC  48 00 00 8C */	b lbl_801C9078
lbl_801C8FF0:
/* 801C8FF0  48 03 10 75 */	bl dMw_Z_TRIGGER__Fv
/* 801C8FF4  2C 03 00 00 */	cmpwi r3, 0
/* 801C8FF8  41 82 00 60 */	beq lbl_801C9058
/* 801C8FFC  38 00 00 00 */	li r0, 0
/* 801C9000  98 1E 03 07 */	stb r0, 0x307(r30)
/* 801C9004  7F C3 F3 78 */	mr r3, r30
/* 801C9008  38 80 00 06 */	li r4, 6
/* 801C900C  48 00 26 C5 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C9010  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C9014  38 80 05 29 */	li r4, 0x529
/* 801C9018  38 A0 00 FF */	li r5, 0xff
/* 801C901C  48 00 E0 CD */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C9020  38 00 00 49 */	li r0, 0x49
/* 801C9024  90 01 00 08 */	stw r0, 8(r1)
/* 801C9028  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C902C  38 81 00 08 */	addi r4, r1, 8
/* 801C9030  38 A0 00 00 */	li r5, 0
/* 801C9034  38 C0 00 00 */	li r6, 0
/* 801C9038  38 E0 00 00 */	li r7, 0
/* 801C903C  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C9040  FC 40 08 90 */	fmr f2, f1
/* 801C9044  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C9048  FC 80 18 90 */	fmr f4, f3
/* 801C904C  39 00 00 00 */	li r8, 0
/* 801C9050  48 0E 29 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C9054  48 00 00 24 */	b lbl_801C9078
lbl_801C9058:
/* 801C9058  7F C3 F3 78 */	mr r3, r30
/* 801C905C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 801C9060  48 00 38 7D */	bl portalWarpMapMove__12dMenu_Fmap_cFP9STControl
/* 801C9064  88 1E 03 09 */	lbz r0, 0x309(r30)
/* 801C9068  28 00 00 01 */	cmplwi r0, 1
/* 801C906C  40 82 00 0C */	bne lbl_801C9078
/* 801C9070  38 00 00 00 */	li r0, 0
/* 801C9074  98 1E 03 09 */	stb r0, 0x309(r30)
lbl_801C9078:
/* 801C9078  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C907C  88 83 12 29 */	lbz r4, 0x1229(r3)
/* 801C9080  7F C3 F3 78 */	mr r3, r30
/* 801C9084  38 A0 00 00 */	li r5, 0
/* 801C9088  48 00 26 59 */	bl setFlash__12dMenu_Fmap_cFUcb
/* 801C908C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C9090  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C9094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C9098  7C 08 03 A6 */	mtlr r0
/* 801C909C  38 21 00 20 */	addi r1, r1, 0x20
/* 801C90A0  4E 80 00 20 */	blr 
