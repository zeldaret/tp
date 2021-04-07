lbl_801C7C2C:
/* 801C7C2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C7C30  7C 08 02 A6 */	mflr r0
/* 801C7C34  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C7C38  39 61 00 40 */	addi r11, r1, 0x40
/* 801C7C3C  48 19 A5 A1 */	bl _savegpr_29
/* 801C7C40  7C 7E 1B 78 */	mr r30, r3
/* 801C7C44  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801C7C48  4B E6 A5 55 */	bl checkTrigger__9STControlFv
/* 801C7C4C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C7C50  8B E3 12 26 */	lbz r31, 0x1226(r3)
/* 801C7C54  3B A0 00 00 */	li r29, 0
/* 801C7C58  88 1E 03 11 */	lbz r0, 0x311(r30)
/* 801C7C5C  7C 00 F8 40 */	cmplw r0, r31
/* 801C7C60  41 82 00 0C */	beq lbl_801C7C6C
/* 801C7C64  9B FE 03 11 */	stb r31, 0x311(r30)
/* 801C7C68  3B A0 00 01 */	li r29, 1
lbl_801C7C6C:
/* 801C7C6C  28 1F 00 FF */	cmplwi r31, 0xff
/* 801C7C70  41 82 00 90 */	beq lbl_801C7D00
/* 801C7C74  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C7C78  7F E4 FB 78 */	mr r4, r31
/* 801C7C7C  48 00 A8 8D */	bl isShowRegion__18dMenu_Fmap2DBack_cFi
/* 801C7C80  2C 03 00 00 */	cmpwi r3, 0
/* 801C7C84  41 82 00 7C */	beq lbl_801C7D00
/* 801C7C88  7F C3 F3 78 */	mr r3, r30
/* 801C7C8C  38 9F 00 01 */	addi r4, r31, 1
/* 801C7C90  48 00 56 6D */	bl getRegionStageNum__12dMenu_Fmap_cFi
/* 801C7C94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C7C98  40 82 00 18 */	bne lbl_801C7CB0
/* 801C7C9C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C7CA0  38 80 00 00 */	li r4, 0
/* 801C7CA4  38 A0 00 FF */	li r5, 0xff
/* 801C7CA8  48 00 F6 2D */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C7CAC  48 00 00 14 */	b lbl_801C7CC0
lbl_801C7CB0:
/* 801C7CB0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C7CB4  38 80 05 27 */	li r4, 0x527
/* 801C7CB8  38 A0 00 FF */	li r5, 0xff
/* 801C7CBC  48 00 F6 19 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
lbl_801C7CC0:
/* 801C7CC0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801C7CC4  41 82 00 4C */	beq lbl_801C7D10
/* 801C7CC8  38 00 00 C1 */	li r0, 0xc1
/* 801C7CCC  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C7CD0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C7CD4  38 81 00 20 */	addi r4, r1, 0x20
/* 801C7CD8  38 A0 00 00 */	li r5, 0
/* 801C7CDC  38 C0 00 00 */	li r6, 0
/* 801C7CE0  38 E0 00 00 */	li r7, 0
/* 801C7CE4  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7CE8  FC 40 08 90 */	fmr f2, f1
/* 801C7CEC  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C7CF0  FC 80 18 90 */	fmr f4, f3
/* 801C7CF4  39 00 00 00 */	li r8, 0
/* 801C7CF8  48 0E 3C 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C7CFC  48 00 00 14 */	b lbl_801C7D10
lbl_801C7D00:
/* 801C7D00  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C7D04  38 80 00 00 */	li r4, 0
/* 801C7D08  38 A0 00 FF */	li r5, 0xff
/* 801C7D0C  48 00 F5 C9 */	bl setAButtonString__17dMenu_Fmap2DTop_cFUlUc
lbl_801C7D10:
/* 801C7D10  48 03 23 2D */	bl dMw_A_TRIGGER__Fv
/* 801C7D14  2C 03 00 00 */	cmpwi r3, 0
/* 801C7D18  41 82 01 30 */	beq lbl_801C7E48
/* 801C7D1C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7D20  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C7D24  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801C7D28  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801C7D2C  40 82 01 1C */	bne lbl_801C7E48
/* 801C7D30  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C7D34  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 801C7D38  88 03 07 72 */	lbz r0, 0x772(r3)
/* 801C7D3C  28 00 00 01 */	cmplwi r0, 1
/* 801C7D40  41 82 01 08 */	beq lbl_801C7E48
/* 801C7D44  28 1F 00 FF */	cmplwi r31, 0xff
/* 801C7D48  41 82 00 18 */	beq lbl_801C7D60
/* 801C7D4C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C7D50  7F E4 FB 78 */	mr r4, r31
/* 801C7D54  48 00 A7 B5 */	bl isShowRegion__18dMenu_Fmap2DBack_cFi
/* 801C7D58  2C 03 00 00 */	cmpwi r3, 0
/* 801C7D5C  40 82 00 50 */	bne lbl_801C7DAC
lbl_801C7D60:
/* 801C7D60  88 1E 03 09 */	lbz r0, 0x309(r30)
/* 801C7D64  28 00 00 00 */	cmplwi r0, 0
/* 801C7D68  40 82 04 B0 */	bne lbl_801C8218
/* 801C7D6C  38 00 00 4A */	li r0, 0x4a
/* 801C7D70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801C7D74  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C7D78  38 81 00 1C */	addi r4, r1, 0x1c
/* 801C7D7C  38 A0 00 00 */	li r5, 0
/* 801C7D80  38 C0 00 00 */	li r6, 0
/* 801C7D84  38 E0 00 00 */	li r7, 0
/* 801C7D88  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7D8C  FC 40 08 90 */	fmr f2, f1
/* 801C7D90  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C7D94  FC 80 18 90 */	fmr f4, f3
/* 801C7D98  39 00 00 00 */	li r8, 0
/* 801C7D9C  48 0E 3B E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C7DA0  38 00 00 01 */	li r0, 1
/* 801C7DA4  98 1E 03 09 */	stb r0, 0x309(r30)
/* 801C7DA8  48 00 04 70 */	b lbl_801C8218
lbl_801C7DAC:
/* 801C7DAC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C7DB0  9B E3 12 27 */	stb r31, 0x1227(r3)
/* 801C7DB4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C7DB8  88 83 12 27 */	lbz r4, 0x1227(r3)
/* 801C7DBC  7F C3 F3 78 */	mr r3, r30
/* 801C7DC0  38 84 00 01 */	addi r4, r4, 1
/* 801C7DC4  48 00 55 39 */	bl getRegionStageNum__12dMenu_Fmap_cFi
/* 801C7DC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C7DCC  40 82 00 50 */	bne lbl_801C7E1C
/* 801C7DD0  88 1E 03 09 */	lbz r0, 0x309(r30)
/* 801C7DD4  28 00 00 00 */	cmplwi r0, 0
/* 801C7DD8  40 82 04 40 */	bne lbl_801C8218
/* 801C7DDC  38 00 00 4A */	li r0, 0x4a
/* 801C7DE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 801C7DE4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C7DE8  38 81 00 18 */	addi r4, r1, 0x18
/* 801C7DEC  38 A0 00 00 */	li r5, 0
/* 801C7DF0  38 C0 00 00 */	li r6, 0
/* 801C7DF4  38 E0 00 00 */	li r7, 0
/* 801C7DF8  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7DFC  FC 40 08 90 */	fmr f2, f1
/* 801C7E00  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C7E04  FC 80 18 90 */	fmr f4, f3
/* 801C7E08  39 00 00 00 */	li r8, 0
/* 801C7E0C  48 0E 3B 79 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C7E10  38 00 00 01 */	li r0, 1
/* 801C7E14  98 1E 03 09 */	stb r0, 0x309(r30)
/* 801C7E18  48 00 04 00 */	b lbl_801C8218
lbl_801C7E1C:
/* 801C7E1C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C7E20  48 00 DC A5 */	bl calcDrawPriority__18dMenu_Fmap2DBack_cFv
/* 801C7E24  7F C3 F3 78 */	mr r3, r30
/* 801C7E28  38 80 00 04 */	li r4, 4
/* 801C7E2C  48 00 38 A5 */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C7E30  88 1E 03 09 */	lbz r0, 0x309(r30)
/* 801C7E34  28 00 00 01 */	cmplwi r0, 1
/* 801C7E38  40 82 03 E0 */	bne lbl_801C8218
/* 801C7E3C  38 00 00 00 */	li r0, 0
/* 801C7E40  98 1E 03 09 */	stb r0, 0x309(r30)
/* 801C7E44  48 00 03 D4 */	b lbl_801C8218
lbl_801C7E48:
/* 801C7E48  48 03 22 09 */	bl dMw_B_TRIGGER__Fv
/* 801C7E4C  2C 03 00 00 */	cmpwi r3, 0
/* 801C7E50  41 82 00 44 */	beq lbl_801C7E94
/* 801C7E54  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801C7E58  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801C7E5C  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801C7E60  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801C7E64  40 82 00 30 */	bne lbl_801C7E94
/* 801C7E68  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801C7E6C  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 801C7E70  88 03 07 72 */	lbz r0, 0x772(r3)
/* 801C7E74  28 00 00 01 */	cmplwi r0, 1
/* 801C7E78  41 82 00 1C */	beq lbl_801C7E94
/* 801C7E7C  88 1E 03 09 */	lbz r0, 0x309(r30)
/* 801C7E80  28 00 00 01 */	cmplwi r0, 1
/* 801C7E84  40 82 03 94 */	bne lbl_801C8218
/* 801C7E88  38 00 00 00 */	li r0, 0
/* 801C7E8C  98 1E 03 09 */	stb r0, 0x309(r30)
/* 801C7E90  48 00 03 88 */	b lbl_801C8218
lbl_801C7E94:
/* 801C7E94  48 03 21 D1 */	bl dMw_Z_TRIGGER__Fv
/* 801C7E98  2C 03 00 00 */	cmpwi r3, 0
/* 801C7E9C  41 82 02 E4 */	beq lbl_801C8180
/* 801C7EA0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C7EA4  48 01 01 E5 */	bl isWarpAccept__17dMenu_Fmap2DTop_cFv
/* 801C7EA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C7EAC  41 82 02 D4 */	beq lbl_801C8180
/* 801C7EB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801C7EB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801C7EB8  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 801C7EBC  7F E3 FB 78 */	mr r3, r31
/* 801C7EC0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C7EC4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C7EC8  A0 84 02 12 */	lhz r4, 0x212(r4)
/* 801C7ECC  4B E6 CA F1 */	bl isEventBit__11dSv_event_cCFUs
/* 801C7ED0  2C 03 00 00 */	cmpwi r3, 0
/* 801C7ED4  41 82 00 9C */	beq lbl_801C7F70
/* 801C7ED8  7F E3 FB 78 */	mr r3, r31
/* 801C7EDC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C7EE0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C7EE4  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 801C7EE8  4B E6 CA D5 */	bl isEventBit__11dSv_event_cCFUs
/* 801C7EEC  2C 03 00 00 */	cmpwi r3, 0
/* 801C7EF0  40 82 00 80 */	bne lbl_801C7F70
/* 801C7EF4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C7EF8  80 9E 00 08 */	lwz r4, 8(r30)
/* 801C7EFC  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 801C7F00  48 00 F7 41 */	bl createExplain__17dMenu_Fmap2DTop_cFP10JKRExpHeapP9STControl
/* 801C7F04  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C7F08  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C7F0C  38 80 08 B4 */	li r4, 0x8b4
/* 801C7F10  38 A0 00 00 */	li r5, 0
/* 801C7F14  38 C0 00 00 */	li r6, 0
/* 801C7F18  38 E0 00 FF */	li r7, 0xff
/* 801C7F1C  39 00 00 01 */	li r8, 1
/* 801C7F20  48 07 66 39 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C7F24  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 801C7F28  98 1E 03 02 */	stb r0, 0x302(r30)
/* 801C7F2C  7F C3 F3 78 */	mr r3, r30
/* 801C7F30  38 80 00 0A */	li r4, 0xa
/* 801C7F34  48 00 37 9D */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C7F38  38 00 00 4A */	li r0, 0x4a
/* 801C7F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C7F40  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C7F44  38 81 00 14 */	addi r4, r1, 0x14
/* 801C7F48  38 A0 00 00 */	li r5, 0
/* 801C7F4C  38 C0 00 00 */	li r6, 0
/* 801C7F50  38 E0 00 00 */	li r7, 0
/* 801C7F54  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7F58  FC 40 08 90 */	fmr f2, f1
/* 801C7F5C  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C7F60  FC 80 18 90 */	fmr f4, f3
/* 801C7F64  39 00 00 00 */	li r8, 0
/* 801C7F68  48 0E 3A 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C7F6C  48 00 02 AC */	b lbl_801C8218
lbl_801C7F70:
/* 801C7F70  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C7F74  48 00 FA 21 */	bl checkPlayerWarpAccept__17dMenu_Fmap2DTop_cFv
/* 801C7F78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C7F7C  41 82 00 B0 */	beq lbl_801C802C
/* 801C7F80  88 1E 03 07 */	lbz r0, 0x307(r30)
/* 801C7F84  28 00 00 01 */	cmplwi r0, 1
/* 801C7F88  40 82 00 54 */	bne lbl_801C7FDC
/* 801C7F8C  38 00 00 00 */	li r0, 0
/* 801C7F90  98 1E 03 07 */	stb r0, 0x307(r30)
/* 801C7F94  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C7F98  38 80 05 29 */	li r4, 0x529
/* 801C7F9C  38 A0 00 FF */	li r5, 0xff
/* 801C7FA0  48 00 F1 49 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C7FA4  38 00 00 49 */	li r0, 0x49
/* 801C7FA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C7FAC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C7FB0  38 81 00 10 */	addi r4, r1, 0x10
/* 801C7FB4  38 A0 00 00 */	li r5, 0
/* 801C7FB8  38 C0 00 00 */	li r6, 0
/* 801C7FBC  38 E0 00 00 */	li r7, 0
/* 801C7FC0  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C7FC4  FC 40 08 90 */	fmr f2, f1
/* 801C7FC8  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C7FCC  FC 80 18 90 */	fmr f4, f3
/* 801C7FD0  39 00 00 00 */	li r8, 0
/* 801C7FD4  48 0E 39 B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C7FD8  48 00 02 40 */	b lbl_801C8218
lbl_801C7FDC:
/* 801C7FDC  38 00 00 01 */	li r0, 1
/* 801C7FE0  98 1E 03 07 */	stb r0, 0x307(r30)
/* 801C7FE4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C7FE8  38 80 05 2A */	li r4, 0x52a
/* 801C7FEC  38 A0 00 FF */	li r5, 0xff
/* 801C7FF0  48 00 F0 F9 */	bl setZButtonString__17dMenu_Fmap2DTop_cFUlUc
/* 801C7FF4  38 00 00 47 */	li r0, 0x47
/* 801C7FF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C7FFC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C8000  38 81 00 0C */	addi r4, r1, 0xc
/* 801C8004  38 A0 00 00 */	li r5, 0
/* 801C8008  38 C0 00 00 */	li r6, 0
/* 801C800C  38 E0 00 00 */	li r7, 0
/* 801C8010  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C8014  FC 40 08 90 */	fmr f2, f1
/* 801C8018  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C801C  FC 80 18 90 */	fmr f4, f3
/* 801C8020  39 00 00 00 */	li r8, 0
/* 801C8024  48 0E 39 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C8028  48 00 01 F0 */	b lbl_801C8218
lbl_801C802C:
/* 801C802C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8030  80 9E 00 08 */	lwz r4, 8(r30)
/* 801C8034  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 801C8038  48 00 F6 09 */	bl createExplain__17dMenu_Fmap2DTop_cFP10JKRExpHeapP9STControl
/* 801C803C  7F E3 FB 78 */	mr r3, r31
/* 801C8040  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C8044  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C8048  A0 84 00 D0 */	lhz r4, 0xd0(r4)
/* 801C804C  4B E6 C9 71 */	bl isEventBit__11dSv_event_cCFUs
/* 801C8050  2C 03 00 00 */	cmpwi r3, 0
/* 801C8054  41 82 00 44 */	beq lbl_801C8098
/* 801C8058  7F E3 FB 78 */	mr r3, r31
/* 801C805C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C8060  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C8064  A0 84 01 F4 */	lhz r4, 0x1f4(r4)
/* 801C8068  4B E6 C9 55 */	bl isEventBit__11dSv_event_cCFUs
/* 801C806C  2C 03 00 00 */	cmpwi r3, 0
/* 801C8070  40 82 00 28 */	bne lbl_801C8098
/* 801C8074  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8078  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C807C  38 80 08 5D */	li r4, 0x85d
/* 801C8080  38 A0 00 00 */	li r5, 0
/* 801C8084  38 C0 00 00 */	li r6, 0
/* 801C8088  38 E0 00 FF */	li r7, 0xff
/* 801C808C  39 00 00 01 */	li r8, 1
/* 801C8090  48 07 64 C9 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8094  48 00 00 A0 */	b lbl_801C8134
lbl_801C8098:
/* 801C8098  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C809C  48 00 FA BD */	bl checkWarpAcceptCannon__17dMenu_Fmap2DTop_cFv
/* 801C80A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C80A4  40 82 00 3C */	bne lbl_801C80E0
/* 801C80A8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C80AC  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C80B0  38 80 07 DE */	li r4, 0x7de
/* 801C80B4  38 A0 00 00 */	li r5, 0
/* 801C80B8  38 C0 00 00 */	li r6, 0
/* 801C80BC  38 E0 00 FF */	li r7, 0xff
/* 801C80C0  39 00 00 01 */	li r8, 1
/* 801C80C4  48 07 64 95 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C80C8  7F E3 FB 78 */	mr r3, r31
/* 801C80CC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801C80D0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801C80D4  A0 84 06 26 */	lhz r4, 0x626(r4)
/* 801C80D8  4B E6 C8 B5 */	bl onEventBit__11dSv_event_cFUs
/* 801C80DC  48 00 00 58 */	b lbl_801C8134
lbl_801C80E0:
/* 801C80E0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C80E4  48 00 F9 D1 */	bl checkWarpAcceptRegion4__17dMenu_Fmap2DTop_cFv
/* 801C80E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C80EC  40 82 00 28 */	bne lbl_801C8114
/* 801C80F0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C80F4  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C80F8  38 80 07 DD */	li r4, 0x7dd
/* 801C80FC  38 A0 00 00 */	li r5, 0
/* 801C8100  38 C0 00 00 */	li r6, 0
/* 801C8104  38 E0 00 FF */	li r7, 0xff
/* 801C8108  39 00 00 01 */	li r8, 1
/* 801C810C  48 07 64 4D */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801C8110  48 00 00 24 */	b lbl_801C8134
lbl_801C8114:
/* 801C8114  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C8118  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 801C811C  38 80 05 1D */	li r4, 0x51d
/* 801C8120  38 A0 00 00 */	li r5, 0
/* 801C8124  38 C0 00 00 */	li r6, 0
/* 801C8128  38 E0 00 FF */	li r7, 0xff
/* 801C812C  39 00 00 01 */	li r8, 1
/* 801C8130  48 07 64 29 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
lbl_801C8134:
/* 801C8134  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 801C8138  98 1E 03 02 */	stb r0, 0x302(r30)
/* 801C813C  7F C3 F3 78 */	mr r3, r30
/* 801C8140  38 80 00 0A */	li r4, 0xa
/* 801C8144  48 00 35 8D */	bl setProcess__12dMenu_Fmap_cFUc
/* 801C8148  38 00 00 4A */	li r0, 0x4a
/* 801C814C  90 01 00 08 */	stw r0, 8(r1)
/* 801C8150  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C8154  38 81 00 08 */	addi r4, r1, 8
/* 801C8158  38 A0 00 00 */	li r5, 0
/* 801C815C  38 C0 00 00 */	li r6, 0
/* 801C8160  38 E0 00 00 */	li r7, 0
/* 801C8164  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C8168  FC 40 08 90 */	fmr f2, f1
/* 801C816C  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C8170  FC 80 18 90 */	fmr f4, f3
/* 801C8174  39 00 00 00 */	li r8, 0
/* 801C8178  48 0E 38 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801C817C  48 00 00 9C */	b lbl_801C8218
lbl_801C8180:
/* 801C8180  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C8184  8B E3 12 26 */	lbz r31, 0x1226(r3)
/* 801C8188  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 801C818C  48 00 9C 39 */	bl allmap_move2__18dMenu_Fmap2DBack_cFP9STControl
/* 801C8190  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C8194  88 03 12 26 */	lbz r0, 0x1226(r3)
/* 801C8198  7C 1F 00 40 */	cmplw r31, r0
/* 801C819C  40 82 00 10 */	bne lbl_801C81AC
/* 801C81A0  88 1E 03 12 */	lbz r0, 0x312(r30)
/* 801C81A4  28 00 00 00 */	cmplwi r0, 0
/* 801C81A8  41 82 00 5C */	beq lbl_801C8204
lbl_801C81AC:
/* 801C81AC  38 00 00 00 */	li r0, 0
/* 801C81B0  98 1E 03 12 */	stb r0, 0x312(r30)
/* 801C81B4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C81B8  88 83 12 26 */	lbz r4, 0x1226(r3)
/* 801C81BC  28 04 00 FF */	cmplwi r4, 0xff
/* 801C81C0  41 82 00 3C */	beq lbl_801C81FC
/* 801C81C4  48 00 A3 45 */	bl isShowRegion__18dMenu_Fmap2DBack_cFi
/* 801C81C8  2C 03 00 00 */	cmpwi r3, 0
/* 801C81CC  41 82 00 30 */	beq lbl_801C81FC
/* 801C81D0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C81D4  88 03 12 26 */	lbz r0, 0x1226(r3)
/* 801C81D8  7F C3 F3 78 */	mr r3, r30
/* 801C81DC  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 801C81E0  7C 9E 02 14 */	add r4, r30, r0
/* 801C81E4  A0 84 02 18 */	lhz r4, 0x218(r4)
/* 801C81E8  48 00 46 99 */	bl setAreaName__12dMenu_Fmap_cFUl
/* 801C81EC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 801C81F0  38 80 00 00 */	li r4, 0
/* 801C81F4  48 00 9B 81 */	bl setSpotCursor__18dMenu_Fmap2DBack_cFUc
/* 801C81F8  48 00 00 0C */	b lbl_801C8204
lbl_801C81FC:
/* 801C81FC  7F C3 F3 78 */	mr r3, r30
/* 801C8200  48 00 46 AD */	bl setAreaNameZero__12dMenu_Fmap_cFv
lbl_801C8204:
/* 801C8204  88 1E 03 09 */	lbz r0, 0x309(r30)
/* 801C8208  28 00 00 01 */	cmplwi r0, 1
/* 801C820C  40 82 00 0C */	bne lbl_801C8218
/* 801C8210  38 00 00 00 */	li r0, 0
/* 801C8214  98 1E 03 09 */	stb r0, 0x309(r30)
lbl_801C8218:
/* 801C8218  39 61 00 40 */	addi r11, r1, 0x40
/* 801C821C  48 19 A0 0D */	bl _restgpr_29
/* 801C8220  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C8224  7C 08 03 A6 */	mtlr r0
/* 801C8228  38 21 00 40 */	addi r1, r1, 0x40
/* 801C822C  4E 80 00 20 */	blr 
